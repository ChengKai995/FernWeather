# FernWeather

中央氣象署 36 小時預報的 Flutter demo。輸入縣市名查單一縣市，沒輸入就顯示全台 22 縣市。

## 跑起來

```bash
flutter pub get
dart run build_runner build   # 產 *.freezed.dart 跟 *.g.dart
flutter run
```

需要 Flutter `^3.27`（Dart `^3.9`）。預設帶了一組 CWA 測試金鑰可以直接用，要換成自己的：

```bash
flutter run --dart-define=CWA_AUTH=CWA-XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
```

申請：<https://opendata.cwa.gov.tw>

## 用到的東西

- `flutter_riverpod` 管狀態 + DI
- `go_router` 路由
- `dio` + `retrofit` 打 API（CWA 這邊只用一支 endpoint）
- `freezed` 做不可變的資料 / state class
- `json_serializable` 解 JSON

## 程式長怎樣

```
lib/
├── main.dart
├── app/                   路由 + theme
├── core/                  共用工具（ApiResult、台/臺正規化）
├── data/weather/          CWA 回應的 DTO（欄位全 nullable）
├── domain/weather/        業務 model + Repository interface + mapper
├── pages/
│   ├── splash/
│   └── weather/           notifier、state、page、widgets
└── services/network/      dio、retrofit client、repository 實作
```

切成 data / domain / presentation 三層的好處是 — CWA 哪天改回應格式，只要動 `data/` 跟 `weather_forecast_mapper.dart`，UI 完全不用碰。

## 比較想講的兩個決定

### 1. Auto-fetch 放在 notifier，不在 page

`WeatherNotifier.build()` 一被 watch 就會自己排程 `fetchAll()`：

```dart
@override
WeatherState build() {
  var disposed = false;
  ref.onDispose(() => disposed = true);
  Future(() {
    if (disposed) return;
    fetchAll();
  });
  return const WeatherState.loading();
}
```

`WeatherPage` 因此完全不用寫 `initState` 手動 trigger fetch — page 純粹訂閱狀態 + 轉發 user 事件就好。

要用 `Future(...)` 排到下個 tick 是因為 Riverpod 規定 build 期間不能直接改 state；`disposed` 旗標則是擋「user 切走頁面、notifier 已釋放、但排程的 fetch 還沒跑」這個 race。

### 2. 用 CancelToken 處理「中途改主意」

第一版我是用一個 `_inflight` boolean 擋並發。然後發現一個情境：

```
user 輸入「臺北市」→ 按確認 → loading
       ↓ (API 還沒回來)
user 把文字清空     → 想看全部縣市
       ↓
_inflight 把第二次 fetch 擋掉
       ↓
「臺北市」的 response 回來 → 畫面顯示臺北市
```

User 明明要看全部，畫面卻給他臺北市 — 意圖被吃掉了。

改成 `CwaWeatherRepository` 內部持有一個 `CancelToken`，新 request 進來就把舊的 cancel 掉：

```dart
_cancelToken?.cancel("superseded by new request");
final token = CancelToken();
_cancelToken = token;
```

被 cancel 的 request 丟 `CancelException` → `BaseRepository.safeCall` 接成 `ApiResult.cancelled()` → notifier 收到就 `break`、不更新 state。最後抵達 `state =` 的永遠是最新意圖的結果。

副作用：按鈕不需要「loading 中 disable」、不需要「防連點」flag、TextField 也不用 disable，user 連按 N 下也只會看到最後一次的結果。**所有 entry point 行為一致 = latest wins**。

## 錯誤處理

主要三種：

1. **空字串** — notifier 直接設 error state，不打 API
2. **API 真的壞** — 網路斷、HTTP 4xx/5xx、或 CWA 業務驗證 `success: "false"` → `BaseRepository.safeCall` 統一包成 `ApiResult.failure`
3. **查無城市** — API 回 200 但 `location: []`，notifier 視為錯誤顯示「找不到 OO 的天氣資料」

錯誤訊息盡量保留 API 原文（例如 CWA 401 純文字 `Forbidden: Authorization key is not correct.`），自己再包一層「驗證失敗」反而沒幫助。

## 還沒做

- 單元測試 — 架構是為了好測才這樣切的，但目前一個都還沒寫，TODO
- Pull-to-refresh
- 輸入框自動 debounce 搜尋（現在還是按確認才查）

## API

只用一支 endpoint：

```
GET https://opendata.cwa.gov.tw/api/v1/rest/datastore/F-C0032-001
    ?Authorization=<key>&format=JSON&locationName=<縣市名>
```

`Authorization` 跟 `format` 由 `dioProvider` 的 `BaseOptions.queryParameters` 統一帶上，retrofit 那邊只需要宣告 `locationName` 跟 `cancelToken`。

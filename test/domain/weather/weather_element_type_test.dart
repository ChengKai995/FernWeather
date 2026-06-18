import "package:flutter_test/flutter_test.dart";
import "package:fern_quiz/domain/weather/weather_element_type.dart";

void main() {
  group("WeatherElementType.fromCode", () {
    test("code Wx maps to wx", () {
      expect(WeatherElementType.fromCode("Wx"), WeatherElementType.wx);
    });

    test("code PoP maps to pop", () {
      expect(WeatherElementType.fromCode("PoP"), WeatherElementType.pop);
    });

    test("code CI maps to ci", () {
      expect(WeatherElementType.fromCode("CI"), WeatherElementType.ci);
    });

    test("code MinT maps to minT", () {
      expect(WeatherElementType.fromCode("MinT"), WeatherElementType.minT);
    });

    test("code MaxT maps to maxT", () {
      expect(WeatherElementType.fromCode("MaxT"), WeatherElementType.maxT);
    });

    test("unknown code returns null", () {
      expect(WeatherElementType.fromCode("NotExist"), isNull);
    });

    test("null input returns null", () {
      expect(WeatherElementType.fromCode(null), isNull);
    });

    test("lowercase wx returns null because matching is case sensitive", () {
      expect(WeatherElementType.fromCode("wx"), isNull);
    });

    group("unit property", () {
      test("PoP unit is percent", () {
        expect(WeatherElementType.pop.unit, "%");
      });

      test("MinT and MaxT unit is degrees celsius", () {
        expect(WeatherElementType.minT.unit, "°C");
        expect(WeatherElementType.maxT.unit, "°C");
      });

      test("Wx has no unit", () {
        expect(WeatherElementType.wx.unit, "");
      });
    });
  });
}

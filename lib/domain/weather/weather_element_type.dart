enum WeatherElementType {
  wx(code: "Wx", label: "天氣現象"),
  pop(code: "PoP", label: "降雨機率", unit: "%"),
  ci(code: "CI", label: "舒適度"),
  minT(code: "MinT", label: "最低溫", unit: "°C"),
  maxT(code: "MaxT", label: "最高溫", unit: "°C");

  const WeatherElementType({
    required this.code,
    required this.label,
    this.unit = "",
  });

  final String code;
  final String label;
  final String unit;

  static WeatherElementType? fromCode(String? code) {
    if (code == null) return null;
    for (final type in values) {
      if (type.code == code) return type;
    }
    return null;
  }
}

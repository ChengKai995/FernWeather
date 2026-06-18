import "package:flutter_test/flutter_test.dart";
import "package:fern_quiz/data/weather/weather_one_and_a_half_days_entity.dart";
import "package:fern_quiz/domain/weather/weather_element_type.dart";
import "package:fern_quiz/domain/weather/weather_forecast_mapper.dart";

void main() {
  group("mapToWeatherForecasts", () {
    test("records is null returns empty list", () {
      const entity = WeatherOneAndAHalfDaysEntity(success: "true");
      expect(mapToWeatherForecasts(entity), isEmpty);
    });

    test("empty location list returns empty list", () {
      final entity = WeatherOneAndAHalfDaysEntity(
        success: "true",
        records: WeatherRecords(location: []),
      );
      expect(mapToWeatherForecasts(entity), isEmpty);
    });

    test("maps locationName for multiple cities", () {
      final entity = WeatherOneAndAHalfDaysEntity(
        success: "true",
        records: WeatherRecords(
          location: [
            WeatherLocation(locationName: "臺北市", weatherElement: []),
            WeatherLocation(locationName: "臺中市", weatherElement: []),
          ],
        ),
      );
      final result = mapToWeatherForecasts(entity);
      expect(result.length, 2);
      expect(result[0].locationName, "臺北市");
      expect(result[1].locationName, "臺中市");
    });

    test("unknown elementName is filtered out", () {
      final entity = WeatherOneAndAHalfDaysEntity(
        success: "true",
        records: WeatherRecords(
          location: [
            WeatherLocation(
              locationName: "臺北市",
              weatherElement: [
                WeatherElement(
                  elementName: "UNKNOWN",
                  time: [
                    WeatherTime(
                      parameter: WeatherParameter(parameterName: "val"),
                    ),
                  ],
                ),
                WeatherElement(
                  elementName: "Wx",
                  time: [
                    WeatherTime(
                      parameter: WeatherParameter(parameterName: "晴"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
      final result = mapToWeatherForecasts(entity);
      expect(result.first.elements.length, 1);
      expect(result.first.elements.first.type, WeatherElementType.wx);
      expect(result.first.elements.first.value, "晴");
    });

    test("value includes correct unit suffix", () {
      final entity = WeatherOneAndAHalfDaysEntity(
        success: "true",
        records: WeatherRecords(
          location: [
            WeatherLocation(
              locationName: "臺北市",
              weatherElement: [
                WeatherElement(
                  elementName: "PoP",
                  time: [
                    WeatherTime(parameter: WeatherParameter(parameterName: "20")),
                  ],
                ),
                WeatherElement(
                  elementName: "MinT",
                  time: [
                    WeatherTime(parameter: WeatherParameter(parameterName: "18")),
                  ],
                ),
                WeatherElement(
                  elementName: "MaxT",
                  time: [
                    WeatherTime(parameter: WeatherParameter(parameterName: "25")),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
      final result = mapToWeatherForecasts(entity);
      final elements = result.first.elements;
      final pop  = elements.firstWhere((e) => e.type == WeatherElementType.pop);
      final minT = elements.firstWhere((e) => e.type == WeatherElementType.minT);
      final maxT = elements.firstWhere((e) => e.type == WeatherElementType.maxT);
      expect(pop.value,  "20%");
      expect(minT.value, "18°C");
      expect(maxT.value, "25°C");
    });

    test("maps startTime and endTime correctly", () {
      final start = DateTime(2024, 6, 1, 6);
      final end   = DateTime(2024, 6, 1, 18);
      final entity = WeatherOneAndAHalfDaysEntity(
        success: "true",
        records: WeatherRecords(
          location: [
            WeatherLocation(
              locationName: "臺北市",
              weatherElement: [
                WeatherElement(
                  elementName: "Wx",
                  time: [
                    WeatherTime(
                      startTime: start,
                      endTime:   end,
                      parameter: WeatherParameter(parameterName: "晴"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
      final result = mapToWeatherForecasts(entity);
      expect(result.first.startTime, start);
      expect(result.first.endTime,   end);
    });

    test("null weatherElement returns empty elements list", () {
      final entity = WeatherOneAndAHalfDaysEntity(
        success: "true",
        records: WeatherRecords(
          location: [WeatherLocation(locationName: "臺北市")],
        ),
      );
      expect(mapToWeatherForecasts(entity).first.elements, isEmpty);
    });
  });
}

import "package:freezed_annotation/freezed_annotation.dart";

part "weather_one_and_a_half_days_entity.freezed.dart";
part "weather_one_and_a_half_days_entity.g.dart";

@freezed
abstract class WeatherOneAndAHalfDaysEntity with _$WeatherOneAndAHalfDaysEntity {
  const factory WeatherOneAndAHalfDaysEntity({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "result")
    WeatherOneAndAHalfDaysResult? result,
    @JsonKey(name: "records")
    WeatherRecords? records,
  }) = _WeatherOneAndAHalfDaysEntity;

  factory WeatherOneAndAHalfDaysEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherOneAndAHalfDaysEntityFromJson(json);
}

@freezed
abstract class WeatherRecords with _$WeatherRecords {
  const factory WeatherRecords({
    @JsonKey(name: "datasetDescription")
    String? datasetDescription,
    @JsonKey(name: "location")
    List<WeatherLocation>? location,
  }) = _WeatherRecords;

  factory WeatherRecords.fromJson(Map<String, dynamic> json) =>
      _$WeatherRecordsFromJson(json);
}

@freezed
abstract class WeatherLocation with _$WeatherLocation {
  const factory WeatherLocation({
    @JsonKey(name: "locationName")
    String? locationName,
    @JsonKey(name: "weatherElement")
    List<WeatherElement>? weatherElement,
  }) = _WeatherLocation;

  factory WeatherLocation.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationFromJson(json);
}

@freezed
abstract class WeatherElement with _$WeatherElement {
  const factory WeatherElement({
    @JsonKey(name: "elementName")
    String? elementName,
    @JsonKey(name: "time")
    List<WeatherTime>? time,
  }) = _WeatherElement;

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);
}

@freezed
abstract class WeatherTime with _$WeatherTime {
  const factory WeatherTime({
    @JsonKey(name: "startTime")
    DateTime? startTime,
    @JsonKey(name: "endTime")
    DateTime? endTime,
    @JsonKey(name: "parameter")
    WeatherParameter? parameter,
  }) = _WeatherTime;

  factory WeatherTime.fromJson(Map<String, dynamic> json) =>
      _$WeatherTimeFromJson(json);
}

@freezed
abstract class WeatherParameter with _$WeatherParameter {
  const factory WeatherParameter({
    @JsonKey(name: "parameterName")
    String? parameterName,
    @JsonKey(name: "parameterValue")
    String? parameterValue,
    @JsonKey(name: "parameterUnit")
    String? parameterUnit,
  }) = _WeatherParameter;

  factory WeatherParameter.fromJson(Map<String, dynamic> json) =>
      _$WeatherParameterFromJson(json);
}

@freezed
abstract class WeatherOneAndAHalfDaysResult
    with _$WeatherOneAndAHalfDaysResult {
  const factory WeatherOneAndAHalfDaysResult({
    @JsonKey(name: "resource_id")
    String? resourceId,
    @JsonKey(name: "fields")
    List<WeatherField>? fields,
  }) = _WeatherOneAndAHalfDaysResult;

  factory WeatherOneAndAHalfDaysResult.fromJson(Map<String, dynamic> json) =>
      _$WeatherOneAndAHalfDaysResultFromJson(json);
}

@freezed
abstract class WeatherField with _$WeatherField {
  const factory WeatherField({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "type")
    String? type,
  }) = _WeatherField;

  factory WeatherField.fromJson(Map<String, dynamic> json) =>
      _$WeatherFieldFromJson(json);
}

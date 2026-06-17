// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_one_and_a_half_days_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherOneAndAHalfDaysEntity _$WeatherOneAndAHalfDaysEntityFromJson(
  Map<String, dynamic> json,
) => _WeatherOneAndAHalfDaysEntity(
  success: json['success'] as String?,
  result: json['result'] == null
      ? null
      : WeatherOneAndAHalfDaysResult.fromJson(
          json['result'] as Map<String, dynamic>,
        ),
  records: json['records'] == null
      ? null
      : WeatherRecords.fromJson(json['records'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WeatherOneAndAHalfDaysEntityToJson(
  _WeatherOneAndAHalfDaysEntity instance,
) => <String, dynamic>{
  'success': instance.success,
  'result': instance.result,
  'records': instance.records,
};

_WeatherRecords _$WeatherRecordsFromJson(Map<String, dynamic> json) =>
    _WeatherRecords(
      datasetDescription: json['datasetDescription'] as String?,
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => WeatherLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherRecordsToJson(_WeatherRecords instance) =>
    <String, dynamic>{
      'datasetDescription': instance.datasetDescription,
      'location': instance.location,
    };

_WeatherLocation _$WeatherLocationFromJson(Map<String, dynamic> json) =>
    _WeatherLocation(
      locationName: json['locationName'] as String?,
      weatherElement: (json['weatherElement'] as List<dynamic>?)
          ?.map((e) => WeatherElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherLocationToJson(_WeatherLocation instance) =>
    <String, dynamic>{
      'locationName': instance.locationName,
      'weatherElement': instance.weatherElement,
    };

_WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) =>
    _WeatherElement(
      elementName: json['elementName'] as String?,
      time: (json['time'] as List<dynamic>?)
          ?.map((e) => WeatherTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherElementToJson(_WeatherElement instance) =>
    <String, dynamic>{
      'elementName': instance.elementName,
      'time': instance.time,
    };

_WeatherTime _$WeatherTimeFromJson(Map<String, dynamic> json) => _WeatherTime(
  startTime: json['startTime'] == null
      ? null
      : DateTime.parse(json['startTime'] as String),
  endTime: json['endTime'] == null
      ? null
      : DateTime.parse(json['endTime'] as String),
  parameter: json['parameter'] == null
      ? null
      : WeatherParameter.fromJson(json['parameter'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WeatherTimeToJson(_WeatherTime instance) =>
    <String, dynamic>{
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'parameter': instance.parameter,
    };

_WeatherParameter _$WeatherParameterFromJson(Map<String, dynamic> json) =>
    _WeatherParameter(
      parameterName: json['parameterName'] as String?,
      parameterValue: json['parameterValue'] as String?,
      parameterUnit: json['parameterUnit'] as String?,
    );

Map<String, dynamic> _$WeatherParameterToJson(_WeatherParameter instance) =>
    <String, dynamic>{
      'parameterName': instance.parameterName,
      'parameterValue': instance.parameterValue,
      'parameterUnit': instance.parameterUnit,
    };

_WeatherOneAndAHalfDaysResult _$WeatherOneAndAHalfDaysResultFromJson(
  Map<String, dynamic> json,
) => _WeatherOneAndAHalfDaysResult(
  resourceId: json['resource_id'] as String?,
  fields: (json['fields'] as List<dynamic>?)
      ?.map((e) => WeatherField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$WeatherOneAndAHalfDaysResultToJson(
  _WeatherOneAndAHalfDaysResult instance,
) => <String, dynamic>{
  'resource_id': instance.resourceId,
  'fields': instance.fields,
};

_WeatherField _$WeatherFieldFromJson(Map<String, dynamic> json) =>
    _WeatherField(id: json['id'] as String?, type: json['type'] as String?);

Map<String, dynamic> _$WeatherFieldToJson(_WeatherField instance) =>
    <String, dynamic>{'id': instance.id, 'type': instance.type};

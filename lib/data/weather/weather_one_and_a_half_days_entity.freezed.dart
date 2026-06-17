// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_one_and_a_half_days_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherOneAndAHalfDaysEntity {

@JsonKey(name: "success") String? get success;@JsonKey(name: "result") WeatherOneAndAHalfDaysResult? get result;@JsonKey(name: "records") WeatherRecords? get records;
/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherOneAndAHalfDaysEntityCopyWith<WeatherOneAndAHalfDaysEntity> get copyWith => _$WeatherOneAndAHalfDaysEntityCopyWithImpl<WeatherOneAndAHalfDaysEntity>(this as WeatherOneAndAHalfDaysEntity, _$identity);

  /// Serializes this WeatherOneAndAHalfDaysEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherOneAndAHalfDaysEntity&&(identical(other.success, success) || other.success == success)&&(identical(other.result, result) || other.result == result)&&(identical(other.records, records) || other.records == records));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,result,records);

@override
String toString() {
  return 'WeatherOneAndAHalfDaysEntity(success: $success, result: $result, records: $records)';
}


}

/// @nodoc
abstract mixin class $WeatherOneAndAHalfDaysEntityCopyWith<$Res>  {
  factory $WeatherOneAndAHalfDaysEntityCopyWith(WeatherOneAndAHalfDaysEntity value, $Res Function(WeatherOneAndAHalfDaysEntity) _then) = _$WeatherOneAndAHalfDaysEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "result") WeatherOneAndAHalfDaysResult? result,@JsonKey(name: "records") WeatherRecords? records
});


$WeatherOneAndAHalfDaysResultCopyWith<$Res>? get result;$WeatherRecordsCopyWith<$Res>? get records;

}
/// @nodoc
class _$WeatherOneAndAHalfDaysEntityCopyWithImpl<$Res>
    implements $WeatherOneAndAHalfDaysEntityCopyWith<$Res> {
  _$WeatherOneAndAHalfDaysEntityCopyWithImpl(this._self, this._then);

  final WeatherOneAndAHalfDaysEntity _self;
  final $Res Function(WeatherOneAndAHalfDaysEntity) _then;

/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? result = freezed,Object? records = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as WeatherOneAndAHalfDaysResult?,records: freezed == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as WeatherRecords?,
  ));
}
/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherOneAndAHalfDaysResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $WeatherOneAndAHalfDaysResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherRecordsCopyWith<$Res>? get records {
    if (_self.records == null) {
    return null;
  }

  return $WeatherRecordsCopyWith<$Res>(_self.records!, (value) {
    return _then(_self.copyWith(records: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherOneAndAHalfDaysEntity].
extension WeatherOneAndAHalfDaysEntityPatterns on WeatherOneAndAHalfDaysEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherOneAndAHalfDaysEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherOneAndAHalfDaysEntity value)  $default,){
final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherOneAndAHalfDaysEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "result")  WeatherOneAndAHalfDaysResult? result, @JsonKey(name: "records")  WeatherRecords? records)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysEntity() when $default != null:
return $default(_that.success,_that.result,_that.records);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "result")  WeatherOneAndAHalfDaysResult? result, @JsonKey(name: "records")  WeatherRecords? records)  $default,) {final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysEntity():
return $default(_that.success,_that.result,_that.records);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "result")  WeatherOneAndAHalfDaysResult? result, @JsonKey(name: "records")  WeatherRecords? records)?  $default,) {final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysEntity() when $default != null:
return $default(_that.success,_that.result,_that.records);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherOneAndAHalfDaysEntity implements WeatherOneAndAHalfDaysEntity {
  const _WeatherOneAndAHalfDaysEntity({@JsonKey(name: "success") this.success, @JsonKey(name: "result") this.result, @JsonKey(name: "records") this.records});
  factory _WeatherOneAndAHalfDaysEntity.fromJson(Map<String, dynamic> json) => _$WeatherOneAndAHalfDaysEntityFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "result") final  WeatherOneAndAHalfDaysResult? result;
@override@JsonKey(name: "records") final  WeatherRecords? records;

/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherOneAndAHalfDaysEntityCopyWith<_WeatherOneAndAHalfDaysEntity> get copyWith => __$WeatherOneAndAHalfDaysEntityCopyWithImpl<_WeatherOneAndAHalfDaysEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherOneAndAHalfDaysEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherOneAndAHalfDaysEntity&&(identical(other.success, success) || other.success == success)&&(identical(other.result, result) || other.result == result)&&(identical(other.records, records) || other.records == records));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,result,records);

@override
String toString() {
  return 'WeatherOneAndAHalfDaysEntity(success: $success, result: $result, records: $records)';
}


}

/// @nodoc
abstract mixin class _$WeatherOneAndAHalfDaysEntityCopyWith<$Res> implements $WeatherOneAndAHalfDaysEntityCopyWith<$Res> {
  factory _$WeatherOneAndAHalfDaysEntityCopyWith(_WeatherOneAndAHalfDaysEntity value, $Res Function(_WeatherOneAndAHalfDaysEntity) _then) = __$WeatherOneAndAHalfDaysEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "result") WeatherOneAndAHalfDaysResult? result,@JsonKey(name: "records") WeatherRecords? records
});


@override $WeatherOneAndAHalfDaysResultCopyWith<$Res>? get result;@override $WeatherRecordsCopyWith<$Res>? get records;

}
/// @nodoc
class __$WeatherOneAndAHalfDaysEntityCopyWithImpl<$Res>
    implements _$WeatherOneAndAHalfDaysEntityCopyWith<$Res> {
  __$WeatherOneAndAHalfDaysEntityCopyWithImpl(this._self, this._then);

  final _WeatherOneAndAHalfDaysEntity _self;
  final $Res Function(_WeatherOneAndAHalfDaysEntity) _then;

/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? result = freezed,Object? records = freezed,}) {
  return _then(_WeatherOneAndAHalfDaysEntity(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as WeatherOneAndAHalfDaysResult?,records: freezed == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as WeatherRecords?,
  ));
}

/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherOneAndAHalfDaysResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $WeatherOneAndAHalfDaysResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}/// Create a copy of WeatherOneAndAHalfDaysEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherRecordsCopyWith<$Res>? get records {
    if (_self.records == null) {
    return null;
  }

  return $WeatherRecordsCopyWith<$Res>(_self.records!, (value) {
    return _then(_self.copyWith(records: value));
  });
}
}


/// @nodoc
mixin _$WeatherRecords {

@JsonKey(name: "datasetDescription") String? get datasetDescription;@JsonKey(name: "location") List<WeatherLocation>? get location;
/// Create a copy of WeatherRecords
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherRecordsCopyWith<WeatherRecords> get copyWith => _$WeatherRecordsCopyWithImpl<WeatherRecords>(this as WeatherRecords, _$identity);

  /// Serializes this WeatherRecords to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherRecords&&(identical(other.datasetDescription, datasetDescription) || other.datasetDescription == datasetDescription)&&const DeepCollectionEquality().equals(other.location, location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datasetDescription,const DeepCollectionEquality().hash(location));

@override
String toString() {
  return 'WeatherRecords(datasetDescription: $datasetDescription, location: $location)';
}


}

/// @nodoc
abstract mixin class $WeatherRecordsCopyWith<$Res>  {
  factory $WeatherRecordsCopyWith(WeatherRecords value, $Res Function(WeatherRecords) _then) = _$WeatherRecordsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "datasetDescription") String? datasetDescription,@JsonKey(name: "location") List<WeatherLocation>? location
});




}
/// @nodoc
class _$WeatherRecordsCopyWithImpl<$Res>
    implements $WeatherRecordsCopyWith<$Res> {
  _$WeatherRecordsCopyWithImpl(this._self, this._then);

  final WeatherRecords _self;
  final $Res Function(WeatherRecords) _then;

/// Create a copy of WeatherRecords
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? datasetDescription = freezed,Object? location = freezed,}) {
  return _then(_self.copyWith(
datasetDescription: freezed == datasetDescription ? _self.datasetDescription : datasetDescription // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as List<WeatherLocation>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherRecords].
extension WeatherRecordsPatterns on WeatherRecords {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherRecords value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherRecords() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherRecords value)  $default,){
final _that = this;
switch (_that) {
case _WeatherRecords():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherRecords value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherRecords() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "datasetDescription")  String? datasetDescription, @JsonKey(name: "location")  List<WeatherLocation>? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherRecords() when $default != null:
return $default(_that.datasetDescription,_that.location);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "datasetDescription")  String? datasetDescription, @JsonKey(name: "location")  List<WeatherLocation>? location)  $default,) {final _that = this;
switch (_that) {
case _WeatherRecords():
return $default(_that.datasetDescription,_that.location);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "datasetDescription")  String? datasetDescription, @JsonKey(name: "location")  List<WeatherLocation>? location)?  $default,) {final _that = this;
switch (_that) {
case _WeatherRecords() when $default != null:
return $default(_that.datasetDescription,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherRecords implements WeatherRecords {
  const _WeatherRecords({@JsonKey(name: "datasetDescription") this.datasetDescription, @JsonKey(name: "location") final  List<WeatherLocation>? location}): _location = location;
  factory _WeatherRecords.fromJson(Map<String, dynamic> json) => _$WeatherRecordsFromJson(json);

@override@JsonKey(name: "datasetDescription") final  String? datasetDescription;
 final  List<WeatherLocation>? _location;
@override@JsonKey(name: "location") List<WeatherLocation>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableListView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WeatherRecords
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherRecordsCopyWith<_WeatherRecords> get copyWith => __$WeatherRecordsCopyWithImpl<_WeatherRecords>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherRecordsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherRecords&&(identical(other.datasetDescription, datasetDescription) || other.datasetDescription == datasetDescription)&&const DeepCollectionEquality().equals(other._location, _location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datasetDescription,const DeepCollectionEquality().hash(_location));

@override
String toString() {
  return 'WeatherRecords(datasetDescription: $datasetDescription, location: $location)';
}


}

/// @nodoc
abstract mixin class _$WeatherRecordsCopyWith<$Res> implements $WeatherRecordsCopyWith<$Res> {
  factory _$WeatherRecordsCopyWith(_WeatherRecords value, $Res Function(_WeatherRecords) _then) = __$WeatherRecordsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "datasetDescription") String? datasetDescription,@JsonKey(name: "location") List<WeatherLocation>? location
});




}
/// @nodoc
class __$WeatherRecordsCopyWithImpl<$Res>
    implements _$WeatherRecordsCopyWith<$Res> {
  __$WeatherRecordsCopyWithImpl(this._self, this._then);

  final _WeatherRecords _self;
  final $Res Function(_WeatherRecords) _then;

/// Create a copy of WeatherRecords
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? datasetDescription = freezed,Object? location = freezed,}) {
  return _then(_WeatherRecords(
datasetDescription: freezed == datasetDescription ? _self.datasetDescription : datasetDescription // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as List<WeatherLocation>?,
  ));
}


}


/// @nodoc
mixin _$WeatherLocation {

@JsonKey(name: "locationName") String? get locationName;@JsonKey(name: "weatherElement") List<WeatherElement>? get weatherElement;
/// Create a copy of WeatherLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherLocationCopyWith<WeatherLocation> get copyWith => _$WeatherLocationCopyWithImpl<WeatherLocation>(this as WeatherLocation, _$identity);

  /// Serializes this WeatherLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLocation&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other.weatherElement, weatherElement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationName,const DeepCollectionEquality().hash(weatherElement));

@override
String toString() {
  return 'WeatherLocation(locationName: $locationName, weatherElement: $weatherElement)';
}


}

/// @nodoc
abstract mixin class $WeatherLocationCopyWith<$Res>  {
  factory $WeatherLocationCopyWith(WeatherLocation value, $Res Function(WeatherLocation) _then) = _$WeatherLocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "locationName") String? locationName,@JsonKey(name: "weatherElement") List<WeatherElement>? weatherElement
});




}
/// @nodoc
class _$WeatherLocationCopyWithImpl<$Res>
    implements $WeatherLocationCopyWith<$Res> {
  _$WeatherLocationCopyWithImpl(this._self, this._then);

  final WeatherLocation _self;
  final $Res Function(WeatherLocation) _then;

/// Create a copy of WeatherLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationName = freezed,Object? weatherElement = freezed,}) {
  return _then(_self.copyWith(
locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,weatherElement: freezed == weatherElement ? _self.weatherElement : weatherElement // ignore: cast_nullable_to_non_nullable
as List<WeatherElement>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherLocation].
extension WeatherLocationPatterns on WeatherLocation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherLocation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherLocation value)  $default,){
final _that = this;
switch (_that) {
case _WeatherLocation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherLocation value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherLocation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "locationName")  String? locationName, @JsonKey(name: "weatherElement")  List<WeatherElement>? weatherElement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherLocation() when $default != null:
return $default(_that.locationName,_that.weatherElement);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "locationName")  String? locationName, @JsonKey(name: "weatherElement")  List<WeatherElement>? weatherElement)  $default,) {final _that = this;
switch (_that) {
case _WeatherLocation():
return $default(_that.locationName,_that.weatherElement);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "locationName")  String? locationName, @JsonKey(name: "weatherElement")  List<WeatherElement>? weatherElement)?  $default,) {final _that = this;
switch (_that) {
case _WeatherLocation() when $default != null:
return $default(_that.locationName,_that.weatherElement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherLocation implements WeatherLocation {
  const _WeatherLocation({@JsonKey(name: "locationName") this.locationName, @JsonKey(name: "weatherElement") final  List<WeatherElement>? weatherElement}): _weatherElement = weatherElement;
  factory _WeatherLocation.fromJson(Map<String, dynamic> json) => _$WeatherLocationFromJson(json);

@override@JsonKey(name: "locationName") final  String? locationName;
 final  List<WeatherElement>? _weatherElement;
@override@JsonKey(name: "weatherElement") List<WeatherElement>? get weatherElement {
  final value = _weatherElement;
  if (value == null) return null;
  if (_weatherElement is EqualUnmodifiableListView) return _weatherElement;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WeatherLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherLocationCopyWith<_WeatherLocation> get copyWith => __$WeatherLocationCopyWithImpl<_WeatherLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherLocation&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other._weatherElement, _weatherElement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationName,const DeepCollectionEquality().hash(_weatherElement));

@override
String toString() {
  return 'WeatherLocation(locationName: $locationName, weatherElement: $weatherElement)';
}


}

/// @nodoc
abstract mixin class _$WeatherLocationCopyWith<$Res> implements $WeatherLocationCopyWith<$Res> {
  factory _$WeatherLocationCopyWith(_WeatherLocation value, $Res Function(_WeatherLocation) _then) = __$WeatherLocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "locationName") String? locationName,@JsonKey(name: "weatherElement") List<WeatherElement>? weatherElement
});




}
/// @nodoc
class __$WeatherLocationCopyWithImpl<$Res>
    implements _$WeatherLocationCopyWith<$Res> {
  __$WeatherLocationCopyWithImpl(this._self, this._then);

  final _WeatherLocation _self;
  final $Res Function(_WeatherLocation) _then;

/// Create a copy of WeatherLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationName = freezed,Object? weatherElement = freezed,}) {
  return _then(_WeatherLocation(
locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,weatherElement: freezed == weatherElement ? _self._weatherElement : weatherElement // ignore: cast_nullable_to_non_nullable
as List<WeatherElement>?,
  ));
}


}


/// @nodoc
mixin _$WeatherElement {

@JsonKey(name: "elementName") String? get elementName;@JsonKey(name: "time") List<WeatherTime>? get time;
/// Create a copy of WeatherElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherElementCopyWith<WeatherElement> get copyWith => _$WeatherElementCopyWithImpl<WeatherElement>(this as WeatherElement, _$identity);

  /// Serializes this WeatherElement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherElement&&(identical(other.elementName, elementName) || other.elementName == elementName)&&const DeepCollectionEquality().equals(other.time, time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,elementName,const DeepCollectionEquality().hash(time));

@override
String toString() {
  return 'WeatherElement(elementName: $elementName, time: $time)';
}


}

/// @nodoc
abstract mixin class $WeatherElementCopyWith<$Res>  {
  factory $WeatherElementCopyWith(WeatherElement value, $Res Function(WeatherElement) _then) = _$WeatherElementCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "elementName") String? elementName,@JsonKey(name: "time") List<WeatherTime>? time
});




}
/// @nodoc
class _$WeatherElementCopyWithImpl<$Res>
    implements $WeatherElementCopyWith<$Res> {
  _$WeatherElementCopyWithImpl(this._self, this._then);

  final WeatherElement _self;
  final $Res Function(WeatherElement) _then;

/// Create a copy of WeatherElement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? elementName = freezed,Object? time = freezed,}) {
  return _then(_self.copyWith(
elementName: freezed == elementName ? _self.elementName : elementName // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<WeatherTime>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherElement].
extension WeatherElementPatterns on WeatherElement {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherElement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherElement() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherElement value)  $default,){
final _that = this;
switch (_that) {
case _WeatherElement():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherElement value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherElement() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "elementName")  String? elementName, @JsonKey(name: "time")  List<WeatherTime>? time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherElement() when $default != null:
return $default(_that.elementName,_that.time);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "elementName")  String? elementName, @JsonKey(name: "time")  List<WeatherTime>? time)  $default,) {final _that = this;
switch (_that) {
case _WeatherElement():
return $default(_that.elementName,_that.time);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "elementName")  String? elementName, @JsonKey(name: "time")  List<WeatherTime>? time)?  $default,) {final _that = this;
switch (_that) {
case _WeatherElement() when $default != null:
return $default(_that.elementName,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherElement implements WeatherElement {
  const _WeatherElement({@JsonKey(name: "elementName") this.elementName, @JsonKey(name: "time") final  List<WeatherTime>? time}): _time = time;
  factory _WeatherElement.fromJson(Map<String, dynamic> json) => _$WeatherElementFromJson(json);

@override@JsonKey(name: "elementName") final  String? elementName;
 final  List<WeatherTime>? _time;
@override@JsonKey(name: "time") List<WeatherTime>? get time {
  final value = _time;
  if (value == null) return null;
  if (_time is EqualUnmodifiableListView) return _time;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WeatherElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherElementCopyWith<_WeatherElement> get copyWith => __$WeatherElementCopyWithImpl<_WeatherElement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherElementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherElement&&(identical(other.elementName, elementName) || other.elementName == elementName)&&const DeepCollectionEquality().equals(other._time, _time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,elementName,const DeepCollectionEquality().hash(_time));

@override
String toString() {
  return 'WeatherElement(elementName: $elementName, time: $time)';
}


}

/// @nodoc
abstract mixin class _$WeatherElementCopyWith<$Res> implements $WeatherElementCopyWith<$Res> {
  factory _$WeatherElementCopyWith(_WeatherElement value, $Res Function(_WeatherElement) _then) = __$WeatherElementCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "elementName") String? elementName,@JsonKey(name: "time") List<WeatherTime>? time
});




}
/// @nodoc
class __$WeatherElementCopyWithImpl<$Res>
    implements _$WeatherElementCopyWith<$Res> {
  __$WeatherElementCopyWithImpl(this._self, this._then);

  final _WeatherElement _self;
  final $Res Function(_WeatherElement) _then;

/// Create a copy of WeatherElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? elementName = freezed,Object? time = freezed,}) {
  return _then(_WeatherElement(
elementName: freezed == elementName ? _self.elementName : elementName // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<WeatherTime>?,
  ));
}


}


/// @nodoc
mixin _$WeatherTime {

@JsonKey(name: "startTime") DateTime? get startTime;@JsonKey(name: "endTime") DateTime? get endTime;@JsonKey(name: "parameter") WeatherParameter? get parameter;
/// Create a copy of WeatherTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherTimeCopyWith<WeatherTime> get copyWith => _$WeatherTimeCopyWithImpl<WeatherTime>(this as WeatherTime, _$identity);

  /// Serializes this WeatherTime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherTime&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.parameter, parameter) || other.parameter == parameter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startTime,endTime,parameter);

@override
String toString() {
  return 'WeatherTime(startTime: $startTime, endTime: $endTime, parameter: $parameter)';
}


}

/// @nodoc
abstract mixin class $WeatherTimeCopyWith<$Res>  {
  factory $WeatherTimeCopyWith(WeatherTime value, $Res Function(WeatherTime) _then) = _$WeatherTimeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "startTime") DateTime? startTime,@JsonKey(name: "endTime") DateTime? endTime,@JsonKey(name: "parameter") WeatherParameter? parameter
});


$WeatherParameterCopyWith<$Res>? get parameter;

}
/// @nodoc
class _$WeatherTimeCopyWithImpl<$Res>
    implements $WeatherTimeCopyWith<$Res> {
  _$WeatherTimeCopyWithImpl(this._self, this._then);

  final WeatherTime _self;
  final $Res Function(WeatherTime) _then;

/// Create a copy of WeatherTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startTime = freezed,Object? endTime = freezed,Object? parameter = freezed,}) {
  return _then(_self.copyWith(
startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,parameter: freezed == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as WeatherParameter?,
  ));
}
/// Create a copy of WeatherTime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherParameterCopyWith<$Res>? get parameter {
    if (_self.parameter == null) {
    return null;
  }

  return $WeatherParameterCopyWith<$Res>(_self.parameter!, (value) {
    return _then(_self.copyWith(parameter: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherTime].
extension WeatherTimePatterns on WeatherTime {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherTime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherTime() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherTime value)  $default,){
final _that = this;
switch (_that) {
case _WeatherTime():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherTime value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherTime() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "startTime")  DateTime? startTime, @JsonKey(name: "endTime")  DateTime? endTime, @JsonKey(name: "parameter")  WeatherParameter? parameter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherTime() when $default != null:
return $default(_that.startTime,_that.endTime,_that.parameter);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "startTime")  DateTime? startTime, @JsonKey(name: "endTime")  DateTime? endTime, @JsonKey(name: "parameter")  WeatherParameter? parameter)  $default,) {final _that = this;
switch (_that) {
case _WeatherTime():
return $default(_that.startTime,_that.endTime,_that.parameter);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "startTime")  DateTime? startTime, @JsonKey(name: "endTime")  DateTime? endTime, @JsonKey(name: "parameter")  WeatherParameter? parameter)?  $default,) {final _that = this;
switch (_that) {
case _WeatherTime() when $default != null:
return $default(_that.startTime,_that.endTime,_that.parameter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherTime implements WeatherTime {
  const _WeatherTime({@JsonKey(name: "startTime") this.startTime, @JsonKey(name: "endTime") this.endTime, @JsonKey(name: "parameter") this.parameter});
  factory _WeatherTime.fromJson(Map<String, dynamic> json) => _$WeatherTimeFromJson(json);

@override@JsonKey(name: "startTime") final  DateTime? startTime;
@override@JsonKey(name: "endTime") final  DateTime? endTime;
@override@JsonKey(name: "parameter") final  WeatherParameter? parameter;

/// Create a copy of WeatherTime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherTimeCopyWith<_WeatherTime> get copyWith => __$WeatherTimeCopyWithImpl<_WeatherTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherTimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherTime&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.parameter, parameter) || other.parameter == parameter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startTime,endTime,parameter);

@override
String toString() {
  return 'WeatherTime(startTime: $startTime, endTime: $endTime, parameter: $parameter)';
}


}

/// @nodoc
abstract mixin class _$WeatherTimeCopyWith<$Res> implements $WeatherTimeCopyWith<$Res> {
  factory _$WeatherTimeCopyWith(_WeatherTime value, $Res Function(_WeatherTime) _then) = __$WeatherTimeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "startTime") DateTime? startTime,@JsonKey(name: "endTime") DateTime? endTime,@JsonKey(name: "parameter") WeatherParameter? parameter
});


@override $WeatherParameterCopyWith<$Res>? get parameter;

}
/// @nodoc
class __$WeatherTimeCopyWithImpl<$Res>
    implements _$WeatherTimeCopyWith<$Res> {
  __$WeatherTimeCopyWithImpl(this._self, this._then);

  final _WeatherTime _self;
  final $Res Function(_WeatherTime) _then;

/// Create a copy of WeatherTime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startTime = freezed,Object? endTime = freezed,Object? parameter = freezed,}) {
  return _then(_WeatherTime(
startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,parameter: freezed == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as WeatherParameter?,
  ));
}

/// Create a copy of WeatherTime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherParameterCopyWith<$Res>? get parameter {
    if (_self.parameter == null) {
    return null;
  }

  return $WeatherParameterCopyWith<$Res>(_self.parameter!, (value) {
    return _then(_self.copyWith(parameter: value));
  });
}
}


/// @nodoc
mixin _$WeatherParameter {

@JsonKey(name: "parameterName") String? get parameterName;@JsonKey(name: "parameterValue") String? get parameterValue;@JsonKey(name: "parameterUnit") String? get parameterUnit;
/// Create a copy of WeatherParameter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherParameterCopyWith<WeatherParameter> get copyWith => _$WeatherParameterCopyWithImpl<WeatherParameter>(this as WeatherParameter, _$identity);

  /// Serializes this WeatherParameter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherParameter&&(identical(other.parameterName, parameterName) || other.parameterName == parameterName)&&(identical(other.parameterValue, parameterValue) || other.parameterValue == parameterValue)&&(identical(other.parameterUnit, parameterUnit) || other.parameterUnit == parameterUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parameterName,parameterValue,parameterUnit);

@override
String toString() {
  return 'WeatherParameter(parameterName: $parameterName, parameterValue: $parameterValue, parameterUnit: $parameterUnit)';
}


}

/// @nodoc
abstract mixin class $WeatherParameterCopyWith<$Res>  {
  factory $WeatherParameterCopyWith(WeatherParameter value, $Res Function(WeatherParameter) _then) = _$WeatherParameterCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "parameterName") String? parameterName,@JsonKey(name: "parameterValue") String? parameterValue,@JsonKey(name: "parameterUnit") String? parameterUnit
});




}
/// @nodoc
class _$WeatherParameterCopyWithImpl<$Res>
    implements $WeatherParameterCopyWith<$Res> {
  _$WeatherParameterCopyWithImpl(this._self, this._then);

  final WeatherParameter _self;
  final $Res Function(WeatherParameter) _then;

/// Create a copy of WeatherParameter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parameterName = freezed,Object? parameterValue = freezed,Object? parameterUnit = freezed,}) {
  return _then(_self.copyWith(
parameterName: freezed == parameterName ? _self.parameterName : parameterName // ignore: cast_nullable_to_non_nullable
as String?,parameterValue: freezed == parameterValue ? _self.parameterValue : parameterValue // ignore: cast_nullable_to_non_nullable
as String?,parameterUnit: freezed == parameterUnit ? _self.parameterUnit : parameterUnit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherParameter].
extension WeatherParameterPatterns on WeatherParameter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherParameter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherParameter() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherParameter value)  $default,){
final _that = this;
switch (_that) {
case _WeatherParameter():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherParameter value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherParameter() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "parameterName")  String? parameterName, @JsonKey(name: "parameterValue")  String? parameterValue, @JsonKey(name: "parameterUnit")  String? parameterUnit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherParameter() when $default != null:
return $default(_that.parameterName,_that.parameterValue,_that.parameterUnit);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "parameterName")  String? parameterName, @JsonKey(name: "parameterValue")  String? parameterValue, @JsonKey(name: "parameterUnit")  String? parameterUnit)  $default,) {final _that = this;
switch (_that) {
case _WeatherParameter():
return $default(_that.parameterName,_that.parameterValue,_that.parameterUnit);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "parameterName")  String? parameterName, @JsonKey(name: "parameterValue")  String? parameterValue, @JsonKey(name: "parameterUnit")  String? parameterUnit)?  $default,) {final _that = this;
switch (_that) {
case _WeatherParameter() when $default != null:
return $default(_that.parameterName,_that.parameterValue,_that.parameterUnit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherParameter implements WeatherParameter {
  const _WeatherParameter({@JsonKey(name: "parameterName") this.parameterName, @JsonKey(name: "parameterValue") this.parameterValue, @JsonKey(name: "parameterUnit") this.parameterUnit});
  factory _WeatherParameter.fromJson(Map<String, dynamic> json) => _$WeatherParameterFromJson(json);

@override@JsonKey(name: "parameterName") final  String? parameterName;
@override@JsonKey(name: "parameterValue") final  String? parameterValue;
@override@JsonKey(name: "parameterUnit") final  String? parameterUnit;

/// Create a copy of WeatherParameter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherParameterCopyWith<_WeatherParameter> get copyWith => __$WeatherParameterCopyWithImpl<_WeatherParameter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherParameterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherParameter&&(identical(other.parameterName, parameterName) || other.parameterName == parameterName)&&(identical(other.parameterValue, parameterValue) || other.parameterValue == parameterValue)&&(identical(other.parameterUnit, parameterUnit) || other.parameterUnit == parameterUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parameterName,parameterValue,parameterUnit);

@override
String toString() {
  return 'WeatherParameter(parameterName: $parameterName, parameterValue: $parameterValue, parameterUnit: $parameterUnit)';
}


}

/// @nodoc
abstract mixin class _$WeatherParameterCopyWith<$Res> implements $WeatherParameterCopyWith<$Res> {
  factory _$WeatherParameterCopyWith(_WeatherParameter value, $Res Function(_WeatherParameter) _then) = __$WeatherParameterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "parameterName") String? parameterName,@JsonKey(name: "parameterValue") String? parameterValue,@JsonKey(name: "parameterUnit") String? parameterUnit
});




}
/// @nodoc
class __$WeatherParameterCopyWithImpl<$Res>
    implements _$WeatherParameterCopyWith<$Res> {
  __$WeatherParameterCopyWithImpl(this._self, this._then);

  final _WeatherParameter _self;
  final $Res Function(_WeatherParameter) _then;

/// Create a copy of WeatherParameter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parameterName = freezed,Object? parameterValue = freezed,Object? parameterUnit = freezed,}) {
  return _then(_WeatherParameter(
parameterName: freezed == parameterName ? _self.parameterName : parameterName // ignore: cast_nullable_to_non_nullable
as String?,parameterValue: freezed == parameterValue ? _self.parameterValue : parameterValue // ignore: cast_nullable_to_non_nullable
as String?,parameterUnit: freezed == parameterUnit ? _self.parameterUnit : parameterUnit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WeatherOneAndAHalfDaysResult {

@JsonKey(name: "resource_id") String? get resourceId;@JsonKey(name: "fields") List<WeatherField>? get fields;
/// Create a copy of WeatherOneAndAHalfDaysResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherOneAndAHalfDaysResultCopyWith<WeatherOneAndAHalfDaysResult> get copyWith => _$WeatherOneAndAHalfDaysResultCopyWithImpl<WeatherOneAndAHalfDaysResult>(this as WeatherOneAndAHalfDaysResult, _$identity);

  /// Serializes this WeatherOneAndAHalfDaysResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherOneAndAHalfDaysResult&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId)&&const DeepCollectionEquality().equals(other.fields, fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resourceId,const DeepCollectionEquality().hash(fields));

@override
String toString() {
  return 'WeatherOneAndAHalfDaysResult(resourceId: $resourceId, fields: $fields)';
}


}

/// @nodoc
abstract mixin class $WeatherOneAndAHalfDaysResultCopyWith<$Res>  {
  factory $WeatherOneAndAHalfDaysResultCopyWith(WeatherOneAndAHalfDaysResult value, $Res Function(WeatherOneAndAHalfDaysResult) _then) = _$WeatherOneAndAHalfDaysResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "resource_id") String? resourceId,@JsonKey(name: "fields") List<WeatherField>? fields
});




}
/// @nodoc
class _$WeatherOneAndAHalfDaysResultCopyWithImpl<$Res>
    implements $WeatherOneAndAHalfDaysResultCopyWith<$Res> {
  _$WeatherOneAndAHalfDaysResultCopyWithImpl(this._self, this._then);

  final WeatherOneAndAHalfDaysResult _self;
  final $Res Function(WeatherOneAndAHalfDaysResult) _then;

/// Create a copy of WeatherOneAndAHalfDaysResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resourceId = freezed,Object? fields = freezed,}) {
  return _then(_self.copyWith(
resourceId: freezed == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as String?,fields: freezed == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<WeatherField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherOneAndAHalfDaysResult].
extension WeatherOneAndAHalfDaysResultPatterns on WeatherOneAndAHalfDaysResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherOneAndAHalfDaysResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherOneAndAHalfDaysResult value)  $default,){
final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherOneAndAHalfDaysResult value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "resource_id")  String? resourceId, @JsonKey(name: "fields")  List<WeatherField>? fields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysResult() when $default != null:
return $default(_that.resourceId,_that.fields);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "resource_id")  String? resourceId, @JsonKey(name: "fields")  List<WeatherField>? fields)  $default,) {final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysResult():
return $default(_that.resourceId,_that.fields);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "resource_id")  String? resourceId, @JsonKey(name: "fields")  List<WeatherField>? fields)?  $default,) {final _that = this;
switch (_that) {
case _WeatherOneAndAHalfDaysResult() when $default != null:
return $default(_that.resourceId,_that.fields);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherOneAndAHalfDaysResult implements WeatherOneAndAHalfDaysResult {
  const _WeatherOneAndAHalfDaysResult({@JsonKey(name: "resource_id") this.resourceId, @JsonKey(name: "fields") final  List<WeatherField>? fields}): _fields = fields;
  factory _WeatherOneAndAHalfDaysResult.fromJson(Map<String, dynamic> json) => _$WeatherOneAndAHalfDaysResultFromJson(json);

@override@JsonKey(name: "resource_id") final  String? resourceId;
 final  List<WeatherField>? _fields;
@override@JsonKey(name: "fields") List<WeatherField>? get fields {
  final value = _fields;
  if (value == null) return null;
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WeatherOneAndAHalfDaysResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherOneAndAHalfDaysResultCopyWith<_WeatherOneAndAHalfDaysResult> get copyWith => __$WeatherOneAndAHalfDaysResultCopyWithImpl<_WeatherOneAndAHalfDaysResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherOneAndAHalfDaysResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherOneAndAHalfDaysResult&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId)&&const DeepCollectionEquality().equals(other._fields, _fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resourceId,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'WeatherOneAndAHalfDaysResult(resourceId: $resourceId, fields: $fields)';
}


}

/// @nodoc
abstract mixin class _$WeatherOneAndAHalfDaysResultCopyWith<$Res> implements $WeatherOneAndAHalfDaysResultCopyWith<$Res> {
  factory _$WeatherOneAndAHalfDaysResultCopyWith(_WeatherOneAndAHalfDaysResult value, $Res Function(_WeatherOneAndAHalfDaysResult) _then) = __$WeatherOneAndAHalfDaysResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "resource_id") String? resourceId,@JsonKey(name: "fields") List<WeatherField>? fields
});




}
/// @nodoc
class __$WeatherOneAndAHalfDaysResultCopyWithImpl<$Res>
    implements _$WeatherOneAndAHalfDaysResultCopyWith<$Res> {
  __$WeatherOneAndAHalfDaysResultCopyWithImpl(this._self, this._then);

  final _WeatherOneAndAHalfDaysResult _self;
  final $Res Function(_WeatherOneAndAHalfDaysResult) _then;

/// Create a copy of WeatherOneAndAHalfDaysResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resourceId = freezed,Object? fields = freezed,}) {
  return _then(_WeatherOneAndAHalfDaysResult(
resourceId: freezed == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as String?,fields: freezed == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<WeatherField>?,
  ));
}


}


/// @nodoc
mixin _$WeatherField {

@JsonKey(name: "id") String? get id;@JsonKey(name: "type") String? get type;
/// Create a copy of WeatherField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherFieldCopyWith<WeatherField> get copyWith => _$WeatherFieldCopyWithImpl<WeatherField>(this as WeatherField, _$identity);

  /// Serializes this WeatherField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherField&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type);

@override
String toString() {
  return 'WeatherField(id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class $WeatherFieldCopyWith<$Res>  {
  factory $WeatherFieldCopyWith(WeatherField value, $Res Function(WeatherField) _then) = _$WeatherFieldCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "type") String? type
});




}
/// @nodoc
class _$WeatherFieldCopyWithImpl<$Res>
    implements $WeatherFieldCopyWith<$Res> {
  _$WeatherFieldCopyWithImpl(this._self, this._then);

  final WeatherField _self;
  final $Res Function(WeatherField) _then;

/// Create a copy of WeatherField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherField].
extension WeatherFieldPatterns on WeatherField {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherField() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherField value)  $default,){
final _that = this;
switch (_that) {
case _WeatherField():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherField value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherField() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "type")  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherField() when $default != null:
return $default(_that.id,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "type")  String? type)  $default,) {final _that = this;
switch (_that) {
case _WeatherField():
return $default(_that.id,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "type")  String? type)?  $default,) {final _that = this;
switch (_that) {
case _WeatherField() when $default != null:
return $default(_that.id,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherField implements WeatherField {
  const _WeatherField({@JsonKey(name: "id") this.id, @JsonKey(name: "type") this.type});
  factory _WeatherField.fromJson(Map<String, dynamic> json) => _$WeatherFieldFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "type") final  String? type;

/// Create a copy of WeatherField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherFieldCopyWith<_WeatherField> get copyWith => __$WeatherFieldCopyWithImpl<_WeatherField>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherFieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherField&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type);

@override
String toString() {
  return 'WeatherField(id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class _$WeatherFieldCopyWith<$Res> implements $WeatherFieldCopyWith<$Res> {
  factory _$WeatherFieldCopyWith(_WeatherField value, $Res Function(_WeatherField) _then) = __$WeatherFieldCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "type") String? type
});




}
/// @nodoc
class __$WeatherFieldCopyWithImpl<$Res>
    implements _$WeatherFieldCopyWith<$Res> {
  __$WeatherFieldCopyWithImpl(this._self, this._then);

  final _WeatherField _self;
  final $Res Function(_WeatherField) _then;

/// Create a copy of WeatherField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,}) {
  return _then(_WeatherField(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

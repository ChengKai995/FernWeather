// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState()';
}


}

/// @nodoc
class $WeatherStateCopyWith<$Res>  {
$WeatherStateCopyWith(WeatherState _, $Res Function(WeatherState) __);
}


/// Adds pattern-matching-related methods to [WeatherState].
extension WeatherStatePatterns on WeatherState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WeatherLoading value)?  loading,TResult Function( WeatherSuccess value)?  success,TResult Function( WeatherError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WeatherLoading() when loading != null:
return loading(_that);case WeatherSuccess() when success != null:
return success(_that);case WeatherError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WeatherLoading value)  loading,required TResult Function( WeatherSuccess value)  success,required TResult Function( WeatherError value)  error,}){
final _that = this;
switch (_that) {
case WeatherLoading():
return loading(_that);case WeatherSuccess():
return success(_that);case WeatherError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WeatherLoading value)?  loading,TResult? Function( WeatherSuccess value)?  success,TResult? Function( WeatherError value)?  error,}){
final _that = this;
switch (_that) {
case WeatherLoading() when loading != null:
return loading(_that);case WeatherSuccess() when success != null:
return success(_that);case WeatherError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<WeatherForecast> forecasts)?  success,TResult Function( String message,  int? statusCode)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WeatherLoading() when loading != null:
return loading();case WeatherSuccess() when success != null:
return success(_that.forecasts);case WeatherError() when error != null:
return error(_that.message,_that.statusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<WeatherForecast> forecasts)  success,required TResult Function( String message,  int? statusCode)  error,}) {final _that = this;
switch (_that) {
case WeatherLoading():
return loading();case WeatherSuccess():
return success(_that.forecasts);case WeatherError():
return error(_that.message,_that.statusCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<WeatherForecast> forecasts)?  success,TResult? Function( String message,  int? statusCode)?  error,}) {final _that = this;
switch (_that) {
case WeatherLoading() when loading != null:
return loading();case WeatherSuccess() when success != null:
return success(_that.forecasts);case WeatherError() when error != null:
return error(_that.message,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc


class WeatherLoading implements WeatherState {
  const WeatherLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState.loading()';
}


}




/// @nodoc


class WeatherSuccess implements WeatherState {
  const WeatherSuccess(final  List<WeatherForecast> forecasts): _forecasts = forecasts;
  

 final  List<WeatherForecast> _forecasts;
 List<WeatherForecast> get forecasts {
  if (_forecasts is EqualUnmodifiableListView) return _forecasts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forecasts);
}


/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherSuccessCopyWith<WeatherSuccess> get copyWith => _$WeatherSuccessCopyWithImpl<WeatherSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherSuccess&&const DeepCollectionEquality().equals(other._forecasts, _forecasts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_forecasts));

@override
String toString() {
  return 'WeatherState.success(forecasts: $forecasts)';
}


}

/// @nodoc
abstract mixin class $WeatherSuccessCopyWith<$Res> implements $WeatherStateCopyWith<$Res> {
  factory $WeatherSuccessCopyWith(WeatherSuccess value, $Res Function(WeatherSuccess) _then) = _$WeatherSuccessCopyWithImpl;
@useResult
$Res call({
 List<WeatherForecast> forecasts
});




}
/// @nodoc
class _$WeatherSuccessCopyWithImpl<$Res>
    implements $WeatherSuccessCopyWith<$Res> {
  _$WeatherSuccessCopyWithImpl(this._self, this._then);

  final WeatherSuccess _self;
  final $Res Function(WeatherSuccess) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forecasts = null,}) {
  return _then(WeatherSuccess(
null == forecasts ? _self._forecasts : forecasts // ignore: cast_nullable_to_non_nullable
as List<WeatherForecast>,
  ));
}


}

/// @nodoc


class WeatherError implements WeatherState {
  const WeatherError(this.message, {this.statusCode});
  

 final  String message;
 final  int? statusCode;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherErrorCopyWith<WeatherError> get copyWith => _$WeatherErrorCopyWithImpl<WeatherError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherError&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode);

@override
String toString() {
  return 'WeatherState.error(message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $WeatherErrorCopyWith<$Res> implements $WeatherStateCopyWith<$Res> {
  factory $WeatherErrorCopyWith(WeatherError value, $Res Function(WeatherError) _then) = _$WeatherErrorCopyWithImpl;
@useResult
$Res call({
 String message, int? statusCode
});




}
/// @nodoc
class _$WeatherErrorCopyWithImpl<$Res>
    implements $WeatherErrorCopyWith<$Res> {
  _$WeatherErrorCopyWithImpl(this._self, this._then);

  final WeatherError _self;
  final $Res Function(WeatherError) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,}) {
  return _then(WeatherError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

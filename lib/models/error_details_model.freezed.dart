// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorDetailsModel {

 int get errorCode; String get errorMessage; String get devErrorMessage; int get timestamp;
/// Create a copy of ErrorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDetailsModelCopyWith<ErrorDetailsModel> get copyWith => _$ErrorDetailsModelCopyWithImpl<ErrorDetailsModel>(this as ErrorDetailsModel, _$identity);

  /// Serializes this ErrorDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDetailsModel&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.devErrorMessage, devErrorMessage) || other.devErrorMessage == devErrorMessage)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,errorCode,errorMessage,devErrorMessage,timestamp);

@override
String toString() {
  return 'ErrorDetailsModel(errorCode: $errorCode, errorMessage: $errorMessage, devErrorMessage: $devErrorMessage, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ErrorDetailsModelCopyWith<$Res>  {
  factory $ErrorDetailsModelCopyWith(ErrorDetailsModel value, $Res Function(ErrorDetailsModel) _then) = _$ErrorDetailsModelCopyWithImpl;
@useResult
$Res call({
 int errorCode, String errorMessage, String devErrorMessage, int timestamp
});




}
/// @nodoc
class _$ErrorDetailsModelCopyWithImpl<$Res>
    implements $ErrorDetailsModelCopyWith<$Res> {
  _$ErrorDetailsModelCopyWithImpl(this._self, this._then);

  final ErrorDetailsModel _self;
  final $Res Function(ErrorDetailsModel) _then;

/// Create a copy of ErrorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorCode = null,Object? errorMessage = null,Object? devErrorMessage = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,devErrorMessage: null == devErrorMessage ? _self.devErrorMessage : devErrorMessage // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorDetailsModel].
extension ErrorDetailsModelPatterns on ErrorDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _ErrorDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int errorCode,  String errorMessage,  String devErrorMessage,  int timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorDetailsModel() when $default != null:
return $default(_that.errorCode,_that.errorMessage,_that.devErrorMessage,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int errorCode,  String errorMessage,  String devErrorMessage,  int timestamp)  $default,) {final _that = this;
switch (_that) {
case _ErrorDetailsModel():
return $default(_that.errorCode,_that.errorMessage,_that.devErrorMessage,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int errorCode,  String errorMessage,  String devErrorMessage,  int timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ErrorDetailsModel() when $default != null:
return $default(_that.errorCode,_that.errorMessage,_that.devErrorMessage,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorDetailsModel implements ErrorDetailsModel {
   _ErrorDetailsModel({required this.errorCode, required this.errorMessage, required this.devErrorMessage, required this.timestamp});
  factory _ErrorDetailsModel.fromJson(Map<String, dynamic> json) => _$ErrorDetailsModelFromJson(json);

@override final  int errorCode;
@override final  String errorMessage;
@override final  String devErrorMessage;
@override final  int timestamp;

/// Create a copy of ErrorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorDetailsModelCopyWith<_ErrorDetailsModel> get copyWith => __$ErrorDetailsModelCopyWithImpl<_ErrorDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorDetailsModel&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.devErrorMessage, devErrorMessage) || other.devErrorMessage == devErrorMessage)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,errorCode,errorMessage,devErrorMessage,timestamp);

@override
String toString() {
  return 'ErrorDetailsModel(errorCode: $errorCode, errorMessage: $errorMessage, devErrorMessage: $devErrorMessage, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ErrorDetailsModelCopyWith<$Res> implements $ErrorDetailsModelCopyWith<$Res> {
  factory _$ErrorDetailsModelCopyWith(_ErrorDetailsModel value, $Res Function(_ErrorDetailsModel) _then) = __$ErrorDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int errorCode, String errorMessage, String devErrorMessage, int timestamp
});




}
/// @nodoc
class __$ErrorDetailsModelCopyWithImpl<$Res>
    implements _$ErrorDetailsModelCopyWith<$Res> {
  __$ErrorDetailsModelCopyWithImpl(this._self, this._then);

  final _ErrorDetailsModel _self;
  final $Res Function(_ErrorDetailsModel) _then;

/// Create a copy of ErrorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorCode = null,Object? errorMessage = null,Object? devErrorMessage = null,Object? timestamp = null,}) {
  return _then(_ErrorDetailsModel(
errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,devErrorMessage: null == devErrorMessage ? _self.devErrorMessage : devErrorMessage // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseModel {

 ResponseStatus get responseStatus; int get statusCode; String get message; Map<String, dynamic> get object;
/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseModelCopyWith<ResponseModel> get copyWith => _$ResponseModelCopyWithImpl<ResponseModel>(this as ResponseModel, _$identity);

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseModel&&(identical(other.responseStatus, responseStatus) || other.responseStatus == responseStatus)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.object, object));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responseStatus,statusCode,message,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'ResponseModel(responseStatus: $responseStatus, statusCode: $statusCode, message: $message, object: $object)';
}


}

/// @nodoc
abstract mixin class $ResponseModelCopyWith<$Res>  {
  factory $ResponseModelCopyWith(ResponseModel value, $Res Function(ResponseModel) _then) = _$ResponseModelCopyWithImpl;
@useResult
$Res call({
 ResponseStatus responseStatus, int statusCode, String message, Map<String, dynamic> object
});




}
/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._self, this._then);

  final ResponseModel _self;
  final $Res Function(ResponseModel) _then;

/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responseStatus = null,Object? statusCode = null,Object? message = null,Object? object = null,}) {
  return _then(_self.copyWith(
responseStatus: null == responseStatus ? _self.responseStatus : responseStatus // ignore: cast_nullable_to_non_nullable
as ResponseStatus,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseModel].
extension ResponseModelPatterns on ResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ResponseStatus responseStatus,  int statusCode,  String message,  Map<String, dynamic> object)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that.responseStatus,_that.statusCode,_that.message,_that.object);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ResponseStatus responseStatus,  int statusCode,  String message,  Map<String, dynamic> object)  $default,) {final _that = this;
switch (_that) {
case _ResponseModel():
return $default(_that.responseStatus,_that.statusCode,_that.message,_that.object);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ResponseStatus responseStatus,  int statusCode,  String message,  Map<String, dynamic> object)?  $default,) {final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that.responseStatus,_that.statusCode,_that.message,_that.object);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseModel implements ResponseModel {
   _ResponseModel({this.responseStatus = ResponseStatus.SAVED, this.statusCode = 200, this.message = "Saved", final  Map<String, dynamic> object = const {}}): _object = object;
  factory _ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);

@override@JsonKey() final  ResponseStatus responseStatus;
@override@JsonKey() final  int statusCode;
@override@JsonKey() final  String message;
 final  Map<String, dynamic> _object;
@override@JsonKey() Map<String, dynamic> get object {
  if (_object is EqualUnmodifiableMapView) return _object;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_object);
}


/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseModelCopyWith<_ResponseModel> get copyWith => __$ResponseModelCopyWithImpl<_ResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseModel&&(identical(other.responseStatus, responseStatus) || other.responseStatus == responseStatus)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._object, _object));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responseStatus,statusCode,message,const DeepCollectionEquality().hash(_object));

@override
String toString() {
  return 'ResponseModel(responseStatus: $responseStatus, statusCode: $statusCode, message: $message, object: $object)';
}


}

/// @nodoc
abstract mixin class _$ResponseModelCopyWith<$Res> implements $ResponseModelCopyWith<$Res> {
  factory _$ResponseModelCopyWith(_ResponseModel value, $Res Function(_ResponseModel) _then) = __$ResponseModelCopyWithImpl;
@override @useResult
$Res call({
 ResponseStatus responseStatus, int statusCode, String message, Map<String, dynamic> object
});




}
/// @nodoc
class __$ResponseModelCopyWithImpl<$Res>
    implements _$ResponseModelCopyWith<$Res> {
  __$ResponseModelCopyWithImpl(this._self, this._then);

  final _ResponseModel _self;
  final $Res Function(_ResponseModel) _then;

/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responseStatus = null,Object? statusCode = null,Object? message = null,Object? object = null,}) {
  return _then(_ResponseModel(
responseStatus: null == responseStatus ? _self.responseStatus : responseStatus // ignore: cast_nullable_to_non_nullable
as ResponseStatus,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self._object : object // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on

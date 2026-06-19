// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bus {

 int? get busId; String get busName; String get busNumber; String get busType; int get totalSeat;
/// Create a copy of Bus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusCopyWith<Bus> get copyWith => _$BusCopyWithImpl<Bus>(this as Bus, _$identity);

  /// Serializes this Bus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bus&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.busName, busName) || other.busName == busName)&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.busType, busType) || other.busType == busType)&&(identical(other.totalSeat, totalSeat) || other.totalSeat == totalSeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,busId,busName,busNumber,busType,totalSeat);

@override
String toString() {
  return 'Bus(busId: $busId, busName: $busName, busNumber: $busNumber, busType: $busType, totalSeat: $totalSeat)';
}


}

/// @nodoc
abstract mixin class $BusCopyWith<$Res>  {
  factory $BusCopyWith(Bus value, $Res Function(Bus) _then) = _$BusCopyWithImpl;
@useResult
$Res call({
 int? busId, String busName, String busNumber, String busType, int totalSeat
});




}
/// @nodoc
class _$BusCopyWithImpl<$Res>
    implements $BusCopyWith<$Res> {
  _$BusCopyWithImpl(this._self, this._then);

  final Bus _self;
  final $Res Function(Bus) _then;

/// Create a copy of Bus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busId = freezed,Object? busName = null,Object? busNumber = null,Object? busType = null,Object? totalSeat = null,}) {
  return _then(_self.copyWith(
busId: freezed == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as int?,busName: null == busName ? _self.busName : busName // ignore: cast_nullable_to_non_nullable
as String,busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,busType: null == busType ? _self.busType : busType // ignore: cast_nullable_to_non_nullable
as String,totalSeat: null == totalSeat ? _self.totalSeat : totalSeat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Bus].
extension BusPatterns on Bus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bus value)  $default,){
final _that = this;
switch (_that) {
case _Bus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bus value)?  $default,){
final _that = this;
switch (_that) {
case _Bus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? busId,  String busName,  String busNumber,  String busType,  int totalSeat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bus() when $default != null:
return $default(_that.busId,_that.busName,_that.busNumber,_that.busType,_that.totalSeat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? busId,  String busName,  String busNumber,  String busType,  int totalSeat)  $default,) {final _that = this;
switch (_that) {
case _Bus():
return $default(_that.busId,_that.busName,_that.busNumber,_that.busType,_that.totalSeat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? busId,  String busName,  String busNumber,  String busType,  int totalSeat)?  $default,) {final _that = this;
switch (_that) {
case _Bus() when $default != null:
return $default(_that.busId,_that.busName,_that.busNumber,_that.busType,_that.totalSeat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bus implements Bus {
   _Bus({this.busId, required this.busName, required this.busNumber, required this.busType, required this.totalSeat});
  factory _Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);

@override final  int? busId;
@override final  String busName;
@override final  String busNumber;
@override final  String busType;
@override final  int totalSeat;

/// Create a copy of Bus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusCopyWith<_Bus> get copyWith => __$BusCopyWithImpl<_Bus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bus&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.busName, busName) || other.busName == busName)&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.busType, busType) || other.busType == busType)&&(identical(other.totalSeat, totalSeat) || other.totalSeat == totalSeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,busId,busName,busNumber,busType,totalSeat);

@override
String toString() {
  return 'Bus(busId: $busId, busName: $busName, busNumber: $busNumber, busType: $busType, totalSeat: $totalSeat)';
}


}

/// @nodoc
abstract mixin class _$BusCopyWith<$Res> implements $BusCopyWith<$Res> {
  factory _$BusCopyWith(_Bus value, $Res Function(_Bus) _then) = __$BusCopyWithImpl;
@override @useResult
$Res call({
 int? busId, String busName, String busNumber, String busType, int totalSeat
});




}
/// @nodoc
class __$BusCopyWithImpl<$Res>
    implements _$BusCopyWith<$Res> {
  __$BusCopyWithImpl(this._self, this._then);

  final _Bus _self;
  final $Res Function(_Bus) _then;

/// Create a copy of Bus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busId = freezed,Object? busName = null,Object? busNumber = null,Object? busType = null,Object? totalSeat = null,}) {
  return _then(_Bus(
busId: freezed == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as int?,busName: null == busName ? _self.busName : busName // ignore: cast_nullable_to_non_nullable
as String,busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,busType: null == busType ? _self.busType : busType // ignore: cast_nullable_to_non_nullable
as String,totalSeat: null == totalSeat ? _self.totalSeat : totalSeat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

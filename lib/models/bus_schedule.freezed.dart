// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusSchedule {

 int? get scheduleId; Bus get bus; BusRoute get busRoute; String get departureTime; int get ticketPrice;
/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusScheduleCopyWith<BusSchedule> get copyWith => _$BusScheduleCopyWithImpl<BusSchedule>(this as BusSchedule, _$identity);

  /// Serializes this BusSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusSchedule&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.busRoute, busRoute) || other.busRoute == busRoute)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.ticketPrice, ticketPrice) || other.ticketPrice == ticketPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheduleId,bus,busRoute,departureTime,ticketPrice);

@override
String toString() {
  return 'BusSchedule(scheduleId: $scheduleId, bus: $bus, busRoute: $busRoute, departureTime: $departureTime, ticketPrice: $ticketPrice)';
}


}

/// @nodoc
abstract mixin class $BusScheduleCopyWith<$Res>  {
  factory $BusScheduleCopyWith(BusSchedule value, $Res Function(BusSchedule) _then) = _$BusScheduleCopyWithImpl;
@useResult
$Res call({
 int? scheduleId, Bus bus, BusRoute busRoute, String departureTime, int ticketPrice
});


$BusCopyWith<$Res> get bus;$BusRouteCopyWith<$Res> get busRoute;

}
/// @nodoc
class _$BusScheduleCopyWithImpl<$Res>
    implements $BusScheduleCopyWith<$Res> {
  _$BusScheduleCopyWithImpl(this._self, this._then);

  final BusSchedule _self;
  final $Res Function(BusSchedule) _then;

/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scheduleId = freezed,Object? bus = null,Object? busRoute = null,Object? departureTime = null,Object? ticketPrice = null,}) {
  return _then(_self.copyWith(
scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int?,bus: null == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as Bus,busRoute: null == busRoute ? _self.busRoute : busRoute // ignore: cast_nullable_to_non_nullable
as BusRoute,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as String,ticketPrice: null == ticketPrice ? _self.ticketPrice : ticketPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusCopyWith<$Res> get bus {
  
  return $BusCopyWith<$Res>(_self.bus, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusRouteCopyWith<$Res> get busRoute {
  
  return $BusRouteCopyWith<$Res>(_self.busRoute, (value) {
    return _then(_self.copyWith(busRoute: value));
  });
}
}


/// Adds pattern-matching-related methods to [BusSchedule].
extension BusSchedulePatterns on BusSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusSchedule value)  $default,){
final _that = this;
switch (_that) {
case _BusSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _BusSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? scheduleId,  Bus bus,  BusRoute busRoute,  String departureTime,  int ticketPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusSchedule() when $default != null:
return $default(_that.scheduleId,_that.bus,_that.busRoute,_that.departureTime,_that.ticketPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? scheduleId,  Bus bus,  BusRoute busRoute,  String departureTime,  int ticketPrice)  $default,) {final _that = this;
switch (_that) {
case _BusSchedule():
return $default(_that.scheduleId,_that.bus,_that.busRoute,_that.departureTime,_that.ticketPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? scheduleId,  Bus bus,  BusRoute busRoute,  String departureTime,  int ticketPrice)?  $default,) {final _that = this;
switch (_that) {
case _BusSchedule() when $default != null:
return $default(_that.scheduleId,_that.bus,_that.busRoute,_that.departureTime,_that.ticketPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusSchedule implements BusSchedule {
   _BusSchedule({this.scheduleId, required this.bus, required this.busRoute, required this.departureTime, required this.ticketPrice});
  factory _BusSchedule.fromJson(Map<String, dynamic> json) => _$BusScheduleFromJson(json);

@override final  int? scheduleId;
@override final  Bus bus;
@override final  BusRoute busRoute;
@override final  String departureTime;
@override final  int ticketPrice;

/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusScheduleCopyWith<_BusSchedule> get copyWith => __$BusScheduleCopyWithImpl<_BusSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusSchedule&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.busRoute, busRoute) || other.busRoute == busRoute)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.ticketPrice, ticketPrice) || other.ticketPrice == ticketPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheduleId,bus,busRoute,departureTime,ticketPrice);

@override
String toString() {
  return 'BusSchedule(scheduleId: $scheduleId, bus: $bus, busRoute: $busRoute, departureTime: $departureTime, ticketPrice: $ticketPrice)';
}


}

/// @nodoc
abstract mixin class _$BusScheduleCopyWith<$Res> implements $BusScheduleCopyWith<$Res> {
  factory _$BusScheduleCopyWith(_BusSchedule value, $Res Function(_BusSchedule) _then) = __$BusScheduleCopyWithImpl;
@override @useResult
$Res call({
 int? scheduleId, Bus bus, BusRoute busRoute, String departureTime, int ticketPrice
});


@override $BusCopyWith<$Res> get bus;@override $BusRouteCopyWith<$Res> get busRoute;

}
/// @nodoc
class __$BusScheduleCopyWithImpl<$Res>
    implements _$BusScheduleCopyWith<$Res> {
  __$BusScheduleCopyWithImpl(this._self, this._then);

  final _BusSchedule _self;
  final $Res Function(_BusSchedule) _then;

/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheduleId = freezed,Object? bus = null,Object? busRoute = null,Object? departureTime = null,Object? ticketPrice = null,}) {
  return _then(_BusSchedule(
scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int?,bus: null == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as Bus,busRoute: null == busRoute ? _self.busRoute : busRoute // ignore: cast_nullable_to_non_nullable
as BusRoute,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as String,ticketPrice: null == ticketPrice ? _self.ticketPrice : ticketPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusCopyWith<$Res> get bus {
  
  return $BusCopyWith<$Res>(_self.bus, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of BusSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusRouteCopyWith<$Res> get busRoute {
  
  return $BusRouteCopyWith<$Res>(_self.busRoute, (value) {
    return _then(_self.copyWith(busRoute: value));
  });
}
}

// dart format on

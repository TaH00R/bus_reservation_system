// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusReservation {

 int? get reservationId; Customer get customer; BusSchedule get busSchedule; int get timestamp; String get departureDate; int get totalSeatBooked; String get seatNumbers; String get reservationStatus; int get totalPrice;
/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusReservationCopyWith<BusReservation> get copyWith => _$BusReservationCopyWithImpl<BusReservation>(this as BusReservation, _$identity);

  /// Serializes this BusReservation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusReservation&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.busSchedule, busSchedule) || other.busSchedule == busSchedule)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.departureDate, departureDate) || other.departureDate == departureDate)&&(identical(other.totalSeatBooked, totalSeatBooked) || other.totalSeatBooked == totalSeatBooked)&&(identical(other.seatNumbers, seatNumbers) || other.seatNumbers == seatNumbers)&&(identical(other.reservationStatus, reservationStatus) || other.reservationStatus == reservationStatus)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reservationId,customer,busSchedule,timestamp,departureDate,totalSeatBooked,seatNumbers,reservationStatus,totalPrice);

@override
String toString() {
  return 'BusReservation(reservationId: $reservationId, customer: $customer, busSchedule: $busSchedule, timestamp: $timestamp, departureDate: $departureDate, totalSeatBooked: $totalSeatBooked, seatNumbers: $seatNumbers, reservationStatus: $reservationStatus, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $BusReservationCopyWith<$Res>  {
  factory $BusReservationCopyWith(BusReservation value, $Res Function(BusReservation) _then) = _$BusReservationCopyWithImpl;
@useResult
$Res call({
 int? reservationId, Customer customer, BusSchedule busSchedule, int timestamp, String departureDate, int totalSeatBooked, String seatNumbers, String reservationStatus, int totalPrice
});


$CustomerCopyWith<$Res> get customer;$BusScheduleCopyWith<$Res> get busSchedule;

}
/// @nodoc
class _$BusReservationCopyWithImpl<$Res>
    implements $BusReservationCopyWith<$Res> {
  _$BusReservationCopyWithImpl(this._self, this._then);

  final BusReservation _self;
  final $Res Function(BusReservation) _then;

/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reservationId = freezed,Object? customer = null,Object? busSchedule = null,Object? timestamp = null,Object? departureDate = null,Object? totalSeatBooked = null,Object? seatNumbers = null,Object? reservationStatus = null,Object? totalPrice = null,}) {
  return _then(_self.copyWith(
reservationId: freezed == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer,busSchedule: null == busSchedule ? _self.busSchedule : busSchedule // ignore: cast_nullable_to_non_nullable
as BusSchedule,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,departureDate: null == departureDate ? _self.departureDate : departureDate // ignore: cast_nullable_to_non_nullable
as String,totalSeatBooked: null == totalSeatBooked ? _self.totalSeatBooked : totalSeatBooked // ignore: cast_nullable_to_non_nullable
as int,seatNumbers: null == seatNumbers ? _self.seatNumbers : seatNumbers // ignore: cast_nullable_to_non_nullable
as String,reservationStatus: null == reservationStatus ? _self.reservationStatus : reservationStatus // ignore: cast_nullable_to_non_nullable
as String,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerCopyWith<$Res> get customer {
  
  return $CustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusScheduleCopyWith<$Res> get busSchedule {
  
  return $BusScheduleCopyWith<$Res>(_self.busSchedule, (value) {
    return _then(_self.copyWith(busSchedule: value));
  });
}
}


/// Adds pattern-matching-related methods to [BusReservation].
extension BusReservationPatterns on BusReservation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusReservation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusReservation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusReservation value)  $default,){
final _that = this;
switch (_that) {
case _BusReservation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusReservation value)?  $default,){
final _that = this;
switch (_that) {
case _BusReservation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? reservationId,  Customer customer,  BusSchedule busSchedule,  int timestamp,  String departureDate,  int totalSeatBooked,  String seatNumbers,  String reservationStatus,  int totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusReservation() when $default != null:
return $default(_that.reservationId,_that.customer,_that.busSchedule,_that.timestamp,_that.departureDate,_that.totalSeatBooked,_that.seatNumbers,_that.reservationStatus,_that.totalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? reservationId,  Customer customer,  BusSchedule busSchedule,  int timestamp,  String departureDate,  int totalSeatBooked,  String seatNumbers,  String reservationStatus,  int totalPrice)  $default,) {final _that = this;
switch (_that) {
case _BusReservation():
return $default(_that.reservationId,_that.customer,_that.busSchedule,_that.timestamp,_that.departureDate,_that.totalSeatBooked,_that.seatNumbers,_that.reservationStatus,_that.totalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? reservationId,  Customer customer,  BusSchedule busSchedule,  int timestamp,  String departureDate,  int totalSeatBooked,  String seatNumbers,  String reservationStatus,  int totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _BusReservation() when $default != null:
return $default(_that.reservationId,_that.customer,_that.busSchedule,_that.timestamp,_that.departureDate,_that.totalSeatBooked,_that.seatNumbers,_that.reservationStatus,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusReservation implements BusReservation {
   _BusReservation({this.reservationId, required this.customer, required this.busSchedule, required this.timestamp, required this.departureDate, required this.totalSeatBooked, required this.seatNumbers, required this.reservationStatus, required this.totalPrice});
  factory _BusReservation.fromJson(Map<String, dynamic> json) => _$BusReservationFromJson(json);

@override final  int? reservationId;
@override final  Customer customer;
@override final  BusSchedule busSchedule;
@override final  int timestamp;
@override final  String departureDate;
@override final  int totalSeatBooked;
@override final  String seatNumbers;
@override final  String reservationStatus;
@override final  int totalPrice;

/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusReservationCopyWith<_BusReservation> get copyWith => __$BusReservationCopyWithImpl<_BusReservation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusReservationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusReservation&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.busSchedule, busSchedule) || other.busSchedule == busSchedule)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.departureDate, departureDate) || other.departureDate == departureDate)&&(identical(other.totalSeatBooked, totalSeatBooked) || other.totalSeatBooked == totalSeatBooked)&&(identical(other.seatNumbers, seatNumbers) || other.seatNumbers == seatNumbers)&&(identical(other.reservationStatus, reservationStatus) || other.reservationStatus == reservationStatus)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reservationId,customer,busSchedule,timestamp,departureDate,totalSeatBooked,seatNumbers,reservationStatus,totalPrice);

@override
String toString() {
  return 'BusReservation(reservationId: $reservationId, customer: $customer, busSchedule: $busSchedule, timestamp: $timestamp, departureDate: $departureDate, totalSeatBooked: $totalSeatBooked, seatNumbers: $seatNumbers, reservationStatus: $reservationStatus, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$BusReservationCopyWith<$Res> implements $BusReservationCopyWith<$Res> {
  factory _$BusReservationCopyWith(_BusReservation value, $Res Function(_BusReservation) _then) = __$BusReservationCopyWithImpl;
@override @useResult
$Res call({
 int? reservationId, Customer customer, BusSchedule busSchedule, int timestamp, String departureDate, int totalSeatBooked, String seatNumbers, String reservationStatus, int totalPrice
});


@override $CustomerCopyWith<$Res> get customer;@override $BusScheduleCopyWith<$Res> get busSchedule;

}
/// @nodoc
class __$BusReservationCopyWithImpl<$Res>
    implements _$BusReservationCopyWith<$Res> {
  __$BusReservationCopyWithImpl(this._self, this._then);

  final _BusReservation _self;
  final $Res Function(_BusReservation) _then;

/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reservationId = freezed,Object? customer = null,Object? busSchedule = null,Object? timestamp = null,Object? departureDate = null,Object? totalSeatBooked = null,Object? seatNumbers = null,Object? reservationStatus = null,Object? totalPrice = null,}) {
  return _then(_BusReservation(
reservationId: freezed == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer,busSchedule: null == busSchedule ? _self.busSchedule : busSchedule // ignore: cast_nullable_to_non_nullable
as BusSchedule,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,departureDate: null == departureDate ? _self.departureDate : departureDate // ignore: cast_nullable_to_non_nullable
as String,totalSeatBooked: null == totalSeatBooked ? _self.totalSeatBooked : totalSeatBooked // ignore: cast_nullable_to_non_nullable
as int,seatNumbers: null == seatNumbers ? _self.seatNumbers : seatNumbers // ignore: cast_nullable_to_non_nullable
as String,reservationStatus: null == reservationStatus ? _self.reservationStatus : reservationStatus // ignore: cast_nullable_to_non_nullable
as String,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerCopyWith<$Res> get customer {
  
  return $CustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of BusReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusScheduleCopyWith<$Res> get busSchedule {
  
  return $BusScheduleCopyWith<$Res>(_self.busSchedule, (value) {
    return _then(_self.copyWith(busSchedule: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusRoute {

 int? get routeId; String get routeName; String get cityFrom; String get cityTo; double get distanceInKm;
/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusRouteCopyWith<BusRoute> get copyWith => _$BusRouteCopyWithImpl<BusRoute>(this as BusRoute, _$identity);

  /// Serializes this BusRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusRoute&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName)&&(identical(other.cityFrom, cityFrom) || other.cityFrom == cityFrom)&&(identical(other.cityTo, cityTo) || other.cityTo == cityTo)&&(identical(other.distanceInKm, distanceInKm) || other.distanceInKm == distanceInKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,routeId,routeName,cityFrom,cityTo,distanceInKm);

@override
String toString() {
  return 'BusRoute(routeId: $routeId, routeName: $routeName, cityFrom: $cityFrom, cityTo: $cityTo, distanceInKm: $distanceInKm)';
}


}

/// @nodoc
abstract mixin class $BusRouteCopyWith<$Res>  {
  factory $BusRouteCopyWith(BusRoute value, $Res Function(BusRoute) _then) = _$BusRouteCopyWithImpl;
@useResult
$Res call({
 int? routeId, String routeName, String cityFrom, String cityTo, double distanceInKm
});




}
/// @nodoc
class _$BusRouteCopyWithImpl<$Res>
    implements $BusRouteCopyWith<$Res> {
  _$BusRouteCopyWithImpl(this._self, this._then);

  final BusRoute _self;
  final $Res Function(BusRoute) _then;

/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = freezed,Object? routeName = null,Object? cityFrom = null,Object? cityTo = null,Object? distanceInKm = null,}) {
  return _then(_self.copyWith(
routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as int?,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,cityFrom: null == cityFrom ? _self.cityFrom : cityFrom // ignore: cast_nullable_to_non_nullable
as String,cityTo: null == cityTo ? _self.cityTo : cityTo // ignore: cast_nullable_to_non_nullable
as String,distanceInKm: null == distanceInKm ? _self.distanceInKm : distanceInKm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BusRoute].
extension BusRoutePatterns on BusRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusRoute value)  $default,){
final _that = this;
switch (_that) {
case _BusRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusRoute value)?  $default,){
final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? routeId,  String routeName,  String cityFrom,  String cityTo,  double distanceInKm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
return $default(_that.routeId,_that.routeName,_that.cityFrom,_that.cityTo,_that.distanceInKm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? routeId,  String routeName,  String cityFrom,  String cityTo,  double distanceInKm)  $default,) {final _that = this;
switch (_that) {
case _BusRoute():
return $default(_that.routeId,_that.routeName,_that.cityFrom,_that.cityTo,_that.distanceInKm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? routeId,  String routeName,  String cityFrom,  String cityTo,  double distanceInKm)?  $default,) {final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
return $default(_that.routeId,_that.routeName,_that.cityFrom,_that.cityTo,_that.distanceInKm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusRoute implements BusRoute {
   _BusRoute({this.routeId, required this.routeName, required this.cityFrom, required this.cityTo, required this.distanceInKm});
  factory _BusRoute.fromJson(Map<String, dynamic> json) => _$BusRouteFromJson(json);

@override final  int? routeId;
@override final  String routeName;
@override final  String cityFrom;
@override final  String cityTo;
@override final  double distanceInKm;

/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusRouteCopyWith<_BusRoute> get copyWith => __$BusRouteCopyWithImpl<_BusRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusRoute&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName)&&(identical(other.cityFrom, cityFrom) || other.cityFrom == cityFrom)&&(identical(other.cityTo, cityTo) || other.cityTo == cityTo)&&(identical(other.distanceInKm, distanceInKm) || other.distanceInKm == distanceInKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,routeId,routeName,cityFrom,cityTo,distanceInKm);

@override
String toString() {
  return 'BusRoute(routeId: $routeId, routeName: $routeName, cityFrom: $cityFrom, cityTo: $cityTo, distanceInKm: $distanceInKm)';
}


}

/// @nodoc
abstract mixin class _$BusRouteCopyWith<$Res> implements $BusRouteCopyWith<$Res> {
  factory _$BusRouteCopyWith(_BusRoute value, $Res Function(_BusRoute) _then) = __$BusRouteCopyWithImpl;
@override @useResult
$Res call({
 int? routeId, String routeName, String cityFrom, String cityTo, double distanceInKm
});




}
/// @nodoc
class __$BusRouteCopyWithImpl<$Res>
    implements _$BusRouteCopyWith<$Res> {
  __$BusRouteCopyWithImpl(this._self, this._then);

  final _BusRoute _self;
  final $Res Function(_BusRoute) _then;

/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = freezed,Object? routeName = null,Object? cityFrom = null,Object? cityTo = null,Object? distanceInKm = null,}) {
  return _then(_BusRoute(
routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as int?,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,cityFrom: null == cityFrom ? _self.cityFrom : cityFrom // ignore: cast_nullable_to_non_nullable
as String,cityTo: null == cityTo ? _self.cityTo : cityTo // ignore: cast_nullable_to_non_nullable
as String,distanceInKm: null == distanceInKm ? _self.distanceInKm : distanceInKm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

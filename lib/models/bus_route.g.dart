// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusRoute _$BusRouteFromJson(Map<String, dynamic> json) => _BusRoute(
  routeId: (json['routeId'] as num?)?.toInt(),
  routeName: json['routeName'] as String,
  cityFrom: json['cityFrom'] as String,
  cityTo: json['cityTo'] as String,
  distanceInKm: (json['distanceInKm'] as num).toDouble(),
);

Map<String, dynamic> _$BusRouteToJson(_BusRoute instance) => <String, dynamic>{
  'routeId': instance.routeId,
  'routeName': instance.routeName,
  'cityFrom': instance.cityFrom,
  'cityTo': instance.cityTo,
  'distanceInKm': instance.distanceInKm,
};

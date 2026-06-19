// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusSchedule _$BusScheduleFromJson(Map<String, dynamic> json) => _BusSchedule(
  scheduleId: (json['scheduleId'] as num?)?.toInt(),
  bus: Bus.fromJson(json['bus'] as Map<String, dynamic>),
  busRoute: BusRoute.fromJson(json['busRoute'] as Map<String, dynamic>),
  departureTime: json['departureTime'] as String,
  ticketPrice: (json['ticketPrice'] as num).toInt(),
);

Map<String, dynamic> _$BusScheduleToJson(_BusSchedule instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'bus': instance.bus,
      'busRoute': instance.busRoute,
      'departureTime': instance.departureTime,
      'ticketPrice': instance.ticketPrice,
    };

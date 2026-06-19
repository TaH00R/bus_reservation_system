// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bus _$BusFromJson(Map<String, dynamic> json) => _Bus(
  busId: (json['busId'] as num?)?.toInt(),
  busName: json['busName'] as String,
  busNumber: json['busNumber'] as String,
  busType: json['busType'] as String,
  totalSeat: (json['totalSeat'] as num).toInt(),
);

Map<String, dynamic> _$BusToJson(_Bus instance) => <String, dynamic>{
  'busId': instance.busId,
  'busName': instance.busName,
  'busNumber': instance.busNumber,
  'busType': instance.busType,
  'totalSeat': instance.totalSeat,
};

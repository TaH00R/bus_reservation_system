// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorDetailsModel _$ErrorDetailsModelFromJson(Map<String, dynamic> json) =>
    _ErrorDetailsModel(
      errorCode: (json['errorCode'] as num).toInt(),
      errorMessage: json['errorMessage'] as String,
      devErrorMessage: json['devErrorMessage'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$ErrorDetailsModelToJson(_ErrorDetailsModel instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'devErrorMessage': instance.devErrorMessage,
      'timestamp': instance.timestamp,
    };

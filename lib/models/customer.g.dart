// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Customer _$CustomerFromJson(Map<String, dynamic> json) => _Customer(
  customerId: (json['customerId'] as num?)?.toInt(),
  customerName: json['customerName'] as String,
  mobile: json['mobile'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$CustomerToJson(_Customer instance) => <String, dynamic>{
  'customerId': instance.customerId,
  'customerName': instance.customerName,
  'mobile': instance.mobile,
  'email': instance.email,
};

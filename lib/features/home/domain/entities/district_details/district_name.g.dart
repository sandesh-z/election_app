// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictsName _$DistrictsNameFromJson(Map<String, dynamic> json) =>
    DistrictsName(
      districtId: json['Id'] as int,
      districtName: json['Name'] as String,
      districtEn: json['district_en'] as String?,
      pradeshId: json['provinceId'] as int,
    );

Map<String, dynamic> _$DistrictsNameToJson(DistrictsName instance) =>
    <String, dynamic>{
      'Id': instance.districtId,
      'Name': instance.districtName,
      'district_en': instance.districtEn,
      'provinceId': instance.pradeshId,
    };

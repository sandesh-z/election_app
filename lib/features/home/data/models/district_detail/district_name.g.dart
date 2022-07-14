// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictDetailModel _$DistrictDetailModelFromJson(Map<String, dynamic> json) =>
    DistrictDetailModel(
      districtId: json['Id'] as int,
      districtName: json['Name'] as String,
      pradeshId: json['ProvinceId'] as int,
      districtEn: json['district_en'] as String,
    );

Map<String, dynamic> _$DistrictDetailModelToJson(
        DistrictDetailModel instance) =>
    <String, dynamic>{
      'Id': instance.districtId,
      'Name': instance.districtName,
      'district_en': instance.districtEn,
      'ProvinceId': instance.pradeshId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pradesh_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PradeshDetailModel _$PradeshDetailModelFromJson(Map<String, dynamic> json) =>
    PradeshDetailModel(
      pradeshId: json['Id'] as int,
      pradeshName: json['Name'] as String,
      provinceEn: json['province_en'] as String,
      provinceId: json['ProvinceId'] as int,
    );

Map<String, dynamic> _$PradeshDetailModelToJson(PradeshDetailModel instance) =>
    <String, dynamic>{
      'Id': instance.pradeshId,
      'Name': instance.pradeshName,
      'province_en': instance.provinceEn,
      'ProvinceId': instance.provinceId,
    };

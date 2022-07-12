// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pradesh_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PradeshName _$PradeshNameFromJson(Map<String, dynamic> json) => PradeshName(
      pradeshId: json['Id'] as int,
      pradeshName: json['Name'] as String,
      provinceEn: json['province_en'] as String?,
    );

Map<String, dynamic> _$PradeshNameToJson(PradeshName instance) =>
    <String, dynamic>{
      'Id': instance.pradeshId,
      'Name': instance.pradeshName,
      'province_en': instance.provinceEn,
    };

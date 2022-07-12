// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pradesh_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PradeshData _$PradeshDataFromJson(Map<String, dynamic> json) => PradeshData(
      id: json['Id'] as int?,
      pradeshName: json['Name'] as String?,
      provienceEn: json['provience_en'] as String?,
      districtEn: json['district_en'] as String?,
      districtId: json['DistrictId'] as int?,
      palikaType: json['PalikaType'] as int?,
      provinceId: json['ProvinceId'] as int?,
    );

Map<String, dynamic> _$PradeshDataToJson(PradeshData instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.pradeshName,
      'provience_en': instance.provienceEn,
      'district_en': instance.districtEn,
      'ProvinceId': instance.provinceId,
      'PalikaType': instance.palikaType,
      'DistrictId': instance.districtId,
    };

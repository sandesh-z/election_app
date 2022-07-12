// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipality_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MunicipalityName _$MunicipalityNameFromJson(Map<String, dynamic> json) =>
    MunicipalityName(
      municipalityId: json['Id'] as int,
      municipalityName: json['Name'] as String,
      palikaType: json['PalikaType'] as int,
      districtId: json['DistrictId'] as int,
    );

Map<String, dynamic> _$MunicipalityNameToJson(MunicipalityName instance) =>
    <String, dynamic>{
      'Id': instance.municipalityId,
      'Name': instance.municipalityName,
      'PalikaType': instance.palikaType,
      'DistrictId': instance.districtId,
    };

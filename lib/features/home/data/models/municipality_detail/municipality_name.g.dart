// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipality_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MunicipalityDetailModel _$MunicipalityDetailModelFromJson(
        Map<String, dynamic> json) =>
    MunicipalityDetailModel(
      districtId: json['DistrictId'] as int,
      municipalityId: json['Id'] as int,
      municipalityName: json['Name'] as String,
      palikaType: json['PalikaType'] as int,
    );

Map<String, dynamic> _$MunicipalityDetailModelToJson(
        MunicipalityDetailModel instance) =>
    <String, dynamic>{
      'Id': instance.municipalityId,
      'Name': instance.municipalityName,
      'PalikaType': instance.palikaType,
      'DistrictId': instance.districtId,
    };

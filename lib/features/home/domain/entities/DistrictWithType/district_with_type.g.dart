// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_with_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictWithType _$DistrictWithTypeFromJson(Map<String, dynamic> json) =>
    DistrictWithType(
      type: json['type'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => DistrictsName.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DistrictWithTypeToJson(DistrictWithType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_with_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictWithTypeModel _$DistrictWithTypeModelFromJson(
        Map<String, dynamic> json) =>
    DistrictWithTypeModel(
      type: json['type'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => DistrictsName.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DistrictWithTypeModelToJson(
        DistrictWithTypeModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

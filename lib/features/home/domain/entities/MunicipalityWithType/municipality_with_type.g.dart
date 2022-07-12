// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipality_with_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MunicipalityWithType _$MunicipalityWithTypeFromJson(
        Map<String, dynamic> json) =>
    MunicipalityWithType(
      type: json['type'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => MunicipalityName.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MunicipalityWithTypeToJson(
        MunicipalityWithType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

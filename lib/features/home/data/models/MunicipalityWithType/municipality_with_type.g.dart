// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipality_with_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MunicipalityWithTypeModel _$MunicipalityWithTypeModelFromJson(
        Map<String, dynamic> json) =>
    MunicipalityWithTypeModel(
      type: json['type'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => MunicipalityName.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MunicipalityWithTypeModelToJson(
        MunicipalityWithTypeModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

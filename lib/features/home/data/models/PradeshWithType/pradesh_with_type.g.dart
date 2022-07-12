// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pradesh_with_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PradeshWithTypeModel _$PradeshWithTypeModelFromJson(
        Map<String, dynamic> json) =>
    PradeshWithTypeModel(
      type: json['type'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => PradeshName.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PradeshWithTypeModelToJson(
        PradeshWithTypeModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

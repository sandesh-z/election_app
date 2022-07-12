// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pradesh_with_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PradeshWithType _$PradeshWithTypeFromJson(Map<String, dynamic> json) =>
    PradeshWithType(
      type: json['type'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => PradeshData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PradeshWithTypeToJson(PradeshWithType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

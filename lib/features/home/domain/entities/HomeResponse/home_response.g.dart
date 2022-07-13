// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
      items: (json['data'] as List<dynamic>?)
          ?.map((e) => PradeshWithType.fromJson(e as Map<String, dynamic>))
          .toList(),
      districtItems: (json['districtItems'] as List<dynamic>?)
          ?.map((e) => DistrictWithType.fromJson(e as Map<String, dynamic>))
          .toList(),
      municipalityItems: (json['municipalityItems'] as List<dynamic>?)
          ?.map((e) => MunicipalityWithType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'data': instance.items,
      'districtItems': instance.districtItems,
      'municipalityItems': instance.municipalityItems,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) =>
    HomeResponseModel(
      districtItems: (json['districtItems'] as List<dynamic>?)
          ?.map((e) => DistrictWithType.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['data'] as List<dynamic>?)
          ?.map((e) => PradeshWithType.fromJson(e as Map<String, dynamic>))
          .toList(),
      municipalityItems: (json['municipalityItems'] as List<dynamic>?)
          ?.map((e) => MunicipalityWithType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeResponseModelToJson(HomeResponseModel instance) =>
    <String, dynamic>{
      'data': instance.items,
      'districtItems': instance.districtItems,
      'municipalityItems': instance.municipalityItems,
    };

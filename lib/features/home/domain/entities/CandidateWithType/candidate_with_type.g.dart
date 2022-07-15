// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_with_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CandidateWithType _$CandidateWithTypeFromJson(Map<String, dynamic> json) =>
    CandidateWithType(
      data: (json['data'] as List<dynamic>)
          .map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CandidateWithTypeToJson(CandidateWithType instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

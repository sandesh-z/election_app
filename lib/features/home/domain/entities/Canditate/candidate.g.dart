// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Candidate _$CandidateFromJson(Map<String, dynamic> json) => Candidate(
      status: json['status'] as int,
      municipalityName: json['muncipality_name'] as String,
      winnerPartyName: json['party_name_np'] as String,
      winnerPartyLogo: json['party_logo'] as String?,
      partyColor: json['party_color'] as String?,
      postName: json['post_name'] as String,
      winnerCanditate: json['candidate_name'] as String,
      winnerVoteCount: json['No_Of_Vote'] as int?,
      runnerUpCanditate: json['canditate_name_2'] as String?,
      runnerUpPartyLogo: json['party_logo_2'] as String?,
      runnerUpPartyName: json['party_name_2'] as String?,
      runnerUpVoteCount: json['No_of_Vote2'] as int?,
      createdDate: json['created_at'] as String?,
      modifiedDate: json['modified_at'] as String?,
    );

Map<String, dynamic> _$CandidateToJson(Candidate instance) => <String, dynamic>{
      'status': instance.status,
      'muncipality_name': instance.municipalityName,
      'party_name_np': instance.winnerPartyName,
      'party_logo': instance.winnerPartyLogo,
      'party_color': instance.partyColor,
      'post_name': instance.postName,
      'candidate_name': instance.winnerCanditate,
      'No_Of_Vote': instance.winnerVoteCount,
      'canditate_name_2': instance.runnerUpCanditate,
      'party_logo_2': instance.runnerUpPartyLogo,
      'party_name_2': instance.runnerUpPartyName,
      'No_of_Vote2': instance.runnerUpVoteCount,
      'created_at': instance.createdDate,
      'modified_at': instance.modifiedDate,
    };

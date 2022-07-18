// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'candidate.g.dart';

@JsonSerializable()
class Candidate extends Equatable {
  @JsonKey(name: "status")
  final int status;

  @JsonKey(name: "muncipality_name")
  final String municipalityName;

  @JsonKey(name: "party_name_np")
  final String winnerPartyName;

  @JsonKey(name: "party_logo")
  final String? winnerPartyLogo;

  @JsonKey(name: "party_color")
  final String? partyColor;

  @JsonKey(name: "post_name")
  final String postName;

  @JsonKey(name: "candidate_name")
  final String winnerCanditate;

  @JsonKey(name: "No_Of_Vote")
  final int winnerVoteCount;

  @JsonKey(name: "canditate_name_2")
  final String runnerUpCanditate;

  @JsonKey(name: "party_logo_2")
  final String? runnerUpPartyLogo;

  @JsonKey(name: "party_name_2")
  final String runnerUpPartyName;

  @JsonKey(name: "No_of_Vote2")
  final int runnerUpVoteCount;

  @JsonKey(name: "created_at")
  final String? createdDate;

  @JsonKey(name: "modified_at")
  final String? modifiedDate;

  Candidate({
    required this.status,
    required this.municipalityName,
    required this.winnerPartyName,
    required this.winnerPartyLogo,
    required this.partyColor,
    required this.postName,
    required this.winnerCanditate,
    required this.winnerVoteCount,
    required this.runnerUpCanditate,
    required this.runnerUpPartyLogo,
    required this.runnerUpPartyName,
    required this.runnerUpVoteCount,
    required this.createdDate,
    required this.modifiedDate,
  });

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateToJson(this);
  @override
  List<Object?> get props => [
        status,
        municipalityName,
        winnerPartyName,
        winnerPartyLogo,
        partyColor,
        postName,
        winnerCanditate,
        winnerVoteCount,
        runnerUpCanditate,
        runnerUpPartyLogo,
        runnerUpPartyName,
        runnerUpVoteCount,
        createdDate,
        modifiedDate
      ];
}

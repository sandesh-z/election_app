// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'winnner_party_list.g.dart';

@JsonSerializable()
class WinnnerPartyList extends Equatable {
  @JsonKey(name: "party_id")
  final int partyId;

  @JsonKey(name: "party_name_np")
  final String partyName;

  @JsonKey(name: "party_color")
  final String partyColor;

  @JsonKey(name: "party_logo")
  final String partyLogo;

  @JsonKey(name: "winner_count")
  final int winnerCount;

  @JsonKey(name: "lead")
  final int leadStatus;
  WinnnerPartyList({
    required this.partyId,
    required this.partyName,
    required this.partyColor,
    required this.partyLogo,
    required this.winnerCount,
    required this.leadStatus,
  });
  // factory WinnnerPartyList.fromJson(Map<String, dynamic> json) =>
  //     _$WinnnerPartyListFromJson(json);

  // Map<String, dynamic> toJson() => _$WinnnerPartyListToJson(this);

  @override
  List<Object?> get props =>
      [partyId, partyName, partyColor, partyLogo, winnerCount, leadStatus];
}

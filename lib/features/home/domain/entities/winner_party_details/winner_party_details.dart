// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'winner_party_details.g.dart';

@JsonSerializable()
class WinnerPartyDetail extends Equatable {
  @JsonKey(name: "party_id")
  final int partyId;

  @JsonKey(name: "party_name_np")
  final String partyName;

  @JsonKey(name: "party_color")
  final String? partyColor;

  @JsonKey(name: "party_logo")
  final String? partyLogo;

  @JsonKey(name: "winner_count")
  final int winnerCount;

  @JsonKey(name: "lead")
  final int lead;
  const WinnerPartyDetail({
    required this.partyId,
    required this.partyName,
    this.partyColor,
    this.partyLogo,
    required this.winnerCount,
    required this.lead,
  });

  factory WinnerPartyDetail.fromJson(Map<String, dynamic> json) =>
      _$WinnerPartyDetailFromJson(json);

  Map<String, dynamic> toJson() => _$WinnerPartyDetailToJson(this);

  @override
  List<Object?> get props =>
      [partyId, partyName, partyColor, partyLogo, winnerCount, lead];
}

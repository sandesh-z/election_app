import 'package:election_app/features/home/domain/entities/winner_party_details/winner_party_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'winner_party_details.g.dart';

@JsonSerializable()
class WinnerPartyDetailModel extends WinnerPartyDetail {
  WinnerPartyDetailModel({
    required int partyId,
    required String partyName,
    required String? partyColor,
    required String? partyLogo,
    required int winnerCount,
    required int lead,
  }) : super(
            partyId: partyId,
            partyName: partyName,
            partyColor: partyColor,
            partyLogo: partyLogo,
            winnerCount: winnerCount,
            lead: lead);
  factory WinnerPartyDetailModel.fromJson(Map<String, dynamic> json) =>
      _$WinnerPartyDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$WinnerPartyDetailModelToJson(this);
}

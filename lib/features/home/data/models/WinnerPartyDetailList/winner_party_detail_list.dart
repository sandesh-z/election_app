import 'package:election_app/features/home/domain/entities/WinnerPartyDetailList/winner_party_detail_list.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/winner_party_details/winner_party_details.dart';

part 'winner_party_detail_list.g.dart';

@JsonSerializable()
class WinnerPartyDetailListModel extends WinnerPartyDetailList {
  WinnerPartyDetailListModel({required List<WinnerPartyDetail> data})
      : super(data: data);

  factory WinnerPartyDetailListModel.fromJson(Map<String, dynamic> json) =>
      _$WinnerPartyDetailListModelFromJson(json);

  Map<String, dynamic> toJson() => _$WinnerPartyDetailListModelToJson(this);
}

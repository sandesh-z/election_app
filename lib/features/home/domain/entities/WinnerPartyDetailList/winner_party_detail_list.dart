// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../winner_party_details/winner_party_details.dart';

part 'winner_party_detail_list.g.dart';

@JsonSerializable()
class WinnerPartyDetailList extends Equatable {
  @JsonKey(name: "data")
  final List<WinnerPartyDetail> data;

  const WinnerPartyDetailList({
    required this.data,
  });

  factory WinnerPartyDetailList.fromJson(Map<String, dynamic> json) =>
      _$WinnerPartyDetailListFromJson(json);

  Map<String, dynamic> toJson() => _$WinnerPartyDetailListToJson(this);
  @override
  List<Object?> get props => [data];
}

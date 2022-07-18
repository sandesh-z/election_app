// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'winner_party_detail_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WinnerPartyDetailList _$WinnerPartyDetailListFromJson(
        Map<String, dynamic> json) =>
    WinnerPartyDetailList(
      data: (json['data'] as List<dynamic>)
          .map((e) => WinnerPartyDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WinnerPartyDetailListToJson(
        WinnerPartyDetailList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

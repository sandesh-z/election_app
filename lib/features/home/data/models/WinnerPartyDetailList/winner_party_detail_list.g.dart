// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'winner_party_detail_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WinnerPartyDetailListModel _$WinnerPartyDetailListModelFromJson(
        Map<String, dynamic> json) =>
    WinnerPartyDetailListModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => WinnerPartyDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WinnerPartyDetailListModelToJson(
        WinnerPartyDetailListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

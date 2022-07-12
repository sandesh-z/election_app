// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pradesh_name.g.dart';

@JsonSerializable()
class PradeshName extends Equatable {
  @JsonKey(name: "Id")
  final int pradeshId;

  @JsonKey(name: "Name")
  final String pradeshName;

  @JsonKey(name: "province_en")
  final String? provinceEn;
  PradeshName({
    required this.pradeshId,
    required this.pradeshName,
    this.provinceEn,
  });

  factory PradeshName.fromJson(Map<String, dynamic> json) =>
      _$PradeshNameFromJson(json);

  Map<String, dynamic> toJson() => _$PradeshNameToJson(this);

  @override
  List<Object?> get props => [pradeshId, pradeshName, provinceEn];

  @override
  bool get stringify => true;
}

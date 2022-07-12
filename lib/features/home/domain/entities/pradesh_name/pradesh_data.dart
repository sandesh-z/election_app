// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pradesh_data.g.dart';

@JsonSerializable()
class PradeshData extends Equatable {
  const PradeshData({
    required this.id,
    required this.pradeshName,
    this.provienceEn,
    this.districtEn,
    this.districtId,
    this.palikaType,
    this.provinceId,
  });
  @JsonKey(name: "Id")
  final int? id;

  @JsonKey(name: "Name")
  final String? pradeshName;

  @JsonKey(name: "provience_en")
  final String? provienceEn;

  @JsonKey(name: "district_en")
  final String? districtEn;

  @JsonKey(name: "ProvinceId")
  final int? provinceId;

  @JsonKey(name: "PalikaType")
  final int? palikaType;

  @JsonKey(name: "DistrictId")
  final int? districtId;

  factory PradeshData.fromJson(Map<String, dynamic> json) =>
      _$PradeshDataFromJson(json);

  Map<String, dynamic> toJson() => _$PradeshDataToJson(this);

  @override
  List<Object?> get props => [
        id,
        pradeshName,
        provienceEn,
        districtEn,
        provinceId,
        palikaType,
        districtId
      ];

  @override
  bool get stringify => true;
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_name.g.dart';

@JsonSerializable()
class DistrictsName extends Equatable {
  @JsonKey(name: "Id")
  final int districtId;

  @JsonKey(name: "Name")
  final String districtName;

  @JsonKey(name: "district_en")
  final String? districtEn;

  @JsonKey(name: "ProvinceId")
  final int pradeshId;
  DistrictsName({
    required this.districtId,
    required this.districtName,
    this.districtEn,
    required this.pradeshId,
  });

  factory DistrictsName.fromJson(Map<String, dynamic> json) =>
      _$DistrictsNameFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictsNameToJson(this);

  @override
  List<Object?> get props => [districtId, districtName, districtEn, pradeshId];

  @override
  bool get stringify => true;
}

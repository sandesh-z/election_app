// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'municipality_name.g.dart';

@JsonSerializable()
class MunicipalityName extends Equatable {
  @JsonKey(name: "Id")
  final int municipalityId;

  @JsonKey(name: "Name")
  final String municipalityName;

  @JsonKey(name: "PalikaType")
  final int palikaType;

  @JsonKey(name: "DistrictId")
  final int districtId;

  MunicipalityName({
    required this.municipalityId,
    required this.municipalityName,
    required this.palikaType,
    required this.districtId,
  });
  factory MunicipalityName.fromJson(Map<String, dynamic> json) =>
      _$MunicipalityNameFromJson(json);

  Map<String, dynamic> toJson() => _$MunicipalityNameToJson(this);
  @override
  List<Object?> get props =>
      [municipalityId, municipalityName, palikaType, districtId];
  @override
  bool get stringify => true;
}

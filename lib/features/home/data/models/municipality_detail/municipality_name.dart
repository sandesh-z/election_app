import 'package:election_app/features/home/domain/entities/municipality_details/municipality_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'municipality_name.g.dart';

@JsonSerializable()
class MunicipalityDetailModel extends MunicipalityName {
  const MunicipalityDetailModel({
    required int districtId,
    required int municipalityId,
    required String municipalityName,
    required int palikaType,
  }) : super(
            districtId: districtId,
            municipalityId: municipalityId,
            municipalityName: municipalityName,
            palikaType: palikaType);

  factory MunicipalityDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MunicipalityDetailModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MunicipalityDetailModelToJson(this);
}

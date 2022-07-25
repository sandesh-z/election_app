import 'package:election_app/features/home/domain/entities/district_details/district_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_name.g.dart';

@JsonSerializable()
class DistrictDetailModel extends DistrictsName {
  const DistrictDetailModel({
    required int districtId,
    required String districtName,
    required int pradeshId,
    required String districtEn,
  }) : super(
            districtId: districtId,
            districtName: districtName,
            pradeshId: pradeshId,
            districtEn: districtEn);

  factory DistrictDetailModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictDetailModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DistrictDetailModelToJson(this);
}

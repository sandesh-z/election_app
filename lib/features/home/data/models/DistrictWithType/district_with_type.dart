import 'package:election_app/features/home/domain/entities/DistrictWithType/district_with_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/district_details/district_name.dart';
part 'district_with_type.g.dart';

@JsonSerializable()
class DistrictWithTypeModel extends DistrictWithType {
  const DistrictWithTypeModel({
    required String type,
    required List<DistrictsName> data,
  }) : super(type: type, data: data);

  factory DistrictWithTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictWithTypeModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DistrictWithTypeModelToJson(this);
}

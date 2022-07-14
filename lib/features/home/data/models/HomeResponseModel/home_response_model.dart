import 'package:election_app/features/home/domain/entities/HomeResponse/home_response.dart';
import 'package:election_app/features/home/domain/entities/MunicipalityWithType/municipality_with_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/DistrictWithType/district_with_type.dart';
import '../../../domain/entities/PradeshWithType/pradesh_with_type.dart';
part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel extends HomeResponse {
  HomeResponseModel({
    required List<DistrictWithType>? districtItems,
    required List<PradeshWithType>? items,
    required List<MunicipalityWithType>? municipalityItems,
  }) : super(
            districtItems: districtItems,
            items: items,
            municipalityItems: municipalityItems);

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeResponseModelToJson(this);
}

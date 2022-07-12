import 'package:election_app/features/home/domain/entities/MunicipalityWithType/municipality_with_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/municipality_details/municipality_name.dart';

part 'municipality_with_type.g.dart';

@JsonSerializable()
class MunicipalityWithTypeModel extends MunicipalityWithType {
  MunicipalityWithTypeModel({
    required String type,
    required List<MunicipalityName> data,
  }) : super(type: type, data: data);

  factory MunicipalityWithTypeModel.fromJson(Map<String, dynamic> json) =>
      _$MunicipalityWithTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$MunicipalityWithTypeModelToJson(this);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/pradesh_details/pradesh_name.dart';

part 'pradesh_name.g.dart';

@JsonSerializable()
class PradeshDetailModel extends PradeshName {
  PradeshDetailModel({
    required int pradeshId,
    required String pradeshName,
    required String provinceEn,
  }) : super(
            pradeshId: pradeshId,
            pradeshName: pradeshName,
            provinceEn: provinceEn);

  factory PradeshDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PradeshDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$PradeshDetailModelToJson(this);
}

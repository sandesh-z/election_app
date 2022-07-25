import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/pradesh_details/pradesh_name.dart';

part 'pradesh_name.g.dart';

@JsonSerializable()
class PradeshDetailModel extends PradeshName {
  const PradeshDetailModel({
    required int pradeshId,
    required String pradeshName,
    required String provinceEn,
    required int provinceId,
  }) : super(
            pradeshId: pradeshId,
            pradeshName: pradeshName,
            provinceEn: provinceEn,
            provinceId: provinceId);

  factory PradeshDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PradeshDetailModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PradeshDetailModelToJson(this);
}

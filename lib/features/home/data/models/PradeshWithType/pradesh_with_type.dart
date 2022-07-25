import 'package:election_app/features/home/domain/entities/PradeshWithType/pradesh_with_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/pradesh_details/pradesh_name.dart';

part 'pradesh_with_type.g.dart';

@JsonSerializable()
class PradeshWithTypeModel extends PradeshWithType {
  const PradeshWithTypeModel({
    required String type,
    required List<PradeshName> data,
  }) : super(type: type, data: data);

  factory PradeshWithTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PradeshWithTypeModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PradeshWithTypeModelToJson(this);
}

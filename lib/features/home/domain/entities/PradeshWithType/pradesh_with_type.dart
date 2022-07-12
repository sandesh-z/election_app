// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:election_app/features/home/domain/entities/pradesh_name/pradesh_data.dart';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pradesh_with_type.g.dart';

@JsonSerializable()
class PradeshWithType extends Equatable {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "data")
  final List<PradeshData> data;
  PradeshWithType({
    required this.type,
    required this.data,
  });

  factory PradeshWithType.fromJson(Map<String, dynamic> json) =>
      _$PradeshWithTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PradeshWithTypeToJson(this);

  @override
  List<Object?> get props => [type, data];

  @override
  bool get stringify => true;
}

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../municipality_details/municipality_name.dart';

part 'municipality_with_type.g.dart';

@JsonSerializable()
class MunicipalityWithType extends Equatable {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "data")
  final List<MunicipalityName> data;
  const MunicipalityWithType({
    required this.type,
    required this.data,
  });

  factory MunicipalityWithType.fromJson(Map<String, dynamic> json) =>
      _$MunicipalityWithTypeFromJson(json);

  Map<String, dynamic> toJson() => _$MunicipalityWithTypeToJson(this);

  @override
  List<Object?> get props => [type, data];

  @override
  bool get stringify => true;
}

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../district_details/district_name.dart';
part 'district_with_type.g.dart';

@JsonSerializable()
class DistrictWithType extends Equatable {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "data")
  final List<DistrictsName> data;
  DistrictWithType({
    required this.type,
    required this.data,
  });

  factory DistrictWithType.fromJson(Map<String, dynamic> json) =>
      _$DistrictWithTypeFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictWithTypeToJson(this);

  @override
  List<Object?> get props => [type, data];

  @override
  bool get stringify => true;
}

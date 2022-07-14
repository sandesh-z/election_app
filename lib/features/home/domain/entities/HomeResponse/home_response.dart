import 'package:election_app/features/home/data/models/municipality_detail/municipality_name.dart';
import 'package:election_app/features/home/domain/entities/DistrictWithType/district_with_type.dart';
import 'package:election_app/features/home/domain/entities/MunicipalityWithType/municipality_with_type.dart';
import 'package:election_app/features/home/domain/entities/PradeshWithType/pradesh_with_type.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse extends Equatable {
  @JsonKey(name: "data")
  final List<PradeshWithType>? items;

  // @JsonKey(name: "data")
  final List<DistrictWithType>? districtItems;

  // @JsonKey(name: "data")
  final List<MunicipalityWithType>? municipalityItems;
  HomeResponse({
    required this.items,
    required this.districtItems,
    required this.municipalityItems,
  });

  @override
  List<Object?> get props => [items];

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

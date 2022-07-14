import 'package:election_app/features/home/data/models/municipality_detail/municipality_name.dart';
import 'package:election_app/features/home/domain/entities/DistrictWithType/district_with_type.dart';
import 'package:election_app/features/home/domain/entities/MunicipalityWithType/municipality_with_type.dart';
import 'package:election_app/features/home/domain/entities/PradeshWithType/pradesh_with_type.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ItemWithType/item_with_type.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse extends Equatable {
  @JsonKey(name: "data")
  final List<ItemWithType>? items;

  // @JsonKey(name: "data")

  // @JsonKey(name: "data")

  HomeResponse({
    required this.items,
  });

  @override
  List<Object?> get props => [items];

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

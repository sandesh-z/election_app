import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ItemWithType/item_with_type.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse extends Equatable {
  @JsonKey(name: "data")
  final List<ItemWithType>? items;

  const HomeResponse({
    required this.items,
  });

  @override
  List<Object?> get props => [items];

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

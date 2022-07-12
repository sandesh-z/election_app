import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse extends Equatable {
  // @JsonKey(name: "data")
  final List<dynamic> items;
  HomeResponse({
    required this.items,
  });

  @override
  List<Object?> get props => [items];

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

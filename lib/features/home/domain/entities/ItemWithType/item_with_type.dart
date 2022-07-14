// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_with_type.g.dart';

@JsonSerializable()
class ItemWithType extends Equatable {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "data")
  final List<dynamic> data;
  ItemWithType({
    required this.type,
    required this.data,
  });

  factory ItemWithType.fromJson(Map<String, dynamic> json) =>
      _$ItemWithTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ItemWithTypeToJson(this);

  @override
  List<Object?> get props => [type, data];

  @override
  bool get stringify => true;
}

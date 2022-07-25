import 'package:election_app/features/home/domain/entities/HomeResponse/home_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ItemWithType/item_with_type.dart';
part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel extends HomeResponse {
  const HomeResponseModel({
    required List<ItemWithType>? items,
  }) : super(
          items: items,
        );

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$HomeResponseModelToJson(this);
}

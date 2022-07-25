import 'package:election_app/features/home/domain/entities/CandidateWithType/candidate_with_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/Canditate/candidate.dart';
part 'search_response_model.g.dart';

@JsonSerializable()
class SearchResponseModel extends CandidateWithType {
  const SearchResponseModel({
    required List<Candidate> data,
  }) : super(data: data);

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SearchResponseModelToJson(this);
}

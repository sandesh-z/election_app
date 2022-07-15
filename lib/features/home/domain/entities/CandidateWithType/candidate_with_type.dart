// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:election_app/features/home/domain/entities/Canditate/candidate.dart';

part 'candidate_with_type.g.dart';

@JsonSerializable()
class CandidateWithType extends Equatable {
  @JsonKey(name: "data")
  final List<Candidate> data;

  CandidateWithType({
    required this.data,
  });

  factory CandidateWithType.fromJson(Map<String, dynamic> json) =>
      _$CandidateWithTypeFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateWithTypeToJson(this);

  @override
  List<Object?> get props => [data];

  @override
  bool get stringify => true;
}

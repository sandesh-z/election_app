import 'package:election_app/features/home/domain/entities/CandidateWithType/candidate_with_type.dart';

abstract class RemoteSearchListDataSource {
  Future<CandidateWithType> getSearchResponse(int palikaId);
}

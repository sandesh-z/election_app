import '../../domain/entities/CandidateWithType/candidate_with_type.dart';

abstract class RemoteSearchListDataSource {
  Future<CandidateWithType> getSearchResponse(int palikaId);
}

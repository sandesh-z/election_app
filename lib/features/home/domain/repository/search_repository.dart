import 'package:dartz/dartz.dart';

import '../../../../core/failures/failure.dart';
import '../../data/models/SearchResponseModel/search_response_model.dart';

abstract class SearchRepository {
  Future<Either<ApiFailure, SearchResponseModel>> getSearchResponse();
}

// @LazySingleton(as: HomeRepository)
import 'package:dartz/dartz.dart';
import 'package:election_app/features/home/data/data_source/remote_search_list_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/failures/failure.dart';
import '../../domain/repository/search_repository.dart';
import '../models/SearchResponseModel/search_response_model.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl extends SearchRepository {
  RemoteSearchListDataSource remoteSearchDataSource;
  SearchRepositoryImpl(this.remoteSearchDataSource);
  @override
  Future<Either<ApiFailure, SearchResponseModel>> getSearchResponse() async {
    try {
      final response = await remoteSearchDataSource.getSearchResponse();
      final searchPageData = SearchResponseModel(data: response.data);

      return Right(searchPageData);
    } on AppException catch (e) {
      return Left(e.maybeMap(
          serverException: (_) => ApiFailure.serverError(),
          orElse: () => ApiFailure.serverError()));
    }
  }
}

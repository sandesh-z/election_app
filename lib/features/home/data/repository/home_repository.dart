import 'package:election_app/core/exceptions/exceptions.dart';
import 'package:election_app/features/home/data/models/HomePageData/home_page_data.dart';
import 'package:election_app/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:election_app/features/home/data/models/HomeResponseModel/home_response_model.dart';
import 'package:election_app/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

import '../data_source/remote_pradesh_data.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  RemotePradeshNameDataSource remotePradeshNameDataSource;
  HomeRepositoryImpl(this.remotePradeshNameDataSource);
  @override
  Future<Either<ApiFailure, HomeResponseModel>> getHomeResponse() async {
    try {
      final response = await remotePradeshNameDataSource.getHomeResponse();
      final homePageData = HomeResponseModel(
        items: response.items,
      );
      return Right(homePageData);
    } on AppException catch (e) {
      return Left(e.maybeMap(
          serverException: (_) => ApiFailure.serverError(),
          orElse: () => ApiFailure.serverError()));
    }
  }
}

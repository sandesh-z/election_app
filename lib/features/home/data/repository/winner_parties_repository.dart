import 'package:election_app/features/home/data/data_source/remote_party_detail_data_source.dart';
import 'package:election_app/features/home/data/models/WinnerPartyDetailList/winner_party_detail_list.dart';
import 'package:election_app/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:election_app/features/home/domain/repository/winner_parties_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/exceptions.dart';

@LazySingleton(as: WinnerPartiesRepository)
class WinnerPartiesRepositoryImpl extends WinnerPartiesRepository {
  RemotePartyDetailDataSoruce remotePartyDetailDataSoruce;
  WinnerPartiesRepositoryImpl(this.remotePartyDetailDataSoruce);
  @override
  Future<Either<ApiFailure, WinnerPartyDetailListModel>>
      getPartyDetailsResponse() async {
    try {
      final response =
          await remotePartyDetailDataSoruce.getPartyDetailsResponse();
      final homePageData = WinnerPartyDetailListModel(data: response.data);
      return Right(homePageData);
    } on AppException catch (e) {
      return Left(e.maybeMap(
          serverException: (_) => ApiFailure.serverError(),
          orElse: () => ApiFailure.serverError()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:election_app/features/home/domain/repository/winner_parties_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failure.dart';
import '../../../../core/models/no_params.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/WinnerPartyDetailList/winner_party_detail_list.dart';

@lazySingleton
class GetHomePagePartyDataUseCase
    extends UseCase<ApiFailure, WinnerPartyDetailListModel, NoParams> {
  WinnerPartiesRepository winnerPartiesRepository;
  GetHomePagePartyDataUseCase(this.winnerPartiesRepository);

  @override
  Future<Either<ApiFailure, WinnerPartyDetailListModel>> call(
      NoParams params) async {
    return await winnerPartiesRepository.getPartyDetailsResponse();
  }
}

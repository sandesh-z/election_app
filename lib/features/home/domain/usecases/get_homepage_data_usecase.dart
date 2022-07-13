import 'package:dartz/dartz.dart';
import 'package:election_app/core/failures/failure.dart';
import 'package:election_app/core/models/no_params.dart';
import 'package:election_app/core/usecases/usecase.dart';
import 'package:election_app/features/home/data/models/HomePageData/home_page_data.dart';
import 'package:election_app/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHomePageDataUseCase
    extends UseCase<ApiFailure, HomePageData, NoParams> {
  HomeRepository homeRepository;
  GetHomePageDataUseCase(this.homeRepository);

  @override
  Future<Either<ApiFailure, HomePageData>> call(NoParams params) async {
    return await homeRepository.getHomeResponse();
  }
}

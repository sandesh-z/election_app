import 'package:election_app/features/home/data/models/HomeResponseModel/home_response_model.dart';

import '../../../../core/failures/failure.dart';
import '../../data/models/HomePageData/home_page_data.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<ApiFailure, HomeResponseModel>> getHomeResponse();
}

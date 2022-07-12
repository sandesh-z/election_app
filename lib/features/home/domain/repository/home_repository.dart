import '../../../../core/failures/failure.dart';
import '../../data/models/HomePageData/home_page_data.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<ApiFailure, HomePageData>> getHomeResponse();
}

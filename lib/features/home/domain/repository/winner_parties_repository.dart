import 'package:dartz/dartz.dart';

import '../../../../core/failures/failure.dart';
import '../../data/models/WinnerPartyDetailList/winner_party_detail_list.dart';

abstract class WinnerPartiesRepository {
  Future<Either<ApiFailure, WinnerPartyDetailListModel>>
      getPartyDetailsResponse();
}

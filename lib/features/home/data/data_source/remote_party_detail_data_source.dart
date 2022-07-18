import '../../domain/entities/WinnerPartyDetailList/winner_party_detail_list.dart';

abstract class RemotePartyDetailDataSoruce {
  Future<WinnerPartyDetailList> getPartyDetailsResponse();
}

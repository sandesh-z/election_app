import 'package:dio/dio.dart';
import 'package:election_app/core/usecases/dio_client.dart';
import 'package:election_app/features/home/data/data_source/remote_party_detail_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../../domain/entities/WinnerPartyDetailList/winner_party_detail_list.dart';

@LazySingleton(as: RemotePartyDetailDataSoruce)
class RemotePartyDetailDataSoruceImpl extends RemotePartyDetailDataSoruce {
  final DioClient dioClient;
  RemotePartyDetailDataSoruceImpl(this.dioClient);
  @override
  Future<WinnerPartyDetailList> getPartyDetailsResponse() async {
    WinnerPartyDetailList partyDetailResponse;
    try {
      Response response =
          await dioClient.client.get('/party_wise_vote/get_party_wise_details');

      partyDetailResponse = WinnerPartyDetailList.fromJson(response.data);
      print('Party-Wise-Details: $partyDetailResponse');
      return partyDetailResponse;
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    throw AppException.serverException();
  }
}

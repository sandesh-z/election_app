import 'package:dio/dio.dart';
import 'package:election_app/core/usecases/dio_client.dart';
import 'package:election_app/features/home/data/data_source/remote_search_list_data_source.dart';
import 'package:election_app/features/home/domain/entities/CandidateWithType/candidate_with_type.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/exceptions.dart';

@LazySingleton(as: RemoteSearchListDataSource)
class RemoteSearchListDataSourceImpl extends RemoteSearchListDataSource {
  final DioClient dioClient;
  RemoteSearchListDataSourceImpl(this.dioClient);

  @override
  Future<CandidateWithType> getSearchResponse(int palikaId) async {
    CandidateWithType searchResponse;

    try {
      Response response = await dioClient.client.post(
        '/home_api/search/',
        data: {'PalikaId': palikaId},
      );

      searchResponse = CandidateWithType.fromJson(response.data);
      print('SingleTypeResponse Info: ${searchResponse}');

      return searchResponse;
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

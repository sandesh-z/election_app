import 'package:dio/dio.dart';
import 'package:election_app/core/exceptions/exceptions.dart';
import 'package:election_app/core/usecases/dio_client.dart';
import 'package:election_app/features/home/data/data_source/remote_pradesh_data.dart';
import 'package:election_app/features/home/domain/entities/HomeResponse/home_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RemotePradeshNameDataSource)
class RemoteDataSourceImpl extends RemotePradeshNameDataSource {
  final DioClient dioClient;
  RemoteDataSourceImpl(this.dioClient);

  @override
  Future<HomeResponse> getHomeResponse() async {
    HomeResponse homeResponse;

    try {
      Response response = await dioClient.client.get('/home_api/get_details/');

      Map<String, dynamic> map = <String, dynamic>{'data': response.data};

      print(map);
      homeResponse = HomeResponse.fromJson(map);
      print('SingleTypeResponse Info: ${homeResponse}');

      return homeResponse;
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

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioClient {
  Dio get client => Dio(
        BaseOptions(
          baseUrl: 'https://electionapi.truestreamz.com/api',
          headers: <String, dynamic>{
            'election': 'ntv2041@election2079',
          },
        ),
      );

  DioClient();
}

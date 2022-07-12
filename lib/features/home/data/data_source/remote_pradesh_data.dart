import 'package:election_app/features/home/domain/entities/HomeResponse/home_response.dart';

abstract class RemotePradeshNameDataSource {
  Future<HomeResponse> getHomeResponse();
}

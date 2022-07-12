import 'package:election_app/features/home/domain/entities/PradeshWithType/pradesh_with_type.dart';

abstract class RemotePradeshNameDataSource {
  Future<PradeshWithType> getPradeshWithTypeResponse();
}

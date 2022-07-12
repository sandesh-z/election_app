import 'package:dartz/dartz.dart';

abstract class UseCase<Failure, Result, Params> {
  Future<Either<Failure, Result>> call(Params params);
}

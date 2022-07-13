// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/usecases/dio_client.dart' as _i3;
import 'features/home/data/data_source/remote_pradesh_data.dart' as _i4;
import 'features/home/data/data_source/remote_pradesh_data_impl.dart' as _i5;
import 'features/home/data/repository/home_repository.dart' as _i7;
import 'features/home/domain/repository/home_repository.dart' as _i6;
import 'features/home/domain/usecases/get_homepage_data_usecase.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DioClient>(() => _i3.DioClient());
  gh.lazySingleton<_i4.RemotePradeshNameDataSource>(
      () => _i5.RemoteDataSourceImpl(get<_i3.DioClient>()));
  gh.lazySingleton<_i6.HomeRepository>(
      () => _i7.HomeRepositoryImpl(get<_i4.RemotePradeshNameDataSource>()));
  gh.lazySingleton<_i8.GetHomePageDataUseCase>(
      () => _i8.GetHomePageDataUseCase(get<_i6.HomeRepository>()));
  return get;
}

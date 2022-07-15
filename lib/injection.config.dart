// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/usecases/dio_client.dart' as _i3;
import 'features/home/data/data_source/remote_pradesh_data.dart' as _i4;
import 'features/home/data/data_source/remote_pradesh_data_impl.dart' as _i5;
import 'features/home/data/data_source/remote_search_list_data_source.dart'
    as _i6;
import 'features/home/data/data_source/remote_search_list_implementation.dart'
    as _i7;
import 'features/home/data/repository/home_repository.dart' as _i12;
import 'features/home/data/repository/search_repository.dart' as _i9;
import 'features/home/domain/repository/home_repository.dart' as _i11;
import 'features/home/domain/repository/search_repository.dart' as _i8;
import 'features/home/domain/usecases/get_homepage_data_usecase.dart' as _i13;
import 'features/home/domain/usecases/get_searchpage_data_usecase.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DioClient>(() => _i3.DioClient());
  gh.lazySingleton<_i4.RemotePradeshNameDataSource>(
      () => _i5.RemoteDataSourceImpl(get<_i3.DioClient>()));
  gh.lazySingleton<_i6.RemoteSearchListDataSource>(
      () => _i7.RemoteSearchListDataSourceImpl(get<_i3.DioClient>()));
  gh.lazySingleton<_i8.SearchRepository>(
      () => _i9.SearchRepositoryImpl(get<_i6.RemoteSearchListDataSource>()));
  gh.lazySingleton<_i10.GetSearchPageDataUseCase>(
      () => _i10.GetSearchPageDataUseCase(get<_i8.SearchRepository>()));
  gh.lazySingleton<_i11.HomeRepository>(
      () => _i12.HomeRepositoryImpl(get<_i4.RemotePradeshNameDataSource>()));
  gh.lazySingleton<_i13.GetHomePageDataUseCase>(
      () => _i13.GetHomePageDataUseCase(get<_i11.HomeRepository>()));
  return get;
}

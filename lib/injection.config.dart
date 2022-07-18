// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/usecases/dio_client.dart' as _i3;
import 'features/home/data/data_source/remote_party_detail_data_source.dart'
    as _i4;
import 'features/home/data/data_source/remote_party_detail_data_source_implementation.dart'
    as _i5;
import 'features/home/data/data_source/remote_pradesh_data.dart' as _i6;
import 'features/home/data/data_source/remote_pradesh_data_impl.dart' as _i7;
import 'features/home/data/data_source/remote_search_list_data_source.dart'
    as _i8;
import 'features/home/data/data_source/remote_search_list_implementation.dart'
    as _i9;
import 'features/home/data/repository/home_repository.dart' as _i17;
import 'features/home/data/repository/search_repository.dart' as _i11;
import 'features/home/data/repository/winner_parties_repository.dart' as _i13;
import 'features/home/domain/repository/home_repository.dart' as _i16;
import 'features/home/domain/repository/search_repository.dart' as _i10;
import 'features/home/domain/repository/winner_parties_repository.dart' as _i12;
import 'features/home/domain/usecases/get_home_page_party_data_usecase.dart'
    as _i14;
import 'features/home/domain/usecases/get_homepage_data_usecase.dart' as _i18;
import 'features/home/domain/usecases/get_searchpage_data_usecase.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DioClient>(() => _i3.DioClient());
  gh.lazySingleton<_i4.RemotePartyDetailDataSoruce>(
      () => _i5.RemotePartyDetailDataSoruceImpl(get<_i3.DioClient>()));
  gh.lazySingleton<_i6.RemotePradeshNameDataSource>(
      () => _i7.RemoteDataSourceImpl(get<_i3.DioClient>()));
  gh.lazySingleton<_i8.RemoteSearchListDataSource>(
      () => _i9.RemoteSearchListDataSourceImpl(get<_i3.DioClient>()));
  gh.lazySingleton<_i10.SearchRepository>(
      () => _i11.SearchRepositoryImpl(get<_i8.RemoteSearchListDataSource>()));
  gh.lazySingleton<_i12.WinnerPartiesRepository>(() =>
      _i13.WinnerPartiesRepositoryImpl(get<_i4.RemotePartyDetailDataSoruce>()));
  gh.lazySingleton<_i14.GetHomePagePartyDataUseCase>(() =>
      _i14.GetHomePagePartyDataUseCase(get<_i12.WinnerPartiesRepository>()));
  gh.lazySingleton<_i15.GetSearchPageDataUseCase>(
      () => _i15.GetSearchPageDataUseCase(get<_i10.SearchRepository>()));
  gh.lazySingleton<_i16.HomeRepository>(
      () => _i17.HomeRepositoryImpl(get<_i6.RemotePradeshNameDataSource>()));
  gh.lazySingleton<_i18.GetHomePageDataUseCase>(
      () => _i18.GetHomePageDataUseCase(get<_i16.HomeRepository>()));
  return get;
}

import 'package:bloc/bloc.dart';
import 'package:election_app/features/home/domain/usecases/get_homepage_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/models/no_params.dart';
import '../../../../injection.dart';
import '../../data/models/HomePageData/home_page_data.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetHomePageDataUseCase getHomePageDataUseCase;

  HomeBloc(this.getHomePageDataUseCase) : super(HomeState.initial()) {
    on<_LoadHomePageDataEvent>(_onLoadHomePageDataEvent);
  }
  void _onLoadHomePageDataEvent(
      _LoadHomePageDataEvent event, Emitter<HomeState> emit) async {
    final usecase = getIt<GetHomePageDataUseCase>();
    final result = await usecase(NoParams());

    emit(result.fold((l) => HomeState.loadFailure(),
        (r) => HomeState.loadSuccess(homepagedata: r)));
  }
}

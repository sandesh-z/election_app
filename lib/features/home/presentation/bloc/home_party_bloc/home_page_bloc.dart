import 'package:bloc/bloc.dart';
import 'package:election_app/features/home/domain/usecases/get_home_page_party_data_usecase.dart';
import 'package:election_app/features/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../core/models/no_params.dart';
import '../../../../../injection.dart';
import '../../../data/models/WinnerPartyDetailList/winner_party_detail_list.dart';
import '../../../domain/usecases/get_homepage_data_usecase.dart';

part 'home_page_bloc.freezed.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  GetHomePagePartyDataUseCase getHomePagePartyDataUseCase;

  HomePageBloc(this.getHomePagePartyDataUseCase)
      : super(HomePageState.loading()) {
    on<_LoadHomePageDataEvent>(_onLoadHomePageDataEvent);
  }
  void _onLoadHomePageDataEvent(
      _LoadHomePageDataEvent event, Emitter<HomePageState> emit) async {
    final usecase = getIt<GetHomePagePartyDataUseCase>();
    final result = await usecase(NoParams());

    emit(result.fold((l) => HomePageState.loadFailure(),
        (r) => HomePageState.loadSuccess(homeWinnerPartyPagedata: r)));
  }
}

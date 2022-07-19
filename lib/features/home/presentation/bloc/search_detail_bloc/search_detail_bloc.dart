import 'package:bloc/bloc.dart';
import 'package:election_app/features/home/domain/usecases/get_homepage_data_usecase.dart';
import 'package:election_app/features/home/domain/usecases/get_searchpage_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../core/models/no_params.dart';
import '../../../../../injection.dart';
import '../../../data/models/HomeResponseModel/home_response_model.dart';
import '../../../data/models/SearchResponseModel/search_response_model.dart';

part 'search_detail_bloc.freezed.dart';
part 'search_detail_event.dart';
part 'search_detail_state.dart';

class SearchDetailBloc extends Bloc<SearchDetailEvent, SearchDetailState> {
  GetHomePageDataUseCase getHomePageDataUseCase;
  GetSearchPageDataUseCase getSearchPageDataUseCase;
  SearchDetailBloc(this.getHomePageDataUseCase, this.getSearchPageDataUseCase)
      : super(SearchDetailState.searchOptionLoading()) {
    on<_LoadSearchOptionsEvent>(_onLoadSearchOptionsDataEvent);
    on<_LoadSearchDataEvent>(_onLoadSearchDataEvent);
  }
  void _onLoadSearchOptionsDataEvent(
      _LoadSearchOptionsEvent event, Emitter<SearchDetailState> emit) async {
    final usecase = getIt<GetHomePageDataUseCase>();
    final result = await usecase(NoParams());

    emit(result.fold(
        (l) => SearchDetailState.searchOptionLoadFailure(),
        (r) =>
            SearchDetailState.searchOptionLoadSuccess(searchOptionsdata: r)));
  }

  void _onLoadSearchDataEvent(
      _LoadSearchDataEvent event, Emitter<SearchDetailState> emit) async {
    final usecase = getIt<GetSearchPageDataUseCase>();
    final result = await usecase(SearchParams(palikaId: event.palikaId));

    emit(result.fold(
        (l) => SearchDetailState.searchDataLoadFailure(),
        (r) => SearchDetailState.searchDataLoadSuccess(
            searchDataResponseModel: r)));
  }
}

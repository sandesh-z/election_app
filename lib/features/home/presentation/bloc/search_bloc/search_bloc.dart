import 'package:bloc/bloc.dart';
import '../../../data/models/SearchResponseModel/search_response_model.dart';
import '../../../domain/usecases/get_searchpage_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../injection.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  GetSearchPageDataUseCase getSearchPageDataUseCase;
  SearchBloc(this.getSearchPageDataUseCase)
      : super(SearchState.searchLoading()) {
    on<_LoadSearchDataEvent>(_onLoadSearchDataEvent);
  }
  void _onLoadSearchDataEvent(
      _LoadSearchDataEvent event, Emitter<SearchState> emit) async {
    final usecase = getIt<GetSearchPageDataUseCase>();
    final result = await usecase(SearchParams(palikaId: 7));

    emit(result.fold((l) => SearchState.searchLoadFailure(),
        (r) => SearchState.searchLoadSuccess(searchResponseModel: r)));
  }
}

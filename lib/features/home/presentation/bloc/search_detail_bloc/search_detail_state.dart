part of 'search_detail_bloc.dart';

@freezed
class SearchDetailState with _$SearchDetailState {
  factory SearchDetailState.searchOptionLoading() = _SearchOptionLoadingState;
  factory SearchDetailState.searchOptionLoadFailure() =
      _SearchOptionLoadFailureState;
  factory SearchDetailState.searchOptionLoadSuccess(
          {required HomeResponseModel searchOptionsdata}) =
      _SearchOptionLoadSuccessState;

  factory SearchDetailState.searchDataLoading() = _SearchDataLoadingState;
  factory SearchDetailState.searchDataLoadFailure() =
      _SearchDataLoadFailureState;
  factory SearchDetailState.searchDataLoadSuccess(
          {required SearchResponseModel searchDataResponseModel}) =
      _SearchDataLoadSuccessState;
}

part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState.searchLoading() = _SearchLoadingState;
  factory SearchState.searchLoadSuccess(
          {required SearchResponseModel searchResponseModel}) =
      _SearchLoadSuccessState;
  factory SearchState.searchLoadFailure() = _SearchLoadFailureState;
}

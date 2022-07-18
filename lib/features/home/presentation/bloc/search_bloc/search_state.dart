part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState.loading() = _SearchLoadingState;
  factory SearchState.loadSuccess(
          {required SearchResponseModel searchResponseModel}) =
      _SearchLoadSuccessState;
  factory SearchState.loadFailure() = _SearchLoadFailureState;
}

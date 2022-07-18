part of 'home_page_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loading() = _HomeLoadingState;
  factory HomeState.loadFailure() = _HomeLoadFailureState;
  factory HomeState.loadSuccess(
          {required WinnerPartyDetailListModel homeWinnerPartyPagedata}) =
      _HomeLoadSuccessState;
}

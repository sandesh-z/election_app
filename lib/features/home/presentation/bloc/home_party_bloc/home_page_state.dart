part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState.loading() = _HomeLoadingState;
  factory HomePageState.loadFailure() = _HomeLoadFailureState;
  factory HomePageState.loadSuccess(
          {required WinnerPartyDetailListModel homeWinnerPartyPagedata}) =
      _HomeLoadSuccessState;
}

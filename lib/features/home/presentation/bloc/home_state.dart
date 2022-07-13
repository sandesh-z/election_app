part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.initial() = _InitialHomePageState;
  factory HomeState.loading() = _HomePageLoadingState;
  factory HomeState.loadSuccess({required HomePageData? homepagedata}) =
      _HomePageLoadedState;
  factory HomeState.loadFailure() = _HomePageLoadFailureState;
}

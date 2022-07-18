part of 'home_page_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.loadHomePageData() = _LoadHomePageDataEvent;
  factory HomeEvent.reloadHomePageData() = _ReloadHomePageDataEvent;
}

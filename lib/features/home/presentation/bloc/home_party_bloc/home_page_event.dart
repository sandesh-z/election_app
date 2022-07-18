part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  factory HomePageEvent.loadHomePageData() = _LoadHomePageDataEvent;
  factory HomePageEvent.reloadHomePageData() = _ReloadHomePageDataEvent;
}

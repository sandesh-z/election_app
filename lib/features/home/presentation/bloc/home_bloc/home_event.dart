part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.loadHomePageData() = _LoadHomePageDataEvent;
}

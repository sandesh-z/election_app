part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  factory SearchEvent.loadSearchedData() = _LoadSearchDataEvent;
}

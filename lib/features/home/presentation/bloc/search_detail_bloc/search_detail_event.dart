part of 'search_detail_bloc.dart';

@freezed
class SearchDetailEvent with _$SearchDetailEvent {
  factory SearchDetailEvent.loadSearchOptions() = _LoadSearchOptionsEvent;
  factory SearchDetailEvent.loadSearchData() = _LoadSearchDataEvent;
}

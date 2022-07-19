// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSearchOptions,
    required TResult Function(int palikaId) loadSearchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSearchOptions,
    TResult Function(int palikaId)? loadSearchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSearchOptions,
    TResult Function(int palikaId)? loadSearchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSearchOptionsEvent value) loadSearchOptions,
    required TResult Function(_LoadSearchDataEvent value) loadSearchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadSearchOptionsEvent value)? loadSearchOptions,
    TResult Function(_LoadSearchDataEvent value)? loadSearchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSearchOptionsEvent value)? loadSearchOptions,
    TResult Function(_LoadSearchDataEvent value)? loadSearchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDetailEventCopyWith<$Res> {
  factory $SearchDetailEventCopyWith(
          SearchDetailEvent value, $Res Function(SearchDetailEvent) then) =
      _$SearchDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDetailEventCopyWithImpl<$Res>
    implements $SearchDetailEventCopyWith<$Res> {
  _$SearchDetailEventCopyWithImpl(this._value, this._then);

  final SearchDetailEvent _value;
  // ignore: unused_field
  final $Res Function(SearchDetailEvent) _then;
}

/// @nodoc
abstract class _$$_LoadSearchOptionsEventCopyWith<$Res> {
  factory _$$_LoadSearchOptionsEventCopyWith(_$_LoadSearchOptionsEvent value,
          $Res Function(_$_LoadSearchOptionsEvent) then) =
      __$$_LoadSearchOptionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSearchOptionsEventCopyWithImpl<$Res>
    extends _$SearchDetailEventCopyWithImpl<$Res>
    implements _$$_LoadSearchOptionsEventCopyWith<$Res> {
  __$$_LoadSearchOptionsEventCopyWithImpl(_$_LoadSearchOptionsEvent _value,
      $Res Function(_$_LoadSearchOptionsEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadSearchOptionsEvent));

  @override
  _$_LoadSearchOptionsEvent get _value =>
      super._value as _$_LoadSearchOptionsEvent;
}

/// @nodoc

class _$_LoadSearchOptionsEvent
    with DiagnosticableTreeMixin
    implements _LoadSearchOptionsEvent {
  _$_LoadSearchOptionsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailEvent.loadSearchOptions()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SearchDetailEvent.loadSearchOptions'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSearchOptionsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSearchOptions,
    required TResult Function(int palikaId) loadSearchData,
  }) {
    return loadSearchOptions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSearchOptions,
    TResult Function(int palikaId)? loadSearchData,
  }) {
    return loadSearchOptions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSearchOptions,
    TResult Function(int palikaId)? loadSearchData,
    required TResult orElse(),
  }) {
    if (loadSearchOptions != null) {
      return loadSearchOptions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSearchOptionsEvent value) loadSearchOptions,
    required TResult Function(_LoadSearchDataEvent value) loadSearchData,
  }) {
    return loadSearchOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadSearchOptionsEvent value)? loadSearchOptions,
    TResult Function(_LoadSearchDataEvent value)? loadSearchData,
  }) {
    return loadSearchOptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSearchOptionsEvent value)? loadSearchOptions,
    TResult Function(_LoadSearchDataEvent value)? loadSearchData,
    required TResult orElse(),
  }) {
    if (loadSearchOptions != null) {
      return loadSearchOptions(this);
    }
    return orElse();
  }
}

abstract class _LoadSearchOptionsEvent implements SearchDetailEvent {
  factory _LoadSearchOptionsEvent() = _$_LoadSearchOptionsEvent;
}

/// @nodoc
abstract class _$$_LoadSearchDataEventCopyWith<$Res> {
  factory _$$_LoadSearchDataEventCopyWith(_$_LoadSearchDataEvent value,
          $Res Function(_$_LoadSearchDataEvent) then) =
      __$$_LoadSearchDataEventCopyWithImpl<$Res>;
  $Res call({int palikaId});
}

/// @nodoc
class __$$_LoadSearchDataEventCopyWithImpl<$Res>
    extends _$SearchDetailEventCopyWithImpl<$Res>
    implements _$$_LoadSearchDataEventCopyWith<$Res> {
  __$$_LoadSearchDataEventCopyWithImpl(_$_LoadSearchDataEvent _value,
      $Res Function(_$_LoadSearchDataEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadSearchDataEvent));

  @override
  _$_LoadSearchDataEvent get _value => super._value as _$_LoadSearchDataEvent;

  @override
  $Res call({
    Object? palikaId = freezed,
  }) {
    return _then(_$_LoadSearchDataEvent(
      palikaId: palikaId == freezed
          ? _value.palikaId
          : palikaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadSearchDataEvent
    with DiagnosticableTreeMixin
    implements _LoadSearchDataEvent {
  _$_LoadSearchDataEvent({required this.palikaId});

  @override
  final int palikaId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailEvent.loadSearchData(palikaId: $palikaId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchDetailEvent.loadSearchData'))
      ..add(DiagnosticsProperty('palikaId', palikaId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSearchDataEvent &&
            const DeepCollectionEquality().equals(other.palikaId, palikaId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(palikaId));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSearchDataEventCopyWith<_$_LoadSearchDataEvent> get copyWith =>
      __$$_LoadSearchDataEventCopyWithImpl<_$_LoadSearchDataEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSearchOptions,
    required TResult Function(int palikaId) loadSearchData,
  }) {
    return loadSearchData(palikaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSearchOptions,
    TResult Function(int palikaId)? loadSearchData,
  }) {
    return loadSearchData?.call(palikaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSearchOptions,
    TResult Function(int palikaId)? loadSearchData,
    required TResult orElse(),
  }) {
    if (loadSearchData != null) {
      return loadSearchData(palikaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSearchOptionsEvent value) loadSearchOptions,
    required TResult Function(_LoadSearchDataEvent value) loadSearchData,
  }) {
    return loadSearchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadSearchOptionsEvent value)? loadSearchOptions,
    TResult Function(_LoadSearchDataEvent value)? loadSearchData,
  }) {
    return loadSearchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSearchOptionsEvent value)? loadSearchOptions,
    TResult Function(_LoadSearchDataEvent value)? loadSearchData,
    required TResult orElse(),
  }) {
    if (loadSearchData != null) {
      return loadSearchData(this);
    }
    return orElse();
  }
}

abstract class _LoadSearchDataEvent implements SearchDetailEvent {
  factory _LoadSearchDataEvent({required final int palikaId}) =
      _$_LoadSearchDataEvent;

  int get palikaId;
  @JsonKey(ignore: true)
  _$$_LoadSearchDataEventCopyWith<_$_LoadSearchDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchOptionLoading,
    required TResult Function() searchOptionLoadFailure,
    required TResult Function(HomeResponseModel searchOptionsdata)
        searchOptionLoadSuccess,
    required TResult Function() searchDataLoading,
    required TResult Function() searchDataLoadFailure,
    required TResult Function(SearchResponseModel searchDataResponseModel)
        searchDataLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchOptionLoadingState value)
        searchOptionLoading,
    required TResult Function(_SearchOptionLoadFailureState value)
        searchOptionLoadFailure,
    required TResult Function(_SearchOptionLoadSuccessState value)
        searchOptionLoadSuccess,
    required TResult Function(_SearchDataLoadingState value) searchDataLoading,
    required TResult Function(_SearchDataLoadFailureState value)
        searchDataLoadFailure,
    required TResult Function(_SearchDataLoadSuccessState value)
        searchDataLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDetailStateCopyWith<$Res> {
  factory $SearchDetailStateCopyWith(
          SearchDetailState value, $Res Function(SearchDetailState) then) =
      _$SearchDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDetailStateCopyWithImpl<$Res>
    implements $SearchDetailStateCopyWith<$Res> {
  _$SearchDetailStateCopyWithImpl(this._value, this._then);

  final SearchDetailState _value;
  // ignore: unused_field
  final $Res Function(SearchDetailState) _then;
}

/// @nodoc
abstract class _$$_SearchOptionLoadingStateCopyWith<$Res> {
  factory _$$_SearchOptionLoadingStateCopyWith(
          _$_SearchOptionLoadingState value,
          $Res Function(_$_SearchOptionLoadingState) then) =
      __$$_SearchOptionLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchOptionLoadingStateCopyWithImpl<$Res>
    extends _$SearchDetailStateCopyWithImpl<$Res>
    implements _$$_SearchOptionLoadingStateCopyWith<$Res> {
  __$$_SearchOptionLoadingStateCopyWithImpl(_$_SearchOptionLoadingState _value,
      $Res Function(_$_SearchOptionLoadingState) _then)
      : super(_value, (v) => _then(v as _$_SearchOptionLoadingState));

  @override
  _$_SearchOptionLoadingState get _value =>
      super._value as _$_SearchOptionLoadingState;
}

/// @nodoc

class _$_SearchOptionLoadingState
    with DiagnosticableTreeMixin
    implements _SearchOptionLoadingState {
  _$_SearchOptionLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailState.searchOptionLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SearchDetailState.searchOptionLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchOptionLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchOptionLoading,
    required TResult Function() searchOptionLoadFailure,
    required TResult Function(HomeResponseModel searchOptionsdata)
        searchOptionLoadSuccess,
    required TResult Function() searchDataLoading,
    required TResult Function() searchDataLoadFailure,
    required TResult Function(SearchResponseModel searchDataResponseModel)
        searchDataLoadSuccess,
  }) {
    return searchOptionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
  }) {
    return searchOptionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchOptionLoading != null) {
      return searchOptionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchOptionLoadingState value)
        searchOptionLoading,
    required TResult Function(_SearchOptionLoadFailureState value)
        searchOptionLoadFailure,
    required TResult Function(_SearchOptionLoadSuccessState value)
        searchOptionLoadSuccess,
    required TResult Function(_SearchDataLoadingState value) searchDataLoading,
    required TResult Function(_SearchDataLoadFailureState value)
        searchDataLoadFailure,
    required TResult Function(_SearchDataLoadSuccessState value)
        searchDataLoadSuccess,
  }) {
    return searchOptionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
  }) {
    return searchOptionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchOptionLoading != null) {
      return searchOptionLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchOptionLoadingState implements SearchDetailState {
  factory _SearchOptionLoadingState() = _$_SearchOptionLoadingState;
}

/// @nodoc
abstract class _$$_SearchOptionLoadFailureStateCopyWith<$Res> {
  factory _$$_SearchOptionLoadFailureStateCopyWith(
          _$_SearchOptionLoadFailureState value,
          $Res Function(_$_SearchOptionLoadFailureState) then) =
      __$$_SearchOptionLoadFailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchOptionLoadFailureStateCopyWithImpl<$Res>
    extends _$SearchDetailStateCopyWithImpl<$Res>
    implements _$$_SearchOptionLoadFailureStateCopyWith<$Res> {
  __$$_SearchOptionLoadFailureStateCopyWithImpl(
      _$_SearchOptionLoadFailureState _value,
      $Res Function(_$_SearchOptionLoadFailureState) _then)
      : super(_value, (v) => _then(v as _$_SearchOptionLoadFailureState));

  @override
  _$_SearchOptionLoadFailureState get _value =>
      super._value as _$_SearchOptionLoadFailureState;
}

/// @nodoc

class _$_SearchOptionLoadFailureState
    with DiagnosticableTreeMixin
    implements _SearchOptionLoadFailureState {
  _$_SearchOptionLoadFailureState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailState.searchOptionLoadFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'SearchDetailState.searchOptionLoadFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchOptionLoadFailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchOptionLoading,
    required TResult Function() searchOptionLoadFailure,
    required TResult Function(HomeResponseModel searchOptionsdata)
        searchOptionLoadSuccess,
    required TResult Function() searchDataLoading,
    required TResult Function() searchDataLoadFailure,
    required TResult Function(SearchResponseModel searchDataResponseModel)
        searchDataLoadSuccess,
  }) {
    return searchOptionLoadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
  }) {
    return searchOptionLoadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchOptionLoadFailure != null) {
      return searchOptionLoadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchOptionLoadingState value)
        searchOptionLoading,
    required TResult Function(_SearchOptionLoadFailureState value)
        searchOptionLoadFailure,
    required TResult Function(_SearchOptionLoadSuccessState value)
        searchOptionLoadSuccess,
    required TResult Function(_SearchDataLoadingState value) searchDataLoading,
    required TResult Function(_SearchDataLoadFailureState value)
        searchDataLoadFailure,
    required TResult Function(_SearchDataLoadSuccessState value)
        searchDataLoadSuccess,
  }) {
    return searchOptionLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
  }) {
    return searchOptionLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchOptionLoadFailure != null) {
      return searchOptionLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchOptionLoadFailureState implements SearchDetailState {
  factory _SearchOptionLoadFailureState() = _$_SearchOptionLoadFailureState;
}

/// @nodoc
abstract class _$$_SearchOptionLoadSuccessStateCopyWith<$Res> {
  factory _$$_SearchOptionLoadSuccessStateCopyWith(
          _$_SearchOptionLoadSuccessState value,
          $Res Function(_$_SearchOptionLoadSuccessState) then) =
      __$$_SearchOptionLoadSuccessStateCopyWithImpl<$Res>;
  $Res call({HomeResponseModel searchOptionsdata});
}

/// @nodoc
class __$$_SearchOptionLoadSuccessStateCopyWithImpl<$Res>
    extends _$SearchDetailStateCopyWithImpl<$Res>
    implements _$$_SearchOptionLoadSuccessStateCopyWith<$Res> {
  __$$_SearchOptionLoadSuccessStateCopyWithImpl(
      _$_SearchOptionLoadSuccessState _value,
      $Res Function(_$_SearchOptionLoadSuccessState) _then)
      : super(_value, (v) => _then(v as _$_SearchOptionLoadSuccessState));

  @override
  _$_SearchOptionLoadSuccessState get _value =>
      super._value as _$_SearchOptionLoadSuccessState;

  @override
  $Res call({
    Object? searchOptionsdata = freezed,
  }) {
    return _then(_$_SearchOptionLoadSuccessState(
      searchOptionsdata: searchOptionsdata == freezed
          ? _value.searchOptionsdata
          : searchOptionsdata // ignore: cast_nullable_to_non_nullable
              as HomeResponseModel,
    ));
  }
}

/// @nodoc

class _$_SearchOptionLoadSuccessState
    with DiagnosticableTreeMixin
    implements _SearchOptionLoadSuccessState {
  _$_SearchOptionLoadSuccessState({required this.searchOptionsdata});

  @override
  final HomeResponseModel searchOptionsdata;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailState.searchOptionLoadSuccess(searchOptionsdata: $searchOptionsdata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SearchDetailState.searchOptionLoadSuccess'))
      ..add(DiagnosticsProperty('searchOptionsdata', searchOptionsdata));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchOptionLoadSuccessState &&
            const DeepCollectionEquality()
                .equals(other.searchOptionsdata, searchOptionsdata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchOptionsdata));

  @JsonKey(ignore: true)
  @override
  _$$_SearchOptionLoadSuccessStateCopyWith<_$_SearchOptionLoadSuccessState>
      get copyWith => __$$_SearchOptionLoadSuccessStateCopyWithImpl<
          _$_SearchOptionLoadSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchOptionLoading,
    required TResult Function() searchOptionLoadFailure,
    required TResult Function(HomeResponseModel searchOptionsdata)
        searchOptionLoadSuccess,
    required TResult Function() searchDataLoading,
    required TResult Function() searchDataLoadFailure,
    required TResult Function(SearchResponseModel searchDataResponseModel)
        searchDataLoadSuccess,
  }) {
    return searchOptionLoadSuccess(searchOptionsdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
  }) {
    return searchOptionLoadSuccess?.call(searchOptionsdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchOptionLoadSuccess != null) {
      return searchOptionLoadSuccess(searchOptionsdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchOptionLoadingState value)
        searchOptionLoading,
    required TResult Function(_SearchOptionLoadFailureState value)
        searchOptionLoadFailure,
    required TResult Function(_SearchOptionLoadSuccessState value)
        searchOptionLoadSuccess,
    required TResult Function(_SearchDataLoadingState value) searchDataLoading,
    required TResult Function(_SearchDataLoadFailureState value)
        searchDataLoadFailure,
    required TResult Function(_SearchDataLoadSuccessState value)
        searchDataLoadSuccess,
  }) {
    return searchOptionLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
  }) {
    return searchOptionLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchOptionLoadSuccess != null) {
      return searchOptionLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchOptionLoadSuccessState implements SearchDetailState {
  factory _SearchOptionLoadSuccessState(
          {required final HomeResponseModel searchOptionsdata}) =
      _$_SearchOptionLoadSuccessState;

  HomeResponseModel get searchOptionsdata;
  @JsonKey(ignore: true)
  _$$_SearchOptionLoadSuccessStateCopyWith<_$_SearchOptionLoadSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchDataLoadingStateCopyWith<$Res> {
  factory _$$_SearchDataLoadingStateCopyWith(_$_SearchDataLoadingState value,
          $Res Function(_$_SearchDataLoadingState) then) =
      __$$_SearchDataLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchDataLoadingStateCopyWithImpl<$Res>
    extends _$SearchDetailStateCopyWithImpl<$Res>
    implements _$$_SearchDataLoadingStateCopyWith<$Res> {
  __$$_SearchDataLoadingStateCopyWithImpl(_$_SearchDataLoadingState _value,
      $Res Function(_$_SearchDataLoadingState) _then)
      : super(_value, (v) => _then(v as _$_SearchDataLoadingState));

  @override
  _$_SearchDataLoadingState get _value =>
      super._value as _$_SearchDataLoadingState;
}

/// @nodoc

class _$_SearchDataLoadingState
    with DiagnosticableTreeMixin
    implements _SearchDataLoadingState {
  _$_SearchDataLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailState.searchDataLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SearchDetailState.searchDataLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDataLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchOptionLoading,
    required TResult Function() searchOptionLoadFailure,
    required TResult Function(HomeResponseModel searchOptionsdata)
        searchOptionLoadSuccess,
    required TResult Function() searchDataLoading,
    required TResult Function() searchDataLoadFailure,
    required TResult Function(SearchResponseModel searchDataResponseModel)
        searchDataLoadSuccess,
  }) {
    return searchDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
  }) {
    return searchDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchDataLoading != null) {
      return searchDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchOptionLoadingState value)
        searchOptionLoading,
    required TResult Function(_SearchOptionLoadFailureState value)
        searchOptionLoadFailure,
    required TResult Function(_SearchOptionLoadSuccessState value)
        searchOptionLoadSuccess,
    required TResult Function(_SearchDataLoadingState value) searchDataLoading,
    required TResult Function(_SearchDataLoadFailureState value)
        searchDataLoadFailure,
    required TResult Function(_SearchDataLoadSuccessState value)
        searchDataLoadSuccess,
  }) {
    return searchDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
  }) {
    return searchDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchDataLoading != null) {
      return searchDataLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchDataLoadingState implements SearchDetailState {
  factory _SearchDataLoadingState() = _$_SearchDataLoadingState;
}

/// @nodoc
abstract class _$$_SearchDataLoadFailureStateCopyWith<$Res> {
  factory _$$_SearchDataLoadFailureStateCopyWith(
          _$_SearchDataLoadFailureState value,
          $Res Function(_$_SearchDataLoadFailureState) then) =
      __$$_SearchDataLoadFailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchDataLoadFailureStateCopyWithImpl<$Res>
    extends _$SearchDetailStateCopyWithImpl<$Res>
    implements _$$_SearchDataLoadFailureStateCopyWith<$Res> {
  __$$_SearchDataLoadFailureStateCopyWithImpl(
      _$_SearchDataLoadFailureState _value,
      $Res Function(_$_SearchDataLoadFailureState) _then)
      : super(_value, (v) => _then(v as _$_SearchDataLoadFailureState));

  @override
  _$_SearchDataLoadFailureState get _value =>
      super._value as _$_SearchDataLoadFailureState;
}

/// @nodoc

class _$_SearchDataLoadFailureState
    with DiagnosticableTreeMixin
    implements _SearchDataLoadFailureState {
  _$_SearchDataLoadFailureState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailState.searchDataLoadFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SearchDetailState.searchDataLoadFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDataLoadFailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchOptionLoading,
    required TResult Function() searchOptionLoadFailure,
    required TResult Function(HomeResponseModel searchOptionsdata)
        searchOptionLoadSuccess,
    required TResult Function() searchDataLoading,
    required TResult Function() searchDataLoadFailure,
    required TResult Function(SearchResponseModel searchDataResponseModel)
        searchDataLoadSuccess,
  }) {
    return searchDataLoadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
  }) {
    return searchDataLoadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchDataLoadFailure != null) {
      return searchDataLoadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchOptionLoadingState value)
        searchOptionLoading,
    required TResult Function(_SearchOptionLoadFailureState value)
        searchOptionLoadFailure,
    required TResult Function(_SearchOptionLoadSuccessState value)
        searchOptionLoadSuccess,
    required TResult Function(_SearchDataLoadingState value) searchDataLoading,
    required TResult Function(_SearchDataLoadFailureState value)
        searchDataLoadFailure,
    required TResult Function(_SearchDataLoadSuccessState value)
        searchDataLoadSuccess,
  }) {
    return searchDataLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
  }) {
    return searchDataLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchDataLoadFailure != null) {
      return searchDataLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchDataLoadFailureState implements SearchDetailState {
  factory _SearchDataLoadFailureState() = _$_SearchDataLoadFailureState;
}

/// @nodoc
abstract class _$$_SearchDataLoadSuccessStateCopyWith<$Res> {
  factory _$$_SearchDataLoadSuccessStateCopyWith(
          _$_SearchDataLoadSuccessState value,
          $Res Function(_$_SearchDataLoadSuccessState) then) =
      __$$_SearchDataLoadSuccessStateCopyWithImpl<$Res>;
  $Res call({SearchResponseModel searchDataResponseModel});
}

/// @nodoc
class __$$_SearchDataLoadSuccessStateCopyWithImpl<$Res>
    extends _$SearchDetailStateCopyWithImpl<$Res>
    implements _$$_SearchDataLoadSuccessStateCopyWith<$Res> {
  __$$_SearchDataLoadSuccessStateCopyWithImpl(
      _$_SearchDataLoadSuccessState _value,
      $Res Function(_$_SearchDataLoadSuccessState) _then)
      : super(_value, (v) => _then(v as _$_SearchDataLoadSuccessState));

  @override
  _$_SearchDataLoadSuccessState get _value =>
      super._value as _$_SearchDataLoadSuccessState;

  @override
  $Res call({
    Object? searchDataResponseModel = freezed,
  }) {
    return _then(_$_SearchDataLoadSuccessState(
      searchDataResponseModel: searchDataResponseModel == freezed
          ? _value.searchDataResponseModel
          : searchDataResponseModel // ignore: cast_nullable_to_non_nullable
              as SearchResponseModel,
    ));
  }
}

/// @nodoc

class _$_SearchDataLoadSuccessState
    with DiagnosticableTreeMixin
    implements _SearchDataLoadSuccessState {
  _$_SearchDataLoadSuccessState({required this.searchDataResponseModel});

  @override
  final SearchResponseModel searchDataResponseModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDetailState.searchDataLoadSuccess(searchDataResponseModel: $searchDataResponseModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SearchDetailState.searchDataLoadSuccess'))
      ..add(DiagnosticsProperty(
          'searchDataResponseModel', searchDataResponseModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDataLoadSuccessState &&
            const DeepCollectionEquality().equals(
                other.searchDataResponseModel, searchDataResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(searchDataResponseModel));

  @JsonKey(ignore: true)
  @override
  _$$_SearchDataLoadSuccessStateCopyWith<_$_SearchDataLoadSuccessState>
      get copyWith => __$$_SearchDataLoadSuccessStateCopyWithImpl<
          _$_SearchDataLoadSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchOptionLoading,
    required TResult Function() searchOptionLoadFailure,
    required TResult Function(HomeResponseModel searchOptionsdata)
        searchOptionLoadSuccess,
    required TResult Function() searchDataLoading,
    required TResult Function() searchDataLoadFailure,
    required TResult Function(SearchResponseModel searchDataResponseModel)
        searchDataLoadSuccess,
  }) {
    return searchDataLoadSuccess(searchDataResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
  }) {
    return searchDataLoadSuccess?.call(searchDataResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchOptionLoading,
    TResult Function()? searchOptionLoadFailure,
    TResult Function(HomeResponseModel searchOptionsdata)?
        searchOptionLoadSuccess,
    TResult Function()? searchDataLoading,
    TResult Function()? searchDataLoadFailure,
    TResult Function(SearchResponseModel searchDataResponseModel)?
        searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchDataLoadSuccess != null) {
      return searchDataLoadSuccess(searchDataResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchOptionLoadingState value)
        searchOptionLoading,
    required TResult Function(_SearchOptionLoadFailureState value)
        searchOptionLoadFailure,
    required TResult Function(_SearchOptionLoadSuccessState value)
        searchOptionLoadSuccess,
    required TResult Function(_SearchDataLoadingState value) searchDataLoading,
    required TResult Function(_SearchDataLoadFailureState value)
        searchDataLoadFailure,
    required TResult Function(_SearchDataLoadSuccessState value)
        searchDataLoadSuccess,
  }) {
    return searchDataLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
  }) {
    return searchDataLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchOptionLoadingState value)? searchOptionLoading,
    TResult Function(_SearchOptionLoadFailureState value)?
        searchOptionLoadFailure,
    TResult Function(_SearchOptionLoadSuccessState value)?
        searchOptionLoadSuccess,
    TResult Function(_SearchDataLoadingState value)? searchDataLoading,
    TResult Function(_SearchDataLoadFailureState value)? searchDataLoadFailure,
    TResult Function(_SearchDataLoadSuccessState value)? searchDataLoadSuccess,
    required TResult orElse(),
  }) {
    if (searchDataLoadSuccess != null) {
      return searchDataLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchDataLoadSuccessState implements SearchDetailState {
  factory _SearchDataLoadSuccessState(
          {required final SearchResponseModel searchDataResponseModel}) =
      _$_SearchDataLoadSuccessState;

  SearchResponseModel get searchDataResponseModel;
  @JsonKey(ignore: true)
  _$$_SearchDataLoadSuccessStateCopyWith<_$_SearchDataLoadSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

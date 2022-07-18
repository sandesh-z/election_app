// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomePageData,
    required TResult Function() reloadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadHomePageData,
    TResult Function()? reloadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomePageData,
    TResult Function()? reloadHomePageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHomePageDataEvent value) loadHomePageData,
    required TResult Function(_ReloadHomePageDataEvent value)
        reloadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    TResult Function(_ReloadHomePageDataEvent value)? reloadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    TResult Function(_ReloadHomePageDataEvent value)? reloadHomePageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  final HomePageEvent _value;
  // ignore: unused_field
  final $Res Function(HomePageEvent) _then;
}

/// @nodoc
abstract class _$$_LoadHomePageDataEventCopyWith<$Res> {
  factory _$$_LoadHomePageDataEventCopyWith(_$_LoadHomePageDataEvent value,
          $Res Function(_$_LoadHomePageDataEvent) then) =
      __$$_LoadHomePageDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadHomePageDataEventCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res>
    implements _$$_LoadHomePageDataEventCopyWith<$Res> {
  __$$_LoadHomePageDataEventCopyWithImpl(_$_LoadHomePageDataEvent _value,
      $Res Function(_$_LoadHomePageDataEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadHomePageDataEvent));

  @override
  _$_LoadHomePageDataEvent get _value =>
      super._value as _$_LoadHomePageDataEvent;
}

/// @nodoc

class _$_LoadHomePageDataEvent
    with DiagnosticableTreeMixin
    implements _LoadHomePageDataEvent {
  _$_LoadHomePageDataEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageEvent.loadHomePageData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomePageEvent.loadHomePageData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadHomePageDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomePageData,
    required TResult Function() reloadHomePageData,
  }) {
    return loadHomePageData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadHomePageData,
    TResult Function()? reloadHomePageData,
  }) {
    return loadHomePageData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomePageData,
    TResult Function()? reloadHomePageData,
    required TResult orElse(),
  }) {
    if (loadHomePageData != null) {
      return loadHomePageData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHomePageDataEvent value) loadHomePageData,
    required TResult Function(_ReloadHomePageDataEvent value)
        reloadHomePageData,
  }) {
    return loadHomePageData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    TResult Function(_ReloadHomePageDataEvent value)? reloadHomePageData,
  }) {
    return loadHomePageData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    TResult Function(_ReloadHomePageDataEvent value)? reloadHomePageData,
    required TResult orElse(),
  }) {
    if (loadHomePageData != null) {
      return loadHomePageData(this);
    }
    return orElse();
  }
}

abstract class _LoadHomePageDataEvent implements HomePageEvent {
  factory _LoadHomePageDataEvent() = _$_LoadHomePageDataEvent;
}

/// @nodoc
abstract class _$$_ReloadHomePageDataEventCopyWith<$Res> {
  factory _$$_ReloadHomePageDataEventCopyWith(_$_ReloadHomePageDataEvent value,
          $Res Function(_$_ReloadHomePageDataEvent) then) =
      __$$_ReloadHomePageDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReloadHomePageDataEventCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res>
    implements _$$_ReloadHomePageDataEventCopyWith<$Res> {
  __$$_ReloadHomePageDataEventCopyWithImpl(_$_ReloadHomePageDataEvent _value,
      $Res Function(_$_ReloadHomePageDataEvent) _then)
      : super(_value, (v) => _then(v as _$_ReloadHomePageDataEvent));

  @override
  _$_ReloadHomePageDataEvent get _value =>
      super._value as _$_ReloadHomePageDataEvent;
}

/// @nodoc

class _$_ReloadHomePageDataEvent
    with DiagnosticableTreeMixin
    implements _ReloadHomePageDataEvent {
  _$_ReloadHomePageDataEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageEvent.reloadHomePageData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomePageEvent.reloadHomePageData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReloadHomePageDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomePageData,
    required TResult Function() reloadHomePageData,
  }) {
    return reloadHomePageData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadHomePageData,
    TResult Function()? reloadHomePageData,
  }) {
    return reloadHomePageData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomePageData,
    TResult Function()? reloadHomePageData,
    required TResult orElse(),
  }) {
    if (reloadHomePageData != null) {
      return reloadHomePageData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHomePageDataEvent value) loadHomePageData,
    required TResult Function(_ReloadHomePageDataEvent value)
        reloadHomePageData,
  }) {
    return reloadHomePageData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    TResult Function(_ReloadHomePageDataEvent value)? reloadHomePageData,
  }) {
    return reloadHomePageData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    TResult Function(_ReloadHomePageDataEvent value)? reloadHomePageData,
    required TResult orElse(),
  }) {
    if (reloadHomePageData != null) {
      return reloadHomePageData(this);
    }
    return orElse();
  }
}

abstract class _ReloadHomePageDataEvent implements HomePageEvent {
  factory _ReloadHomePageDataEvent() = _$_ReloadHomePageDataEvent;
}

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadFailure,
    required TResult Function(
            WinnerPartyDetailListModel homeWinnerPartyPagedata)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadFailureState value) loadFailure,
    required TResult Function(_HomeLoadSuccessState value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;
}

/// @nodoc
abstract class _$$_HomeLoadingStateCopyWith<$Res> {
  factory _$$_HomeLoadingStateCopyWith(
          _$_HomeLoadingState value, $Res Function(_$_HomeLoadingState) then) =
      __$$_HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$_HomeLoadingStateCopyWith<$Res> {
  __$$_HomeLoadingStateCopyWithImpl(
      _$_HomeLoadingState _value, $Res Function(_$_HomeLoadingState) _then)
      : super(_value, (v) => _then(v as _$_HomeLoadingState));

  @override
  _$_HomeLoadingState get _value => super._value as _$_HomeLoadingState;
}

/// @nodoc

class _$_HomeLoadingState
    with DiagnosticableTreeMixin
    implements _HomeLoadingState {
  _$_HomeLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomePageState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadFailure,
    required TResult Function(
            WinnerPartyDetailListModel homeWinnerPartyPagedata)
        loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadFailureState value) loadFailure,
    required TResult Function(_HomeLoadSuccessState value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomePageState {
  factory _HomeLoadingState() = _$_HomeLoadingState;
}

/// @nodoc
abstract class _$$_HomeLoadFailureStateCopyWith<$Res> {
  factory _$$_HomeLoadFailureStateCopyWith(_$_HomeLoadFailureState value,
          $Res Function(_$_HomeLoadFailureState) then) =
      __$$_HomeLoadFailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeLoadFailureStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$_HomeLoadFailureStateCopyWith<$Res> {
  __$$_HomeLoadFailureStateCopyWithImpl(_$_HomeLoadFailureState _value,
      $Res Function(_$_HomeLoadFailureState) _then)
      : super(_value, (v) => _then(v as _$_HomeLoadFailureState));

  @override
  _$_HomeLoadFailureState get _value => super._value as _$_HomeLoadFailureState;
}

/// @nodoc

class _$_HomeLoadFailureState
    with DiagnosticableTreeMixin
    implements _HomeLoadFailureState {
  _$_HomeLoadFailureState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState.loadFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomePageState.loadFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeLoadFailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadFailure,
    required TResult Function(
            WinnerPartyDetailListModel homeWinnerPartyPagedata)
        loadSuccess,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadFailureState value) loadFailure,
    required TResult Function(_HomeLoadSuccessState value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadFailureState implements HomePageState {
  factory _HomeLoadFailureState() = _$_HomeLoadFailureState;
}

/// @nodoc
abstract class _$$_HomeLoadSuccessStateCopyWith<$Res> {
  factory _$$_HomeLoadSuccessStateCopyWith(_$_HomeLoadSuccessState value,
          $Res Function(_$_HomeLoadSuccessState) then) =
      __$$_HomeLoadSuccessStateCopyWithImpl<$Res>;
  $Res call({WinnerPartyDetailListModel homeWinnerPartyPagedata});
}

/// @nodoc
class __$$_HomeLoadSuccessStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$_HomeLoadSuccessStateCopyWith<$Res> {
  __$$_HomeLoadSuccessStateCopyWithImpl(_$_HomeLoadSuccessState _value,
      $Res Function(_$_HomeLoadSuccessState) _then)
      : super(_value, (v) => _then(v as _$_HomeLoadSuccessState));

  @override
  _$_HomeLoadSuccessState get _value => super._value as _$_HomeLoadSuccessState;

  @override
  $Res call({
    Object? homeWinnerPartyPagedata = freezed,
  }) {
    return _then(_$_HomeLoadSuccessState(
      homeWinnerPartyPagedata: homeWinnerPartyPagedata == freezed
          ? _value.homeWinnerPartyPagedata
          : homeWinnerPartyPagedata // ignore: cast_nullable_to_non_nullable
              as WinnerPartyDetailListModel,
    ));
  }
}

/// @nodoc

class _$_HomeLoadSuccessState
    with DiagnosticableTreeMixin
    implements _HomeLoadSuccessState {
  _$_HomeLoadSuccessState({required this.homeWinnerPartyPagedata});

  @override
  final WinnerPartyDetailListModel homeWinnerPartyPagedata;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState.loadSuccess(homeWinnerPartyPagedata: $homeWinnerPartyPagedata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePageState.loadSuccess'))
      ..add(DiagnosticsProperty(
          'homeWinnerPartyPagedata', homeWinnerPartyPagedata));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadSuccessState &&
            const DeepCollectionEquality().equals(
                other.homeWinnerPartyPagedata, homeWinnerPartyPagedata));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(homeWinnerPartyPagedata));

  @JsonKey(ignore: true)
  @override
  _$$_HomeLoadSuccessStateCopyWith<_$_HomeLoadSuccessState> get copyWith =>
      __$$_HomeLoadSuccessStateCopyWithImpl<_$_HomeLoadSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadFailure,
    required TResult Function(
            WinnerPartyDetailListModel homeWinnerPartyPagedata)
        loadSuccess,
  }) {
    return loadSuccess(homeWinnerPartyPagedata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
  }) {
    return loadSuccess?.call(homeWinnerPartyPagedata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadFailure,
    TResult Function(WinnerPartyDetailListModel homeWinnerPartyPagedata)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(homeWinnerPartyPagedata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadFailureState value) loadFailure,
    required TResult Function(_HomeLoadSuccessState value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadFailureState value)? loadFailure,
    TResult Function(_HomeLoadSuccessState value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadSuccessState implements HomePageState {
  factory _HomeLoadSuccessState(
          {required final WinnerPartyDetailListModel homeWinnerPartyPagedata}) =
      _$_HomeLoadSuccessState;

  WinnerPartyDetailListModel get homeWinnerPartyPagedata;
  @JsonKey(ignore: true)
  _$$_HomeLoadSuccessStateCopyWith<_$_HomeLoadSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

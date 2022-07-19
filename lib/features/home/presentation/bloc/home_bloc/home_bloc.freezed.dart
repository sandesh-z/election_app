// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomePageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHomePageDataEvent value) loadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_LoadHomePageDataEventCopyWith<$Res> {
  factory _$$_LoadHomePageDataEventCopyWith(_$_LoadHomePageDataEvent value,
          $Res Function(_$_LoadHomePageDataEvent) then) =
      __$$_LoadHomePageDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadHomePageDataEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
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
    return 'HomeEvent.loadHomePageData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.loadHomePageData'));
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
  }) {
    return loadHomePageData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadHomePageData,
  }) {
    return loadHomePageData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomePageData,
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
  }) {
    return loadHomePageData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
  }) {
    return loadHomePageData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHomePageDataEvent value)? loadHomePageData,
    required TResult orElse(),
  }) {
    if (loadHomePageData != null) {
      return loadHomePageData(this);
    }
    return orElse();
  }
}

abstract class _LoadHomePageDataEvent implements HomeEvent {
  factory _LoadHomePageDataEvent() = _$_LoadHomePageDataEvent;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponseModel? homepageresponsedata)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomePageState value) initial,
    required TResult Function(_HomePageLoadingState value) loading,
    required TResult Function(_HomePageLoadedState value) loadSuccess,
    required TResult Function(_HomePageLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$_InitialHomePageStateCopyWith<$Res> {
  factory _$$_InitialHomePageStateCopyWith(_$_InitialHomePageState value,
          $Res Function(_$_InitialHomePageState) then) =
      __$$_InitialHomePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialHomePageStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_InitialHomePageStateCopyWith<$Res> {
  __$$_InitialHomePageStateCopyWithImpl(_$_InitialHomePageState _value,
      $Res Function(_$_InitialHomePageState) _then)
      : super(_value, (v) => _then(v as _$_InitialHomePageState));

  @override
  _$_InitialHomePageState get _value => super._value as _$_InitialHomePageState;
}

/// @nodoc

class _$_InitialHomePageState
    with DiagnosticableTreeMixin
    implements _InitialHomePageState {
  _$_InitialHomePageState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialHomePageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponseModel? homepageresponsedata)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomePageState value) initial,
    required TResult Function(_HomePageLoadingState value) loading,
    required TResult Function(_HomePageLoadedState value) loadSuccess,
    required TResult Function(_HomePageLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHomePageState implements HomeState {
  factory _InitialHomePageState() = _$_InitialHomePageState;
}

/// @nodoc
abstract class _$$_HomePageLoadingStateCopyWith<$Res> {
  factory _$$_HomePageLoadingStateCopyWith(_$_HomePageLoadingState value,
          $Res Function(_$_HomePageLoadingState) then) =
      __$$_HomePageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomePageLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomePageLoadingStateCopyWith<$Res> {
  __$$_HomePageLoadingStateCopyWithImpl(_$_HomePageLoadingState _value,
      $Res Function(_$_HomePageLoadingState) _then)
      : super(_value, (v) => _then(v as _$_HomePageLoadingState));

  @override
  _$_HomePageLoadingState get _value => super._value as _$_HomePageLoadingState;
}

/// @nodoc

class _$_HomePageLoadingState
    with DiagnosticableTreeMixin
    implements _HomePageLoadingState {
  _$_HomePageLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomePageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponseModel? homepageresponsedata)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
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
    required TResult Function(_InitialHomePageState value) initial,
    required TResult Function(_HomePageLoadingState value) loading,
    required TResult Function(_HomePageLoadedState value) loadSuccess,
    required TResult Function(_HomePageLoadFailureState value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomePageLoadingState implements HomeState {
  factory _HomePageLoadingState() = _$_HomePageLoadingState;
}

/// @nodoc
abstract class _$$_HomePageLoadedStateCopyWith<$Res> {
  factory _$$_HomePageLoadedStateCopyWith(_$_HomePageLoadedState value,
          $Res Function(_$_HomePageLoadedState) then) =
      __$$_HomePageLoadedStateCopyWithImpl<$Res>;
  $Res call({HomeResponseModel? homepageresponsedata});
}

/// @nodoc
class __$$_HomePageLoadedStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomePageLoadedStateCopyWith<$Res> {
  __$$_HomePageLoadedStateCopyWithImpl(_$_HomePageLoadedState _value,
      $Res Function(_$_HomePageLoadedState) _then)
      : super(_value, (v) => _then(v as _$_HomePageLoadedState));

  @override
  _$_HomePageLoadedState get _value => super._value as _$_HomePageLoadedState;

  @override
  $Res call({
    Object? homepageresponsedata = freezed,
  }) {
    return _then(_$_HomePageLoadedState(
      homepageresponsedata: homepageresponsedata == freezed
          ? _value.homepageresponsedata
          : homepageresponsedata // ignore: cast_nullable_to_non_nullable
              as HomeResponseModel?,
    ));
  }
}

/// @nodoc

class _$_HomePageLoadedState
    with DiagnosticableTreeMixin
    implements _HomePageLoadedState {
  _$_HomePageLoadedState({required this.homepageresponsedata});

  @override
  final HomeResponseModel? homepageresponsedata;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loadSuccess(homepageresponsedata: $homepageresponsedata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.loadSuccess'))
      ..add(DiagnosticsProperty('homepageresponsedata', homepageresponsedata));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageLoadedState &&
            const DeepCollectionEquality()
                .equals(other.homepageresponsedata, homepageresponsedata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(homepageresponsedata));

  @JsonKey(ignore: true)
  @override
  _$$_HomePageLoadedStateCopyWith<_$_HomePageLoadedState> get copyWith =>
      __$$_HomePageLoadedStateCopyWithImpl<_$_HomePageLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponseModel? homepageresponsedata)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(homepageresponsedata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call(homepageresponsedata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(homepageresponsedata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomePageState value) initial,
    required TResult Function(_HomePageLoadingState value) loading,
    required TResult Function(_HomePageLoadedState value) loadSuccess,
    required TResult Function(_HomePageLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _HomePageLoadedState implements HomeState {
  factory _HomePageLoadedState(
          {required final HomeResponseModel? homepageresponsedata}) =
      _$_HomePageLoadedState;

  HomeResponseModel? get homepageresponsedata;
  @JsonKey(ignore: true)
  _$$_HomePageLoadedStateCopyWith<_$_HomePageLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomePageLoadFailureStateCopyWith<$Res> {
  factory _$$_HomePageLoadFailureStateCopyWith(
          _$_HomePageLoadFailureState value,
          $Res Function(_$_HomePageLoadFailureState) then) =
      __$$_HomePageLoadFailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomePageLoadFailureStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomePageLoadFailureStateCopyWith<$Res> {
  __$$_HomePageLoadFailureStateCopyWithImpl(_$_HomePageLoadFailureState _value,
      $Res Function(_$_HomePageLoadFailureState) _then)
      : super(_value, (v) => _then(v as _$_HomePageLoadFailureState));

  @override
  _$_HomePageLoadFailureState get _value =>
      super._value as _$_HomePageLoadFailureState;
}

/// @nodoc

class _$_HomePageLoadFailureState
    with DiagnosticableTreeMixin
    implements _HomePageLoadFailureState {
  _$_HomePageLoadFailureState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loadFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.loadFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageLoadFailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponseModel? homepageresponsedata)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponseModel? homepageresponsedata)? loadSuccess,
    TResult Function()? loadFailure,
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
    required TResult Function(_InitialHomePageState value) initial,
    required TResult Function(_HomePageLoadingState value) loading,
    required TResult Function(_HomePageLoadedState value) loadSuccess,
    required TResult Function(_HomePageLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomePageState value)? initial,
    TResult Function(_HomePageLoadingState value)? loading,
    TResult Function(_HomePageLoadedState value)? loadSuccess,
    TResult Function(_HomePageLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _HomePageLoadFailureState implements HomeState {
  factory _HomePageLoadFailureState() = _$_HomePageLoadFailureState;
}

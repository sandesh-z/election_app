// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jsonFormatException,
    required TResult Function() serverException,
    required TResult Function() noInternetException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonFormatException value) jsonFormatException,
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_NoInternetException value) noInternetException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res> implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  final AppException _value;
  // ignore: unused_field
  final $Res Function(AppException) _then;
}

/// @nodoc
abstract class _$$_JsonFormatExceptionCopyWith<$Res> {
  factory _$$_JsonFormatExceptionCopyWith(_$_JsonFormatException value,
          $Res Function(_$_JsonFormatException) then) =
      __$$_JsonFormatExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JsonFormatExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$_JsonFormatExceptionCopyWith<$Res> {
  __$$_JsonFormatExceptionCopyWithImpl(_$_JsonFormatException _value,
      $Res Function(_$_JsonFormatException) _then)
      : super(_value, (v) => _then(v as _$_JsonFormatException));

  @override
  _$_JsonFormatException get _value => super._value as _$_JsonFormatException;
}

/// @nodoc

class _$_JsonFormatException implements _JsonFormatException {
  _$_JsonFormatException();

  @override
  String toString() {
    return 'AppException.jsonFormatException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JsonFormatException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jsonFormatException,
    required TResult Function() serverException,
    required TResult Function() noInternetException,
  }) {
    return jsonFormatException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
  }) {
    return jsonFormatException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
    required TResult orElse(),
  }) {
    if (jsonFormatException != null) {
      return jsonFormatException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonFormatException value) jsonFormatException,
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_NoInternetException value) noInternetException,
  }) {
    return jsonFormatException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
  }) {
    return jsonFormatException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
    required TResult orElse(),
  }) {
    if (jsonFormatException != null) {
      return jsonFormatException(this);
    }
    return orElse();
  }
}

abstract class _JsonFormatException implements AppException {
  factory _JsonFormatException() = _$_JsonFormatException;
}

/// @nodoc
abstract class _$$_ServerExceptionCopyWith<$Res> {
  factory _$$_ServerExceptionCopyWith(
          _$_ServerException value, $Res Function(_$_ServerException) then) =
      __$$_ServerExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$_ServerExceptionCopyWith<$Res> {
  __$$_ServerExceptionCopyWithImpl(
      _$_ServerException _value, $Res Function(_$_ServerException) _then)
      : super(_value, (v) => _then(v as _$_ServerException));

  @override
  _$_ServerException get _value => super._value as _$_ServerException;
}

/// @nodoc

class _$_ServerException implements _ServerException {
  _$_ServerException();

  @override
  String toString() {
    return 'AppException.serverException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jsonFormatException,
    required TResult Function() serverException,
    required TResult Function() noInternetException,
  }) {
    return serverException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
  }) {
    return serverException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonFormatException value) jsonFormatException,
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_NoInternetException value) noInternetException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements AppException {
  factory _ServerException() = _$_ServerException;
}

/// @nodoc
abstract class _$$_NoInternetExceptionCopyWith<$Res> {
  factory _$$_NoInternetExceptionCopyWith(_$_NoInternetException value,
          $Res Function(_$_NoInternetException) then) =
      __$$_NoInternetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$_NoInternetExceptionCopyWith<$Res> {
  __$$_NoInternetExceptionCopyWithImpl(_$_NoInternetException _value,
      $Res Function(_$_NoInternetException) _then)
      : super(_value, (v) => _then(v as _$_NoInternetException));

  @override
  _$_NoInternetException get _value => super._value as _$_NoInternetException;
}

/// @nodoc

class _$_NoInternetException implements _NoInternetException {
  _$_NoInternetException();

  @override
  String toString() {
    return 'AppException.noInternetException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternetException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jsonFormatException,
    required TResult Function() serverException,
    required TResult Function() noInternetException,
  }) {
    return noInternetException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
  }) {
    return noInternetException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jsonFormatException,
    TResult Function()? serverException,
    TResult Function()? noInternetException,
    required TResult orElse(),
  }) {
    if (noInternetException != null) {
      return noInternetException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonFormatException value) jsonFormatException,
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_NoInternetException value) noInternetException,
  }) {
    return noInternetException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
  }) {
    return noInternetException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonFormatException value)? jsonFormatException,
    TResult Function(_ServerException value)? serverException,
    TResult Function(_NoInternetException value)? noInternetException,
    required TResult orElse(),
  }) {
    if (noInternetException != null) {
      return noInternetException(this);
    }
    return orElse();
  }
}

abstract class _NoInternetException implements AppException {
  factory _NoInternetException() = _$_NoInternetException;
}

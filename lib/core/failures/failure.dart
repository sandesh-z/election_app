import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  factory ApiFailure.jsonFormatError() = _JsonFormatError;
  factory ApiFailure.serverError() = _ServerError;
  factory ApiFailure.noInternetError() = _NoInternetError;
}

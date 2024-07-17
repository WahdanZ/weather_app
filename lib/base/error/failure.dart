// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure(String code, {dynamic message}) = _ErrorFailure;
  const factory NetworkFailure.api({dynamic message}) = _ApiFailure;
  const factory NetworkFailure.unAuthorized({dynamic message}) =
      _UnAuthorizedFailure;
  const factory NetworkFailure.noInternet({dynamic message}) =
      _NoInternetFailure;
  const factory NetworkFailure.tooManyRequests({dynamic message}) =
      _TooManyRequestsFailure;
  const factory NetworkFailure.serverError({dynamic message}) =
      _ServerErrorFailure;
  const factory NetworkFailure.unknown({dynamic message}) = _UnknownFailure;
}

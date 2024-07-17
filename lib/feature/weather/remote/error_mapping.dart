import '../../../base/index.dart';

ErrorMapping openWeatherErrorMapping =
    (Map<String, dynamic>? map, {int? code}) {
  switch (code) {
    case 401:
      return NetworkFailure.unAuthorized(
          message: map?['message'] ?? 'Invalid API key');
    case 404:
      return NetworkFailure.api(message: map?['message'] ?? 'City not found');
    case 429:
      return NetworkFailure.tooManyRequests(
          message: map?['message'] ?? 'Too many requests');
    case 500:
      return NetworkFailure.serverError(
          message: map?['message'] ?? 'Internal server error');
    default:
      return NetworkFailure.api(message: map?['message'] ?? 'Unknown error');
  }
};

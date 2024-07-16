import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_weather.dart';
import 'daily_weather.dart';

part 'weather_forecast.freezed.dart';

@freezed
class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    required double latitude,
    required double longitude,
    required String timezone,
    required int timezoneOffset,
    required CurrentWeather current,
    required List<DailyWeather> daily,
  }) = _WeatherForecast;
}

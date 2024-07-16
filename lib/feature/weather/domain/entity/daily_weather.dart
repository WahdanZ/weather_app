import 'package:freezed_annotation/freezed_annotation.dart';

import 'weather.dart';

part 'daily_weather.freezed.dart';

@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    required DateTime date,
    required double dayTemp,
    required double minTemp,
    required double maxTemp,
    required int humidity,
    required int pressure,
    required double windSpeed,
    required List<Weather> weather,
  }) = _DailyWeather;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'weather.dart';

part 'current_weather.freezed.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required double temperature,
    required int humidity,
    required int pressure,
    required double windSpeed,
    required List<Weather> weather,
  }) = _CurrentWeather;
}

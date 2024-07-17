import 'package:freezed_annotation/freezed_annotation.dart';

import 'temp.dart';
import 'weather.dart';

part 'daily.freezed.dart';
part 'daily.g.dart';

@freezed
class Daily with _$Daily {
  factory Daily({
    required Temp temp,
    required int humidity,
    required int pressure,
    required List<WeatherModel> weather,
    @JsonKey(name: 'wind_speed') required double windSpeed,
    required int dt,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}

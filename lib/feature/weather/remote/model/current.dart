import 'package:freezed_annotation/freezed_annotation.dart';

import 'weather.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
  factory Current({
    required double temp,
    required int humidity,
    required int pressure,
    required List<Weather> weather,
    required double wind_speed,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

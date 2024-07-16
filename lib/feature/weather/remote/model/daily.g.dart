// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
      humidity: (json['humidity'] as num).toInt(),
      pressure: (json['pressure'] as num).toInt(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind_speed: (json['wind_speed'] as num).toDouble(),
      dt: (json['dt'] as num).toInt(),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'weather': instance.weather,
      'wind_speed': instance.wind_speed,
      'dt': instance.dt,
    };

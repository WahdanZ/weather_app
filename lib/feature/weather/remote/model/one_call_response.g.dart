// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_call_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneCallResponseImpl _$$OneCallResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OneCallResponseImpl(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezoneOffset: (json['timezone_offset'] as num).toInt(),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => Daily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OneCallResponseImplToJson(
        _$OneCallResponseImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'current': instance.current,
      'daily': instance.daily,
    };

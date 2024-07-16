// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyWeather {
  DateTime get date => throw _privateConstructorUsedError;
  double get dayTemp => throw _privateConstructorUsedError;
  double get minTemp => throw _privateConstructorUsedError;
  double get maxTemp => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyWeatherCopyWith<DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherCopyWith<$Res> {
  factory $DailyWeatherCopyWith(
          DailyWeather value, $Res Function(DailyWeather) then) =
      _$DailyWeatherCopyWithImpl<$Res, DailyWeather>;
  @useResult
  $Res call(
      {DateTime date,
      double dayTemp,
      double minTemp,
      double maxTemp,
      int humidity,
      int pressure,
      double windSpeed,
      List<Weather> weather});
}

/// @nodoc
class _$DailyWeatherCopyWithImpl<$Res, $Val extends DailyWeather>
    implements $DailyWeatherCopyWith<$Res> {
  _$DailyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayTemp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
    Object? humidity = null,
    Object? pressure = null,
    Object? windSpeed = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayTemp: null == dayTemp
          ? _value.dayTemp
          : dayTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyWeatherImplCopyWith<$Res>
    implements $DailyWeatherCopyWith<$Res> {
  factory _$$DailyWeatherImplCopyWith(
          _$DailyWeatherImpl value, $Res Function(_$DailyWeatherImpl) then) =
      __$$DailyWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      double dayTemp,
      double minTemp,
      double maxTemp,
      int humidity,
      int pressure,
      double windSpeed,
      List<Weather> weather});
}

/// @nodoc
class __$$DailyWeatherImplCopyWithImpl<$Res>
    extends _$DailyWeatherCopyWithImpl<$Res, _$DailyWeatherImpl>
    implements _$$DailyWeatherImplCopyWith<$Res> {
  __$$DailyWeatherImplCopyWithImpl(
      _$DailyWeatherImpl _value, $Res Function(_$DailyWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayTemp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
    Object? humidity = null,
    Object? pressure = null,
    Object? windSpeed = null,
    Object? weather = null,
  }) {
    return _then(_$DailyWeatherImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayTemp: null == dayTemp
          ? _value.dayTemp
          : dayTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc

class _$DailyWeatherImpl implements _DailyWeather {
  const _$DailyWeatherImpl(
      {required this.date,
      required this.dayTemp,
      required this.minTemp,
      required this.maxTemp,
      required this.humidity,
      required this.pressure,
      required this.windSpeed,
      required final List<Weather> weather})
      : _weather = weather;

  @override
  final DateTime date;
  @override
  final double dayTemp;
  @override
  final double minTemp;
  @override
  final double maxTemp;
  @override
  final int humidity;
  @override
  final int pressure;
  @override
  final double windSpeed;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'DailyWeather(date: $date, dayTemp: $dayTemp, minTemp: $minTemp, maxTemp: $maxTemp, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed, weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWeatherImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayTemp, dayTemp) || other.dayTemp == dayTemp) &&
            (identical(other.minTemp, minTemp) || other.minTemp == minTemp) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      dayTemp,
      minTemp,
      maxTemp,
      humidity,
      pressure,
      windSpeed,
      const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWeatherImplCopyWith<_$DailyWeatherImpl> get copyWith =>
      __$$DailyWeatherImplCopyWithImpl<_$DailyWeatherImpl>(this, _$identity);
}

abstract class _DailyWeather implements DailyWeather {
  const factory _DailyWeather(
      {required final DateTime date,
      required final double dayTemp,
      required final double minTemp,
      required final double maxTemp,
      required final int humidity,
      required final int pressure,
      required final double windSpeed,
      required final List<Weather> weather}) = _$DailyWeatherImpl;

  @override
  DateTime get date;
  @override
  double get dayTemp;
  @override
  double get minTemp;
  @override
  double get maxTemp;
  @override
  int get humidity;
  @override
  int get pressure;
  @override
  double get windSpeed;
  @override
  List<Weather> get weather;
  @override
  @JsonKey(ignore: true)
  _$$DailyWeatherImplCopyWith<_$DailyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

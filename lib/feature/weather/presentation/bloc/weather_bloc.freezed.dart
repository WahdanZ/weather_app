// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, WeatherUnits? units)
        fetchWeather,
    required TResult Function(WeatherUnits units) changeUnits,
    required TResult Function() pullToRefresh,
    required TResult Function(int dayIndex) selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult? Function(WeatherUnits units)? changeUnits,
    TResult? Function()? pullToRefresh,
    TResult? Function(int dayIndex)? selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult Function(WeatherUnits units)? changeUnits,
    TResult Function()? pullToRefresh,
    TResult Function(int dayIndex)? selectDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(ChangeUnits value) changeUnits,
    required TResult Function(PullToRefresh value) pullToRefresh,
    required TResult Function(SelectDay value) selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(ChangeUnits value)? changeUnits,
    TResult? Function(PullToRefresh value)? pullToRefresh,
    TResult? Function(SelectDay value)? selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(ChangeUnits value)? changeUnits,
    TResult Function(PullToRefresh value)? pullToRefresh,
    TResult Function(SelectDay value)? selectDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWeatherImplCopyWith<$Res> {
  factory _$$FetchWeatherImplCopyWith(
          _$FetchWeatherImpl value, $Res Function(_$FetchWeatherImpl) then) =
      __$$FetchWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? lat, double? lon, WeatherUnits? units});
}

/// @nodoc
class __$$FetchWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$FetchWeatherImpl>
    implements _$$FetchWeatherImplCopyWith<$Res> {
  __$$FetchWeatherImplCopyWithImpl(
      _$FetchWeatherImpl _value, $Res Function(_$FetchWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? units = freezed,
  }) {
    return _then(_$FetchWeatherImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as WeatherUnits?,
    ));
  }
}

/// @nodoc

class _$FetchWeatherImpl implements FetchWeather {
  const _$FetchWeatherImpl({this.lat, this.lon, this.units});

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final WeatherUnits? units;

  @override
  String toString() {
    return 'WeatherEvent.fetchWeather(lat: $lat, lon: $lon, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeatherImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.units, units) || other.units == units));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, units);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeatherImplCopyWith<_$FetchWeatherImpl> get copyWith =>
      __$$FetchWeatherImplCopyWithImpl<_$FetchWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, WeatherUnits? units)
        fetchWeather,
    required TResult Function(WeatherUnits units) changeUnits,
    required TResult Function() pullToRefresh,
    required TResult Function(int dayIndex) selectDay,
  }) {
    return fetchWeather(lat, lon, units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult? Function(WeatherUnits units)? changeUnits,
    TResult? Function()? pullToRefresh,
    TResult? Function(int dayIndex)? selectDay,
  }) {
    return fetchWeather?.call(lat, lon, units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult Function(WeatherUnits units)? changeUnits,
    TResult Function()? pullToRefresh,
    TResult Function(int dayIndex)? selectDay,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(lat, lon, units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(ChangeUnits value) changeUnits,
    required TResult Function(PullToRefresh value) pullToRefresh,
    required TResult Function(SelectDay value) selectDay,
  }) {
    return fetchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(ChangeUnits value)? changeUnits,
    TResult? Function(PullToRefresh value)? pullToRefresh,
    TResult? Function(SelectDay value)? selectDay,
  }) {
    return fetchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(ChangeUnits value)? changeUnits,
    TResult Function(PullToRefresh value)? pullToRefresh,
    TResult Function(SelectDay value)? selectDay,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(this);
    }
    return orElse();
  }
}

abstract class FetchWeather implements WeatherEvent {
  const factory FetchWeather(
      {final double? lat,
      final double? lon,
      final WeatherUnits? units}) = _$FetchWeatherImpl;

  double? get lat;
  double? get lon;
  WeatherUnits? get units;
  @JsonKey(ignore: true)
  _$$FetchWeatherImplCopyWith<_$FetchWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUnitsImplCopyWith<$Res> {
  factory _$$ChangeUnitsImplCopyWith(
          _$ChangeUnitsImpl value, $Res Function(_$ChangeUnitsImpl) then) =
      __$$ChangeUnitsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherUnits units});
}

/// @nodoc
class __$$ChangeUnitsImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$ChangeUnitsImpl>
    implements _$$ChangeUnitsImplCopyWith<$Res> {
  __$$ChangeUnitsImplCopyWithImpl(
      _$ChangeUnitsImpl _value, $Res Function(_$ChangeUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? units = null,
  }) {
    return _then(_$ChangeUnitsImpl(
      null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as WeatherUnits,
    ));
  }
}

/// @nodoc

class _$ChangeUnitsImpl implements ChangeUnits {
  const _$ChangeUnitsImpl(this.units);

  @override
  final WeatherUnits units;

  @override
  String toString() {
    return 'WeatherEvent.changeUnits(units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUnitsImpl &&
            (identical(other.units, units) || other.units == units));
  }

  @override
  int get hashCode => Object.hash(runtimeType, units);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUnitsImplCopyWith<_$ChangeUnitsImpl> get copyWith =>
      __$$ChangeUnitsImplCopyWithImpl<_$ChangeUnitsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, WeatherUnits? units)
        fetchWeather,
    required TResult Function(WeatherUnits units) changeUnits,
    required TResult Function() pullToRefresh,
    required TResult Function(int dayIndex) selectDay,
  }) {
    return changeUnits(units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult? Function(WeatherUnits units)? changeUnits,
    TResult? Function()? pullToRefresh,
    TResult? Function(int dayIndex)? selectDay,
  }) {
    return changeUnits?.call(units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult Function(WeatherUnits units)? changeUnits,
    TResult Function()? pullToRefresh,
    TResult Function(int dayIndex)? selectDay,
    required TResult orElse(),
  }) {
    if (changeUnits != null) {
      return changeUnits(units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(ChangeUnits value) changeUnits,
    required TResult Function(PullToRefresh value) pullToRefresh,
    required TResult Function(SelectDay value) selectDay,
  }) {
    return changeUnits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(ChangeUnits value)? changeUnits,
    TResult? Function(PullToRefresh value)? pullToRefresh,
    TResult? Function(SelectDay value)? selectDay,
  }) {
    return changeUnits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(ChangeUnits value)? changeUnits,
    TResult Function(PullToRefresh value)? pullToRefresh,
    TResult Function(SelectDay value)? selectDay,
    required TResult orElse(),
  }) {
    if (changeUnits != null) {
      return changeUnits(this);
    }
    return orElse();
  }
}

abstract class ChangeUnits implements WeatherEvent {
  const factory ChangeUnits(final WeatherUnits units) = _$ChangeUnitsImpl;

  WeatherUnits get units;
  @JsonKey(ignore: true)
  _$$ChangeUnitsImplCopyWith<_$ChangeUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PullToRefreshImplCopyWith<$Res> {
  factory _$$PullToRefreshImplCopyWith(
          _$PullToRefreshImpl value, $Res Function(_$PullToRefreshImpl) then) =
      __$$PullToRefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PullToRefreshImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$PullToRefreshImpl>
    implements _$$PullToRefreshImplCopyWith<$Res> {
  __$$PullToRefreshImplCopyWithImpl(
      _$PullToRefreshImpl _value, $Res Function(_$PullToRefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PullToRefreshImpl implements PullToRefresh {
  const _$PullToRefreshImpl();

  @override
  String toString() {
    return 'WeatherEvent.pullToRefresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PullToRefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, WeatherUnits? units)
        fetchWeather,
    required TResult Function(WeatherUnits units) changeUnits,
    required TResult Function() pullToRefresh,
    required TResult Function(int dayIndex) selectDay,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult? Function(WeatherUnits units)? changeUnits,
    TResult? Function()? pullToRefresh,
    TResult? Function(int dayIndex)? selectDay,
  }) {
    return pullToRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult Function(WeatherUnits units)? changeUnits,
    TResult Function()? pullToRefresh,
    TResult Function(int dayIndex)? selectDay,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(ChangeUnits value) changeUnits,
    required TResult Function(PullToRefresh value) pullToRefresh,
    required TResult Function(SelectDay value) selectDay,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(ChangeUnits value)? changeUnits,
    TResult? Function(PullToRefresh value)? pullToRefresh,
    TResult? Function(SelectDay value)? selectDay,
  }) {
    return pullToRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(ChangeUnits value)? changeUnits,
    TResult Function(PullToRefresh value)? pullToRefresh,
    TResult Function(SelectDay value)? selectDay,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class PullToRefresh implements WeatherEvent {
  const factory PullToRefresh() = _$PullToRefreshImpl;
}

/// @nodoc
abstract class _$$SelectDayImplCopyWith<$Res> {
  factory _$$SelectDayImplCopyWith(
          _$SelectDayImpl value, $Res Function(_$SelectDayImpl) then) =
      __$$SelectDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int dayIndex});
}

/// @nodoc
class __$$SelectDayImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$SelectDayImpl>
    implements _$$SelectDayImplCopyWith<$Res> {
  __$$SelectDayImplCopyWithImpl(
      _$SelectDayImpl _value, $Res Function(_$SelectDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayIndex = null,
  }) {
    return _then(_$SelectDayImpl(
      null == dayIndex
          ? _value.dayIndex
          : dayIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectDayImpl implements SelectDay {
  const _$SelectDayImpl(this.dayIndex);

  @override
  final int dayIndex;

  @override
  String toString() {
    return 'WeatherEvent.selectDay(dayIndex: $dayIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDayImpl &&
            (identical(other.dayIndex, dayIndex) ||
                other.dayIndex == dayIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDayImplCopyWith<_$SelectDayImpl> get copyWith =>
      __$$SelectDayImplCopyWithImpl<_$SelectDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, WeatherUnits? units)
        fetchWeather,
    required TResult Function(WeatherUnits units) changeUnits,
    required TResult Function() pullToRefresh,
    required TResult Function(int dayIndex) selectDay,
  }) {
    return selectDay(dayIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult? Function(WeatherUnits units)? changeUnits,
    TResult? Function()? pullToRefresh,
    TResult? Function(int dayIndex)? selectDay,
  }) {
    return selectDay?.call(dayIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, WeatherUnits? units)?
        fetchWeather,
    TResult Function(WeatherUnits units)? changeUnits,
    TResult Function()? pullToRefresh,
    TResult Function(int dayIndex)? selectDay,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(dayIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(ChangeUnits value) changeUnits,
    required TResult Function(PullToRefresh value) pullToRefresh,
    required TResult Function(SelectDay value) selectDay,
  }) {
    return selectDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(ChangeUnits value)? changeUnits,
    TResult? Function(PullToRefresh value)? pullToRefresh,
    TResult? Function(SelectDay value)? selectDay,
  }) {
    return selectDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(ChangeUnits value)? changeUnits,
    TResult Function(PullToRefresh value)? pullToRefresh,
    TResult Function(SelectDay value)? selectDay,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(this);
    }
    return orElse();
  }
}

abstract class SelectDay implements WeatherEvent {
  const factory SelectDay(final int dayIndex) = _$SelectDayImpl;

  int get dayIndex;
  @JsonKey(ignore: true)
  _$$SelectDayImplCopyWith<_$SelectDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DailyWeather selectedDay,
            WeatherForecast weatherForecast, WeatherUnits units)
        loaded,
    required TResult Function(NetworkFailure failure, WeatherUnits units) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult? Function(NetworkFailure failure, WeatherUnits units)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult Function(NetworkFailure failure, WeatherUnits units)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherInitialImplCopyWith<$Res> {
  factory _$$WeatherInitialImplCopyWith(_$WeatherInitialImpl value,
          $Res Function(_$WeatherInitialImpl) then) =
      __$$WeatherInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherInitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherInitialImpl>
    implements _$$WeatherInitialImplCopyWith<$Res> {
  __$$WeatherInitialImplCopyWithImpl(
      _$WeatherInitialImpl _value, $Res Function(_$WeatherInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherInitialImpl implements WeatherInitial {
  const _$WeatherInitialImpl();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DailyWeather selectedDay,
            WeatherForecast weatherForecast, WeatherUnits units)
        loaded,
    required TResult Function(NetworkFailure failure, WeatherUnits units) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult? Function(NetworkFailure failure, WeatherUnits units)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult Function(NetworkFailure failure, WeatherUnits units)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherInitial implements WeatherState {
  const factory WeatherInitial() = _$WeatherInitialImpl;
}

/// @nodoc
abstract class _$$WeatherLoadingImplCopyWith<$Res> {
  factory _$$WeatherLoadingImplCopyWith(_$WeatherLoadingImpl value,
          $Res Function(_$WeatherLoadingImpl) then) =
      __$$WeatherLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherLoadingImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoadingImpl>
    implements _$$WeatherLoadingImplCopyWith<$Res> {
  __$$WeatherLoadingImplCopyWithImpl(
      _$WeatherLoadingImpl _value, $Res Function(_$WeatherLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherLoadingImpl implements WeatherLoading {
  const _$WeatherLoadingImpl();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DailyWeather selectedDay,
            WeatherForecast weatherForecast, WeatherUnits units)
        loaded,
    required TResult Function(NetworkFailure failure, WeatherUnits units) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult? Function(NetworkFailure failure, WeatherUnits units)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult Function(NetworkFailure failure, WeatherUnits units)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoading implements WeatherState {
  const factory WeatherLoading() = _$WeatherLoadingImpl;
}

/// @nodoc
abstract class _$$WeatherLoadedImplCopyWith<$Res> {
  factory _$$WeatherLoadedImplCopyWith(
          _$WeatherLoadedImpl value, $Res Function(_$WeatherLoadedImpl) then) =
      __$$WeatherLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DailyWeather selectedDay,
      WeatherForecast weatherForecast,
      WeatherUnits units});

  $DailyWeatherCopyWith<$Res> get selectedDay;
  $WeatherForecastCopyWith<$Res> get weatherForecast;
}

/// @nodoc
class __$$WeatherLoadedImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoadedImpl>
    implements _$$WeatherLoadedImplCopyWith<$Res> {
  __$$WeatherLoadedImplCopyWithImpl(
      _$WeatherLoadedImpl _value, $Res Function(_$WeatherLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
    Object? weatherForecast = null,
    Object? units = null,
  }) {
    return _then(_$WeatherLoadedImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DailyWeather,
      weatherForecast: null == weatherForecast
          ? _value.weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as WeatherForecast,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as WeatherUnits,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyWeatherCopyWith<$Res> get selectedDay {
    return $DailyWeatherCopyWith<$Res>(_value.selectedDay, (value) {
      return _then(_value.copyWith(selectedDay: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastCopyWith<$Res> get weatherForecast {
    return $WeatherForecastCopyWith<$Res>(_value.weatherForecast, (value) {
      return _then(_value.copyWith(weatherForecast: value));
    });
  }
}

/// @nodoc

class _$WeatherLoadedImpl implements WeatherLoaded {
  const _$WeatherLoadedImpl(
      {required this.selectedDay,
      required this.weatherForecast,
      this.units = WeatherUnits.metric});

  @override
  final DailyWeather selectedDay;
  @override
  final WeatherForecast weatherForecast;
  @override
  @JsonKey()
  final WeatherUnits units;

  @override
  String toString() {
    return 'WeatherState.loaded(selectedDay: $selectedDay, weatherForecast: $weatherForecast, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoadedImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.weatherForecast, weatherForecast) ||
                other.weatherForecast == weatherForecast) &&
            (identical(other.units, units) || other.units == units));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedDay, weatherForecast, units);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedImplCopyWith<_$WeatherLoadedImpl> get copyWith =>
      __$$WeatherLoadedImplCopyWithImpl<_$WeatherLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DailyWeather selectedDay,
            WeatherForecast weatherForecast, WeatherUnits units)
        loaded,
    required TResult Function(NetworkFailure failure, WeatherUnits units) error,
  }) {
    return loaded(selectedDay, weatherForecast, units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult? Function(NetworkFailure failure, WeatherUnits units)? error,
  }) {
    return loaded?.call(selectedDay, weatherForecast, units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult Function(NetworkFailure failure, WeatherUnits units)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedDay, weatherForecast, units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherLoaded implements WeatherState {
  const factory WeatherLoaded(
      {required final DailyWeather selectedDay,
      required final WeatherForecast weatherForecast,
      final WeatherUnits units}) = _$WeatherLoadedImpl;

  DailyWeather get selectedDay;
  WeatherForecast get weatherForecast;
  WeatherUnits get units;
  @JsonKey(ignore: true)
  _$$WeatherLoadedImplCopyWith<_$WeatherLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherErrorImplCopyWith<$Res> {
  factory _$$WeatherErrorImplCopyWith(
          _$WeatherErrorImpl value, $Res Function(_$WeatherErrorImpl) then) =
      __$$WeatherErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkFailure failure, WeatherUnits units});

  $NetworkFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$WeatherErrorImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherErrorImpl>
    implements _$$WeatherErrorImplCopyWith<$Res> {
  __$$WeatherErrorImplCopyWithImpl(
      _$WeatherErrorImpl _value, $Res Function(_$WeatherErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? units = null,
  }) {
    return _then(_$WeatherErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as WeatherUnits,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkFailureCopyWith<$Res> get failure {
    return $NetworkFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$WeatherErrorImpl implements WeatherError {
  const _$WeatherErrorImpl(
      {required this.failure, this.units = WeatherUnits.metric});

  @override
  final NetworkFailure failure;
  @override
  @JsonKey()
  final WeatherUnits units;

  @override
  String toString() {
    return 'WeatherState.error(failure: $failure, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.units, units) || other.units == units));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, units);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherErrorImplCopyWith<_$WeatherErrorImpl> get copyWith =>
      __$$WeatherErrorImplCopyWithImpl<_$WeatherErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DailyWeather selectedDay,
            WeatherForecast weatherForecast, WeatherUnits units)
        loaded,
    required TResult Function(NetworkFailure failure, WeatherUnits units) error,
  }) {
    return error(failure, units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult? Function(NetworkFailure failure, WeatherUnits units)? error,
  }) {
    return error?.call(failure, units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DailyWeather selectedDay, WeatherForecast weatherForecast,
            WeatherUnits units)?
        loaded,
    TResult Function(NetworkFailure failure, WeatherUnits units)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure, units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherError implements WeatherState {
  const factory WeatherError(
      {required final NetworkFailure failure,
      final WeatherUnits units}) = _$WeatherErrorImpl;

  NetworkFailure get failure;
  WeatherUnits get units;
  @JsonKey(ignore: true)
  _$$WeatherErrorImplCopyWith<_$WeatherErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

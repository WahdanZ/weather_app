part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = WeatherInitial;
  const factory WeatherState.loading() = WeatherLoading;
  const factory WeatherState.loaded({
    required DailyWeather selectedDay,
    required WeatherForecast weatherForecast,
    @Default(WeatherUnits.metric) WeatherUnits units,
  }) = WeatherLoaded;
  const factory WeatherState.error({
    required NetworkFailure failure,
    @Default(WeatherUnits.metric) WeatherUnits units,
  }) = WeatherError;
}

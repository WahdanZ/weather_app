part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchWeather({
    double? lat,
    double? lon,
    WeatherUnits? units,
  }) = FetchWeather;

  const factory WeatherEvent.changeUnits(WeatherUnits units) = ChangeUnits;

  const factory WeatherEvent.pullToRefresh() = PullToRefresh;

  const factory WeatherEvent.selectDay(int dayIndex) = SelectDay;
}

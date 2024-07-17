import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/base/domain/interactors/use_case.dart';
import 'package:weather_app/base/error/index.dart';
import 'package:weather_app/base/logger/logger.dart';
import 'package:weather_app/common/extensions/temperature_extension.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/domain/usecases/get_current_location_usecase.dart';
import 'package:weather_app/feature/weather/domain/usecases/get_weather_forecast.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

enum WeatherUnits { metric, imperial }

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherForecastUseCase getWeatherForecastUseCase;
  final GetCurrentLocationUseCase getCurrentLocationUseCase;

  WeatherUnits _currentUnits = WeatherUnits.metric;

  WeatherBloc({
    required this.getWeatherForecastUseCase,
    required this.getCurrentLocationUseCase,
  }) : super(const WeatherInitial()) {
    on<FetchWeather>(_onFetchWeather);
    on<ChangeUnits>(_onChangeUnits);
    on<PullToRefresh>(_onPullToRefresh);
    on<SelectDay>(_onSelectDay);
  }

  Future<void> _onFetchWeather(
      FetchWeather event, Emitter<WeatherState> emit) async {
    try {
      emit(const WeatherLoading());

      double lat = event.lat ?? 0.0;
      double lon = event.lon ?? 0.0;

      if (lat == 0.0 && lon == 0.0) {
        try {
          final locationResult =
              await getCurrentLocationUseCase.execute(params: Any());
          lat = locationResult.latitude;
          lon = locationResult.longitude;
        } catch (e) {
          emit(WeatherError(
              failure:
                  const NetworkFailure.unknown(message: 'Location not found'),
              units: _currentUnits));
          return;
        }
      }
      _currentUnits = event.units ?? _currentUnits;

      final weatherResult = await getWeatherForecastUseCase.execute(
        params: GetWeatherForecastParams(
          lat: lat,
          lon: lon,
          exclude: 'minutely',
          units: _currentUnits.name,
        ),
      );
      weatherResult.when(
        success: (weatherForecast) {
          final selectedDay = weatherForecast.daily[0];

          emit(WeatherLoaded(
              selectedDay: selectedDay, weatherForecast: weatherForecast));
        },
        failure: (error) => emit(
          WeatherError(failure: error, units: _currentUnits),
        ),
      );
    } catch (e, s) {
      logger.e('An error occurred while fetching weather',
          error: e, stackTrace: s);
      emit(WeatherError(
          failure: const NetworkFailure.unknown(message: 'An error occurred'),
          units: _currentUnits));
    }
  }

  void _onChangeUnits(ChangeUnits event, Emitter<WeatherState> emit) {
    _currentUnits = event.units;
    if (state is WeatherLoaded) {
      final loadedState = state as WeatherLoaded;
      final convertedForecast =
          _convertUnits(loadedState.weatherForecast, _currentUnits);
      emit(loadedState.copyWith(
        weatherForecast: convertedForecast,
        units: _currentUnits,
      ));
    }
  }

  WeatherForecast _convertUnits(WeatherForecast forecast, WeatherUnits units) {
    if (units == WeatherUnits.imperial) {
      return forecast.copyWith(
        current: forecast.current.copyWith(
          temperature: forecast.current.temperature.toFahrenheit(),
          windSpeed: forecast.current.windSpeed.toMph(),
        ),
        daily: forecast.daily
            .map((day) => day.copyWith(
                  dayTemp: day.dayTemp.toFahrenheit(),
                  minTemp: day.minTemp.toFahrenheit(),
                  maxTemp: day.maxTemp.toFahrenheit(),
                  windSpeed: day.windSpeed.toMph(),
                ))
            .toList(),
      );
    } else {
      return forecast.copyWith(
        current: forecast.current.copyWith(
          temperature: forecast.current.temperature.toCelsius(),
          windSpeed: forecast.current.windSpeed.toKph(),
        ),
        daily: forecast.daily
            .map((day) => day.copyWith(
                  dayTemp: day.dayTemp.toCelsius(),
                  minTemp: day.minTemp.toCelsius(),
                  maxTemp: day.maxTemp.toCelsius(),
                  windSpeed: day.windSpeed.toKph(),
                ))
            .toList(),
      );
    }
  }

  void _onPullToRefresh(PullToRefresh event, Emitter<WeatherState> emit) {
    add(const FetchWeather());
  }

  void _onSelectDay(SelectDay event, Emitter<WeatherState> emit) {
    if (state is WeatherLoaded) {
      final loadedState = state as WeatherLoaded;
      final selectedDay = loadedState.weatherForecast.daily[event.dayIndex];
      emit(WeatherLoaded(
        selectedDay: selectedDay,
        weatherForecast: loadedState.weatherForecast,
        units: loadedState.units,
      ));
    }
  }
}

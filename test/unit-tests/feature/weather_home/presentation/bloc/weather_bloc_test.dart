import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/common/extensions/temperature_extension.dart';
import 'package:weather_app/common/location/model/location.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/domain/usecases/get_weather_forecast.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';

import '../../../../../mock.dart';
import '../../../../../test_injection.dart';

void main() {
  late WeatherBloc weatherBloc;
  late MockGetWeatherForecastUseCase mockGetWeatherForecastUseCase;
  late MockGetCurrentLocationUseCase mockGetCurrentLocationUseCase;

  setUpAll(() {
    configureTestDependencies();
    mockGetWeatherForecastUseCase = injectMock();
    mockGetCurrentLocationUseCase = injectMock();
    registerFallbackValue(GetWeatherForecastParams(
      lat: 0.0,
      lon: 0.0,
      exclude: '',
      units: '',
    ));
  });

  setUp(() {
    weatherBloc = WeatherBloc(
      getWeatherForecastUseCase: mockGetWeatherForecastUseCase,
      getCurrentLocationUseCase: mockGetCurrentLocationUseCase,
    );
  });

  group('WeatherBloc', () {
    const location = Location(
        latitude: 37.7749, longitude: -122.4194, name: 'San Francisco');
    final weatherForecast = WeatherForecast(
      latitude: 37.7749,
      longitude: -122.4194,
      timezone: 'GMT',
      timezoneOffset: 0,
      current: const CurrentWeather(
        temperature: 20.0,
        humidity: 60,
        pressure: 1013,
        windSpeed: 5.0,
        weather: [Weather(description: 'clear sky', icon: '01d')],
      ),
      daily: [
        DailyWeather(
          date: DateTime(2024, 7, 17),
          dayTemp: 20.0,
          minTemp: 15.0,
          maxTemp: 25.0,
          humidity: 60,
          pressure: 1013,
          windSpeed: 5.0,
          weather: [const Weather(description: 'clear sky', icon: '01d')],
        ),
        DailyWeather(
          date: DateTime(2024, 7, 18),
          dayTemp: 21.0,
          minTemp: 16.0,
          maxTemp: 26.0,
          humidity: 60,
          pressure: 1013,
          windSpeed: 5.0,
          weather: [const Weather(description: 'clear sky', icon: '01d')],
        ),
      ],
    );

    test('initial state is WeatherInitial', () {
      expect(weatherBloc.state, const WeatherInitial());
    });

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherLoading, WeatherLoaded] when FetchWeather is added and succeeds',
      build: () {
        when(() => mockGetCurrentLocationUseCase.execute(params: Any()))
            .thenAnswer((_) async => location);
        when(() => mockGetWeatherForecastUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => Success(weatherForecast));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const FetchWeather()),
      expect: () => [
        const WeatherLoading(),
        WeatherLoaded(
          selectedDay: weatherForecast.daily.first,
          weatherForecast: weatherForecast,
          units: WeatherUnits.metric,
        ),
      ],
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherLoading, WeatherError] when FetchWeather is added and location fails',
      build: () {
        when(() => mockGetCurrentLocationUseCase.execute(params: Any()))
            .thenThrow(
                const NetworkFailure.unknown(message: 'Location not found'));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const FetchWeather()),
      expect: () => [
        const WeatherLoading(),
        const WeatherError(
          failure: NetworkFailure.unknown(message: 'Location not found'),
          units: WeatherUnits.metric,
        ),
      ],
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherLoading, WeatherError] when FetchWeather is added and weather forecast fails',
      build: () {
        when(() => mockGetCurrentLocationUseCase.execute(params: Any()))
            .thenAnswer((_) async => location);
        when(() => mockGetWeatherForecastUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.failure<WeatherForecast>(
                const NetworkFailure.api(message: 'Failed to fetch weather')));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const FetchWeather()),
      expect: () => [
        const WeatherLoading(),
        const WeatherError(
          failure: NetworkFailure.api(message: 'Failed to fetch weather'),
          units: WeatherUnits.metric,
        ),
      ],
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherLoading, WeatherError] when FetchWeather is added and weather forecast fails',
      build: () {
        when(() => mockGetCurrentLocationUseCase.execute(params: Any()))
            .thenAnswer((_) async => location);
        when(() => mockGetWeatherForecastUseCase.execute(
            params: any(named: 'params'))).thenThrow(Exception());
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const FetchWeather()),
      expect: () => [
        const WeatherLoading(),
        const WeatherError(
          failure: NetworkFailure.unknown(message: 'An error occurred'),
          units: WeatherUnits.metric,
        ),
      ],
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits WeatherLoaded with updated units when ChangeUnits is added',
      build: () {
        when(() => mockGetCurrentLocationUseCase.execute(params: Any()))
            .thenAnswer((_) async => location);
        when(() => mockGetWeatherForecastUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => Success(weatherForecast));
        return weatherBloc;
      },
      act: (bloc) async {
        bloc.add(const FetchWeather());
        await Future.delayed(const Duration(milliseconds: 200));
        bloc.add(const ChangeUnits(WeatherUnits.imperial));
        return bloc;
      },
      expect: () => [
        const WeatherLoading(),
        WeatherLoaded(
          selectedDay: weatherForecast.daily.first,
          weatherForecast: weatherForecast,
          units: WeatherUnits.metric,
        ),
        WeatherLoaded(
          selectedDay: weatherForecast.daily.first.copyWith(
            dayTemp: weatherForecast.daily.first.dayTemp.toFahrenheit(),
            minTemp: weatherForecast.daily.first.minTemp.toFahrenheit(),
            maxTemp: weatherForecast.daily.first.maxTemp.toFahrenheit(),
            windSpeed: weatherForecast.daily.first.windSpeed.toMph(),
          ),
          weatherForecast: weatherForecast.copyWith(
            current: weatherForecast.current.copyWith(
              temperature: weatherForecast.current.temperature.toFahrenheit(),
              windSpeed: weatherForecast.current.windSpeed.toMph(),
            ),
            daily: weatherForecast.daily
                .map((day) => day.copyWith(
                      dayTemp: day.dayTemp.toFahrenheit(),
                      minTemp: day.minTemp.toFahrenheit(),
                      maxTemp: day.maxTemp.toFahrenheit(),
                      windSpeed: day.windSpeed.toMph(),
                    ))
                .toList(),
          ),
          units: WeatherUnits.imperial,
        ),
      ],
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits WeatherLoaded with selected day when SelectDay is added',
      build: () {
        when(() => mockGetCurrentLocationUseCase.execute(params: Any()))
            .thenAnswer((_) async => location);
        when(() => mockGetWeatherForecastUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success(weatherForecast));
        return weatherBloc;
      },
      act: (bloc) async {
        bloc.add(const FetchWeather());
        await Future.delayed(const Duration(milliseconds: 200));
        bloc.add(const SelectDay(1));
        return bloc;
      },
      expect: () => [
        const WeatherLoading(),
        WeatherLoaded(
          selectedDay: weatherForecast.daily.first,
          weatherForecast: weatherForecast,
          units: WeatherUnits.metric,
        ),
        WeatherLoaded(
          selectedDay: weatherForecast.daily[1],
          weatherForecast: weatherForecast,
          units: WeatherUnits.metric,
        ),
      ],
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherLoading, WeatherLoaded] when PullToRefresh is added',
      build: () {
        when(() => mockGetCurrentLocationUseCase.execute(params: Any()))
            .thenAnswer((_) async => location);
        when(() => mockGetWeatherForecastUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success(weatherForecast));
        return weatherBloc;
      },
      act: (bloc) => bloc
        ..add(const FetchWeather())
        ..add(const PullToRefresh()),
      expect: () => [
        const WeatherLoading(),
        WeatherLoaded(
          selectedDay: weatherForecast.daily.first,
          weatherForecast: weatherForecast,
          units: WeatherUnits.metric,
        ),
        const WeatherLoading(),
        WeatherLoaded(
          selectedDay: weatherForecast.daily.first,
          weatherForecast: weatherForecast,
          units: WeatherUnits.metric,
        ),
      ],
    );
  });
}

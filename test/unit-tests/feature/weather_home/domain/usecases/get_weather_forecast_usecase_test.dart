import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/domain/usecases/get_weather_forecast.dart';

import '../../../../../mock.dart';
import '../../../../../test_injection.dart';

void main() {
  late GetWeatherForecastUseCase useCase;
  late MockWeatherRepository mockRepository;

  setUpAll(() {
    configureTestDependencies();
    mockRepository = injectMock();

    useCase = GetWeatherForecastUseCase(mockRepository);

    registerFallbackValue(
      GetWeatherForecastParams(
        lat: 0.0,
        lon: 0.0,
        exclude: '',
        units: '',
      ),
    );
  });

  group('GetWeatherForecastUseCase', () {
    final params = GetWeatherForecastParams(
      lat: 37.7749,
      lon: -122.4194,
      exclude: 'minutely',
      units: 'metric',
    );

    test('should return Success with WeatherForecast on successful fetch',
        () async {
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
            date: DateTime.fromMillisecondsSinceEpoch(1629139200 * 1000),
            dayTemp: 20.0,
            minTemp: 15.0,
            maxTemp: 25.0,
            humidity: 60,
            pressure: 1013,
            windSpeed: 5.0,
            weather: [const Weather(description: 'clear sky', icon: '01d')],
          )
        ],
      );

      when(() => mockRepository.getWeatherForecast(
            lat: params.lat,
            lon: params.lon,
            exclude: params.exclude,
            units: params.units,
          )).thenAnswer((_) async => Success(weatherForecast));

      final result = await useCase.execute(params: params);

      expect(result.isSuccess, isTrue);
      expect(result.valueOrNull, weatherForecast);
    });

    test('should return Failure with NetworkFailure on error', () async {
      when(() => mockRepository.getWeatherForecast(
                lat: params.lat,
                lon: params.lon,
                exclude: params.exclude,
                units: params.units,
              ))
          .thenAnswer((_) async =>
              const Failure(NetworkFailure.api(message: 'City not found')));

      final result = await useCase.execute(params: params);

      expect(result.isFailure, isTrue);
      expect(result.errorOrNull, isA<NetworkFailure>());
      expect(result.errorOrNull?.message, 'City not found');
    });
  });
}

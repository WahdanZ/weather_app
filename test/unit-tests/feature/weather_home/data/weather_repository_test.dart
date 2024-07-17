import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/feature/weather/data/repository/weather_repository.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/remote/model/index.dart';

import '../../../../mock.dart';
import '../../../../test_injection.dart';

void main() {
  late WeatherRepository repository;
  late MockWeatherApiClient mockClient;
  late MockWeatherMapper mockMapper;

  setUpAll(() {
    configureTestDependencies();
    mockClient = injectMock();
    mockMapper = injectMock();

    repository = WeatherRepository(
      mockClient,
      mockMapper,
      'test_api_key',
      NetworkTaskManager(),
    );
    // register OneCallResponse
    registerFallbackValue(OneCallResponse(
      lat: 0.0,
      lon: 0.0,
      timezone: '',
      timezoneOffset: 0,
      current: Current(
        temp: 0.0,
        humidity: 0,
        pressure: 0,
        windSpeed: 0.0,
        weather: [],
      ),
      daily: [],
    ));
  });

  group('WeatherRepository', () {
    const lat = 37.7749;
    const lon = -122.4194;
    const exclude = 'minutely';
    const units = 'metric';

    test('should return WeatherForecast on successful fetch', () async {
      final apiResponse = OneCallResponse(
        lat: 51.5074,
        lon: -0.1278,
        timezone: 'GMT',
        timezoneOffset: 0,
        current: Current(
          temp: 20.0,
          humidity: 60,
          pressure: 1013,
          windSpeed: 5.0,
          weather: [WeatherModel(description: 'clear sky', icon: '01d')],
        ),
        daily: [
          Daily(
            dt: 1629139200,
            temp: Temp(day: 20.0, min: 15.0, max: 25.0),
            humidity: 60,
            pressure: 1013,
            windSpeed: 5.0,
            weather: [WeatherModel(description: 'clear sky', icon: '01d')],
          )
        ],
      );

      final weatherForecast = WeatherForecast(
        latitude: 51.5074,
        longitude: -0.1278,
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

      when(() => mockClient.getOneCallWeather(
            lat: lat,
            lon: lon,
            exclude: exclude,
            apiKey: 'test_api_key',
            units: units,
          )).thenAnswer((_) async => apiResponse);

      when(() => mockMapper.mapFromModel(any())).thenReturn(weatherForecast);

      final result = (await repository.getWeatherForecast(
        lat: lat,
        lon: lon,
        exclude: exclude,
        units: units,
      ))
          .valueOrNull!;

      expect(result.latitude, weatherForecast.latitude);
      expect(result.longitude, weatherForecast.longitude);
      expect(result.timezone, weatherForecast.timezone);
      expect(result.current.temperature, weatherForecast.current.temperature);
      expect(result.current.humidity, weatherForecast.current.humidity);
      expect(result.current.pressure, weatherForecast.current.pressure);
      expect(result.current.windSpeed, weatherForecast.current.windSpeed);
      expect(result.current.weather.first.description,
          weatherForecast.current.weather.first.description);
      expect(result.daily.first.date, weatherForecast.daily.first.date);
      expect(result.daily.first.dayTemp, weatherForecast.daily.first.dayTemp);
      expect(result.daily.first.minTemp, weatherForecast.daily.first.minTemp);
      expect(result.daily.first.maxTemp, weatherForecast.daily.first.maxTemp);
      expect(result.daily.first.humidity, weatherForecast.daily.first.humidity);
      expect(result.daily.first.pressure, weatherForecast.daily.first.pressure);
      expect(
          result.daily.first.windSpeed, weatherForecast.daily.first.windSpeed);
      expect(result.daily.first.weather.first.description,
          weatherForecast.daily.first.weather.first.description);
    });

    test('should throw NetworkFailure.unAuthorized on 401 error', () async {
      final dioError = DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
        response: Response(
          statusCode: 401,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      when(() => mockClient.getOneCallWeather(
            lat: lat,
            lon: lon,
            exclude: exclude,
            apiKey: 'test_api_key',
            units: units,
          )).thenThrow(dioError);

      try {
        await repository.getWeatherForecast(
          lat: lat,
          lon: lon,
          exclude: exclude,
          units: units,
        );
      } catch (error) {
        expect(error, isA<NetworkFailure>());
        expect((error as NetworkFailure).message, 'Invalid API key');
      }
    });

    test('should throw NetworkFailure.api on 404 error', () async {
      final dioError = DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
        response: Response(
          statusCode: 404,
          requestOptions: RequestOptions(path: ''),
        ),
      );
      when(() => mockClient.getOneCallWeather(
            lat: lat,
            lon: lon,
            exclude: exclude,
            apiKey: 'test_api_key',
            units: units,
          )).thenThrow(dioError);

      try {
        await repository.getWeatherForecast(
          lat: lat,
          lon: lon,
          exclude: exclude,
          units: units,
        );
      } catch (error) {
        expect(error, isA<NetworkFailure>());
        expect((error as NetworkFailure).message, 'City not found');
      }
    });

    test('should throw NetworkFailure.tooManyRequests on 429 error', () async {
      final dioError = DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
        response: Response(
          statusCode: 429,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      when(() => mockClient.getOneCallWeather(
            lat: lat,
            lon: lon,
            exclude: exclude,
            apiKey: 'test_api_key',
            units: units,
          )).thenThrow(dioError);

      try {
        await repository.getWeatherForecast(
          lat: lat,
          lon: lon,
          exclude: exclude,
          units: units,
        );
      } catch (error) {
        expect(error, isA<NetworkFailure>());
        expect((error as NetworkFailure).message, 'Too many requests');
      }
    });

    test('should throw NetworkFailure.serverError on 500 error', () async {
      final dioError = DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
        response: Response(
          statusCode: 500,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      when(() => mockClient.getOneCallWeather(
            lat: lat,
            lon: lon,
            exclude: exclude,
            apiKey: 'test_api_key',
            units: units,
          )).thenThrow(dioError);

      try {
        await repository.getWeatherForecast(
          lat: lat,
          lon: lon,
          exclude: exclude,
          units: units,
        );
      } catch (error) {
        expect(error, isA<NetworkFailure>());
        expect((error as NetworkFailure).message, 'Internal server error');
      }
    });
  });
}

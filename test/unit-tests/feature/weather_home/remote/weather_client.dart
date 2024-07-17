import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/feature/weather/remote/weather_api.dart';

import '../../../../mock.dart';
import '../../../../test_injection.dart';

void main() async {
  late WeatherApiClient apiClient;
  late MockDio mockDio;
  configureTestDependencies();

  setUpAll(() async {
    mockDio = injectMock();
    apiClient = WeatherApiClient(mockDio,
        baseUrl: 'https://api.openweathermap.org/data/3.0/');
  });
  setUp(() {
    registerFallbackValue(Uri());
    registerFallbackValue(RequestOptions(path: ''));
  });

  group('Weather client test', () {
    test('Test fetch data and model parsing', () async {
      final file = File(
          'test/unit-tests/feature/weather_home/remote/mock_response.json');
      final mockResponse = json.decode(await file.readAsString());

      when(() => mockDio.fetch<Map<String, dynamic>>(any())).thenAnswer(
        (_) async => Response<Map<String, dynamic>>(
          data: mockResponse,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      final response = await apiClient.getOneCallWeather(
        lat: 51.5074,
        lon: -0.1278,
        exclude: 'minutely,hourly',
        apiKey: 'fb31a9a89bccf5418982b8b879f2fab1',
        units: 'metric',
      );

      expect(response.lat, 51.5074);
      expect(response.lon, -0.1278);
      expect(response.timezone, 'GMT');
      expect(response.current.temp, 20.0);
      expect(response.current.humidity, 60);
      expect(response.current.pressure, 1013);
      expect(response.current.weather[0].description, 'clear sky');
      expect(response.current.weather[0].icon, '01d');
      expect(response.current.windSpeed, 5.0);
      expect(response.daily.length, 1);
      expect(response.daily[0].temp.day, 20.0);
      expect(response.daily[0].temp.min, 15.0);
      expect(response.daily[0].temp.max, 25.0);
      expect(response.daily[0].humidity, 60);
      expect(response.daily[0].pressure, 1013);
      expect(response.daily[0].weather[0].description, 'clear sky');
      expect(response.daily[0].weather[0].icon, '01d');
    });
  });
}

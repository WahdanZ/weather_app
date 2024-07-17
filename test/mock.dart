import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/feature/weather/data/mapper/weather_mapper.dart';
import 'package:weather_app/feature/weather/remote/weather_api.dart';

@injectable
class MockDio extends Mock implements Dio {
  @override
  BaseOptions get options => BaseOptions();
}

@injectable
class MockWeatherApiClient extends Mock implements WeatherApiClient {}

@injectable
class MockWeatherMapper extends Mock implements WeatherMapper {}

@injectable
class MockNetworkTaskManager extends Mock implements NetworkTaskManager {}

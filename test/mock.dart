import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/feature/weather/data/mapper/weather_mapper.dart';
import 'package:weather_app/feature/weather/data/repository/weather_repository.dart';
import 'package:weather_app/feature/weather/domain/usecases/get_current_location_usecase.dart';
import 'package:weather_app/feature/weather/domain/usecases/get_weather_forecast.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';
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

@injectable
class MockWeatherRepository extends Mock implements WeatherRepository {}

@injectable
class MockGetWeatherForecastUseCase extends Mock
    implements GetWeatherForecastUseCase {}

@injectable
class MockGetCurrentLocationUseCase extends Mock
    implements GetCurrentLocationUseCase {}

@LazySingleton(as: WeatherBloc)
class MockWeatherBloc extends Mock implements WeatherBloc {}

@injectable
class FakeWeatherEvent extends Fake implements WeatherEvent {}

@injectable
class FakeWeatherState extends Fake implements WeatherState {}

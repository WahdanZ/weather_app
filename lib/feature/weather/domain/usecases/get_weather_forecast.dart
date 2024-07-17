import 'package:weather_app/feature/weather/domain/entity/index.dart';

import '../../../../base/index.dart';
import '../../data/repository/weather_repository.dart';

class GetWeatherForecastUseCase
    extends UseCaseResult<WeatherForecast, GetWeatherForecastParams> {
  final WeatherRepository repository;

  GetWeatherForecastUseCase(this.repository);

  @override
  Future<CustomResult<WeatherForecast>> buildUseCase(
      GetWeatherForecastParams params) async {
    try {
      final result = await repository.getWeatherForecast(
        lat: params.lat,
        lon: params.lon,
        exclude: params.exclude,
        units: params.units,
      );
      return result;
    } catch (error) {
      if (error is NetworkFailure) {
        return Failure(error);
      }
      return const Failure(NetworkFailure.unknown());
    }
  }
}

class GetWeatherForecastParams extends Params {
  final double lat;
  final double lon;
  final String exclude;
  final String units;

  GetWeatherForecastParams({
    required this.lat,
    required this.lon,
    required this.exclude,
    required this.units,
  });

  @override
  List<Object> get props => [lat, lon, exclude, units];
}

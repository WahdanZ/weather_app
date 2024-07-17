import 'package:injectable/injectable.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/feature/weather/data/mapper/weather_mapper.dart';
import 'package:weather_app/feature/weather/remote/error_mapping.dart';
import 'package:weather_app/feature/weather/remote/weather_api.dart';

import '../../domain/entity/index.dart';

class WeatherRepository {
  final WeatherApiClient _client;
  final WeatherMapper _mapper;
  final String _apiKey;
  final NetworkTaskManager _networkManager;

  WeatherRepository(this._client, this._mapper, @Named('api_key') this._apiKey,
      this._networkManager);

  Future<CustomResult<WeatherForecast>> getWeatherForecast({
    required double lat,
    required double lon,
    required String exclude,
    required String units,
  }) async {
    final task = DioNetworkTask(() async {
      final response = await _client.getOneCallWeather(
        lat: lat,
        lon: lon,
        exclude: exclude,
        apiKey: _apiKey,
        units: units,
      );
      return _mapper.mapFromModel(response);
    });
    return await _networkManager.executeTask(task,
        errorMapping: openWeatherErrorMapping);
  }
}

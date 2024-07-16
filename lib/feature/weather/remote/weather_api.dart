import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'model/index.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: "http://api.openweathermap.org/data/2.5/")
@injectable
abstract class WeatherApiClient {
  @factoryMethod
  factory WeatherApiClient(@Named('dio_client') Dio dio,
      {@Named('base_url') String baseUrl}) = _WeatherApiClient;

  @GET("/onecall")
  Future<OneCallResponse> getOneCallWeather({
    @Query("lat") required double lat,
    @Query("lon") required double lon,
    @Query("exclude") required String exclude,
    @Query("appid") required String apiKey,
    @Query("units") required String units,
  });
}

import 'package:weather_app/base/mapper/mapper.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/remote/model/one_call_response.dart'
    as api;

class WeatherMapper implements Mapper<api.OneCallResponse, WeatherForecast> {
  @override
  WeatherForecast mapFromModel(api.OneCallResponse apiResponse) {
    return WeatherForecast(
      latitude: apiResponse.lat,
      longitude: apiResponse.lon,
      timezone: apiResponse.timezone,
      timezoneOffset: apiResponse.timezoneOffset,
      current: CurrentWeather(
        temperature: apiResponse.current.temp,
        humidity: apiResponse.current.humidity,
        pressure: apiResponse.current.pressure,
        windSpeed: apiResponse.current.windSpeed,
        weather: apiResponse.current.weather
            .map((apiWeather) => Weather(
                  description: apiWeather.description,
                  icon: apiWeather.icon,
                ))
            .toList(),
      ),
      daily: apiResponse.daily
          .map((apiDaily) => DailyWeather(
                date: DateTime.fromMillisecondsSinceEpoch(apiDaily.dt * 1000),
                dayTemp: apiDaily.temp.day,
                minTemp: apiDaily.temp.min,
                maxTemp: apiDaily.temp.max,
                humidity: apiDaily.humidity,
                pressure: apiDaily.pressure,
                windSpeed: apiDaily.windSpeed,
                weather: apiDaily.weather
                    .map((apiWeather) => Weather(
                          description: apiWeather.description,
                          icon: apiWeather.icon,
                        ))
                    .toList(),
              ))
          .toList(),
    );
  }

  @override
  api.OneCallResponse mapFromEntity(WeatherForecast type) {
    // Implement this if needed, or throw UnimplementedError if not used
    throw UnimplementedError();
  }
}

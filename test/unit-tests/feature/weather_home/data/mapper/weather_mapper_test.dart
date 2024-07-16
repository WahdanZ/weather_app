import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/feature/weather/data/mapper/weather_mapper.dart';
import 'package:weather_app/feature/weather/remote/model/index.dart';

void main() {
  group('WeatherMapper', () {
    test('should map OneCallResponse to WeatherForecast correctly', () {
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
          weather: [Weather(description: 'clear sky', icon: '01d')],
        ),
        daily: [
          Daily(
            dt: 1629139200,
            temp: Temp(day: 20.0, min: 15.0, max: 25.0),
            humidity: 60,
            pressure: 1013,
            windSpeed: 5.0,
            weather: [Weather(description: 'clear sky', icon: '01d')],
          )
        ],
      );

      final mapper = WeatherMapper();
      final weatherForecast = mapper.mapFromModel(apiResponse);

      expect(weatherForecast.latitude, 51.5074);
      expect(weatherForecast.longitude, -0.1278);
      expect(weatherForecast.timezone, 'GMT');
      expect(weatherForecast.timezoneOffset, 0);
      expect(weatherForecast.current.temperature, 20.0);
      expect(weatherForecast.current.humidity, 60);
      expect(weatherForecast.current.pressure, 1013);
      expect(weatherForecast.current.windSpeed, 5.0);
      expect(weatherForecast.current.weather[0].description, 'clear sky');
      expect(weatherForecast.current.weather[0].icon, '01d');
      expect(weatherForecast.daily.length, 1);
      expect(weatherForecast.daily[0].date,
          DateTime.fromMillisecondsSinceEpoch(1629139200 * 1000));
      expect(weatherForecast.daily[0].dayTemp, 20.0);
      expect(weatherForecast.daily[0].minTemp, 15.0);
      expect(weatherForecast.daily[0].maxTemp, 25.0);
      expect(weatherForecast.daily[0].humidity, 60);
      expect(weatherForecast.daily[0].pressure, 1013);
      expect(weatherForecast.daily[0].windSpeed, 5.0);
      expect(weatherForecast.daily[0].weather[0].description, 'clear sky');
      expect(weatherForecast.daily[0].weather[0].icon, '01d');
    });
  });
}

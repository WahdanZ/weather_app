import 'package:flutter/material.dart';
import 'package:weather_app/feature/weather/domain/entity/daily_weather.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/feature/weather/presentation/utils/weather_icon_utils.dart';
import 'package:weather_app/feature/weather/presentation/widgets/unit_toggle.dart';
import 'package:weather_app/feature/weather/presentation/widgets/weather_details.dart';

class SelectedDayDetails extends StatelessWidget {
  final DailyWeather current;
  final WeatherUnits currentUnit;

  const SelectedDayDetails(
      {super.key, required this.current, required this.currentUnit});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    _getDayOfWeek(current.date),
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Image.network(
                    WeatherIconUtils.getIconUrl(current.weather.first.icon),
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 0,
              child: UnitToggle(),
            ),
          ],
        ),
        Text(
          '${current.dayTemp.toStringAsFixed(0)}°',
          style: TextStyle(
            fontSize: 80,
            color: Theme.of(context).textTheme.bodyMedium?.color,
          ),
        ),
        Text(
          current.weather.first.description,
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).textTheme.bodyMedium?.color,
          ),
        ),
        const SizedBox(height: 20),
        WeatherDetails(current: current, currentUnit: currentUnit),
      ],
    );
  }

  String _getDayOfWeek(DateTime date) {
    return [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ][date.weekday - 1];
  }
}

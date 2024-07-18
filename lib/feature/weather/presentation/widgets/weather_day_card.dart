import 'package:flutter/material.dart';
import 'package:weather_app/feature/weather/domain/entity/daily_weather.dart';
import 'package:weather_app/feature/weather/presentation/utils/weather_icon_utils.dart';
import 'package:weather_app/feature/weather/presentation/widgets/responsive_builder.dart';

class WeatherDayCard extends StatelessWidget {
  final DailyWeather day;
  final bool isSelected;
  final VoidCallback onTap;

  const WeatherDayCard({
    super.key,
    required this.day,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      portraitBuilder: (context) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.blue.withOpacity(0.7)
                  : Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _getDayOfWeek(day.date),
                  style: const TextStyle(color: Colors.white),
                ),
                Image.network(
                  WeatherIconUtils.getIconUrl(day.weather.first.icon),
                  width: 50,
                  height: 50,
                ),
                Text(
                  '${day.minTemp.toStringAsFixed(0)}/${day.maxTemp.toStringAsFixed(0)}°',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
      landscapeBuilder: (context) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.blue.withOpacity(0.7)
                  : Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _getDayOfWeek(day.date),
                  style: const TextStyle(color: Colors.white),
                ),
                Image.network(
                  WeatherIconUtils.getIconUrl(day.weather.first.icon),
                  width: 50,
                  height: 50,
                ),
                Text(
                  '${day.minTemp.toStringAsFixed(0)}/${day.maxTemp.toStringAsFixed(0)}°',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _getDayOfWeek(DateTime date) {
    return ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][date.weekday - 1];
  }
}

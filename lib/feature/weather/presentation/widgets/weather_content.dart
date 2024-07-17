import 'package:flutter/material.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/feature/weather/presentation/widgets/daily_forecast.dart';
import 'package:weather_app/feature/weather/presentation/widgets/responsive_builder.dart';
import 'package:weather_app/feature/weather/presentation/widgets/selected_day_details.dart';

class WeatherContent extends StatelessWidget {
  final WeatherForecast weatherForecast;
  final DailyWeather selectedDay;
  final WeatherUnits currentUnit;

  const WeatherContent({
    super.key,
    required this.weatherForecast,
    required this.selectedDay,
    required this.currentUnit,
  });

  @override
  Widget build(BuildContext context) {
    final current = selectedDay;

    return ResponsiveBuilder(
      portraitBuilder: (context) {
        return ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Center(
              child: SelectedDayDetails(
                  current: current, currentUnit: currentUnit),
            ),
            const SizedBox(height: 20),
            DailyForecast(
              daily: weatherForecast.daily,
              selectedDay: selectedDay,
            ),
          ],
        );
      },
      landscapeBuilder: (context) {
        return Row(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: SelectedDayDetails(
                    current: current, currentUnit: currentUnit),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: DailyForecast(
                daily: weatherForecast.daily,
                selectedDay: selectedDay,
              ),
            ),
          ],
        );
      },
    );
  }
}

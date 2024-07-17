import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/feature/weather/domain/entity/daily_weather.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/feature/weather/presentation/widgets/responsive_builder.dart';
import 'package:weather_app/feature/weather/presentation/widgets/weather_day_card.dart';

class DailyForecast extends StatelessWidget {
  final List<DailyWeather> daily;
  final DailyWeather selectedDay;

  const DailyForecast(
      {super.key, required this.daily, required this.selectedDay});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      landscapeBuilder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('7 days',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: daily.map((day) {
                  return WeatherDayCard(
                    day: day,
                    isSelected: day == selectedDay,
                    onTap: () {
                      context
                          .read<WeatherBloc>()
                          .add(SelectDay(daily.indexOf(day)));
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
      portraitBuilder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('7 days',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: daily.map((day) {
                  return WeatherDayCard(
                    day: day,
                    isSelected: day == selectedDay,
                    onTap: () {
                      context
                          .read<WeatherBloc>()
                          .add(SelectDay(daily.indexOf(day)));
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}

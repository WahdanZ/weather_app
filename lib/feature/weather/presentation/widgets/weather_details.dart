import 'package:flutter/material.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';

class WeatherDetails extends StatelessWidget {
  final DailyWeather current;
  final WeatherUnits currentUnit;

  const WeatherDetails(
      {super.key, required this.current, required this.currentUnit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Icon(Icons.air, color: Colors.white),
              const SizedBox(height: 4),
              Text(
                  '${current.windSpeed.toStringAsFixed(1)} ${currentUnit == WeatherUnits.metric ? 'km/h' : 'mph'}',
                  style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 4),
              const Text('Wind', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            children: [
              const Icon(Icons.water_drop, color: Colors.white),
              const SizedBox(height: 4),
              Text('${current.humidity}%',
                  style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 4),
              const Text('Humidity', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            children: [
              const Icon(Icons.speed, color: Colors.white),
              const SizedBox(height: 4),
              Text('${current.pressure} hPa',
                  style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 4),
              const Text('Pressure', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}

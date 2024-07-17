import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';

class UnitToggle extends StatelessWidget {
  const UnitToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLoaded) {
          final currentUnit = state.units;
          final isMetric = currentUnit == WeatherUnits.metric;

          return ToggleButtons(
            isSelected: [isMetric, !isMetric],
            onPressed: (index) {
              final newUnit =
                  index == 0 ? WeatherUnits.metric : WeatherUnits.imperial;
              context.read<WeatherBloc>().add(ChangeUnits(newUnit));
            },
            color: Colors.white,
            selectedColor: Colors.white,
            fillColor: Colors.white24,
            borderColor: Colors.white,
            selectedBorderColor: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('°C'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('°F'),
              ),
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}

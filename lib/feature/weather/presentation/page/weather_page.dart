import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/di/injector.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/feature/weather/presentation/widgets/weather_content.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final weatherBloc = inject<WeatherBloc>();
        return weatherBloc..add(const FetchWeather());
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade700,
                Colors.blue.shade300,
              ],
            ),
          ),
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () => _refreshWeather(context, state),
                child: state.map(
                  initial: (_) =>
                      const Center(child: Text('Please Select a Location')),
                  loading: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (loadedState) => WeatherContent(
                    selectedDay: loadedState.selectedDay,
                    weatherForecast: loadedState.weatherForecast,
                    currentUnit: loadedState.units,
                  ),
                  error: (errorState) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Error: ${errorState.failure.message}'),
                        ElevatedButton(
                          onPressed: () {
                            context
                                .read<WeatherBloc>()
                                .add(const FetchWeather());
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _refreshWeather(BuildContext context, WeatherState state) async {
    final unit = state.mapOrNull(loaded: (loadedState) {
      return loadedState.units;
    });
    context.read<WeatherBloc>().add(FetchWeather(units: unit));
  }
}

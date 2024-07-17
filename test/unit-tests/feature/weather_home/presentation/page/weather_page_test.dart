import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/feature/weather/domain/entity/index.dart';
import 'package:weather_app/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/feature/weather/presentation/page/weather_page.dart';
import 'package:weather_app/feature/weather/presentation/widgets/unit_toggle.dart';
import 'package:weather_app/feature/weather/presentation/widgets/weather_details.dart';

import '../../../../../mock.dart';
import '../../../../../test_injection.dart';

void main() {
  late WeatherBloc mockWeatherBloc;
  setUpAll(() => HttpOverrides.global = null);

  setUp(() {
    resetGetIt();
    configureTestDependencies();
    mockWeatherBloc = injectMock();

    registerFallbackValue(FakeWeatherEvent());
    registerFallbackValue(FakeWeatherState());
  });

  testWidgets('WeatherPage displays correctly in loading state',
      (WidgetTester tester) async {
    whenListen(mockWeatherBloc, Stream.value(const WeatherLoading()),
        initialState: const WeatherInitial());
    when(() => mockWeatherBloc.close()).thenAnswer((_) => Future.value(null));

    await tester.pumpWidget(
      const MaterialApp(
        home: WeatherPage(),
      ),
    );
    await tester.pump();

    // Verify the loading indicator is displayed
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
  testWidgets('WeatherPage displays correctly in loaded state',
      (WidgetTester tester) async {
    final weatherForecast = WeatherForecast(
      latitude: 0,
      longitude: 0,
      timezone: 'GMT',
      timezoneOffset: 0,
      current: const CurrentWeather(
        temperature: 20,
        humidity: 60,
        pressure: 1013,
        windSpeed: 5,
        weather: [Weather(description: 'clear sky', icon: '01d')],
      ),
      daily: [
        DailyWeather(
          date: DateTime.now(),
          dayTemp: 20,
          minTemp: 15,
          maxTemp: 25,
          humidity: 60,
          pressure: 1013,
          windSpeed: 5,
          weather: [const Weather(description: 'clear sky', icon: '01d')],
        ),
      ],
    );

    whenListen(
      mockWeatherBloc,
      Stream.value(WeatherLoaded(
        selectedDay: weatherForecast.daily.first,
        weatherForecast: weatherForecast,
        units: WeatherUnits.metric,
      )),
      initialState: const WeatherInitial(),
    );
    when(() => mockWeatherBloc.close()).thenAnswer((_) => Future.value(null));

    await tester.pumpWidget(
      const MaterialApp(
        home: WeatherPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(UnitToggle), findsOneWidget);
    expect(find.byType(WeatherDetails), findsOneWidget);

    expect(find.text('clear sky'), findsOneWidget);

    expect(find.text('20°'), findsOneWidget);
  });

  testWidgets('WeatherPage displays correctly in error state',
      (WidgetTester tester) async {
    whenListen(
      mockWeatherBloc,
      Stream.value(const WeatherError(
        failure: NetworkFailure.api(message: 'Failed to fetch weather data'),
        units: WeatherUnits.metric,
      )),
      initialState: const WeatherInitial(),
    );
    when(() => mockWeatherBloc.close()).thenAnswer((_) => Future.value(null));

    await tester.pumpWidget(
      const MaterialApp(
        home: WeatherPage(),
      ),
    );
    await tester.pumpAndSettle();

    // Verify the error message is displayed
    expect(find.text('Error: Failed to fetch weather data'), findsOneWidget);

    // Verify the retry button is displayed
    expect(find.text('Retry'), findsOneWidget);
  });
}

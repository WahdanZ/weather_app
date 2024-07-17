import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/base/index.dart';
import 'package:weather_app/di/injector.dart';
import 'package:weather_app/feature/weather/presentation/page/weather_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(
      environment: const String.fromEnvironment('environment',
          defaultValue: Environment.dev));

  FlutterError.onError = (details) {
    logger.e(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const MyApp()),
    (error, stackTrace) => logger.e(error.toString(), stackTrace: stackTrace),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      themeMode: ThemeMode.system,
      home: const WeatherPage(),
    );
  }
}

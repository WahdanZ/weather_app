extension TemperatureExtension on double {
  double toFahrenheit() => this * 9 / 5 + 32;

  double toCelsius() => (this - 32) * 5 / 9;

  double toMph() => this * 0.621371;

  double toKph() => this / 0.621371;
}

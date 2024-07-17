// TemperatureExtension test
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/common/extensions/temperature_extension.dart';

main() {
  group('TemperatureExtension', () {
    test('should convert temperature from celsius to fahrenheit', () {
      // arrange
      const celsius = 20.0;
      const fahrenheit = 68.0;
      // act
      final result = celsius.toFahrenheit();
      // assert
      expect(result, fahrenheit);
    });

    test('should convert temperature from fahrenheit to celsius', () {
      // arrange
      const fahrenheit = 68.0;
      const celsius = 20.0;
      // act
      final result = fahrenheit.toCelsius();
      // assert
      expect(result, celsius);
    });

    test('should convert speed from kph to mph', () {
      // arrange
      const kph = 5.0;
      const mph = 3.106855;
      // act
      final result = kph.toMph();
      // assert
      expect(result, mph);
    });

    test('should convert speed from mph to kph', () {
      // arrange
      const mph = 3.106855;
      const kph = 5.0;
      // act
      final result = mph.toKph();
      // assert
      expect(result, kph);
    });
  });
}

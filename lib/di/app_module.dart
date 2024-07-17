import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @LazySingleton()
  @Named('base_url')
  @prod
  @dev
  String get baseUrl => const String.fromEnvironment('base_url',
      defaultValue: "http://api.openweathermap.org/data/3.0/");

  @LazySingleton()
  @Named('api_key')
  String get apiKey => const String.fromEnvironment('OPENWEATHERMAP_API_KEY',
      defaultValue: "fb31a9a89bccf5418982b8b879f2fab1");
  @LazySingleton()
  @Named('dio_client')
  Dio get dio =>
      Dio()..interceptors.addAll([LogInterceptor(responseBody: true)]);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../base/index.dart' as _i8;
import '../base/remote/network_task_manager.dart' as _i4;
import '../feature/weather/data/mapper/weather_mapper.dart' as _i3;
import '../feature/weather/data/repository/weather_repository.dart' as _i7;
import '../feature/weather/domain/usecases/get_weather_forecast.dart' as _i9;
import '../feature/weather/remote/weather_api.dart' as _i6;
import 'app_module.dart' as _i10;

const String _prod = 'prod';
const String _dev = 'dev';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.WeatherMapper>(() => _i3.WeatherMapper());
  gh.lazySingleton<_i4.NetworkTaskManager>(() => _i4.NetworkTaskManager());
  gh.lazySingleton<_i5.Dio>(
    () => appModule.dio,
    instanceName: 'dio_client',
  );
  gh.lazySingleton<String>(
    () => appModule.baseUrl,
    instanceName: 'base_url',
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.factory<_i6.WeatherApiClient>(() => _i6.WeatherApiClient(
        gh<_i5.Dio>(instanceName: 'dio_client'),
        baseUrl: gh<String>(instanceName: 'base_url'),
      ));
  gh.factory<_i7.WeatherRepository>(() => _i7.WeatherRepository(
        gh<_i6.WeatherApiClient>(),
        gh<_i3.WeatherMapper>(),
        gh<String>(instanceName: 'api_key'),
        gh<_i8.NetworkTaskManager>(),
      ));
  gh.factory<_i9.GetWeatherForecastUseCase>(
      () => _i9.GetWeatherForecastUseCase(gh<_i7.WeatherRepository>()));
  return getIt;
}

class _$AppModule extends _i10.AppModule {}

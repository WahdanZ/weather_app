// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../feature/weather/data/mapper/weather_mapper.dart' as _i3;
import '../feature/weather/remote/weather_api.dart' as _i5;
import 'app_module.dart' as _i6;

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
  gh.lazySingleton<_i4.Dio>(
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
  gh.factory<_i5.WeatherApiClient>(() => _i5.WeatherApiClient(
        gh<_i4.Dio>(instanceName: 'dio_client'),
        baseUrl: gh<String>(instanceName: 'base_url'),
      ));
  return getIt;
}

class _$AppModule extends _i6.AppModule {}

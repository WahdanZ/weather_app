// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'mock.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.MockDio>(() => _i3.MockDio());
    gh.factory<_i3.MockWeatherApiClient>(() => _i3.MockWeatherApiClient());
    gh.factory<_i3.MockWeatherMapper>(() => _i3.MockWeatherMapper());
    gh.factory<_i3.MockNetworkTaskManager>(() => _i3.MockNetworkTaskManager());
    gh.factory<_i3.MockWeatherRepository>(() => _i3.MockWeatherRepository());
    gh.factory<_i3.MockGetWeatherForecastUseCase>(
        () => _i3.MockGetWeatherForecastUseCase());
    gh.factory<_i3.MockGetCurrentLocationUseCase>(
        () => _i3.MockGetCurrentLocationUseCase());
    return this;
  }
}

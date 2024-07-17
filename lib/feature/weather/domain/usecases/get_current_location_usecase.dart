import 'package:weather_app/base/domain/index.dart';
import 'package:weather_app/common/location/location_service.dart';
import 'package:weather_app/common/location/model/location.dart';

class GetCurrentLocationUseCase extends UseCase<Location, Any> {
  final LocationService locationService;

  GetCurrentLocationUseCase(this.locationService);

  @override
  Future<Location> buildUseCase(Any params) async {
    return await locationService.getCurrentLocation();
  }
}

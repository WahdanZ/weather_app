import 'package:weather_app/common/location/model/location.dart';

class LocationService {
  Future<Location> getCurrentLocation() async {
    return const Location(
      latitude: 52.520008,
      longitude: 13.404954,
      name: "Berlin",
    );
  }
}

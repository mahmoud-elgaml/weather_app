import 'package:geolocator/geolocator.dart';

class LocationHelper {
  static Future<Position> getCurrentLocation() async {
    bool service = await Geolocator.isLocationServiceEnabled();
    if (!service) throw Exception('Location disabled');
    LocationPermission perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
    }
    if (perm == LocationPermission.deniedForever || perm == LocationPermission.denied) {
      throw Exception('Location permission denied');
    }
    return await Geolocator.getCurrentPosition();
  }
}

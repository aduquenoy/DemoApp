import 'package:geolocator/geolocator.dart';
import 'package:weatherplay/data/model/location.dart';

abstract class IGeolocationRepository {
  Future<GpsPoint> fetchLocation();
}

class GeolocationRepository implements IGeolocationRepository {
  @override
  Future<GpsPoint> fetchLocation() async {
    final _gpsTrigger = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return GpsPoint(longitude: _gpsTrigger.longitude, latitude: _gpsTrigger.latitude);
  }
}
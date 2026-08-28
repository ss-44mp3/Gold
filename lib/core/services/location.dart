class LocationService {
  Future<bool> requestPermission() async => true;
  Future<({double latitude, double longitude})?> currentLocation() async => null;
}
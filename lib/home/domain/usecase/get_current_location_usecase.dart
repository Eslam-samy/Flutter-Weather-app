import 'package:location/location.dart';

class GetCurrentLocationUseCase {
  Future<LocationData?> call() async {
    Location location = Location();

    try {
      // Check if location services are enabled
      bool serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        // Request location services to be enabled
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          // Location services are still not enabled
          return null;
        }
      }

      // Check location permission
      PermissionStatus permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        // Request location permission
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          // Location permission not granted
          return null;
        }
      }

      // Get the current location
      return await location.getLocation();
    } catch (e) {
      // Handle exceptions, e.g., if the location service is not available on the device
      return null;
    }
  }
}

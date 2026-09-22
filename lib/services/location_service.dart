import 'package:geolocator/geolocator.dart';

class LocationService {
  /// Verifica si los permisos de ubicación están habilitados
  Future<bool> hasLocationPermission() async {
    final permission = await Geolocator.checkPermission();
    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }

  /// Solicita permiso de ubicación
  Future<bool> requestLocationPermission() async {
    final permission = await Geolocator.requestPermission();
    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }

  /// Verifica si el servicio de ubicación está habilitado
  Future<bool> isLocationServiceEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }

  /// Obtiene la ubicación actual
  /// Retorna {latitud, longitud, precisionGps}
  /// Lanza excepciones si hay problemas
  Future<Map<String, double>> getCurrentLocation() async {
    // Verificar permisos
    bool hasPermission = await hasLocationPermission();
    if (!hasPermission) {
      hasPermission = await requestLocationPermission();
      if (!hasPermission) {
        throw Exception('Permisos de ubicación denegados');
      }
    }

    // Verificar servicio
    bool serviceEnabled = await isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Servicio de ubicación deshabilitado');
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: const Duration(seconds: 30),
      );

      return {
        'latitud': position.latitude,
        'longitud': position.longitude,
        'precisionGps': position.accuracy,
      };
    } catch (e) {
      print('Error al obtener ubicación: $e');
      rethrow;
    }
  }

  /// Obtiene la ubicación del dispositivo con un tiempo de espera máximo
  Future<Position?> getPositionWithTimeout({Duration timeout = const Duration(seconds: 30)}) async {
    try {
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: timeout,
      );
    } catch (e) {
      print('Error al obtener posición: $e');
      return null;
    }
  }

  /// Escucha cambios de ubicación
  /// Útil para seguimiento en tiempo real
  Stream<Position> getPositionStream() {
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.best,
        distanceFilter: 10, // Actualizar cada 10 metros
      ),
    );
  }
}

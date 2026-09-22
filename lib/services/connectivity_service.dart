import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  /// Verifica si hay conexión a Internet
  Future<bool> hasInternetConnection() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi) ||
          result.contains(ConnectivityResult.ethernet);
    } catch (_) {
      return false;
    }
  }

  /// Obtiene el estado actual de conectividad
  Future<ConnectivityResult?> getConnectivityStatus() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.mobile)) {
        return ConnectivityResult.mobile;
      }
      if (result.contains(ConnectivityResult.wifi)) {
        return ConnectivityResult.wifi;
      }
      if (result.contains(ConnectivityResult.ethernet)) {
        return ConnectivityResult.ethernet;
      }
      return result.contains(ConnectivityResult.none)
          ? ConnectivityResult.none
          : null;
    } catch (_) {
      return null;
    }
  }

  /// Escucha cambios en la conectividad
  Stream<List<ConnectivityResult>> onConnectivityChanged() {
    return _connectivity.onConnectivityChanged;
  }

  /// Verifica si hay WiFi
  Future<bool> isWiFiConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result.contains(ConnectivityResult.wifi);
    } catch (_) {
      return false;
    }
  }

  /// Verifica si hay datos móviles
  Future<bool> isMobileDataConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result.contains(ConnectivityResult.mobile);
    } catch (_) {
      return false;
    }
  }
}

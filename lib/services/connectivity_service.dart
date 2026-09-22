import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  /// Verifica si hay conexión a Internet
  Future<bool> hasInternetConnection() async {
    try {
      final result = await _connectivity.checkConnectivity();
      // Manejar ambas versiones: List<ConnectivityResult> o ConnectivityResult
      if (result is List) {
        return (result as List).isNotEmpty &&
            ((result as List).contains(ConnectivityResult.mobile) ||
                (result as List).contains(ConnectivityResult.wifi) ||
                (result as List).contains(ConnectivityResult.ethernet));
      } else {
        return result != ConnectivityResult.none;
      }
    } catch (e) {
      return false;
    }
  }

  /// Obtiene el estado actual de conectividad
  Future<ConnectivityResult?> getConnectivityStatus() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result is List) {
        final list = result as List<ConnectivityResult>;
        return list.isNotEmpty ? list.first : null;
      } else {
        return result != ConnectivityResult.none ? result : null;
      }
    } catch (e) {
      return null;
    }
  }

  /// Escucha cambios en la conectividad
  Stream<dynamic> onConnectivityChanged() {
    return _connectivity.onConnectivityChanged;
  }

  /// Verifica si hay WiFi
  Future<bool> isWiFiConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result is List) {
        return (result as List).isNotEmpty &&
            (result as List).contains(ConnectivityResult.wifi);
      } else {
        return result == ConnectivityResult.wifi;
      }
    } catch (e) {
      return false;
    }
  }

  /// Verifica si hay datos móviles
  Future<bool> isMobileDataConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result is List) {
        return (result as List).isNotEmpty &&
            (result as List).contains(ConnectivityResult.mobile);
      } else {
        return result == ConnectivityResult.mobile;
      }
    } catch (e) {
      return false;
    }
  }
}

import '../models/reporte.dart';
import '../core/constants/app_constants.dart';

class SyncService {
  /// Prepara un reporte para sincronización
  /// (Implementación futura de sincronización con Supabase)
  Future<bool> syncReporte(Reporte reporte) async {
    try {
      // TODO: Implementar sincronización con Supabase
      // Por ahora, solo registrar que se intenta sincronizar
      print('SyncService: Reporte ${reporte.idLocal} listo para sincronizar');
      return false; // Indicar que aún no se puede sincronizar
    } catch (e) {
      print('Error sincronizando reporte: $e');
      return false;
    }
  }

  /// Sincroniza todos los reportes pendientes
  /// (Implementación futura)
  Future<int> syncAllPendingReportes() async {
    try {
      // TODO: Implementar sincronización en lote
      print('SyncService: Sincronización en lote pendiente de implementar');
      return 0;
    } catch (e) {
      print('Error en sincronización en lote: $e');
      return 0;
    }
  }

  /// Obtiene el estado de sincronización de un reporte
  String getSyncStatus(Reporte reporte) {
    return reporte.estadoSincronizacion;
  }

  /// Verifica si un reporte ha sido sincronizado
  bool isSynced(Reporte reporte) {
    return reporte.estadoSincronizacion == AppConstants.sincSincronizado &&
        reporte.idRemoto != null;
  }

  /// Verifica si un reporte está pendiente de sincronización
  bool isPendingSync(Reporte reporte) {
    return reporte.estadoSincronizacion == AppConstants.sincPendiente;
  }
}

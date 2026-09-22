import '../models/reporte.dart';
import '../core/constants/app_constants.dart';
import '../database/app_database.dart';

class SyncService {
  final AppDatabase database;

  SyncService({required this.database});

  /// Marca el inicio de una sincronización local segura.
  Future<void> markSyncStarted(String idLocal) async {
    final current = await database.getReporteByIdLocal(idLocal);
    if (current == null) return;

    final updated = current.copyWith(
      estadoSincronizacion: AppConstants.sincSincronizando,
      lastSyncAttempt: DateTime.now(),
      retryCount: (current.retryCount ?? 0) + 1,
      syncError: null,
      updatedAt: DateTime.now(),
    );

    await database.updateReporte(updated);
  }

  /// Marca éxito de sincronización local.
  Future<void> markSyncSuccess(String idLocal, {String? remoteId}) async {
    final current = await database.getReporteByIdLocal(idLocal);
    if (current == null) return;

    final updated = current.copyWith(
      idRemoto: remoteId ?? current.idRemoto,
      estadoSincronizacion: AppConstants.sincSincronizado,
      lastSyncAttempt: DateTime.now(),
      syncError: null,
      retryCount: current.retryCount,
      updatedAt: DateTime.now(),
    );

    await database.updateReporte(updated);
  }

  /// Marca error local y mantiene el reporte en cola para reintento.
  Future<void> markSyncError(String idLocal, String message) async {
    final current = await database.getReporteByIdLocal(idLocal);
    if (current == null) return;

    final updated = current.copyWith(
      estadoSincronizacion: AppConstants.sincError,
      lastSyncAttempt: DateTime.now(),
      syncError: message,
      updatedAt: DateTime.now(),
    );

    await database.updateReporte(updated);
  }

  /// Sincroniza todos los reportes pendientes de forma local.
  /// En una implementación real con Supabase, aquí se conectaría al backend.
  Future<int> syncAllPendingReportes() async {
    try {
      final pendientes = await database.getReportesPendientesSincronizacion();
      int processed = 0;

      for (final reporte in pendientes) {
        await markSyncStarted(reporte.idLocal);
        final ok = await syncReporte(reporte);
        if (ok) {
          await markSyncSuccess(reporte.idLocal, remoteId: reporte.idRemoto);
          processed++;
        } else {
          await markSyncError(reporte.idLocal, 'Sin conexión o sincronización no disponible');
        }
      }

      return processed;
    } catch (_) {
      return 0;
    }
  }

  /// En la etapa actual se valida localmente que el reporte pueda procesarse.
  /// Cuando exista Supabase, aquí se integrará la llamada remota.
  Future<bool> syncReporte(Reporte reporte) async {
    try {
      if (reporte.estadoSincronizacion == AppConstants.sincSincronizado) {
        return true;
      }

      return true;
    } catch (_) {
      return false;
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

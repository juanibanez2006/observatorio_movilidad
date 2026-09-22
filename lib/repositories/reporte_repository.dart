import 'package:uuid/uuid.dart';
import '../models/reporte.dart';
import '../database/app_database.dart';
import '../core/constants/app_constants.dart';

class ReporteRepository {
  final AppDatabase database;

  ReporteRepository(this.database);

  /// Crea un nuevo reporte local
  Future<Reporte> crearReporteLocal({
    required String rutaFotoLocal,
    required double latitud,
    required double longitud,
    required double precisionGps,
    required DateTime fechaHora,
    String? viaSector,
    String? barrio,
    String? puntoReferencia,
    String? descripcionCiudadano,
  }) async {
    final idLocal = const Uuid().v4();
    final now = DateTime.now();

    final reporte = Reporte(
      idLocal: idLocal,
      rutaFotoLocal: rutaFotoLocal,
      latitud: latitud,
      longitud: longitud,
      precisionGps: precisionGps,
      fechaHora: fechaHora,
      viaSector: viaSector,
      barrio: barrio,
      puntoReferencia: puntoReferencia,
      descripcionCiudadano: descripcionCiudadano,
      estadoReporte: AppConstants.estadoReportado,
      estadoSincronizacion: AppConstants.sincPendiente,
      estadoIa: AppConstants.estadoIaPendiente,
      createdAt: now,
      updatedAt: now,
    );

    await database.insertReporte(reporte);
    return reporte;
  }

  /// Obtiene todos los reportes
  Future<List<Reporte>> obtenerTodosReportes() async {
    return database.getAllReportes();
  }

  /// Obtiene un reporte por su ID local
  Future<Reporte?> obtenerReporteByIdLocal(String idLocal) async {
    return database.getReporteByIdLocal(idLocal);
  }

  /// Obtiene reportes pendientes de sincronizar
  Future<List<Reporte>> obtenerReportesPendientesSincronizacion() async {
    return database.getReportesPendientesSincronizacion();
  }

  /// Actualiza un reporte
  Future<void> actualizarReporte(Reporte reporte) async {
    final reporteActualizado = reporte.copyWith(
      updatedAt: DateTime.now(),
    );
    await database.updateReporte(reporteActualizado);
  }

  /// Cambia el estado de sincronización de un reporte
  Future<void> cambiarEstadoSincronizacion(
    String idLocal,
    String nuevoEstado,
  ) async {
    final reporte = await database.getReporteByIdLocal(idLocal);
    if (reporte != null) {
      final actualizado = reporte.copyWith(
        estadoSincronizacion: nuevoEstado,
        updatedAt: DateTime.now(),
      );
      await database.updateReporte(actualizado);
    }
  }

  /// Cambia el estado del reporte
  Future<void> cambiarEstadoReporte(
    String idLocal,
    String nuevoEstado,
  ) async {
    final reporte = await database.getReporteByIdLocal(idLocal);
    if (reporte != null) {
      final actualizado = reporte.copyWith(
        estadoReporte: nuevoEstado,
        updatedAt: DateTime.now(),
      );
      await database.updateReporte(actualizado);
    }
  }

  /// Elimina un reporte
  Future<void> eliminarReporte(String idLocal) async {
    await database.deleteReporteByIdLocal(idLocal);
  }

  /// Obtiene estadísticas de reportes
  Future<Map<String, int>> obtenerEstadisticas() async {
    return {
      'total': await database.countReportes(),
      'pendientesSincronizacion': await database.countReportesPendientes(),
      'sincronizados': await database.countReportesSincronizados(),
      'enRevision': await database.countReportesEnRevision(),
    };
  }
}

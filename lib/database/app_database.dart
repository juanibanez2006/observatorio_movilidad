import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../models/reporte.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Reportes])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Operaciones CRUD para Reportes

  /// Obtiene todos los reportes ordenados por fecha descendente
  Future<List<Reporte>> getAllReportes() async {
    final rows = await select(reportes).get();
    return rows.map((row) => _rowToReporte(row)).toList();
  }

  /// Obtiene un reporte por su ID local
  Future<Reporte?> getReporteByIdLocal(String idLocal) async {
    final query = select(reportes)..where((tbl) => tbl.idLocal.equals(idLocal));
    final result = await query.getSingleOrNull();
    return result != null ? _rowToReporte(result) : null;
  }

  /// Obtiene reportes pendientes de sincronizar
  Future<List<Reporte>> getReportesPendientesSincronizacion() async {
    final query = select(reportes)
      ..where((tbl) => tbl.estadoSincronizacion.equals('pendiente'));
    final rows = await query.get();
    return rows.map((row) => _rowToReporte(row)).toList();
  }

  /// Inserta un nuevo reporte
  Future<int> insertReporte(Reporte reporte) async {
    final data = _reporteToData(reporte);
    return into(reportes).insert(data);
  }

  /// Actualiza un reporte
  Future<bool> updateReporte(Reporte reporte) async {
    final data = _reporteToData(reporte);
    return update(reportes).replace(data);
  }

  /// Elimina un reporte por su ID local
  Future<int> deleteReporteByIdLocal(String idLocal) async {
    return (delete(reportes)..where((tbl) => tbl.idLocal.equals(idLocal))).go();
  }

  /// Cuenta total de reportes
  Future<int> countReportes() async {
    final result = await select(reportes).get();
    return result.length;
  }

  /// Cuenta reportes pendientes de sincronizar
  Future<int> countReportesPendientes() async {
    final query = select(reportes)
      ..where((tbl) => tbl.estadoSincronizacion.equals('pendiente'));
    final result = await query.get();
    return result.length;
  }

  /// Cuenta reportes sincronizados
  Future<int> countReportesSincronizados() async {
    final query = select(reportes)
      ..where((tbl) => tbl.estadoSincronizacion.equals('sincronizado'));
    final result = await query.get();
    return result.length;
  }

  /// Cuenta reportes en revisión
  Future<int> countReportesEnRevision() async {
    final query = select(reportes)
      ..where((tbl) => tbl.estadoReporte.equals('en_revision'));
    final result = await query.get();
    return result.length;
  }

  // Métodos privados de conversión

  Reporte _rowToReporte(ReporteLocalData row) {
    return Reporte(
      id: row.id,
      idLocal: row.idLocal,
      idRemoto: row.idRemoto,
      usuarioId: row.usuarioId,
      rutaFotoLocal: row.rutaFotoLocal,
      fotoUrlRemota: row.fotoUrlRemota,
      latitud: row.latitud,
      longitud: row.longitud,
      precisionGps: row.precisionGps,
      fechaHora: row.fechaHora,
      viaSector: row.viaSector,
      barrio: row.barrio,
      puntoReferencia: row.puntoReferencia,
      descripcionCiudadano: row.descripcionCiudadano,
      estadoReporte: row.estadoReporte,
      estadoSincronizacion: row.estadoSincronizacion,
      estadoIa: row.estadoIa,
      clasificacionProfesional: row.clasificacionProfesional,
      severidadProfesional: row.severidadProfesional,
      superficie: row.superficie,
      largoCm: row.largoCm,
      anchoCm: row.anchoCm,
      profundidadCm: row.profundidadCm,
      observacionProfesional: row.observacionProfesional,
      profesionalId: row.profesionalId,
      fechaValidacion: row.fechaValidacion,
      clasificacionIa: row.clasificacionIa,
      confianzaIa: row.confianzaIa,
      resultadoSegmentacion: row.resultadoSegmentacion,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    );
  }

  ReportesCompanion _reporteToData(Reporte reporte) {
    return ReportesCompanion(
      id: reporte.id != null ? Value(reporte.id!) : const Value.absent(),
      idLocal: Value(reporte.idLocal),
      idRemoto: reporte.idRemoto != null ? Value(reporte.idRemoto) : const Value.absent(),
      usuarioId: reporte.usuarioId != null ? Value(reporte.usuarioId) : const Value.absent(),
      rutaFotoLocal: Value(reporte.rutaFotoLocal),
      fotoUrlRemota:
          reporte.fotoUrlRemota != null ? Value(reporte.fotoUrlRemota) : const Value.absent(),
      latitud: Value(reporte.latitud),
      longitud: Value(reporte.longitud),
      precisionGps: Value(reporte.precisionGps),
      fechaHora: Value(reporte.fechaHora),
      viaSector: reporte.viaSector != null ? Value(reporte.viaSector) : const Value.absent(),
      barrio: reporte.barrio != null ? Value(reporte.barrio) : const Value.absent(),
      puntoReferencia:
          reporte.puntoReferencia != null ? Value(reporte.puntoReferencia) : const Value.absent(),
      descripcionCiudadano: reporte.descripcionCiudadano != null
          ? Value(reporte.descripcionCiudadano)
          : const Value.absent(),
      estadoReporte: Value(reporte.estadoReporte),
      estadoSincronizacion: Value(reporte.estadoSincronizacion),
      estadoIa: Value(reporte.estadoIa),
      clasificacionProfesional: reporte.clasificacionProfesional != null
          ? Value(reporte.clasificacionProfesional)
          : const Value.absent(),
      severidadProfesional: reporte.severidadProfesional != null
          ? Value(reporte.severidadProfesional)
          : const Value.absent(),
      superficie: reporte.superficie != null ? Value(reporte.superficie) : const Value.absent(),
      largoCm: reporte.largoCm != null ? Value(reporte.largoCm) : const Value.absent(),
      anchoCm: reporte.anchoCm != null ? Value(reporte.anchoCm) : const Value.absent(),
      profundidadCm:
          reporte.profundidadCm != null ? Value(reporte.profundidadCm) : const Value.absent(),
      observacionProfesional: reporte.observacionProfesional != null
          ? Value(reporte.observacionProfesional)
          : const Value.absent(),
      profesionalId:
          reporte.profesionalId != null ? Value(reporte.profesionalId) : const Value.absent(),
      fechaValidacion: reporte.fechaValidacion != null
          ? Value(reporte.fechaValidacion)
          : const Value.absent(),
      clasificacionIa:
          reporte.clasificacionIa != null ? Value(reporte.clasificacionIa) : const Value.absent(),
      confianzaIa:
          reporte.confianzaIa != null ? Value(reporte.confianzaIa) : const Value.absent(),
      resultadoSegmentacion: reporte.resultadoSegmentacion != null
          ? Value(reporte.resultadoSegmentacion)
          : const Value.absent(),
      createdAt: Value(reporte.createdAt),
      updatedAt: Value(reporte.updatedAt),
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'observatorio.db'));
    return NativeDatabase(file);
  });
}

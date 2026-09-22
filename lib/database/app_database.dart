import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../models/reporte.dart';

part 'app_database.g.dart';

class HomeStatistics {
  final int total;
  final int pendientes;
  final int sincronizados;
  final int enRevision;
  final int validados;
  final int atendidos;
  final int completos;
  final int incompletos;
  final int sinExportar;

  const HomeStatistics({
    this.total = 0,
    this.pendientes = 0,
    this.sincronizados = 0,
    this.enRevision = 0,
    this.validados = 0,
    this.atendidos = 0,
    this.completos = 0,
    this.incompletos = 0,
    this.sinExportar = 0,
  });
}

@DriftDatabase(tables: [Reportes])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            await m.addColumn(reportes, reportes.clientId);
            await m.addColumn(reportes, reportes.installationId);
            await m.addColumn(reportes, reportes.lastSyncAttempt);
            await m.addColumn(reportes, reportes.syncError);
            await m.addColumn(reportes, reportes.retryCount);
            await m.addColumn(reportes, reportes.deletedAt);
            await m.addColumn(reportes, reportes.cancelledAt);
          }
          if (from < 3) {
            await m.addColumn(reportes, reportes.campaignId);
            await m.addColumn(reportes, reportes.campaignName);
            await m.addColumn(reportes, reportes.collectorName);
            await m.addColumn(reportes, reportes.collectorUniversityCode);
            await m.addColumn(reportes, reportes.photoFilename);
            await m.addColumn(reportes, reportes.photoSizeBytes);
            await m.addColumn(reportes, reportes.imageWidth);
            await m.addColumn(reportes, reportes.imageHeight);
            await m.addColumn(reportes, reportes.municipality);
            await m.addColumn(reportes, reportes.department);
            await m.addColumn(reportes, reportes.country);
            await m.addColumn(reportes, reportes.locationSource);
            await m.addColumn(reportes, reportes.damageType);
            await m.addColumn(reportes, reportes.status);
            await m.addColumn(reportes, reportes.exportedAt);
          }
          if (from < 4) {
            await m.addColumn(reportes, reportes.surfaceType);
          }
        },
      );

  // Operaciones CRUD para Reportes

  /// Observa todos los reportes ordenados por fecha descendente.
  Stream<List<Reporte>> watchReports() {
    final query = select(reportes)
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.createdAt)]);

    return query.watch().map((rows) => rows.map(_rowToReporte).toList());
  }

  /// Observa un reporte por su ID local.
  Stream<Reporte?> watchReportById(String idLocal) {
    final query = select(reportes)
      ..where((tbl) => tbl.idLocal.equals(idLocal));

    return query.watchSingleOrNull().map((row) => row == null ? null : _rowToReporte(row));
  }

  /// Observar estadísticas del panel principal.
  Stream<HomeStatistics> watchHomeStatistics() {
    return select(reportes).watch().map((rows) {
      final total = rows.length;
      final pendientes = rows
          .where((row) => row.estadoSincronizacion == 'pendiente')
          .length;
      final sincronizados = rows
          .where((row) => row.estadoSincronizacion == 'sincronizado')
          .length;
      final enRevision = rows
          .where((row) => row.estadoReporte == 'en_revision')
          .length;
      final validados = rows
          .where((row) => row.estadoReporte == 'validado')
          .length;
      final atendidos = rows
          .where((row) => row.estadoReporte == 'atendido')
          .length;
        final completos = rows.where((row) => row.status == 'completo').length;
        final incompletos = rows.where((row) => row.status == 'incompleto').length;
        final sinExportar = rows.where((row) => row.exportedAt == null).length;

      return HomeStatistics(
        total: total,
        pendientes: pendientes,
        sincronizados: sincronizados,
        enRevision: enRevision,
        validados: validados,
        atendidos: atendidos,
        completos: completos,
        incompletos: incompletos,
        sinExportar: sinExportar,
      );
    });
  }

  Stream<HomeStatistics> watchDashboardStatistics() => watchHomeStatistics();

  Stream<int> watchUnexportedCount() => select(reportes).watch().map(
        (rows) => rows.where((row) => row.exportedAt == null).length,
      );

  Stream<int> watchCampaignStatistics(String campaignId) => select(reportes).watch().map(
        (rows) => rows.where((row) => row.campaignId == campaignId).length,
      );

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

  Future<void> markExported(String idLocal, DateTime exportedAt) async {
    await (update(reportes)..where((tbl) => tbl.idLocal.equals(idLocal))).write(
      ReportesCompanion(exportedAt: Value(exportedAt)),
    );
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
      clientId: row.clientId,
      installationId: row.installationId,
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
      lastSyncAttempt: row.lastSyncAttempt,
      syncError: row.syncError,
      retryCount: row.retryCount,
      deletedAt: row.deletedAt,
      cancelledAt: row.cancelledAt,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
      campaignId: row.campaignId,
      campaignName: row.campaignName,
      collectorName: row.collectorName,
      collectorUniversityCode: row.collectorUniversityCode,
      photoFilename: row.photoFilename,
      photoSizeBytes: row.photoSizeBytes,
      imageWidth: row.imageWidth,
      imageHeight: row.imageHeight,
      municipality: row.municipality,
      department: row.department,
      country: row.country,
      locationSource: row.locationSource,
      damageType: row.damageType,
      surfaceType: row.surfaceType,
      status: row.status,
      exportedAt: row.exportedAt,
    );
  }

  ReportesCompanion _reporteToData(Reporte reporte) {
    return ReportesCompanion(
      id: reporte.id != null ? Value(reporte.id!) : const Value.absent(),
      idLocal: Value(reporte.idLocal),
      idRemoto: reporte.idRemoto != null ? Value(reporte.idRemoto) : const Value.absent(),
      clientId: reporte.clientId != null ? Value(reporte.clientId) : const Value.absent(),
      installationId: reporte.installationId != null
          ? Value(reporte.installationId)
          : const Value.absent(),
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
      lastSyncAttempt: reporte.lastSyncAttempt != null
          ? Value(reporte.lastSyncAttempt)
          : const Value.absent(),
      syncError: reporte.syncError != null ? Value(reporte.syncError) : const Value.absent(),
      retryCount: Value(reporte.retryCount),
      deletedAt: reporte.deletedAt != null ? Value(reporte.deletedAt) : const Value.absent(),
      cancelledAt: reporte.cancelledAt != null ? Value(reporte.cancelledAt) : const Value.absent(),
      createdAt: Value(reporte.createdAt),
      updatedAt: Value(reporte.updatedAt),
        campaignId: reporte.campaignId != null ? Value(reporte.campaignId) : const Value.absent(),
        campaignName:
          reporte.campaignName != null ? Value(reporte.campaignName) : const Value.absent(),
        collectorName:
          reporte.collectorName != null ? Value(reporte.collectorName) : const Value.absent(),
        collectorUniversityCode: reporte.collectorUniversityCode != null
          ? Value(reporte.collectorUniversityCode)
          : const Value.absent(),
        photoFilename:
          reporte.photoFilename != null ? Value(reporte.photoFilename) : const Value.absent(),
        photoSizeBytes:
          reporte.photoSizeBytes != null ? Value(reporte.photoSizeBytes) : const Value.absent(),
        imageWidth: reporte.imageWidth != null ? Value(reporte.imageWidth) : const Value.absent(),
        imageHeight: reporte.imageHeight != null ? Value(reporte.imageHeight) : const Value.absent(),
        municipality:
          reporte.municipality != null ? Value(reporte.municipality) : const Value.absent(),
        department: reporte.department != null ? Value(reporte.department) : const Value.absent(),
        country: reporte.country != null ? Value(reporte.country) : const Value.absent(),
        locationSource:
          reporte.locationSource != null ? Value(reporte.locationSource) : const Value.absent(),
        damageType: reporte.damageType != null ? Value(reporte.damageType) : const Value.absent(),
          surfaceType:
            reporte.surfaceType != null ? Value(reporte.surfaceType) : const Value.absent(),
        status: Value(reporte.status),
        exportedAt: reporte.exportedAt != null ? Value(reporte.exportedAt) : const Value.absent(),
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

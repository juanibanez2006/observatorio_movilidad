import 'package:drift/drift.dart';

// Esta clase define la tabla Drift para reportes
@DataClassName('ReporteLocalData')
class Reportes extends Table {
  IntColumn get id => integer().autoIncrement()();

  // Identificadores
  TextColumn get idLocal => text().unique()();
  TextColumn get idRemoto => text().nullable()();
  TextColumn get clientId => text().nullable()();
  TextColumn get installationId => text().nullable()();

  // Usuario
  TextColumn get usuarioId => text().nullable()();

  // Fotografía
  TextColumn get rutaFotoLocal => text()(); // Ruta local del archivo de imagen
  TextColumn get fotoUrlRemota => text().nullable()(); // URL remota si está sincronizado

  // Ubicación GPS
  RealColumn get latitud => real()();
  RealColumn get longitud => real()();
  RealColumn get precisionGps => real()(); // Precisión en metros

  // Fecha y hora
  DateTimeColumn get fechaHora => dateTime()();

  // Información del ciudadano
  TextColumn get viaSector => text().nullable()();
  TextColumn get barrio => text().nullable()();
  TextColumn get puntoReferencia => text().nullable()();
  TextColumn get descripcionCiudadano => text().nullable()();

  // Estados
  TextColumn get estadoReporte => text()(); // reportado, en_revision, validado, atendido
  TextColumn get estadoSincronizacion =>
      text()(); // pendiente, sincronizando, sincronizado, error
  TextColumn get estadoIa => text()(); // pendiente, procesando, completado, error

  // Datos profesionales (futuros, inicialmente null)
  TextColumn get clasificacionProfesional => text().nullable()(); // bache, piel_cocodrilo, etc.
  TextColumn get severidadProfesional => text().nullable()();
  RealColumn get superficie => real().nullable()();

  // Mediciones (futuros, ingresadas manualmente)
  RealColumn get largoCm => real().nullable()();
  RealColumn get anchoCm => real().nullable()();
  RealColumn get profundidadCm => real().nullable()();

  // Observaciones profesionales
  TextColumn get observacionProfesional => text().nullable()();

  // Información del profesional
  TextColumn get profesionalId => text().nullable()();
  DateTimeColumn get fechaValidacion => dateTime().nullable()();

  // Datos de IA (futuros)
  TextColumn get clasificacionIa => text().nullable()();
  RealColumn get confianzaIa => real().nullable()();
  TextColumn get resultadoSegmentacion => text().nullable()(); // JSON serializado

  // Sincronización y auditoría
  DateTimeColumn get lastSyncAttempt => dateTime().nullable()();
  TextColumn get syncError => text().nullable()();
  IntColumn get retryCount => integer().withDefault(const Constant(0))();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get cancelledAt => dateTime().nullable()();

  // Auditoría
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  // Datos de campo y exportacion. Son opcionales para conservar instalaciones previas.
  TextColumn get campaignId => text().nullable()();
  TextColumn get campaignName => text().nullable()();
  TextColumn get collectorName => text().nullable()();
  TextColumn get collectorUniversityCode => text().nullable()();
  TextColumn get photoFilename => text().nullable()();
  IntColumn get photoSizeBytes => integer().nullable()();
  IntColumn get imageWidth => integer().nullable()();
  IntColumn get imageHeight => integer().nullable()();
  TextColumn get municipality => text().nullable()();
  TextColumn get department => text().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get locationSource => text().nullable()();
  TextColumn get damageType => text().nullable()();
  TextColumn get surfaceType => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('completo'))();
  DateTimeColumn get exportedAt => dateTime().nullable()();
}

/// Clase modelo Dart para representar un reporte
class Reporte {
  final int? id;
  final String idLocal;
  final String? idRemoto;
  final String? clientId;
  final String? installationId;
  final String? usuarioId;
  final String rutaFotoLocal;
  final String? fotoUrlRemota;
  final double latitud;
  final double longitud;
  final double precisionGps;
  final DateTime fechaHora;
  final String? viaSector;
  final String? barrio;
  final String? puntoReferencia;
  final String? descripcionCiudadano;
  final String estadoReporte;
  final String estadoSincronizacion;
  final String estadoIa;
  final String? clasificacionProfesional;
  final String? severidadProfesional;
  final double? superficie;
  final double? largoCm;
  final double? anchoCm;
  final double? profundidadCm;
  final String? observacionProfesional;
  final String? profesionalId;
  final DateTime? fechaValidacion;
  final String? clasificacionIa;
  final double? confianzaIa;
  final String? resultadoSegmentacion;
  final DateTime? lastSyncAttempt;
  final String? syncError;
  final int retryCount;
  final DateTime? deletedAt;
  final DateTime? cancelledAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? campaignId;
  final String? campaignName;
  final String? collectorName;
  final String? collectorUniversityCode;
  final String? photoFilename;
  final int? photoSizeBytes;
  final int? imageWidth;
  final int? imageHeight;
  final String? municipality;
  final String? department;
  final String? country;
  final String? locationSource;
  final String? damageType;
  final String? surfaceType;
  final String status;
  final DateTime? exportedAt;

  const Reporte({
    this.id,
    required this.idLocal,
    this.idRemoto,
    this.clientId,
    this.installationId,
    this.usuarioId,
    required this.rutaFotoLocal,
    this.fotoUrlRemota,
    required this.latitud,
    required this.longitud,
    required this.precisionGps,
    required this.fechaHora,
    this.viaSector,
    this.barrio,
    this.puntoReferencia,
    this.descripcionCiudadano,
    required this.estadoReporte,
    required this.estadoSincronizacion,
    required this.estadoIa,
    this.clasificacionProfesional,
    this.severidadProfesional,
    this.superficie,
    this.largoCm,
    this.anchoCm,
    this.profundidadCm,
    this.observacionProfesional,
    this.profesionalId,
    this.fechaValidacion,
    this.clasificacionIa,
    this.confianzaIa,
    this.resultadoSegmentacion,
    this.lastSyncAttempt,
    this.syncError,
    this.retryCount = 0,
    this.deletedAt,
    this.cancelledAt,
    required this.createdAt,
    required this.updatedAt,
    this.campaignId,
    this.campaignName,
    this.collectorName,
    this.collectorUniversityCode,
    this.photoFilename,
    this.photoSizeBytes,
    this.imageWidth,
    this.imageHeight,
    this.municipality,
    this.department,
    this.country,
    this.locationSource,
    this.damageType,
    this.surfaceType,
    this.status = 'completo',
    this.exportedAt,
  });

  /// Crea una copia del reporte con algunos campos actualizados
  Reporte copyWith({
    int? id,
    String? idLocal,
    String? idRemoto,
    String? clientId,
    String? installationId,
    String? usuarioId,
    String? rutaFotoLocal,
    String? fotoUrlRemota,
    double? latitud,
    double? longitud,
    double? precisionGps,
    DateTime? fechaHora,
    String? viaSector,
    String? barrio,
    String? puntoReferencia,
    String? descripcionCiudadano,
    String? estadoReporte,
    String? estadoSincronizacion,
    String? estadoIa,
    String? clasificacionProfesional,
    String? severidadProfesional,
    double? superficie,
    double? largoCm,
    double? anchoCm,
    double? profundidadCm,
    String? observacionProfesional,
    String? profesionalId,
    DateTime? fechaValidacion,
    String? clasificacionIa,
    double? confianzaIa,
    String? resultadoSegmentacion,
    DateTime? lastSyncAttempt,
    String? syncError,
    int? retryCount,
    DateTime? deletedAt,
    DateTime? cancelledAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? campaignId,
    String? campaignName,
    String? collectorName,
    String? collectorUniversityCode,
    String? photoFilename,
    int? photoSizeBytes,
    int? imageWidth,
    int? imageHeight,
    String? municipality,
    String? department,
    String? country,
    String? locationSource,
    String? damageType,
    String? surfaceType,
    String? status,
    DateTime? exportedAt,
  }) {
    return Reporte(
      id: id ?? this.id,
      idLocal: idLocal ?? this.idLocal,
      idRemoto: idRemoto ?? this.idRemoto,
      clientId: clientId ?? this.clientId,
      installationId: installationId ?? this.installationId,
      usuarioId: usuarioId ?? this.usuarioId,
      rutaFotoLocal: rutaFotoLocal ?? this.rutaFotoLocal,
      fotoUrlRemota: fotoUrlRemota ?? this.fotoUrlRemota,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      precisionGps: precisionGps ?? this.precisionGps,
      fechaHora: fechaHora ?? this.fechaHora,
      viaSector: viaSector ?? this.viaSector,
      barrio: barrio ?? this.barrio,
      puntoReferencia: puntoReferencia ?? this.puntoReferencia,
      descripcionCiudadano: descripcionCiudadano ?? this.descripcionCiudadano,
      estadoReporte: estadoReporte ?? this.estadoReporte,
      estadoSincronizacion: estadoSincronizacion ?? this.estadoSincronizacion,
      estadoIa: estadoIa ?? this.estadoIa,
      clasificacionProfesional: clasificacionProfesional ?? this.clasificacionProfesional,
      severidadProfesional: severidadProfesional ?? this.severidadProfesional,
      superficie: superficie ?? this.superficie,
      largoCm: largoCm ?? this.largoCm,
      anchoCm: anchoCm ?? this.anchoCm,
      profundidadCm: profundidadCm ?? this.profundidadCm,
      observacionProfesional: observacionProfesional ?? this.observacionProfesional,
      profesionalId: profesionalId ?? this.profesionalId,
      fechaValidacion: fechaValidacion ?? this.fechaValidacion,
      clasificacionIa: clasificacionIa ?? this.clasificacionIa,
      confianzaIa: confianzaIa ?? this.confianzaIa,
      resultadoSegmentacion: resultadoSegmentacion ?? this.resultadoSegmentacion,
      lastSyncAttempt: lastSyncAttempt ?? this.lastSyncAttempt,
      syncError: syncError ?? this.syncError,
      retryCount: retryCount ?? this.retryCount,
      deletedAt: deletedAt ?? this.deletedAt,
      cancelledAt: cancelledAt ?? this.cancelledAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      campaignId: campaignId ?? this.campaignId,
      campaignName: campaignName ?? this.campaignName,
      collectorName: collectorName ?? this.collectorName,
      collectorUniversityCode: collectorUniversityCode ?? this.collectorUniversityCode,
      photoFilename: photoFilename ?? this.photoFilename,
      photoSizeBytes: photoSizeBytes ?? this.photoSizeBytes,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
      municipality: municipality ?? this.municipality,
      department: department ?? this.department,
      country: country ?? this.country,
      locationSource: locationSource ?? this.locationSource,
      damageType: damageType ?? this.damageType,
      surfaceType: surfaceType ?? this.surfaceType,
      status: status ?? this.status,
      exportedAt: exportedAt ?? this.exportedAt,
    );
  }

  @override
  String toString() => 'Reporte(idLocal: $idLocal, estadoReporte: $estadoReporte)';
}

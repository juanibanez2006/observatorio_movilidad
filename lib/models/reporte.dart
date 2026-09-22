import 'package:drift/drift.dart';

// Esta clase define la tabla Drift para reportes
@DataClassName('ReporteLocalData')
class Reportes extends Table {
  IntColumn get id => integer().autoIncrement()();

  // Identificadores
  TextColumn get idLocal => text().unique()();
  TextColumn get idRemoto => text().nullable()();

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

  // Auditoría
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}


/// Clase modelo Dart para representar un reporte
class Reporte {
  final int? id;
  final String idLocal;
  final String? idRemoto;
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
  final DateTime createdAt;
  final DateTime updatedAt;

  const Reporte({
    this.id,
    required this.idLocal,
    this.idRemoto,
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
    required this.createdAt,
    required this.updatedAt,
  });

  /// Crea una copia del reporte con algunos campos actualizados
  Reporte copyWith({
    int? id,
    String? idLocal,
    String? idRemoto,
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
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Reporte(
      id: id ?? this.id,
      idLocal: idLocal ?? this.idLocal,
      idRemoto: idRemoto ?? this.idRemoto,
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
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() => 'Reporte(idLocal: $idLocal, estadoReporte: $estadoReporte)';
}

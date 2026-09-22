// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ReportesTable extends Reportes
    with TableInfo<$ReportesTable, ReporteLocalData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReportesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _idLocalMeta = const VerificationMeta(
    'idLocal',
  );
  @override
  late final GeneratedColumn<String> idLocal = GeneratedColumn<String>(
    'id_local',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _idRemotoMeta = const VerificationMeta(
    'idRemoto',
  );
  @override
  late final GeneratedColumn<String> idRemoto = GeneratedColumn<String>(
    'id_remoto',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _installationIdMeta = const VerificationMeta(
    'installationId',
  );
  @override
  late final GeneratedColumn<String> installationId = GeneratedColumn<String>(
    'installation_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _usuarioIdMeta = const VerificationMeta(
    'usuarioId',
  );
  @override
  late final GeneratedColumn<String> usuarioId = GeneratedColumn<String>(
    'usuario_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rutaFotoLocalMeta = const VerificationMeta(
    'rutaFotoLocal',
  );
  @override
  late final GeneratedColumn<String> rutaFotoLocal = GeneratedColumn<String>(
    'ruta_foto_local',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fotoUrlRemotaMeta = const VerificationMeta(
    'fotoUrlRemota',
  );
  @override
  late final GeneratedColumn<String> fotoUrlRemota = GeneratedColumn<String>(
    'foto_url_remota',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudMeta = const VerificationMeta(
    'latitud',
  );
  @override
  late final GeneratedColumn<double> latitud = GeneratedColumn<double>(
    'latitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _longitudMeta = const VerificationMeta(
    'longitud',
  );
  @override
  late final GeneratedColumn<double> longitud = GeneratedColumn<double>(
    'longitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _precisionGpsMeta = const VerificationMeta(
    'precisionGps',
  );
  @override
  late final GeneratedColumn<double> precisionGps = GeneratedColumn<double>(
    'precision_gps',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fechaHoraMeta = const VerificationMeta(
    'fechaHora',
  );
  @override
  late final GeneratedColumn<DateTime> fechaHora = GeneratedColumn<DateTime>(
    'fecha_hora',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _viaSectorMeta = const VerificationMeta(
    'viaSector',
  );
  @override
  late final GeneratedColumn<String> viaSector = GeneratedColumn<String>(
    'via_sector',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _barrioMeta = const VerificationMeta('barrio');
  @override
  late final GeneratedColumn<String> barrio = GeneratedColumn<String>(
    'barrio',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _puntoReferenciaMeta = const VerificationMeta(
    'puntoReferencia',
  );
  @override
  late final GeneratedColumn<String> puntoReferencia = GeneratedColumn<String>(
    'punto_referencia',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descripcionCiudadanoMeta =
      const VerificationMeta('descripcionCiudadano');
  @override
  late final GeneratedColumn<String> descripcionCiudadano =
      GeneratedColumn<String>(
        'descripcion_ciudadano',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _estadoReporteMeta = const VerificationMeta(
    'estadoReporte',
  );
  @override
  late final GeneratedColumn<String> estadoReporte = GeneratedColumn<String>(
    'estado_reporte',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _estadoSincronizacionMeta =
      const VerificationMeta('estadoSincronizacion');
  @override
  late final GeneratedColumn<String> estadoSincronizacion =
      GeneratedColumn<String>(
        'estado_sincronizacion',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _estadoIaMeta = const VerificationMeta(
    'estadoIa',
  );
  @override
  late final GeneratedColumn<String> estadoIa = GeneratedColumn<String>(
    'estado_ia',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clasificacionProfesionalMeta =
      const VerificationMeta('clasificacionProfesional');
  @override
  late final GeneratedColumn<String> clasificacionProfesional =
      GeneratedColumn<String>(
        'clasificacion_profesional',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _severidadProfesionalMeta =
      const VerificationMeta('severidadProfesional');
  @override
  late final GeneratedColumn<String> severidadProfesional =
      GeneratedColumn<String>(
        'severidad_profesional',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _superficieMeta = const VerificationMeta(
    'superficie',
  );
  @override
  late final GeneratedColumn<double> superficie = GeneratedColumn<double>(
    'superficie',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _largoCmMeta = const VerificationMeta(
    'largoCm',
  );
  @override
  late final GeneratedColumn<double> largoCm = GeneratedColumn<double>(
    'largo_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _anchoCmMeta = const VerificationMeta(
    'anchoCm',
  );
  @override
  late final GeneratedColumn<double> anchoCm = GeneratedColumn<double>(
    'ancho_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _profundidadCmMeta = const VerificationMeta(
    'profundidadCm',
  );
  @override
  late final GeneratedColumn<double> profundidadCm = GeneratedColumn<double>(
    'profundidad_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _observacionProfesionalMeta =
      const VerificationMeta('observacionProfesional');
  @override
  late final GeneratedColumn<String> observacionProfesional =
      GeneratedColumn<String>(
        'observacion_profesional',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _profesionalIdMeta = const VerificationMeta(
    'profesionalId',
  );
  @override
  late final GeneratedColumn<String> profesionalId = GeneratedColumn<String>(
    'profesional_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fechaValidacionMeta = const VerificationMeta(
    'fechaValidacion',
  );
  @override
  late final GeneratedColumn<DateTime> fechaValidacion =
      GeneratedColumn<DateTime>(
        'fecha_validacion',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _clasificacionIaMeta = const VerificationMeta(
    'clasificacionIa',
  );
  @override
  late final GeneratedColumn<String> clasificacionIa = GeneratedColumn<String>(
    'clasificacion_ia',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _confianzaIaMeta = const VerificationMeta(
    'confianzaIa',
  );
  @override
  late final GeneratedColumn<double> confianzaIa = GeneratedColumn<double>(
    'confianza_ia',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _resultadoSegmentacionMeta =
      const VerificationMeta('resultadoSegmentacion');
  @override
  late final GeneratedColumn<String> resultadoSegmentacion =
      GeneratedColumn<String>(
        'resultado_segmentacion',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastSyncAttemptMeta = const VerificationMeta(
    'lastSyncAttempt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSyncAttempt =
      GeneratedColumn<DateTime>(
        'last_sync_attempt',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _syncErrorMeta = const VerificationMeta(
    'syncError',
  );
  @override
  late final GeneratedColumn<String> syncError = GeneratedColumn<String>(
    'sync_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _retryCountMeta = const VerificationMeta(
    'retryCount',
  );
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
    'retry_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cancelledAtMeta = const VerificationMeta(
    'cancelledAt',
  );
  @override
  late final GeneratedColumn<DateTime> cancelledAt = GeneratedColumn<DateTime>(
    'cancelled_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _campaignIdMeta = const VerificationMeta(
    'campaignId',
  );
  @override
  late final GeneratedColumn<String> campaignId = GeneratedColumn<String>(
    'campaign_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _campaignNameMeta = const VerificationMeta(
    'campaignName',
  );
  @override
  late final GeneratedColumn<String> campaignName = GeneratedColumn<String>(
    'campaign_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _collectorNameMeta = const VerificationMeta(
    'collectorName',
  );
  @override
  late final GeneratedColumn<String> collectorName = GeneratedColumn<String>(
    'collector_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _collectorUniversityCodeMeta =
      const VerificationMeta('collectorUniversityCode');
  @override
  late final GeneratedColumn<String> collectorUniversityCode =
      GeneratedColumn<String>(
        'collector_university_code',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _photoFilenameMeta = const VerificationMeta(
    'photoFilename',
  );
  @override
  late final GeneratedColumn<String> photoFilename = GeneratedColumn<String>(
    'photo_filename',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _photoSizeBytesMeta = const VerificationMeta(
    'photoSizeBytes',
  );
  @override
  late final GeneratedColumn<int> photoSizeBytes = GeneratedColumn<int>(
    'photo_size_bytes',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _imageWidthMeta = const VerificationMeta(
    'imageWidth',
  );
  @override
  late final GeneratedColumn<int> imageWidth = GeneratedColumn<int>(
    'image_width',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _imageHeightMeta = const VerificationMeta(
    'imageHeight',
  );
  @override
  late final GeneratedColumn<int> imageHeight = GeneratedColumn<int>(
    'image_height',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _municipalityMeta = const VerificationMeta(
    'municipality',
  );
  @override
  late final GeneratedColumn<String> municipality = GeneratedColumn<String>(
    'municipality',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _departmentMeta = const VerificationMeta(
    'department',
  );
  @override
  late final GeneratedColumn<String> department = GeneratedColumn<String>(
    'department',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _countryMeta = const VerificationMeta(
    'country',
  );
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
    'country',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _locationSourceMeta = const VerificationMeta(
    'locationSource',
  );
  @override
  late final GeneratedColumn<String> locationSource = GeneratedColumn<String>(
    'location_source',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _damageTypeMeta = const VerificationMeta(
    'damageType',
  );
  @override
  late final GeneratedColumn<String> damageType = GeneratedColumn<String>(
    'damage_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _surfaceTypeMeta = const VerificationMeta(
    'surfaceType',
  );
  @override
  late final GeneratedColumn<String> surfaceType = GeneratedColumn<String>(
    'surface_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('completo'),
  );
  static const VerificationMeta _exportedAtMeta = const VerificationMeta(
    'exportedAt',
  );
  @override
  late final GeneratedColumn<DateTime> exportedAt = GeneratedColumn<DateTime>(
    'exported_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    idLocal,
    idRemoto,
    clientId,
    installationId,
    usuarioId,
    rutaFotoLocal,
    fotoUrlRemota,
    latitud,
    longitud,
    precisionGps,
    fechaHora,
    viaSector,
    barrio,
    puntoReferencia,
    descripcionCiudadano,
    estadoReporte,
    estadoSincronizacion,
    estadoIa,
    clasificacionProfesional,
    severidadProfesional,
    superficie,
    largoCm,
    anchoCm,
    profundidadCm,
    observacionProfesional,
    profesionalId,
    fechaValidacion,
    clasificacionIa,
    confianzaIa,
    resultadoSegmentacion,
    lastSyncAttempt,
    syncError,
    retryCount,
    deletedAt,
    cancelledAt,
    createdAt,
    updatedAt,
    campaignId,
    campaignName,
    collectorName,
    collectorUniversityCode,
    photoFilename,
    photoSizeBytes,
    imageWidth,
    imageHeight,
    municipality,
    department,
    country,
    locationSource,
    damageType,
    surfaceType,
    status,
    exportedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reportes';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReporteLocalData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_local')) {
      context.handle(
        _idLocalMeta,
        idLocal.isAcceptableOrUnknown(data['id_local']!, _idLocalMeta),
      );
    } else if (isInserting) {
      context.missing(_idLocalMeta);
    }
    if (data.containsKey('id_remoto')) {
      context.handle(
        _idRemotoMeta,
        idRemoto.isAcceptableOrUnknown(data['id_remoto']!, _idRemotoMeta),
      );
    }
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    }
    if (data.containsKey('installation_id')) {
      context.handle(
        _installationIdMeta,
        installationId.isAcceptableOrUnknown(
          data['installation_id']!,
          _installationIdMeta,
        ),
      );
    }
    if (data.containsKey('usuario_id')) {
      context.handle(
        _usuarioIdMeta,
        usuarioId.isAcceptableOrUnknown(data['usuario_id']!, _usuarioIdMeta),
      );
    }
    if (data.containsKey('ruta_foto_local')) {
      context.handle(
        _rutaFotoLocalMeta,
        rutaFotoLocal.isAcceptableOrUnknown(
          data['ruta_foto_local']!,
          _rutaFotoLocalMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rutaFotoLocalMeta);
    }
    if (data.containsKey('foto_url_remota')) {
      context.handle(
        _fotoUrlRemotaMeta,
        fotoUrlRemota.isAcceptableOrUnknown(
          data['foto_url_remota']!,
          _fotoUrlRemotaMeta,
        ),
      );
    }
    if (data.containsKey('latitud')) {
      context.handle(
        _latitudMeta,
        latitud.isAcceptableOrUnknown(data['latitud']!, _latitudMeta),
      );
    } else if (isInserting) {
      context.missing(_latitudMeta);
    }
    if (data.containsKey('longitud')) {
      context.handle(
        _longitudMeta,
        longitud.isAcceptableOrUnknown(data['longitud']!, _longitudMeta),
      );
    } else if (isInserting) {
      context.missing(_longitudMeta);
    }
    if (data.containsKey('precision_gps')) {
      context.handle(
        _precisionGpsMeta,
        precisionGps.isAcceptableOrUnknown(
          data['precision_gps']!,
          _precisionGpsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_precisionGpsMeta);
    }
    if (data.containsKey('fecha_hora')) {
      context.handle(
        _fechaHoraMeta,
        fechaHora.isAcceptableOrUnknown(data['fecha_hora']!, _fechaHoraMeta),
      );
    } else if (isInserting) {
      context.missing(_fechaHoraMeta);
    }
    if (data.containsKey('via_sector')) {
      context.handle(
        _viaSectorMeta,
        viaSector.isAcceptableOrUnknown(data['via_sector']!, _viaSectorMeta),
      );
    }
    if (data.containsKey('barrio')) {
      context.handle(
        _barrioMeta,
        barrio.isAcceptableOrUnknown(data['barrio']!, _barrioMeta),
      );
    }
    if (data.containsKey('punto_referencia')) {
      context.handle(
        _puntoReferenciaMeta,
        puntoReferencia.isAcceptableOrUnknown(
          data['punto_referencia']!,
          _puntoReferenciaMeta,
        ),
      );
    }
    if (data.containsKey('descripcion_ciudadano')) {
      context.handle(
        _descripcionCiudadanoMeta,
        descripcionCiudadano.isAcceptableOrUnknown(
          data['descripcion_ciudadano']!,
          _descripcionCiudadanoMeta,
        ),
      );
    }
    if (data.containsKey('estado_reporte')) {
      context.handle(
        _estadoReporteMeta,
        estadoReporte.isAcceptableOrUnknown(
          data['estado_reporte']!,
          _estadoReporteMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_estadoReporteMeta);
    }
    if (data.containsKey('estado_sincronizacion')) {
      context.handle(
        _estadoSincronizacionMeta,
        estadoSincronizacion.isAcceptableOrUnknown(
          data['estado_sincronizacion']!,
          _estadoSincronizacionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_estadoSincronizacionMeta);
    }
    if (data.containsKey('estado_ia')) {
      context.handle(
        _estadoIaMeta,
        estadoIa.isAcceptableOrUnknown(data['estado_ia']!, _estadoIaMeta),
      );
    } else if (isInserting) {
      context.missing(_estadoIaMeta);
    }
    if (data.containsKey('clasificacion_profesional')) {
      context.handle(
        _clasificacionProfesionalMeta,
        clasificacionProfesional.isAcceptableOrUnknown(
          data['clasificacion_profesional']!,
          _clasificacionProfesionalMeta,
        ),
      );
    }
    if (data.containsKey('severidad_profesional')) {
      context.handle(
        _severidadProfesionalMeta,
        severidadProfesional.isAcceptableOrUnknown(
          data['severidad_profesional']!,
          _severidadProfesionalMeta,
        ),
      );
    }
    if (data.containsKey('superficie')) {
      context.handle(
        _superficieMeta,
        superficie.isAcceptableOrUnknown(data['superficie']!, _superficieMeta),
      );
    }
    if (data.containsKey('largo_cm')) {
      context.handle(
        _largoCmMeta,
        largoCm.isAcceptableOrUnknown(data['largo_cm']!, _largoCmMeta),
      );
    }
    if (data.containsKey('ancho_cm')) {
      context.handle(
        _anchoCmMeta,
        anchoCm.isAcceptableOrUnknown(data['ancho_cm']!, _anchoCmMeta),
      );
    }
    if (data.containsKey('profundidad_cm')) {
      context.handle(
        _profundidadCmMeta,
        profundidadCm.isAcceptableOrUnknown(
          data['profundidad_cm']!,
          _profundidadCmMeta,
        ),
      );
    }
    if (data.containsKey('observacion_profesional')) {
      context.handle(
        _observacionProfesionalMeta,
        observacionProfesional.isAcceptableOrUnknown(
          data['observacion_profesional']!,
          _observacionProfesionalMeta,
        ),
      );
    }
    if (data.containsKey('profesional_id')) {
      context.handle(
        _profesionalIdMeta,
        profesionalId.isAcceptableOrUnknown(
          data['profesional_id']!,
          _profesionalIdMeta,
        ),
      );
    }
    if (data.containsKey('fecha_validacion')) {
      context.handle(
        _fechaValidacionMeta,
        fechaValidacion.isAcceptableOrUnknown(
          data['fecha_validacion']!,
          _fechaValidacionMeta,
        ),
      );
    }
    if (data.containsKey('clasificacion_ia')) {
      context.handle(
        _clasificacionIaMeta,
        clasificacionIa.isAcceptableOrUnknown(
          data['clasificacion_ia']!,
          _clasificacionIaMeta,
        ),
      );
    }
    if (data.containsKey('confianza_ia')) {
      context.handle(
        _confianzaIaMeta,
        confianzaIa.isAcceptableOrUnknown(
          data['confianza_ia']!,
          _confianzaIaMeta,
        ),
      );
    }
    if (data.containsKey('resultado_segmentacion')) {
      context.handle(
        _resultadoSegmentacionMeta,
        resultadoSegmentacion.isAcceptableOrUnknown(
          data['resultado_segmentacion']!,
          _resultadoSegmentacionMeta,
        ),
      );
    }
    if (data.containsKey('last_sync_attempt')) {
      context.handle(
        _lastSyncAttemptMeta,
        lastSyncAttempt.isAcceptableOrUnknown(
          data['last_sync_attempt']!,
          _lastSyncAttemptMeta,
        ),
      );
    }
    if (data.containsKey('sync_error')) {
      context.handle(
        _syncErrorMeta,
        syncError.isAcceptableOrUnknown(data['sync_error']!, _syncErrorMeta),
      );
    }
    if (data.containsKey('retry_count')) {
      context.handle(
        _retryCountMeta,
        retryCount.isAcceptableOrUnknown(data['retry_count']!, _retryCountMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('cancelled_at')) {
      context.handle(
        _cancelledAtMeta,
        cancelledAt.isAcceptableOrUnknown(
          data['cancelled_at']!,
          _cancelledAtMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('campaign_id')) {
      context.handle(
        _campaignIdMeta,
        campaignId.isAcceptableOrUnknown(data['campaign_id']!, _campaignIdMeta),
      );
    }
    if (data.containsKey('campaign_name')) {
      context.handle(
        _campaignNameMeta,
        campaignName.isAcceptableOrUnknown(
          data['campaign_name']!,
          _campaignNameMeta,
        ),
      );
    }
    if (data.containsKey('collector_name')) {
      context.handle(
        _collectorNameMeta,
        collectorName.isAcceptableOrUnknown(
          data['collector_name']!,
          _collectorNameMeta,
        ),
      );
    }
    if (data.containsKey('collector_university_code')) {
      context.handle(
        _collectorUniversityCodeMeta,
        collectorUniversityCode.isAcceptableOrUnknown(
          data['collector_university_code']!,
          _collectorUniversityCodeMeta,
        ),
      );
    }
    if (data.containsKey('photo_filename')) {
      context.handle(
        _photoFilenameMeta,
        photoFilename.isAcceptableOrUnknown(
          data['photo_filename']!,
          _photoFilenameMeta,
        ),
      );
    }
    if (data.containsKey('photo_size_bytes')) {
      context.handle(
        _photoSizeBytesMeta,
        photoSizeBytes.isAcceptableOrUnknown(
          data['photo_size_bytes']!,
          _photoSizeBytesMeta,
        ),
      );
    }
    if (data.containsKey('image_width')) {
      context.handle(
        _imageWidthMeta,
        imageWidth.isAcceptableOrUnknown(data['image_width']!, _imageWidthMeta),
      );
    }
    if (data.containsKey('image_height')) {
      context.handle(
        _imageHeightMeta,
        imageHeight.isAcceptableOrUnknown(
          data['image_height']!,
          _imageHeightMeta,
        ),
      );
    }
    if (data.containsKey('municipality')) {
      context.handle(
        _municipalityMeta,
        municipality.isAcceptableOrUnknown(
          data['municipality']!,
          _municipalityMeta,
        ),
      );
    }
    if (data.containsKey('department')) {
      context.handle(
        _departmentMeta,
        department.isAcceptableOrUnknown(data['department']!, _departmentMeta),
      );
    }
    if (data.containsKey('country')) {
      context.handle(
        _countryMeta,
        country.isAcceptableOrUnknown(data['country']!, _countryMeta),
      );
    }
    if (data.containsKey('location_source')) {
      context.handle(
        _locationSourceMeta,
        locationSource.isAcceptableOrUnknown(
          data['location_source']!,
          _locationSourceMeta,
        ),
      );
    }
    if (data.containsKey('damage_type')) {
      context.handle(
        _damageTypeMeta,
        damageType.isAcceptableOrUnknown(data['damage_type']!, _damageTypeMeta),
      );
    }
    if (data.containsKey('surface_type')) {
      context.handle(
        _surfaceTypeMeta,
        surfaceType.isAcceptableOrUnknown(
          data['surface_type']!,
          _surfaceTypeMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('exported_at')) {
      context.handle(
        _exportedAtMeta,
        exportedAt.isAcceptableOrUnknown(data['exported_at']!, _exportedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReporteLocalData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReporteLocalData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      idLocal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_local'],
      )!,
      idRemoto: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_remoto'],
      ),
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      ),
      installationId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}installation_id'],
      ),
      usuarioId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}usuario_id'],
      ),
      rutaFotoLocal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ruta_foto_local'],
      )!,
      fotoUrlRemota: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}foto_url_remota'],
      ),
      latitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitud'],
      )!,
      longitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitud'],
      )!,
      precisionGps: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}precision_gps'],
      )!,
      fechaHora: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_hora'],
      )!,
      viaSector: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}via_sector'],
      ),
      barrio: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}barrio'],
      ),
      puntoReferencia: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}punto_referencia'],
      ),
      descripcionCiudadano: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}descripcion_ciudadano'],
      ),
      estadoReporte: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}estado_reporte'],
      )!,
      estadoSincronizacion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}estado_sincronizacion'],
      )!,
      estadoIa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}estado_ia'],
      )!,
      clasificacionProfesional: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}clasificacion_profesional'],
      ),
      severidadProfesional: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}severidad_profesional'],
      ),
      superficie: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}superficie'],
      ),
      largoCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}largo_cm'],
      ),
      anchoCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}ancho_cm'],
      ),
      profundidadCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}profundidad_cm'],
      ),
      observacionProfesional: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}observacion_profesional'],
      ),
      profesionalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}profesional_id'],
      ),
      fechaValidacion: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_validacion'],
      ),
      clasificacionIa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}clasificacion_ia'],
      ),
      confianzaIa: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}confianza_ia'],
      ),
      resultadoSegmentacion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}resultado_segmentacion'],
      ),
      lastSyncAttempt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_sync_attempt'],
      ),
      syncError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sync_error'],
      ),
      retryCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}retry_count'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      cancelledAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cancelled_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      campaignId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}campaign_id'],
      ),
      campaignName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}campaign_name'],
      ),
      collectorName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}collector_name'],
      ),
      collectorUniversityCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}collector_university_code'],
      ),
      photoFilename: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_filename'],
      ),
      photoSizeBytes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}photo_size_bytes'],
      ),
      imageWidth: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}image_width'],
      ),
      imageHeight: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}image_height'],
      ),
      municipality: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}municipality'],
      ),
      department: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}department'],
      ),
      country: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country'],
      ),
      locationSource: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_source'],
      ),
      damageType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}damage_type'],
      ),
      surfaceType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}surface_type'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      exportedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}exported_at'],
      ),
    );
  }

  @override
  $ReportesTable createAlias(String alias) {
    return $ReportesTable(attachedDatabase, alias);
  }
}

class ReporteLocalData extends DataClass
    implements Insertable<ReporteLocalData> {
  final int id;
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
  const ReporteLocalData({
    required this.id,
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
    required this.retryCount,
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
    required this.status,
    this.exportedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_local'] = Variable<String>(idLocal);
    if (!nullToAbsent || idRemoto != null) {
      map['id_remoto'] = Variable<String>(idRemoto);
    }
    if (!nullToAbsent || clientId != null) {
      map['client_id'] = Variable<String>(clientId);
    }
    if (!nullToAbsent || installationId != null) {
      map['installation_id'] = Variable<String>(installationId);
    }
    if (!nullToAbsent || usuarioId != null) {
      map['usuario_id'] = Variable<String>(usuarioId);
    }
    map['ruta_foto_local'] = Variable<String>(rutaFotoLocal);
    if (!nullToAbsent || fotoUrlRemota != null) {
      map['foto_url_remota'] = Variable<String>(fotoUrlRemota);
    }
    map['latitud'] = Variable<double>(latitud);
    map['longitud'] = Variable<double>(longitud);
    map['precision_gps'] = Variable<double>(precisionGps);
    map['fecha_hora'] = Variable<DateTime>(fechaHora);
    if (!nullToAbsent || viaSector != null) {
      map['via_sector'] = Variable<String>(viaSector);
    }
    if (!nullToAbsent || barrio != null) {
      map['barrio'] = Variable<String>(barrio);
    }
    if (!nullToAbsent || puntoReferencia != null) {
      map['punto_referencia'] = Variable<String>(puntoReferencia);
    }
    if (!nullToAbsent || descripcionCiudadano != null) {
      map['descripcion_ciudadano'] = Variable<String>(descripcionCiudadano);
    }
    map['estado_reporte'] = Variable<String>(estadoReporte);
    map['estado_sincronizacion'] = Variable<String>(estadoSincronizacion);
    map['estado_ia'] = Variable<String>(estadoIa);
    if (!nullToAbsent || clasificacionProfesional != null) {
      map['clasificacion_profesional'] = Variable<String>(
        clasificacionProfesional,
      );
    }
    if (!nullToAbsent || severidadProfesional != null) {
      map['severidad_profesional'] = Variable<String>(severidadProfesional);
    }
    if (!nullToAbsent || superficie != null) {
      map['superficie'] = Variable<double>(superficie);
    }
    if (!nullToAbsent || largoCm != null) {
      map['largo_cm'] = Variable<double>(largoCm);
    }
    if (!nullToAbsent || anchoCm != null) {
      map['ancho_cm'] = Variable<double>(anchoCm);
    }
    if (!nullToAbsent || profundidadCm != null) {
      map['profundidad_cm'] = Variable<double>(profundidadCm);
    }
    if (!nullToAbsent || observacionProfesional != null) {
      map['observacion_profesional'] = Variable<String>(observacionProfesional);
    }
    if (!nullToAbsent || profesionalId != null) {
      map['profesional_id'] = Variable<String>(profesionalId);
    }
    if (!nullToAbsent || fechaValidacion != null) {
      map['fecha_validacion'] = Variable<DateTime>(fechaValidacion);
    }
    if (!nullToAbsent || clasificacionIa != null) {
      map['clasificacion_ia'] = Variable<String>(clasificacionIa);
    }
    if (!nullToAbsent || confianzaIa != null) {
      map['confianza_ia'] = Variable<double>(confianzaIa);
    }
    if (!nullToAbsent || resultadoSegmentacion != null) {
      map['resultado_segmentacion'] = Variable<String>(resultadoSegmentacion);
    }
    if (!nullToAbsent || lastSyncAttempt != null) {
      map['last_sync_attempt'] = Variable<DateTime>(lastSyncAttempt);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    map['retry_count'] = Variable<int>(retryCount);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    if (!nullToAbsent || cancelledAt != null) {
      map['cancelled_at'] = Variable<DateTime>(cancelledAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || campaignId != null) {
      map['campaign_id'] = Variable<String>(campaignId);
    }
    if (!nullToAbsent || campaignName != null) {
      map['campaign_name'] = Variable<String>(campaignName);
    }
    if (!nullToAbsent || collectorName != null) {
      map['collector_name'] = Variable<String>(collectorName);
    }
    if (!nullToAbsent || collectorUniversityCode != null) {
      map['collector_university_code'] = Variable<String>(
        collectorUniversityCode,
      );
    }
    if (!nullToAbsent || photoFilename != null) {
      map['photo_filename'] = Variable<String>(photoFilename);
    }
    if (!nullToAbsent || photoSizeBytes != null) {
      map['photo_size_bytes'] = Variable<int>(photoSizeBytes);
    }
    if (!nullToAbsent || imageWidth != null) {
      map['image_width'] = Variable<int>(imageWidth);
    }
    if (!nullToAbsent || imageHeight != null) {
      map['image_height'] = Variable<int>(imageHeight);
    }
    if (!nullToAbsent || municipality != null) {
      map['municipality'] = Variable<String>(municipality);
    }
    if (!nullToAbsent || department != null) {
      map['department'] = Variable<String>(department);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || locationSource != null) {
      map['location_source'] = Variable<String>(locationSource);
    }
    if (!nullToAbsent || damageType != null) {
      map['damage_type'] = Variable<String>(damageType);
    }
    if (!nullToAbsent || surfaceType != null) {
      map['surface_type'] = Variable<String>(surfaceType);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || exportedAt != null) {
      map['exported_at'] = Variable<DateTime>(exportedAt);
    }
    return map;
  }

  ReportesCompanion toCompanion(bool nullToAbsent) {
    return ReportesCompanion(
      id: Value(id),
      idLocal: Value(idLocal),
      idRemoto: idRemoto == null && nullToAbsent
          ? const Value.absent()
          : Value(idRemoto),
      clientId: clientId == null && nullToAbsent
          ? const Value.absent()
          : Value(clientId),
      installationId: installationId == null && nullToAbsent
          ? const Value.absent()
          : Value(installationId),
      usuarioId: usuarioId == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioId),
      rutaFotoLocal: Value(rutaFotoLocal),
      fotoUrlRemota: fotoUrlRemota == null && nullToAbsent
          ? const Value.absent()
          : Value(fotoUrlRemota),
      latitud: Value(latitud),
      longitud: Value(longitud),
      precisionGps: Value(precisionGps),
      fechaHora: Value(fechaHora),
      viaSector: viaSector == null && nullToAbsent
          ? const Value.absent()
          : Value(viaSector),
      barrio: barrio == null && nullToAbsent
          ? const Value.absent()
          : Value(barrio),
      puntoReferencia: puntoReferencia == null && nullToAbsent
          ? const Value.absent()
          : Value(puntoReferencia),
      descripcionCiudadano: descripcionCiudadano == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcionCiudadano),
      estadoReporte: Value(estadoReporte),
      estadoSincronizacion: Value(estadoSincronizacion),
      estadoIa: Value(estadoIa),
      clasificacionProfesional: clasificacionProfesional == null && nullToAbsent
          ? const Value.absent()
          : Value(clasificacionProfesional),
      severidadProfesional: severidadProfesional == null && nullToAbsent
          ? const Value.absent()
          : Value(severidadProfesional),
      superficie: superficie == null && nullToAbsent
          ? const Value.absent()
          : Value(superficie),
      largoCm: largoCm == null && nullToAbsent
          ? const Value.absent()
          : Value(largoCm),
      anchoCm: anchoCm == null && nullToAbsent
          ? const Value.absent()
          : Value(anchoCm),
      profundidadCm: profundidadCm == null && nullToAbsent
          ? const Value.absent()
          : Value(profundidadCm),
      observacionProfesional: observacionProfesional == null && nullToAbsent
          ? const Value.absent()
          : Value(observacionProfesional),
      profesionalId: profesionalId == null && nullToAbsent
          ? const Value.absent()
          : Value(profesionalId),
      fechaValidacion: fechaValidacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaValidacion),
      clasificacionIa: clasificacionIa == null && nullToAbsent
          ? const Value.absent()
          : Value(clasificacionIa),
      confianzaIa: confianzaIa == null && nullToAbsent
          ? const Value.absent()
          : Value(confianzaIa),
      resultadoSegmentacion: resultadoSegmentacion == null && nullToAbsent
          ? const Value.absent()
          : Value(resultadoSegmentacion),
      lastSyncAttempt: lastSyncAttempt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncAttempt),
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
      retryCount: Value(retryCount),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      cancelledAt: cancelledAt == null && nullToAbsent
          ? const Value.absent()
          : Value(cancelledAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      campaignId: campaignId == null && nullToAbsent
          ? const Value.absent()
          : Value(campaignId),
      campaignName: campaignName == null && nullToAbsent
          ? const Value.absent()
          : Value(campaignName),
      collectorName: collectorName == null && nullToAbsent
          ? const Value.absent()
          : Value(collectorName),
      collectorUniversityCode: collectorUniversityCode == null && nullToAbsent
          ? const Value.absent()
          : Value(collectorUniversityCode),
      photoFilename: photoFilename == null && nullToAbsent
          ? const Value.absent()
          : Value(photoFilename),
      photoSizeBytes: photoSizeBytes == null && nullToAbsent
          ? const Value.absent()
          : Value(photoSizeBytes),
      imageWidth: imageWidth == null && nullToAbsent
          ? const Value.absent()
          : Value(imageWidth),
      imageHeight: imageHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(imageHeight),
      municipality: municipality == null && nullToAbsent
          ? const Value.absent()
          : Value(municipality),
      department: department == null && nullToAbsent
          ? const Value.absent()
          : Value(department),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      locationSource: locationSource == null && nullToAbsent
          ? const Value.absent()
          : Value(locationSource),
      damageType: damageType == null && nullToAbsent
          ? const Value.absent()
          : Value(damageType),
      surfaceType: surfaceType == null && nullToAbsent
          ? const Value.absent()
          : Value(surfaceType),
      status: Value(status),
      exportedAt: exportedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(exportedAt),
    );
  }

  factory ReporteLocalData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReporteLocalData(
      id: serializer.fromJson<int>(json['id']),
      idLocal: serializer.fromJson<String>(json['idLocal']),
      idRemoto: serializer.fromJson<String?>(json['idRemoto']),
      clientId: serializer.fromJson<String?>(json['clientId']),
      installationId: serializer.fromJson<String?>(json['installationId']),
      usuarioId: serializer.fromJson<String?>(json['usuarioId']),
      rutaFotoLocal: serializer.fromJson<String>(json['rutaFotoLocal']),
      fotoUrlRemota: serializer.fromJson<String?>(json['fotoUrlRemota']),
      latitud: serializer.fromJson<double>(json['latitud']),
      longitud: serializer.fromJson<double>(json['longitud']),
      precisionGps: serializer.fromJson<double>(json['precisionGps']),
      fechaHora: serializer.fromJson<DateTime>(json['fechaHora']),
      viaSector: serializer.fromJson<String?>(json['viaSector']),
      barrio: serializer.fromJson<String?>(json['barrio']),
      puntoReferencia: serializer.fromJson<String?>(json['puntoReferencia']),
      descripcionCiudadano: serializer.fromJson<String?>(
        json['descripcionCiudadano'],
      ),
      estadoReporte: serializer.fromJson<String>(json['estadoReporte']),
      estadoSincronizacion: serializer.fromJson<String>(
        json['estadoSincronizacion'],
      ),
      estadoIa: serializer.fromJson<String>(json['estadoIa']),
      clasificacionProfesional: serializer.fromJson<String?>(
        json['clasificacionProfesional'],
      ),
      severidadProfesional: serializer.fromJson<String?>(
        json['severidadProfesional'],
      ),
      superficie: serializer.fromJson<double?>(json['superficie']),
      largoCm: serializer.fromJson<double?>(json['largoCm']),
      anchoCm: serializer.fromJson<double?>(json['anchoCm']),
      profundidadCm: serializer.fromJson<double?>(json['profundidadCm']),
      observacionProfesional: serializer.fromJson<String?>(
        json['observacionProfesional'],
      ),
      profesionalId: serializer.fromJson<String?>(json['profesionalId']),
      fechaValidacion: serializer.fromJson<DateTime?>(json['fechaValidacion']),
      clasificacionIa: serializer.fromJson<String?>(json['clasificacionIa']),
      confianzaIa: serializer.fromJson<double?>(json['confianzaIa']),
      resultadoSegmentacion: serializer.fromJson<String?>(
        json['resultadoSegmentacion'],
      ),
      lastSyncAttempt: serializer.fromJson<DateTime?>(json['lastSyncAttempt']),
      syncError: serializer.fromJson<String?>(json['syncError']),
      retryCount: serializer.fromJson<int>(json['retryCount']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      cancelledAt: serializer.fromJson<DateTime?>(json['cancelledAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      campaignId: serializer.fromJson<String?>(json['campaignId']),
      campaignName: serializer.fromJson<String?>(json['campaignName']),
      collectorName: serializer.fromJson<String?>(json['collectorName']),
      collectorUniversityCode: serializer.fromJson<String?>(
        json['collectorUniversityCode'],
      ),
      photoFilename: serializer.fromJson<String?>(json['photoFilename']),
      photoSizeBytes: serializer.fromJson<int?>(json['photoSizeBytes']),
      imageWidth: serializer.fromJson<int?>(json['imageWidth']),
      imageHeight: serializer.fromJson<int?>(json['imageHeight']),
      municipality: serializer.fromJson<String?>(json['municipality']),
      department: serializer.fromJson<String?>(json['department']),
      country: serializer.fromJson<String?>(json['country']),
      locationSource: serializer.fromJson<String?>(json['locationSource']),
      damageType: serializer.fromJson<String?>(json['damageType']),
      surfaceType: serializer.fromJson<String?>(json['surfaceType']),
      status: serializer.fromJson<String>(json['status']),
      exportedAt: serializer.fromJson<DateTime?>(json['exportedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idLocal': serializer.toJson<String>(idLocal),
      'idRemoto': serializer.toJson<String?>(idRemoto),
      'clientId': serializer.toJson<String?>(clientId),
      'installationId': serializer.toJson<String?>(installationId),
      'usuarioId': serializer.toJson<String?>(usuarioId),
      'rutaFotoLocal': serializer.toJson<String>(rutaFotoLocal),
      'fotoUrlRemota': serializer.toJson<String?>(fotoUrlRemota),
      'latitud': serializer.toJson<double>(latitud),
      'longitud': serializer.toJson<double>(longitud),
      'precisionGps': serializer.toJson<double>(precisionGps),
      'fechaHora': serializer.toJson<DateTime>(fechaHora),
      'viaSector': serializer.toJson<String?>(viaSector),
      'barrio': serializer.toJson<String?>(barrio),
      'puntoReferencia': serializer.toJson<String?>(puntoReferencia),
      'descripcionCiudadano': serializer.toJson<String?>(descripcionCiudadano),
      'estadoReporte': serializer.toJson<String>(estadoReporte),
      'estadoSincronizacion': serializer.toJson<String>(estadoSincronizacion),
      'estadoIa': serializer.toJson<String>(estadoIa),
      'clasificacionProfesional': serializer.toJson<String?>(
        clasificacionProfesional,
      ),
      'severidadProfesional': serializer.toJson<String?>(severidadProfesional),
      'superficie': serializer.toJson<double?>(superficie),
      'largoCm': serializer.toJson<double?>(largoCm),
      'anchoCm': serializer.toJson<double?>(anchoCm),
      'profundidadCm': serializer.toJson<double?>(profundidadCm),
      'observacionProfesional': serializer.toJson<String?>(
        observacionProfesional,
      ),
      'profesionalId': serializer.toJson<String?>(profesionalId),
      'fechaValidacion': serializer.toJson<DateTime?>(fechaValidacion),
      'clasificacionIa': serializer.toJson<String?>(clasificacionIa),
      'confianzaIa': serializer.toJson<double?>(confianzaIa),
      'resultadoSegmentacion': serializer.toJson<String?>(
        resultadoSegmentacion,
      ),
      'lastSyncAttempt': serializer.toJson<DateTime?>(lastSyncAttempt),
      'syncError': serializer.toJson<String?>(syncError),
      'retryCount': serializer.toJson<int>(retryCount),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'cancelledAt': serializer.toJson<DateTime?>(cancelledAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'campaignId': serializer.toJson<String?>(campaignId),
      'campaignName': serializer.toJson<String?>(campaignName),
      'collectorName': serializer.toJson<String?>(collectorName),
      'collectorUniversityCode': serializer.toJson<String?>(
        collectorUniversityCode,
      ),
      'photoFilename': serializer.toJson<String?>(photoFilename),
      'photoSizeBytes': serializer.toJson<int?>(photoSizeBytes),
      'imageWidth': serializer.toJson<int?>(imageWidth),
      'imageHeight': serializer.toJson<int?>(imageHeight),
      'municipality': serializer.toJson<String?>(municipality),
      'department': serializer.toJson<String?>(department),
      'country': serializer.toJson<String?>(country),
      'locationSource': serializer.toJson<String?>(locationSource),
      'damageType': serializer.toJson<String?>(damageType),
      'surfaceType': serializer.toJson<String?>(surfaceType),
      'status': serializer.toJson<String>(status),
      'exportedAt': serializer.toJson<DateTime?>(exportedAt),
    };
  }

  ReporteLocalData copyWith({
    int? id,
    String? idLocal,
    Value<String?> idRemoto = const Value.absent(),
    Value<String?> clientId = const Value.absent(),
    Value<String?> installationId = const Value.absent(),
    Value<String?> usuarioId = const Value.absent(),
    String? rutaFotoLocal,
    Value<String?> fotoUrlRemota = const Value.absent(),
    double? latitud,
    double? longitud,
    double? precisionGps,
    DateTime? fechaHora,
    Value<String?> viaSector = const Value.absent(),
    Value<String?> barrio = const Value.absent(),
    Value<String?> puntoReferencia = const Value.absent(),
    Value<String?> descripcionCiudadano = const Value.absent(),
    String? estadoReporte,
    String? estadoSincronizacion,
    String? estadoIa,
    Value<String?> clasificacionProfesional = const Value.absent(),
    Value<String?> severidadProfesional = const Value.absent(),
    Value<double?> superficie = const Value.absent(),
    Value<double?> largoCm = const Value.absent(),
    Value<double?> anchoCm = const Value.absent(),
    Value<double?> profundidadCm = const Value.absent(),
    Value<String?> observacionProfesional = const Value.absent(),
    Value<String?> profesionalId = const Value.absent(),
    Value<DateTime?> fechaValidacion = const Value.absent(),
    Value<String?> clasificacionIa = const Value.absent(),
    Value<double?> confianzaIa = const Value.absent(),
    Value<String?> resultadoSegmentacion = const Value.absent(),
    Value<DateTime?> lastSyncAttempt = const Value.absent(),
    Value<String?> syncError = const Value.absent(),
    int? retryCount,
    Value<DateTime?> deletedAt = const Value.absent(),
    Value<DateTime?> cancelledAt = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<String?> campaignId = const Value.absent(),
    Value<String?> campaignName = const Value.absent(),
    Value<String?> collectorName = const Value.absent(),
    Value<String?> collectorUniversityCode = const Value.absent(),
    Value<String?> photoFilename = const Value.absent(),
    Value<int?> photoSizeBytes = const Value.absent(),
    Value<int?> imageWidth = const Value.absent(),
    Value<int?> imageHeight = const Value.absent(),
    Value<String?> municipality = const Value.absent(),
    Value<String?> department = const Value.absent(),
    Value<String?> country = const Value.absent(),
    Value<String?> locationSource = const Value.absent(),
    Value<String?> damageType = const Value.absent(),
    Value<String?> surfaceType = const Value.absent(),
    String? status,
    Value<DateTime?> exportedAt = const Value.absent(),
  }) => ReporteLocalData(
    id: id ?? this.id,
    idLocal: idLocal ?? this.idLocal,
    idRemoto: idRemoto.present ? idRemoto.value : this.idRemoto,
    clientId: clientId.present ? clientId.value : this.clientId,
    installationId: installationId.present
        ? installationId.value
        : this.installationId,
    usuarioId: usuarioId.present ? usuarioId.value : this.usuarioId,
    rutaFotoLocal: rutaFotoLocal ?? this.rutaFotoLocal,
    fotoUrlRemota: fotoUrlRemota.present
        ? fotoUrlRemota.value
        : this.fotoUrlRemota,
    latitud: latitud ?? this.latitud,
    longitud: longitud ?? this.longitud,
    precisionGps: precisionGps ?? this.precisionGps,
    fechaHora: fechaHora ?? this.fechaHora,
    viaSector: viaSector.present ? viaSector.value : this.viaSector,
    barrio: barrio.present ? barrio.value : this.barrio,
    puntoReferencia: puntoReferencia.present
        ? puntoReferencia.value
        : this.puntoReferencia,
    descripcionCiudadano: descripcionCiudadano.present
        ? descripcionCiudadano.value
        : this.descripcionCiudadano,
    estadoReporte: estadoReporte ?? this.estadoReporte,
    estadoSincronizacion: estadoSincronizacion ?? this.estadoSincronizacion,
    estadoIa: estadoIa ?? this.estadoIa,
    clasificacionProfesional: clasificacionProfesional.present
        ? clasificacionProfesional.value
        : this.clasificacionProfesional,
    severidadProfesional: severidadProfesional.present
        ? severidadProfesional.value
        : this.severidadProfesional,
    superficie: superficie.present ? superficie.value : this.superficie,
    largoCm: largoCm.present ? largoCm.value : this.largoCm,
    anchoCm: anchoCm.present ? anchoCm.value : this.anchoCm,
    profundidadCm: profundidadCm.present
        ? profundidadCm.value
        : this.profundidadCm,
    observacionProfesional: observacionProfesional.present
        ? observacionProfesional.value
        : this.observacionProfesional,
    profesionalId: profesionalId.present
        ? profesionalId.value
        : this.profesionalId,
    fechaValidacion: fechaValidacion.present
        ? fechaValidacion.value
        : this.fechaValidacion,
    clasificacionIa: clasificacionIa.present
        ? clasificacionIa.value
        : this.clasificacionIa,
    confianzaIa: confianzaIa.present ? confianzaIa.value : this.confianzaIa,
    resultadoSegmentacion: resultadoSegmentacion.present
        ? resultadoSegmentacion.value
        : this.resultadoSegmentacion,
    lastSyncAttempt: lastSyncAttempt.present
        ? lastSyncAttempt.value
        : this.lastSyncAttempt,
    syncError: syncError.present ? syncError.value : this.syncError,
    retryCount: retryCount ?? this.retryCount,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    cancelledAt: cancelledAt.present ? cancelledAt.value : this.cancelledAt,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    campaignId: campaignId.present ? campaignId.value : this.campaignId,
    campaignName: campaignName.present ? campaignName.value : this.campaignName,
    collectorName: collectorName.present
        ? collectorName.value
        : this.collectorName,
    collectorUniversityCode: collectorUniversityCode.present
        ? collectorUniversityCode.value
        : this.collectorUniversityCode,
    photoFilename: photoFilename.present
        ? photoFilename.value
        : this.photoFilename,
    photoSizeBytes: photoSizeBytes.present
        ? photoSizeBytes.value
        : this.photoSizeBytes,
    imageWidth: imageWidth.present ? imageWidth.value : this.imageWidth,
    imageHeight: imageHeight.present ? imageHeight.value : this.imageHeight,
    municipality: municipality.present ? municipality.value : this.municipality,
    department: department.present ? department.value : this.department,
    country: country.present ? country.value : this.country,
    locationSource: locationSource.present
        ? locationSource.value
        : this.locationSource,
    damageType: damageType.present ? damageType.value : this.damageType,
    surfaceType: surfaceType.present ? surfaceType.value : this.surfaceType,
    status: status ?? this.status,
    exportedAt: exportedAt.present ? exportedAt.value : this.exportedAt,
  );
  ReporteLocalData copyWithCompanion(ReportesCompanion data) {
    return ReporteLocalData(
      id: data.id.present ? data.id.value : this.id,
      idLocal: data.idLocal.present ? data.idLocal.value : this.idLocal,
      idRemoto: data.idRemoto.present ? data.idRemoto.value : this.idRemoto,
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      installationId: data.installationId.present
          ? data.installationId.value
          : this.installationId,
      usuarioId: data.usuarioId.present ? data.usuarioId.value : this.usuarioId,
      rutaFotoLocal: data.rutaFotoLocal.present
          ? data.rutaFotoLocal.value
          : this.rutaFotoLocal,
      fotoUrlRemota: data.fotoUrlRemota.present
          ? data.fotoUrlRemota.value
          : this.fotoUrlRemota,
      latitud: data.latitud.present ? data.latitud.value : this.latitud,
      longitud: data.longitud.present ? data.longitud.value : this.longitud,
      precisionGps: data.precisionGps.present
          ? data.precisionGps.value
          : this.precisionGps,
      fechaHora: data.fechaHora.present ? data.fechaHora.value : this.fechaHora,
      viaSector: data.viaSector.present ? data.viaSector.value : this.viaSector,
      barrio: data.barrio.present ? data.barrio.value : this.barrio,
      puntoReferencia: data.puntoReferencia.present
          ? data.puntoReferencia.value
          : this.puntoReferencia,
      descripcionCiudadano: data.descripcionCiudadano.present
          ? data.descripcionCiudadano.value
          : this.descripcionCiudadano,
      estadoReporte: data.estadoReporte.present
          ? data.estadoReporte.value
          : this.estadoReporte,
      estadoSincronizacion: data.estadoSincronizacion.present
          ? data.estadoSincronizacion.value
          : this.estadoSincronizacion,
      estadoIa: data.estadoIa.present ? data.estadoIa.value : this.estadoIa,
      clasificacionProfesional: data.clasificacionProfesional.present
          ? data.clasificacionProfesional.value
          : this.clasificacionProfesional,
      severidadProfesional: data.severidadProfesional.present
          ? data.severidadProfesional.value
          : this.severidadProfesional,
      superficie: data.superficie.present
          ? data.superficie.value
          : this.superficie,
      largoCm: data.largoCm.present ? data.largoCm.value : this.largoCm,
      anchoCm: data.anchoCm.present ? data.anchoCm.value : this.anchoCm,
      profundidadCm: data.profundidadCm.present
          ? data.profundidadCm.value
          : this.profundidadCm,
      observacionProfesional: data.observacionProfesional.present
          ? data.observacionProfesional.value
          : this.observacionProfesional,
      profesionalId: data.profesionalId.present
          ? data.profesionalId.value
          : this.profesionalId,
      fechaValidacion: data.fechaValidacion.present
          ? data.fechaValidacion.value
          : this.fechaValidacion,
      clasificacionIa: data.clasificacionIa.present
          ? data.clasificacionIa.value
          : this.clasificacionIa,
      confianzaIa: data.confianzaIa.present
          ? data.confianzaIa.value
          : this.confianzaIa,
      resultadoSegmentacion: data.resultadoSegmentacion.present
          ? data.resultadoSegmentacion.value
          : this.resultadoSegmentacion,
      lastSyncAttempt: data.lastSyncAttempt.present
          ? data.lastSyncAttempt.value
          : this.lastSyncAttempt,
      syncError: data.syncError.present ? data.syncError.value : this.syncError,
      retryCount: data.retryCount.present
          ? data.retryCount.value
          : this.retryCount,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      cancelledAt: data.cancelledAt.present
          ? data.cancelledAt.value
          : this.cancelledAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      campaignId: data.campaignId.present
          ? data.campaignId.value
          : this.campaignId,
      campaignName: data.campaignName.present
          ? data.campaignName.value
          : this.campaignName,
      collectorName: data.collectorName.present
          ? data.collectorName.value
          : this.collectorName,
      collectorUniversityCode: data.collectorUniversityCode.present
          ? data.collectorUniversityCode.value
          : this.collectorUniversityCode,
      photoFilename: data.photoFilename.present
          ? data.photoFilename.value
          : this.photoFilename,
      photoSizeBytes: data.photoSizeBytes.present
          ? data.photoSizeBytes.value
          : this.photoSizeBytes,
      imageWidth: data.imageWidth.present
          ? data.imageWidth.value
          : this.imageWidth,
      imageHeight: data.imageHeight.present
          ? data.imageHeight.value
          : this.imageHeight,
      municipality: data.municipality.present
          ? data.municipality.value
          : this.municipality,
      department: data.department.present
          ? data.department.value
          : this.department,
      country: data.country.present ? data.country.value : this.country,
      locationSource: data.locationSource.present
          ? data.locationSource.value
          : this.locationSource,
      damageType: data.damageType.present
          ? data.damageType.value
          : this.damageType,
      surfaceType: data.surfaceType.present
          ? data.surfaceType.value
          : this.surfaceType,
      status: data.status.present ? data.status.value : this.status,
      exportedAt: data.exportedAt.present
          ? data.exportedAt.value
          : this.exportedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReporteLocalData(')
          ..write('id: $id, ')
          ..write('idLocal: $idLocal, ')
          ..write('idRemoto: $idRemoto, ')
          ..write('clientId: $clientId, ')
          ..write('installationId: $installationId, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('rutaFotoLocal: $rutaFotoLocal, ')
          ..write('fotoUrlRemota: $fotoUrlRemota, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('precisionGps: $precisionGps, ')
          ..write('fechaHora: $fechaHora, ')
          ..write('viaSector: $viaSector, ')
          ..write('barrio: $barrio, ')
          ..write('puntoReferencia: $puntoReferencia, ')
          ..write('descripcionCiudadano: $descripcionCiudadano, ')
          ..write('estadoReporte: $estadoReporte, ')
          ..write('estadoSincronizacion: $estadoSincronizacion, ')
          ..write('estadoIa: $estadoIa, ')
          ..write('clasificacionProfesional: $clasificacionProfesional, ')
          ..write('severidadProfesional: $severidadProfesional, ')
          ..write('superficie: $superficie, ')
          ..write('largoCm: $largoCm, ')
          ..write('anchoCm: $anchoCm, ')
          ..write('profundidadCm: $profundidadCm, ')
          ..write('observacionProfesional: $observacionProfesional, ')
          ..write('profesionalId: $profesionalId, ')
          ..write('fechaValidacion: $fechaValidacion, ')
          ..write('clasificacionIa: $clasificacionIa, ')
          ..write('confianzaIa: $confianzaIa, ')
          ..write('resultadoSegmentacion: $resultadoSegmentacion, ')
          ..write('lastSyncAttempt: $lastSyncAttempt, ')
          ..write('syncError: $syncError, ')
          ..write('retryCount: $retryCount, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('cancelledAt: $cancelledAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('campaignId: $campaignId, ')
          ..write('campaignName: $campaignName, ')
          ..write('collectorName: $collectorName, ')
          ..write('collectorUniversityCode: $collectorUniversityCode, ')
          ..write('photoFilename: $photoFilename, ')
          ..write('photoSizeBytes: $photoSizeBytes, ')
          ..write('imageWidth: $imageWidth, ')
          ..write('imageHeight: $imageHeight, ')
          ..write('municipality: $municipality, ')
          ..write('department: $department, ')
          ..write('country: $country, ')
          ..write('locationSource: $locationSource, ')
          ..write('damageType: $damageType, ')
          ..write('surfaceType: $surfaceType, ')
          ..write('status: $status, ')
          ..write('exportedAt: $exportedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    idLocal,
    idRemoto,
    clientId,
    installationId,
    usuarioId,
    rutaFotoLocal,
    fotoUrlRemota,
    latitud,
    longitud,
    precisionGps,
    fechaHora,
    viaSector,
    barrio,
    puntoReferencia,
    descripcionCiudadano,
    estadoReporte,
    estadoSincronizacion,
    estadoIa,
    clasificacionProfesional,
    severidadProfesional,
    superficie,
    largoCm,
    anchoCm,
    profundidadCm,
    observacionProfesional,
    profesionalId,
    fechaValidacion,
    clasificacionIa,
    confianzaIa,
    resultadoSegmentacion,
    lastSyncAttempt,
    syncError,
    retryCount,
    deletedAt,
    cancelledAt,
    createdAt,
    updatedAt,
    campaignId,
    campaignName,
    collectorName,
    collectorUniversityCode,
    photoFilename,
    photoSizeBytes,
    imageWidth,
    imageHeight,
    municipality,
    department,
    country,
    locationSource,
    damageType,
    surfaceType,
    status,
    exportedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReporteLocalData &&
          other.id == this.id &&
          other.idLocal == this.idLocal &&
          other.idRemoto == this.idRemoto &&
          other.clientId == this.clientId &&
          other.installationId == this.installationId &&
          other.usuarioId == this.usuarioId &&
          other.rutaFotoLocal == this.rutaFotoLocal &&
          other.fotoUrlRemota == this.fotoUrlRemota &&
          other.latitud == this.latitud &&
          other.longitud == this.longitud &&
          other.precisionGps == this.precisionGps &&
          other.fechaHora == this.fechaHora &&
          other.viaSector == this.viaSector &&
          other.barrio == this.barrio &&
          other.puntoReferencia == this.puntoReferencia &&
          other.descripcionCiudadano == this.descripcionCiudadano &&
          other.estadoReporte == this.estadoReporte &&
          other.estadoSincronizacion == this.estadoSincronizacion &&
          other.estadoIa == this.estadoIa &&
          other.clasificacionProfesional == this.clasificacionProfesional &&
          other.severidadProfesional == this.severidadProfesional &&
          other.superficie == this.superficie &&
          other.largoCm == this.largoCm &&
          other.anchoCm == this.anchoCm &&
          other.profundidadCm == this.profundidadCm &&
          other.observacionProfesional == this.observacionProfesional &&
          other.profesionalId == this.profesionalId &&
          other.fechaValidacion == this.fechaValidacion &&
          other.clasificacionIa == this.clasificacionIa &&
          other.confianzaIa == this.confianzaIa &&
          other.resultadoSegmentacion == this.resultadoSegmentacion &&
          other.lastSyncAttempt == this.lastSyncAttempt &&
          other.syncError == this.syncError &&
          other.retryCount == this.retryCount &&
          other.deletedAt == this.deletedAt &&
          other.cancelledAt == this.cancelledAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.campaignId == this.campaignId &&
          other.campaignName == this.campaignName &&
          other.collectorName == this.collectorName &&
          other.collectorUniversityCode == this.collectorUniversityCode &&
          other.photoFilename == this.photoFilename &&
          other.photoSizeBytes == this.photoSizeBytes &&
          other.imageWidth == this.imageWidth &&
          other.imageHeight == this.imageHeight &&
          other.municipality == this.municipality &&
          other.department == this.department &&
          other.country == this.country &&
          other.locationSource == this.locationSource &&
          other.damageType == this.damageType &&
          other.surfaceType == this.surfaceType &&
          other.status == this.status &&
          other.exportedAt == this.exportedAt);
}

class ReportesCompanion extends UpdateCompanion<ReporteLocalData> {
  final Value<int> id;
  final Value<String> idLocal;
  final Value<String?> idRemoto;
  final Value<String?> clientId;
  final Value<String?> installationId;
  final Value<String?> usuarioId;
  final Value<String> rutaFotoLocal;
  final Value<String?> fotoUrlRemota;
  final Value<double> latitud;
  final Value<double> longitud;
  final Value<double> precisionGps;
  final Value<DateTime> fechaHora;
  final Value<String?> viaSector;
  final Value<String?> barrio;
  final Value<String?> puntoReferencia;
  final Value<String?> descripcionCiudadano;
  final Value<String> estadoReporte;
  final Value<String> estadoSincronizacion;
  final Value<String> estadoIa;
  final Value<String?> clasificacionProfesional;
  final Value<String?> severidadProfesional;
  final Value<double?> superficie;
  final Value<double?> largoCm;
  final Value<double?> anchoCm;
  final Value<double?> profundidadCm;
  final Value<String?> observacionProfesional;
  final Value<String?> profesionalId;
  final Value<DateTime?> fechaValidacion;
  final Value<String?> clasificacionIa;
  final Value<double?> confianzaIa;
  final Value<String?> resultadoSegmentacion;
  final Value<DateTime?> lastSyncAttempt;
  final Value<String?> syncError;
  final Value<int> retryCount;
  final Value<DateTime?> deletedAt;
  final Value<DateTime?> cancelledAt;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String?> campaignId;
  final Value<String?> campaignName;
  final Value<String?> collectorName;
  final Value<String?> collectorUniversityCode;
  final Value<String?> photoFilename;
  final Value<int?> photoSizeBytes;
  final Value<int?> imageWidth;
  final Value<int?> imageHeight;
  final Value<String?> municipality;
  final Value<String?> department;
  final Value<String?> country;
  final Value<String?> locationSource;
  final Value<String?> damageType;
  final Value<String?> surfaceType;
  final Value<String> status;
  final Value<DateTime?> exportedAt;
  const ReportesCompanion({
    this.id = const Value.absent(),
    this.idLocal = const Value.absent(),
    this.idRemoto = const Value.absent(),
    this.clientId = const Value.absent(),
    this.installationId = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.rutaFotoLocal = const Value.absent(),
    this.fotoUrlRemota = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.precisionGps = const Value.absent(),
    this.fechaHora = const Value.absent(),
    this.viaSector = const Value.absent(),
    this.barrio = const Value.absent(),
    this.puntoReferencia = const Value.absent(),
    this.descripcionCiudadano = const Value.absent(),
    this.estadoReporte = const Value.absent(),
    this.estadoSincronizacion = const Value.absent(),
    this.estadoIa = const Value.absent(),
    this.clasificacionProfesional = const Value.absent(),
    this.severidadProfesional = const Value.absent(),
    this.superficie = const Value.absent(),
    this.largoCm = const Value.absent(),
    this.anchoCm = const Value.absent(),
    this.profundidadCm = const Value.absent(),
    this.observacionProfesional = const Value.absent(),
    this.profesionalId = const Value.absent(),
    this.fechaValidacion = const Value.absent(),
    this.clasificacionIa = const Value.absent(),
    this.confianzaIa = const Value.absent(),
    this.resultadoSegmentacion = const Value.absent(),
    this.lastSyncAttempt = const Value.absent(),
    this.syncError = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.cancelledAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.campaignId = const Value.absent(),
    this.campaignName = const Value.absent(),
    this.collectorName = const Value.absent(),
    this.collectorUniversityCode = const Value.absent(),
    this.photoFilename = const Value.absent(),
    this.photoSizeBytes = const Value.absent(),
    this.imageWidth = const Value.absent(),
    this.imageHeight = const Value.absent(),
    this.municipality = const Value.absent(),
    this.department = const Value.absent(),
    this.country = const Value.absent(),
    this.locationSource = const Value.absent(),
    this.damageType = const Value.absent(),
    this.surfaceType = const Value.absent(),
    this.status = const Value.absent(),
    this.exportedAt = const Value.absent(),
  });
  ReportesCompanion.insert({
    this.id = const Value.absent(),
    required String idLocal,
    this.idRemoto = const Value.absent(),
    this.clientId = const Value.absent(),
    this.installationId = const Value.absent(),
    this.usuarioId = const Value.absent(),
    required String rutaFotoLocal,
    this.fotoUrlRemota = const Value.absent(),
    required double latitud,
    required double longitud,
    required double precisionGps,
    required DateTime fechaHora,
    this.viaSector = const Value.absent(),
    this.barrio = const Value.absent(),
    this.puntoReferencia = const Value.absent(),
    this.descripcionCiudadano = const Value.absent(),
    required String estadoReporte,
    required String estadoSincronizacion,
    required String estadoIa,
    this.clasificacionProfesional = const Value.absent(),
    this.severidadProfesional = const Value.absent(),
    this.superficie = const Value.absent(),
    this.largoCm = const Value.absent(),
    this.anchoCm = const Value.absent(),
    this.profundidadCm = const Value.absent(),
    this.observacionProfesional = const Value.absent(),
    this.profesionalId = const Value.absent(),
    this.fechaValidacion = const Value.absent(),
    this.clasificacionIa = const Value.absent(),
    this.confianzaIa = const Value.absent(),
    this.resultadoSegmentacion = const Value.absent(),
    this.lastSyncAttempt = const Value.absent(),
    this.syncError = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.cancelledAt = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.campaignId = const Value.absent(),
    this.campaignName = const Value.absent(),
    this.collectorName = const Value.absent(),
    this.collectorUniversityCode = const Value.absent(),
    this.photoFilename = const Value.absent(),
    this.photoSizeBytes = const Value.absent(),
    this.imageWidth = const Value.absent(),
    this.imageHeight = const Value.absent(),
    this.municipality = const Value.absent(),
    this.department = const Value.absent(),
    this.country = const Value.absent(),
    this.locationSource = const Value.absent(),
    this.damageType = const Value.absent(),
    this.surfaceType = const Value.absent(),
    this.status = const Value.absent(),
    this.exportedAt = const Value.absent(),
  }) : idLocal = Value(idLocal),
       rutaFotoLocal = Value(rutaFotoLocal),
       latitud = Value(latitud),
       longitud = Value(longitud),
       precisionGps = Value(precisionGps),
       fechaHora = Value(fechaHora),
       estadoReporte = Value(estadoReporte),
       estadoSincronizacion = Value(estadoSincronizacion),
       estadoIa = Value(estadoIa),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<ReporteLocalData> custom({
    Expression<int>? id,
    Expression<String>? idLocal,
    Expression<String>? idRemoto,
    Expression<String>? clientId,
    Expression<String>? installationId,
    Expression<String>? usuarioId,
    Expression<String>? rutaFotoLocal,
    Expression<String>? fotoUrlRemota,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<double>? precisionGps,
    Expression<DateTime>? fechaHora,
    Expression<String>? viaSector,
    Expression<String>? barrio,
    Expression<String>? puntoReferencia,
    Expression<String>? descripcionCiudadano,
    Expression<String>? estadoReporte,
    Expression<String>? estadoSincronizacion,
    Expression<String>? estadoIa,
    Expression<String>? clasificacionProfesional,
    Expression<String>? severidadProfesional,
    Expression<double>? superficie,
    Expression<double>? largoCm,
    Expression<double>? anchoCm,
    Expression<double>? profundidadCm,
    Expression<String>? observacionProfesional,
    Expression<String>? profesionalId,
    Expression<DateTime>? fechaValidacion,
    Expression<String>? clasificacionIa,
    Expression<double>? confianzaIa,
    Expression<String>? resultadoSegmentacion,
    Expression<DateTime>? lastSyncAttempt,
    Expression<String>? syncError,
    Expression<int>? retryCount,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? cancelledAt,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? campaignId,
    Expression<String>? campaignName,
    Expression<String>? collectorName,
    Expression<String>? collectorUniversityCode,
    Expression<String>? photoFilename,
    Expression<int>? photoSizeBytes,
    Expression<int>? imageWidth,
    Expression<int>? imageHeight,
    Expression<String>? municipality,
    Expression<String>? department,
    Expression<String>? country,
    Expression<String>? locationSource,
    Expression<String>? damageType,
    Expression<String>? surfaceType,
    Expression<String>? status,
    Expression<DateTime>? exportedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idLocal != null) 'id_local': idLocal,
      if (idRemoto != null) 'id_remoto': idRemoto,
      if (clientId != null) 'client_id': clientId,
      if (installationId != null) 'installation_id': installationId,
      if (usuarioId != null) 'usuario_id': usuarioId,
      if (rutaFotoLocal != null) 'ruta_foto_local': rutaFotoLocal,
      if (fotoUrlRemota != null) 'foto_url_remota': fotoUrlRemota,
      if (latitud != null) 'latitud': latitud,
      if (longitud != null) 'longitud': longitud,
      if (precisionGps != null) 'precision_gps': precisionGps,
      if (fechaHora != null) 'fecha_hora': fechaHora,
      if (viaSector != null) 'via_sector': viaSector,
      if (barrio != null) 'barrio': barrio,
      if (puntoReferencia != null) 'punto_referencia': puntoReferencia,
      if (descripcionCiudadano != null)
        'descripcion_ciudadano': descripcionCiudadano,
      if (estadoReporte != null) 'estado_reporte': estadoReporte,
      if (estadoSincronizacion != null)
        'estado_sincronizacion': estadoSincronizacion,
      if (estadoIa != null) 'estado_ia': estadoIa,
      if (clasificacionProfesional != null)
        'clasificacion_profesional': clasificacionProfesional,
      if (severidadProfesional != null)
        'severidad_profesional': severidadProfesional,
      if (superficie != null) 'superficie': superficie,
      if (largoCm != null) 'largo_cm': largoCm,
      if (anchoCm != null) 'ancho_cm': anchoCm,
      if (profundidadCm != null) 'profundidad_cm': profundidadCm,
      if (observacionProfesional != null)
        'observacion_profesional': observacionProfesional,
      if (profesionalId != null) 'profesional_id': profesionalId,
      if (fechaValidacion != null) 'fecha_validacion': fechaValidacion,
      if (clasificacionIa != null) 'clasificacion_ia': clasificacionIa,
      if (confianzaIa != null) 'confianza_ia': confianzaIa,
      if (resultadoSegmentacion != null)
        'resultado_segmentacion': resultadoSegmentacion,
      if (lastSyncAttempt != null) 'last_sync_attempt': lastSyncAttempt,
      if (syncError != null) 'sync_error': syncError,
      if (retryCount != null) 'retry_count': retryCount,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (cancelledAt != null) 'cancelled_at': cancelledAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (campaignId != null) 'campaign_id': campaignId,
      if (campaignName != null) 'campaign_name': campaignName,
      if (collectorName != null) 'collector_name': collectorName,
      if (collectorUniversityCode != null)
        'collector_university_code': collectorUniversityCode,
      if (photoFilename != null) 'photo_filename': photoFilename,
      if (photoSizeBytes != null) 'photo_size_bytes': photoSizeBytes,
      if (imageWidth != null) 'image_width': imageWidth,
      if (imageHeight != null) 'image_height': imageHeight,
      if (municipality != null) 'municipality': municipality,
      if (department != null) 'department': department,
      if (country != null) 'country': country,
      if (locationSource != null) 'location_source': locationSource,
      if (damageType != null) 'damage_type': damageType,
      if (surfaceType != null) 'surface_type': surfaceType,
      if (status != null) 'status': status,
      if (exportedAt != null) 'exported_at': exportedAt,
    });
  }

  ReportesCompanion copyWith({
    Value<int>? id,
    Value<String>? idLocal,
    Value<String?>? idRemoto,
    Value<String?>? clientId,
    Value<String?>? installationId,
    Value<String?>? usuarioId,
    Value<String>? rutaFotoLocal,
    Value<String?>? fotoUrlRemota,
    Value<double>? latitud,
    Value<double>? longitud,
    Value<double>? precisionGps,
    Value<DateTime>? fechaHora,
    Value<String?>? viaSector,
    Value<String?>? barrio,
    Value<String?>? puntoReferencia,
    Value<String?>? descripcionCiudadano,
    Value<String>? estadoReporte,
    Value<String>? estadoSincronizacion,
    Value<String>? estadoIa,
    Value<String?>? clasificacionProfesional,
    Value<String?>? severidadProfesional,
    Value<double?>? superficie,
    Value<double?>? largoCm,
    Value<double?>? anchoCm,
    Value<double?>? profundidadCm,
    Value<String?>? observacionProfesional,
    Value<String?>? profesionalId,
    Value<DateTime?>? fechaValidacion,
    Value<String?>? clasificacionIa,
    Value<double?>? confianzaIa,
    Value<String?>? resultadoSegmentacion,
    Value<DateTime?>? lastSyncAttempt,
    Value<String?>? syncError,
    Value<int>? retryCount,
    Value<DateTime?>? deletedAt,
    Value<DateTime?>? cancelledAt,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String?>? campaignId,
    Value<String?>? campaignName,
    Value<String?>? collectorName,
    Value<String?>? collectorUniversityCode,
    Value<String?>? photoFilename,
    Value<int?>? photoSizeBytes,
    Value<int?>? imageWidth,
    Value<int?>? imageHeight,
    Value<String?>? municipality,
    Value<String?>? department,
    Value<String?>? country,
    Value<String?>? locationSource,
    Value<String?>? damageType,
    Value<String?>? surfaceType,
    Value<String>? status,
    Value<DateTime?>? exportedAt,
  }) {
    return ReportesCompanion(
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
      clasificacionProfesional:
          clasificacionProfesional ?? this.clasificacionProfesional,
      severidadProfesional: severidadProfesional ?? this.severidadProfesional,
      superficie: superficie ?? this.superficie,
      largoCm: largoCm ?? this.largoCm,
      anchoCm: anchoCm ?? this.anchoCm,
      profundidadCm: profundidadCm ?? this.profundidadCm,
      observacionProfesional:
          observacionProfesional ?? this.observacionProfesional,
      profesionalId: profesionalId ?? this.profesionalId,
      fechaValidacion: fechaValidacion ?? this.fechaValidacion,
      clasificacionIa: clasificacionIa ?? this.clasificacionIa,
      confianzaIa: confianzaIa ?? this.confianzaIa,
      resultadoSegmentacion:
          resultadoSegmentacion ?? this.resultadoSegmentacion,
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
      collectorUniversityCode:
          collectorUniversityCode ?? this.collectorUniversityCode,
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
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idLocal.present) {
      map['id_local'] = Variable<String>(idLocal.value);
    }
    if (idRemoto.present) {
      map['id_remoto'] = Variable<String>(idRemoto.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (installationId.present) {
      map['installation_id'] = Variable<String>(installationId.value);
    }
    if (usuarioId.present) {
      map['usuario_id'] = Variable<String>(usuarioId.value);
    }
    if (rutaFotoLocal.present) {
      map['ruta_foto_local'] = Variable<String>(rutaFotoLocal.value);
    }
    if (fotoUrlRemota.present) {
      map['foto_url_remota'] = Variable<String>(fotoUrlRemota.value);
    }
    if (latitud.present) {
      map['latitud'] = Variable<double>(latitud.value);
    }
    if (longitud.present) {
      map['longitud'] = Variable<double>(longitud.value);
    }
    if (precisionGps.present) {
      map['precision_gps'] = Variable<double>(precisionGps.value);
    }
    if (fechaHora.present) {
      map['fecha_hora'] = Variable<DateTime>(fechaHora.value);
    }
    if (viaSector.present) {
      map['via_sector'] = Variable<String>(viaSector.value);
    }
    if (barrio.present) {
      map['barrio'] = Variable<String>(barrio.value);
    }
    if (puntoReferencia.present) {
      map['punto_referencia'] = Variable<String>(puntoReferencia.value);
    }
    if (descripcionCiudadano.present) {
      map['descripcion_ciudadano'] = Variable<String>(
        descripcionCiudadano.value,
      );
    }
    if (estadoReporte.present) {
      map['estado_reporte'] = Variable<String>(estadoReporte.value);
    }
    if (estadoSincronizacion.present) {
      map['estado_sincronizacion'] = Variable<String>(
        estadoSincronizacion.value,
      );
    }
    if (estadoIa.present) {
      map['estado_ia'] = Variable<String>(estadoIa.value);
    }
    if (clasificacionProfesional.present) {
      map['clasificacion_profesional'] = Variable<String>(
        clasificacionProfesional.value,
      );
    }
    if (severidadProfesional.present) {
      map['severidad_profesional'] = Variable<String>(
        severidadProfesional.value,
      );
    }
    if (superficie.present) {
      map['superficie'] = Variable<double>(superficie.value);
    }
    if (largoCm.present) {
      map['largo_cm'] = Variable<double>(largoCm.value);
    }
    if (anchoCm.present) {
      map['ancho_cm'] = Variable<double>(anchoCm.value);
    }
    if (profundidadCm.present) {
      map['profundidad_cm'] = Variable<double>(profundidadCm.value);
    }
    if (observacionProfesional.present) {
      map['observacion_profesional'] = Variable<String>(
        observacionProfesional.value,
      );
    }
    if (profesionalId.present) {
      map['profesional_id'] = Variable<String>(profesionalId.value);
    }
    if (fechaValidacion.present) {
      map['fecha_validacion'] = Variable<DateTime>(fechaValidacion.value);
    }
    if (clasificacionIa.present) {
      map['clasificacion_ia'] = Variable<String>(clasificacionIa.value);
    }
    if (confianzaIa.present) {
      map['confianza_ia'] = Variable<double>(confianzaIa.value);
    }
    if (resultadoSegmentacion.present) {
      map['resultado_segmentacion'] = Variable<String>(
        resultadoSegmentacion.value,
      );
    }
    if (lastSyncAttempt.present) {
      map['last_sync_attempt'] = Variable<DateTime>(lastSyncAttempt.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    if (retryCount.present) {
      map['retry_count'] = Variable<int>(retryCount.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (cancelledAt.present) {
      map['cancelled_at'] = Variable<DateTime>(cancelledAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (campaignId.present) {
      map['campaign_id'] = Variable<String>(campaignId.value);
    }
    if (campaignName.present) {
      map['campaign_name'] = Variable<String>(campaignName.value);
    }
    if (collectorName.present) {
      map['collector_name'] = Variable<String>(collectorName.value);
    }
    if (collectorUniversityCode.present) {
      map['collector_university_code'] = Variable<String>(
        collectorUniversityCode.value,
      );
    }
    if (photoFilename.present) {
      map['photo_filename'] = Variable<String>(photoFilename.value);
    }
    if (photoSizeBytes.present) {
      map['photo_size_bytes'] = Variable<int>(photoSizeBytes.value);
    }
    if (imageWidth.present) {
      map['image_width'] = Variable<int>(imageWidth.value);
    }
    if (imageHeight.present) {
      map['image_height'] = Variable<int>(imageHeight.value);
    }
    if (municipality.present) {
      map['municipality'] = Variable<String>(municipality.value);
    }
    if (department.present) {
      map['department'] = Variable<String>(department.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (locationSource.present) {
      map['location_source'] = Variable<String>(locationSource.value);
    }
    if (damageType.present) {
      map['damage_type'] = Variable<String>(damageType.value);
    }
    if (surfaceType.present) {
      map['surface_type'] = Variable<String>(surfaceType.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (exportedAt.present) {
      map['exported_at'] = Variable<DateTime>(exportedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReportesCompanion(')
          ..write('id: $id, ')
          ..write('idLocal: $idLocal, ')
          ..write('idRemoto: $idRemoto, ')
          ..write('clientId: $clientId, ')
          ..write('installationId: $installationId, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('rutaFotoLocal: $rutaFotoLocal, ')
          ..write('fotoUrlRemota: $fotoUrlRemota, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('precisionGps: $precisionGps, ')
          ..write('fechaHora: $fechaHora, ')
          ..write('viaSector: $viaSector, ')
          ..write('barrio: $barrio, ')
          ..write('puntoReferencia: $puntoReferencia, ')
          ..write('descripcionCiudadano: $descripcionCiudadano, ')
          ..write('estadoReporte: $estadoReporte, ')
          ..write('estadoSincronizacion: $estadoSincronizacion, ')
          ..write('estadoIa: $estadoIa, ')
          ..write('clasificacionProfesional: $clasificacionProfesional, ')
          ..write('severidadProfesional: $severidadProfesional, ')
          ..write('superficie: $superficie, ')
          ..write('largoCm: $largoCm, ')
          ..write('anchoCm: $anchoCm, ')
          ..write('profundidadCm: $profundidadCm, ')
          ..write('observacionProfesional: $observacionProfesional, ')
          ..write('profesionalId: $profesionalId, ')
          ..write('fechaValidacion: $fechaValidacion, ')
          ..write('clasificacionIa: $clasificacionIa, ')
          ..write('confianzaIa: $confianzaIa, ')
          ..write('resultadoSegmentacion: $resultadoSegmentacion, ')
          ..write('lastSyncAttempt: $lastSyncAttempt, ')
          ..write('syncError: $syncError, ')
          ..write('retryCount: $retryCount, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('cancelledAt: $cancelledAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('campaignId: $campaignId, ')
          ..write('campaignName: $campaignName, ')
          ..write('collectorName: $collectorName, ')
          ..write('collectorUniversityCode: $collectorUniversityCode, ')
          ..write('photoFilename: $photoFilename, ')
          ..write('photoSizeBytes: $photoSizeBytes, ')
          ..write('imageWidth: $imageWidth, ')
          ..write('imageHeight: $imageHeight, ')
          ..write('municipality: $municipality, ')
          ..write('department: $department, ')
          ..write('country: $country, ')
          ..write('locationSource: $locationSource, ')
          ..write('damageType: $damageType, ')
          ..write('surfaceType: $surfaceType, ')
          ..write('status: $status, ')
          ..write('exportedAt: $exportedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ReportesTable reportes = $ReportesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [reportes];
}

typedef $$ReportesTableCreateCompanionBuilder = ReportesCompanion Function({
  Value<int> id,
  required String idLocal,
  Value<String?> idRemoto,
  Value<String?> clientId,
  Value<String?> installationId,
  Value<String?> usuarioId,
  required String rutaFotoLocal,
  Value<String?> fotoUrlRemota,
  required double latitud,
  required double longitud,
  required double precisionGps,
  required DateTime fechaHora,
  Value<String?> viaSector,
  Value<String?> barrio,
  Value<String?> puntoReferencia,
  Value<String?> descripcionCiudadano,
  required String estadoReporte,
  required String estadoSincronizacion,
  required String estadoIa,
  Value<String?> clasificacionProfesional,
  Value<String?> severidadProfesional,
  Value<double?> superficie,
  Value<double?> largoCm,
  Value<double?> anchoCm,
  Value<double?> profundidadCm,
  Value<String?> observacionProfesional,
  Value<String?> profesionalId,
  Value<DateTime?> fechaValidacion,
  Value<String?> clasificacionIa,
  Value<double?> confianzaIa,
  Value<String?> resultadoSegmentacion,
  Value<DateTime?> lastSyncAttempt,
  Value<String?> syncError,
  Value<int> retryCount,
  Value<DateTime?> deletedAt,
  Value<DateTime?> cancelledAt,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<String?> campaignId,
  Value<String?> campaignName,
  Value<String?> collectorName,
  Value<String?> collectorUniversityCode,
  Value<String?> photoFilename,
  Value<int?> photoSizeBytes,
  Value<int?> imageWidth,
  Value<int?> imageHeight,
  Value<String?> municipality,
  Value<String?> department,
  Value<String?> country,
  Value<String?> locationSource,
  Value<String?> damageType,
  Value<String?> surfaceType,
  Value<String> status,
  Value<DateTime?> exportedAt,
});
typedef $$ReportesTableUpdateCompanionBuilder = ReportesCompanion Function({
  Value<int> id,
  Value<String> idLocal,
  Value<String?> idRemoto,
  Value<String?> clientId,
  Value<String?> installationId,
  Value<String?> usuarioId,
  Value<String> rutaFotoLocal,
  Value<String?> fotoUrlRemota,
  Value<double> latitud,
  Value<double> longitud,
  Value<double> precisionGps,
  Value<DateTime> fechaHora,
  Value<String?> viaSector,
  Value<String?> barrio,
  Value<String?> puntoReferencia,
  Value<String?> descripcionCiudadano,
  Value<String> estadoReporte,
  Value<String> estadoSincronizacion,
  Value<String> estadoIa,
  Value<String?> clasificacionProfesional,
  Value<String?> severidadProfesional,
  Value<double?> superficie,
  Value<double?> largoCm,
  Value<double?> anchoCm,
  Value<double?> profundidadCm,
  Value<String?> observacionProfesional,
  Value<String?> profesionalId,
  Value<DateTime?> fechaValidacion,
  Value<String?> clasificacionIa,
  Value<double?> confianzaIa,
  Value<String?> resultadoSegmentacion,
  Value<DateTime?> lastSyncAttempt,
  Value<String?> syncError,
  Value<int> retryCount,
  Value<DateTime?> deletedAt,
  Value<DateTime?> cancelledAt,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String?> campaignId,
  Value<String?> campaignName,
  Value<String?> collectorName,
  Value<String?> collectorUniversityCode,
  Value<String?> photoFilename,
  Value<int?> photoSizeBytes,
  Value<int?> imageWidth,
  Value<int?> imageHeight,
  Value<String?> municipality,
  Value<String?> department,
  Value<String?> country,
  Value<String?> locationSource,
  Value<String?> damageType,
  Value<String?> surfaceType,
  Value<String> status,
  Value<DateTime?> exportedAt,
});

class $$ReportesTableFilterComposer
    extends Composer<_$AppDatabase, $ReportesTable> {
  $$ReportesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get idLocal => $composableBuilder(
    column: $table.idLocal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get idRemoto => $composableBuilder(
    column: $table.idRemoto,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get installationId => $composableBuilder(
    column: $table.installationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get usuarioId => $composableBuilder(
    column: $table.usuarioId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rutaFotoLocal => $composableBuilder(
    column: $table.rutaFotoLocal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fotoUrlRemota => $composableBuilder(
    column: $table.fotoUrlRemota,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitud => $composableBuilder(
    column: $table.latitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitud => $composableBuilder(
    column: $table.longitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get precisionGps => $composableBuilder(
    column: $table.precisionGps,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaHora => $composableBuilder(
    column: $table.fechaHora,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get viaSector => $composableBuilder(
    column: $table.viaSector,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get barrio => $composableBuilder(
    column: $table.barrio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get puntoReferencia => $composableBuilder(
    column: $table.puntoReferencia,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get descripcionCiudadano => $composableBuilder(
    column: $table.descripcionCiudadano,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get estadoReporte => $composableBuilder(
    column: $table.estadoReporte,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get estadoSincronizacion => $composableBuilder(
    column: $table.estadoSincronizacion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get estadoIa => $composableBuilder(
    column: $table.estadoIa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clasificacionProfesional => $composableBuilder(
    column: $table.clasificacionProfesional,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get severidadProfesional => $composableBuilder(
    column: $table.severidadProfesional,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get superficie => $composableBuilder(
    column: $table.superficie,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get largoCm => $composableBuilder(
    column: $table.largoCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get anchoCm => $composableBuilder(
    column: $table.anchoCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get profundidadCm => $composableBuilder(
    column: $table.profundidadCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get observacionProfesional => $composableBuilder(
    column: $table.observacionProfesional,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get profesionalId => $composableBuilder(
    column: $table.profesionalId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaValidacion => $composableBuilder(
    column: $table.fechaValidacion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clasificacionIa => $composableBuilder(
    column: $table.clasificacionIa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get confianzaIa => $composableBuilder(
    column: $table.confianzaIa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get resultadoSegmentacion => $composableBuilder(
    column: $table.resultadoSegmentacion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSyncAttempt => $composableBuilder(
    column: $table.lastSyncAttempt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncError => $composableBuilder(
    column: $table.syncError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cancelledAt => $composableBuilder(
    column: $table.cancelledAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get campaignId => $composableBuilder(
    column: $table.campaignId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get campaignName => $composableBuilder(
    column: $table.campaignName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get collectorName => $composableBuilder(
    column: $table.collectorName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get collectorUniversityCode => $composableBuilder(
    column: $table.collectorUniversityCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoFilename => $composableBuilder(
    column: $table.photoFilename,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get photoSizeBytes => $composableBuilder(
    column: $table.photoSizeBytes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get imageWidth => $composableBuilder(
    column: $table.imageWidth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get imageHeight => $composableBuilder(
    column: $table.imageHeight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get municipality => $composableBuilder(
    column: $table.municipality,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get department => $composableBuilder(
    column: $table.department,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationSource => $composableBuilder(
    column: $table.locationSource,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get damageType => $composableBuilder(
    column: $table.damageType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get surfaceType => $composableBuilder(
    column: $table.surfaceType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get exportedAt => $composableBuilder(
    column: $table.exportedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ReportesTableOrderingComposer
    extends Composer<_$AppDatabase, $ReportesTable> {
  $$ReportesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get idLocal => $composableBuilder(
    column: $table.idLocal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get idRemoto => $composableBuilder(
    column: $table.idRemoto,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get installationId => $composableBuilder(
    column: $table.installationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get usuarioId => $composableBuilder(
    column: $table.usuarioId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rutaFotoLocal => $composableBuilder(
    column: $table.rutaFotoLocal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fotoUrlRemota => $composableBuilder(
    column: $table.fotoUrlRemota,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitud => $composableBuilder(
    column: $table.latitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitud => $composableBuilder(
    column: $table.longitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get precisionGps => $composableBuilder(
    column: $table.precisionGps,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaHora => $composableBuilder(
    column: $table.fechaHora,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get viaSector => $composableBuilder(
    column: $table.viaSector,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get barrio => $composableBuilder(
    column: $table.barrio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get puntoReferencia => $composableBuilder(
    column: $table.puntoReferencia,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get descripcionCiudadano => $composableBuilder(
    column: $table.descripcionCiudadano,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get estadoReporte => $composableBuilder(
    column: $table.estadoReporte,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get estadoSincronizacion => $composableBuilder(
    column: $table.estadoSincronizacion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get estadoIa => $composableBuilder(
    column: $table.estadoIa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clasificacionProfesional => $composableBuilder(
    column: $table.clasificacionProfesional,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get severidadProfesional => $composableBuilder(
    column: $table.severidadProfesional,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get superficie => $composableBuilder(
    column: $table.superficie,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get largoCm => $composableBuilder(
    column: $table.largoCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get anchoCm => $composableBuilder(
    column: $table.anchoCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get profundidadCm => $composableBuilder(
    column: $table.profundidadCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get observacionProfesional => $composableBuilder(
    column: $table.observacionProfesional,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get profesionalId => $composableBuilder(
    column: $table.profesionalId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaValidacion => $composableBuilder(
    column: $table.fechaValidacion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clasificacionIa => $composableBuilder(
    column: $table.clasificacionIa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get confianzaIa => $composableBuilder(
    column: $table.confianzaIa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get resultadoSegmentacion => $composableBuilder(
    column: $table.resultadoSegmentacion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSyncAttempt => $composableBuilder(
    column: $table.lastSyncAttempt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncError => $composableBuilder(
    column: $table.syncError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cancelledAt => $composableBuilder(
    column: $table.cancelledAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get campaignId => $composableBuilder(
    column: $table.campaignId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get campaignName => $composableBuilder(
    column: $table.campaignName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get collectorName => $composableBuilder(
    column: $table.collectorName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get collectorUniversityCode => $composableBuilder(
    column: $table.collectorUniversityCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoFilename => $composableBuilder(
    column: $table.photoFilename,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get photoSizeBytes => $composableBuilder(
    column: $table.photoSizeBytes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get imageWidth => $composableBuilder(
    column: $table.imageWidth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get imageHeight => $composableBuilder(
    column: $table.imageHeight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get municipality => $composableBuilder(
    column: $table.municipality,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get department => $composableBuilder(
    column: $table.department,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationSource => $composableBuilder(
    column: $table.locationSource,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get damageType => $composableBuilder(
    column: $table.damageType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get surfaceType => $composableBuilder(
    column: $table.surfaceType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get exportedAt => $composableBuilder(
    column: $table.exportedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReportesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReportesTable> {
  $$ReportesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get idLocal =>
      $composableBuilder(column: $table.idLocal, builder: (column) => column);

  GeneratedColumn<String> get idRemoto =>
      $composableBuilder(column: $table.idRemoto, builder: (column) => column);

  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get installationId => $composableBuilder(
    column: $table.installationId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get usuarioId =>
      $composableBuilder(column: $table.usuarioId, builder: (column) => column);

  GeneratedColumn<String> get rutaFotoLocal => $composableBuilder(
    column: $table.rutaFotoLocal,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fotoUrlRemota => $composableBuilder(
    column: $table.fotoUrlRemota,
    builder: (column) => column,
  );

  GeneratedColumn<double> get latitud =>
      $composableBuilder(column: $table.latitud, builder: (column) => column);

  GeneratedColumn<double> get longitud =>
      $composableBuilder(column: $table.longitud, builder: (column) => column);

  GeneratedColumn<double> get precisionGps => $composableBuilder(
    column: $table.precisionGps,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaHora =>
      $composableBuilder(column: $table.fechaHora, builder: (column) => column);

  GeneratedColumn<String> get viaSector =>
      $composableBuilder(column: $table.viaSector, builder: (column) => column);

  GeneratedColumn<String> get barrio =>
      $composableBuilder(column: $table.barrio, builder: (column) => column);

  GeneratedColumn<String> get puntoReferencia => $composableBuilder(
    column: $table.puntoReferencia,
    builder: (column) => column,
  );

  GeneratedColumn<String> get descripcionCiudadano => $composableBuilder(
    column: $table.descripcionCiudadano,
    builder: (column) => column,
  );

  GeneratedColumn<String> get estadoReporte => $composableBuilder(
    column: $table.estadoReporte,
    builder: (column) => column,
  );

  GeneratedColumn<String> get estadoSincronizacion => $composableBuilder(
    column: $table.estadoSincronizacion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get estadoIa =>
      $composableBuilder(column: $table.estadoIa, builder: (column) => column);

  GeneratedColumn<String> get clasificacionProfesional => $composableBuilder(
    column: $table.clasificacionProfesional,
    builder: (column) => column,
  );

  GeneratedColumn<String> get severidadProfesional => $composableBuilder(
    column: $table.severidadProfesional,
    builder: (column) => column,
  );

  GeneratedColumn<double> get superficie => $composableBuilder(
    column: $table.superficie,
    builder: (column) => column,
  );

  GeneratedColumn<double> get largoCm =>
      $composableBuilder(column: $table.largoCm, builder: (column) => column);

  GeneratedColumn<double> get anchoCm =>
      $composableBuilder(column: $table.anchoCm, builder: (column) => column);

  GeneratedColumn<double> get profundidadCm => $composableBuilder(
    column: $table.profundidadCm,
    builder: (column) => column,
  );

  GeneratedColumn<String> get observacionProfesional => $composableBuilder(
    column: $table.observacionProfesional,
    builder: (column) => column,
  );

  GeneratedColumn<String> get profesionalId => $composableBuilder(
    column: $table.profesionalId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaValidacion => $composableBuilder(
    column: $table.fechaValidacion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get clasificacionIa => $composableBuilder(
    column: $table.clasificacionIa,
    builder: (column) => column,
  );

  GeneratedColumn<double> get confianzaIa => $composableBuilder(
    column: $table.confianzaIa,
    builder: (column) => column,
  );

  GeneratedColumn<String> get resultadoSegmentacion => $composableBuilder(
    column: $table.resultadoSegmentacion,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSyncAttempt => $composableBuilder(
    column: $table.lastSyncAttempt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncError =>
      $composableBuilder(column: $table.syncError, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get cancelledAt => $composableBuilder(
    column: $table.cancelledAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get campaignId => $composableBuilder(
    column: $table.campaignId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get campaignName => $composableBuilder(
    column: $table.campaignName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get collectorName => $composableBuilder(
    column: $table.collectorName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get collectorUniversityCode => $composableBuilder(
    column: $table.collectorUniversityCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get photoFilename => $composableBuilder(
    column: $table.photoFilename,
    builder: (column) => column,
  );

  GeneratedColumn<int> get photoSizeBytes => $composableBuilder(
    column: $table.photoSizeBytes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get imageWidth => $composableBuilder(
    column: $table.imageWidth,
    builder: (column) => column,
  );

  GeneratedColumn<int> get imageHeight => $composableBuilder(
    column: $table.imageHeight,
    builder: (column) => column,
  );

  GeneratedColumn<String> get municipality => $composableBuilder(
    column: $table.municipality,
    builder: (column) => column,
  );

  GeneratedColumn<String> get department => $composableBuilder(
    column: $table.department,
    builder: (column) => column,
  );

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get locationSource => $composableBuilder(
    column: $table.locationSource,
    builder: (column) => column,
  );

  GeneratedColumn<String> get damageType => $composableBuilder(
    column: $table.damageType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get surfaceType => $composableBuilder(
    column: $table.surfaceType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get exportedAt => $composableBuilder(
    column: $table.exportedAt,
    builder: (column) => column,
  );
}

class $$ReportesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReportesTable,
          ReporteLocalData,
          $$ReportesTableFilterComposer,
          $$ReportesTableOrderingComposer,
          $$ReportesTableAnnotationComposer,
          $$ReportesTableCreateCompanionBuilder,
          $$ReportesTableUpdateCompanionBuilder,
          (
            ReporteLocalData,
            BaseReferences<_$AppDatabase, $ReportesTable, ReporteLocalData>,
          ),
          ReporteLocalData,
          PrefetchHooks Function()
        > {
  $$ReportesTableTableManager(_$AppDatabase db, $ReportesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReportesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReportesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReportesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> idLocal = const Value.absent(),
                Value<String?> idRemoto = const Value.absent(),
                Value<String?> clientId = const Value.absent(),
                Value<String?> installationId = const Value.absent(),
                Value<String?> usuarioId = const Value.absent(),
                Value<String> rutaFotoLocal = const Value.absent(),
                Value<String?> fotoUrlRemota = const Value.absent(),
                Value<double> latitud = const Value.absent(),
                Value<double> longitud = const Value.absent(),
                Value<double> precisionGps = const Value.absent(),
                Value<DateTime> fechaHora = const Value.absent(),
                Value<String?> viaSector = const Value.absent(),
                Value<String?> barrio = const Value.absent(),
                Value<String?> puntoReferencia = const Value.absent(),
                Value<String?> descripcionCiudadano = const Value.absent(),
                Value<String> estadoReporte = const Value.absent(),
                Value<String> estadoSincronizacion = const Value.absent(),
                Value<String> estadoIa = const Value.absent(),
                Value<String?> clasificacionProfesional = const Value.absent(),
                Value<String?> severidadProfesional = const Value.absent(),
                Value<double?> superficie = const Value.absent(),
                Value<double?> largoCm = const Value.absent(),
                Value<double?> anchoCm = const Value.absent(),
                Value<double?> profundidadCm = const Value.absent(),
                Value<String?> observacionProfesional = const Value.absent(),
                Value<String?> profesionalId = const Value.absent(),
                Value<DateTime?> fechaValidacion = const Value.absent(),
                Value<String?> clasificacionIa = const Value.absent(),
                Value<double?> confianzaIa = const Value.absent(),
                Value<String?> resultadoSegmentacion = const Value.absent(),
                Value<DateTime?> lastSyncAttempt = const Value.absent(),
                Value<String?> syncError = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime?> cancelledAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String?> campaignId = const Value.absent(),
                Value<String?> campaignName = const Value.absent(),
                Value<String?> collectorName = const Value.absent(),
                Value<String?> collectorUniversityCode = const Value.absent(),
                Value<String?> photoFilename = const Value.absent(),
                Value<int?> photoSizeBytes = const Value.absent(),
                Value<int?> imageWidth = const Value.absent(),
                Value<int?> imageHeight = const Value.absent(),
                Value<String?> municipality = const Value.absent(),
                Value<String?> department = const Value.absent(),
                Value<String?> country = const Value.absent(),
                Value<String?> locationSource = const Value.absent(),
                Value<String?> damageType = const Value.absent(),
                Value<String?> surfaceType = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime?> exportedAt = const Value.absent(),
              }) => ReportesCompanion(
                id: id,
                idLocal: idLocal,
                idRemoto: idRemoto,
                clientId: clientId,
                installationId: installationId,
                usuarioId: usuarioId,
                rutaFotoLocal: rutaFotoLocal,
                fotoUrlRemota: fotoUrlRemota,
                latitud: latitud,
                longitud: longitud,
                precisionGps: precisionGps,
                fechaHora: fechaHora,
                viaSector: viaSector,
                barrio: barrio,
                puntoReferencia: puntoReferencia,
                descripcionCiudadano: descripcionCiudadano,
                estadoReporte: estadoReporte,
                estadoSincronizacion: estadoSincronizacion,
                estadoIa: estadoIa,
                clasificacionProfesional: clasificacionProfesional,
                severidadProfesional: severidadProfesional,
                superficie: superficie,
                largoCm: largoCm,
                anchoCm: anchoCm,
                profundidadCm: profundidadCm,
                observacionProfesional: observacionProfesional,
                profesionalId: profesionalId,
                fechaValidacion: fechaValidacion,
                clasificacionIa: clasificacionIa,
                confianzaIa: confianzaIa,
                resultadoSegmentacion: resultadoSegmentacion,
                lastSyncAttempt: lastSyncAttempt,
                syncError: syncError,
                retryCount: retryCount,
                deletedAt: deletedAt,
                cancelledAt: cancelledAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                campaignId: campaignId,
                campaignName: campaignName,
                collectorName: collectorName,
                collectorUniversityCode: collectorUniversityCode,
                photoFilename: photoFilename,
                photoSizeBytes: photoSizeBytes,
                imageWidth: imageWidth,
                imageHeight: imageHeight,
                municipality: municipality,
                department: department,
                country: country,
                locationSource: locationSource,
                damageType: damageType,
                surfaceType: surfaceType,
                status: status,
                exportedAt: exportedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String idLocal,
                Value<String?> idRemoto = const Value.absent(),
                Value<String?> clientId = const Value.absent(),
                Value<String?> installationId = const Value.absent(),
                Value<String?> usuarioId = const Value.absent(),
                required String rutaFotoLocal,
                Value<String?> fotoUrlRemota = const Value.absent(),
                required double latitud,
                required double longitud,
                required double precisionGps,
                required DateTime fechaHora,
                Value<String?> viaSector = const Value.absent(),
                Value<String?> barrio = const Value.absent(),
                Value<String?> puntoReferencia = const Value.absent(),
                Value<String?> descripcionCiudadano = const Value.absent(),
                required String estadoReporte,
                required String estadoSincronizacion,
                required String estadoIa,
                Value<String?> clasificacionProfesional = const Value.absent(),
                Value<String?> severidadProfesional = const Value.absent(),
                Value<double?> superficie = const Value.absent(),
                Value<double?> largoCm = const Value.absent(),
                Value<double?> anchoCm = const Value.absent(),
                Value<double?> profundidadCm = const Value.absent(),
                Value<String?> observacionProfesional = const Value.absent(),
                Value<String?> profesionalId = const Value.absent(),
                Value<DateTime?> fechaValidacion = const Value.absent(),
                Value<String?> clasificacionIa = const Value.absent(),
                Value<double?> confianzaIa = const Value.absent(),
                Value<String?> resultadoSegmentacion = const Value.absent(),
                Value<DateTime?> lastSyncAttempt = const Value.absent(),
                Value<String?> syncError = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime?> cancelledAt = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<String?> campaignId = const Value.absent(),
                Value<String?> campaignName = const Value.absent(),
                Value<String?> collectorName = const Value.absent(),
                Value<String?> collectorUniversityCode = const Value.absent(),
                Value<String?> photoFilename = const Value.absent(),
                Value<int?> photoSizeBytes = const Value.absent(),
                Value<int?> imageWidth = const Value.absent(),
                Value<int?> imageHeight = const Value.absent(),
                Value<String?> municipality = const Value.absent(),
                Value<String?> department = const Value.absent(),
                Value<String?> country = const Value.absent(),
                Value<String?> locationSource = const Value.absent(),
                Value<String?> damageType = const Value.absent(),
                Value<String?> surfaceType = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime?> exportedAt = const Value.absent(),
              }) => ReportesCompanion.insert(
                id: id,
                idLocal: idLocal,
                idRemoto: idRemoto,
                clientId: clientId,
                installationId: installationId,
                usuarioId: usuarioId,
                rutaFotoLocal: rutaFotoLocal,
                fotoUrlRemota: fotoUrlRemota,
                latitud: latitud,
                longitud: longitud,
                precisionGps: precisionGps,
                fechaHora: fechaHora,
                viaSector: viaSector,
                barrio: barrio,
                puntoReferencia: puntoReferencia,
                descripcionCiudadano: descripcionCiudadano,
                estadoReporte: estadoReporte,
                estadoSincronizacion: estadoSincronizacion,
                estadoIa: estadoIa,
                clasificacionProfesional: clasificacionProfesional,
                severidadProfesional: severidadProfesional,
                superficie: superficie,
                largoCm: largoCm,
                anchoCm: anchoCm,
                profundidadCm: profundidadCm,
                observacionProfesional: observacionProfesional,
                profesionalId: profesionalId,
                fechaValidacion: fechaValidacion,
                clasificacionIa: clasificacionIa,
                confianzaIa: confianzaIa,
                resultadoSegmentacion: resultadoSegmentacion,
                lastSyncAttempt: lastSyncAttempt,
                syncError: syncError,
                retryCount: retryCount,
                deletedAt: deletedAt,
                cancelledAt: cancelledAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                campaignId: campaignId,
                campaignName: campaignName,
                collectorName: collectorName,
                collectorUniversityCode: collectorUniversityCode,
                photoFilename: photoFilename,
                photoSizeBytes: photoSizeBytes,
                imageWidth: imageWidth,
                imageHeight: imageHeight,
                municipality: municipality,
                department: department,
                country: country,
                locationSource: locationSource,
                damageType: damageType,
                surfaceType: surfaceType,
                status: status,
                exportedAt: exportedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ReportesTable, ReporteLocalData>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $ReportesTable,
                    ReporteLocalData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ReportesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReportesTable,
      ReporteLocalData,
      $$ReportesTableFilterComposer,
      $$ReportesTableOrderingComposer,
      $$ReportesTableAnnotationComposer,
      $$ReportesTableCreateCompanionBuilder,
      $$ReportesTableUpdateCompanionBuilder,
      (
        ReporteLocalData,
        BaseReferences<_$AppDatabase, $ReportesTable, ReporteLocalData>,
      ),
      ReporteLocalData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ReportesTableTableManager get reportes =>
      $$ReportesTableTableManager(_db, _db.reportes);
}

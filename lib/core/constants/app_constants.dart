class AppConstants {
  // Aplicación
  static const String appName = 'Observatorio de Movilidad';
  static const String appDescription =
      'Plataforma para el registro, análisis y seguimiento de la infraestructura vial';

  // Instituciones
  static const String universidadPiloto = 'Universidad Piloto de Colombia\nSeccional Alto Magdalena';
  static const String alcaldiaGirardot = 'Alcaldía de Girardot';

  // Estados de reporte
  static const String estadoReportado = 'reportado';
  static const String estadoEnRevision = 'en_revision';
  static const String estadoValidado = 'validado';
  static const String estadoAtendido = 'atendido';

  // Estados de sincronización
  static const String sincPendiente = 'pendiente';
  static const String sincSincronizando = 'sincronizando';
  static const String sincSincronizado = 'sincronizado';
  static const String sincError = 'error';

  // Estados de IA
  static const String estadoIaPendiente = 'pendiente';
  static const String estadoIaProcessando = 'procesando';
  static const String estadoIaCompletado = 'completado';
  static const String estadoIaError = 'error';

  // Roles de usuario
  static const String rolCiudadano = 'ciudadano';
  static const String rolProfesional = 'profesional';
  static const String rolAdministrador = 'administrador';

  // Validaciones
  static const int minDescriptionLength = 0;
  static const int maxDescriptionLength = 500;
  static const double minGpsAccuracy = 100.0; // metros

  // Almacenamiento local
  static const String dbFileName = 'observatorio.db';
}

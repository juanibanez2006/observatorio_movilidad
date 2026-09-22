import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:csv/csv.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../database/app_database.dart';
import '../models/reporte.dart';

class ExportResult {
  final File file;
  final int selectedReports;
  final int exportedReports;
  final int includedImages;
  final List<String> errors;

  const ExportResult({
    required this.file,
    required this.selectedReports,
    required this.exportedReports,
    required this.includedImages,
    required this.errors,
  });
}

class ExportService {
  final AppDatabase database;

  ExportService(this.database);

  Future<ExportResult> export({
    required String installationId,
    required String collectorName,
    required String universityCode,
    String? campaignId,
    bool onlyUnexported = false,
  }) async {
    var reports = await database.getAllReportes();
    if (onlyUnexported) reports = reports.where((report) => report.exportedAt == null).toList();
    if (campaignId != null) {
      reports = reports.where((report) => report.campaignId == campaignId).toList();
    }

    final errors = <String>[];
    final validReports = <Reporte>[];
    final images = <String, File>{};
    for (final report in reports) {
      final image = File(report.rutaFotoLocal);
      if (!await image.exists()) {
        errors.add('${report.idLocal}: fotografía faltante');
        continue;
      }
      validReports.add(report);
      images[report.idLocal] = image;
    }

    final now = DateTime.now().toUtc();
    final packageInfo = await PackageInfo.fromPlatform();
    final manifest = <String, dynamic>{
      'appName': 'Observatorio de Movilidad',
      'appVersion': packageInfo.version,
      'schemaVersion': 4,
      'exportedAt': now.toIso8601String(),
      'installationId': installationId,
      'collectorName': collectorName,
      'collectorUniversityCode': universityCode,
      'campaignId': campaignId,
      'campaignName': validReports.isNotEmpty ? validReports.first.campaignName : null,
      'municipality': validReports.isNotEmpty ? validReports.first.municipality : null,
      'department': validReports.isNotEmpty ? validReports.first.department : null,
      'country': validReports.isNotEmpty ? validReports.first.country : null,
      'totalReports': validReports.length,
      'totalImages': images.length,
    };

    final jsonReports = validReports.map(_toMap).toList();
    final csvRows = <List<dynamic>>[
      _csvHeaders,
      ...validReports.map(_toCsvRow),
    ];
    final csvContent = '\uFEFF${const ListToCsvConverter().convert(csvRows)}';
    final archive = Archive();
    archive.addFile(ArchiveFile('manifest.json', utf8.encode(jsonEncode(manifest)).length,
        utf8.encode(const JsonEncoder.withIndent('  ').convert(manifest))));
    archive.addFile(ArchiveFile('reportes.csv', utf8.encode(csvContent).length, utf8.encode(csvContent)));
    final jsonContent = const JsonEncoder.withIndent('  ').convert({
      'schemaVersion': 1,
      'exportedAt': now.toIso8601String(),
      'reports': jsonReports,
    });
    archive.addFile(ArchiveFile('reportes.json', utf8.encode(jsonContent).length, utf8.encode(jsonContent)));
    for (final entry in images.entries) {
      final bytes = await entry.value.readAsBytes();
      archive.addFile(ArchiveFile('images/original/${entry.key}.jpg', bytes.length, bytes));
    }

    final documents = await getApplicationDocumentsDirectory();
    final exportDirectory = Directory(p.join(documents.path, 'observatorio_movilidad', 'exports'));
    await exportDirectory.create(recursive: true);
    final code = universityCode.isEmpty ? installationId.substring(0, 8) : universityCode;
    final stamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
    final output = File(p.join(exportDirectory.path, 'Observatorio_${code}_$stamp.zip'));
    await output.writeAsBytes(ZipEncoder().encode(archive));
    if (errors.isEmpty) {
      for (final report in validReports) {
        await database.markExported(report.idLocal, now);
      }
    }
    return ExportResult(
      file: output,
      selectedReports: reports.length,
      exportedReports: validReports.length,
      includedImages: images.length,
      errors: errors,
    );
  }

  Future<void> share(File file) => SharePlus.instance.share(ShareParams(files: [XFile(file.path)]));

  static const _csvHeaders = [
    'id_local', 'installation_id', 'campaign_id', 'campaign_name', 'collector_name',
    'collector_university_code', 'image_filename', 'captured_at', 'latitude', 'longitude',
    'gps_accuracy', 'municipality', 'department', 'country', 'location_source', 'road',
    'neighborhood', 'reference_point', 'damage_type', 'severity', 'surface_type', 'length_cm',
    'width_cm', 'depth_cm', 'technical_observations', 'status', 'created_at', 'updated_at',
  ];

  static List<dynamic> _toCsvRow(Reporte report) => [
        report.idLocal, report.installationId, report.campaignId, report.campaignName,
        report.collectorName, report.collectorUniversityCode, report.photoFilename,
        report.fechaHora.toIso8601String(), report.latitud, report.longitud, report.precisionGps,
        report.municipality, report.department, report.country, report.locationSource,
        report.viaSector, report.barrio, report.puntoReferencia, report.damageType,
        report.severidadProfesional, report.surfaceType, report.largoCm, report.anchoCm,
        report.profundidadCm, report.observacionProfesional, report.status,
        report.createdAt.toIso8601String(), report.updatedAt.toIso8601String(),
      ];

  static Map<String, dynamic> _toMap(Reporte report) => {
        'idLocal': report.idLocal, 'installationId': report.installationId,
        'campaignId': report.campaignId, 'campaignName': report.campaignName,
        'collectorName': report.collectorName, 'collectorUniversityCode': report.collectorUniversityCode,
        'photoLocalPath': report.rutaFotoLocal, 'photoFilename': report.photoFilename,
        'photoSizeBytes': report.photoSizeBytes, 'latitude': report.latitud, 'longitude': report.longitud,
        'gpsAccuracy': report.precisionGps, 'capturedAt': report.fechaHora.toIso8601String(),
        'municipality': report.municipality, 'department': report.department, 'country': report.country,
        'locationSource': report.locationSource, 'road': report.viaSector, 'neighborhood': report.barrio,
        'referencePoint': report.puntoReferencia, 'damageType': report.damageType,
        'severity': report.severidadProfesional, 'surfaceType': report.surfaceType,
        'lengthCm': report.largoCm, 'widthCm': report.anchoCm, 'depthCm': report.profundidadCm,
        'technicalObservations': report.observacionProfesional, 'status': report.status,
        'createdAt': report.createdAt.toIso8601String(), 'updatedAt': report.updatedAt.toIso8601String(),
        'exportedAt': report.exportedAt?.toIso8601String(),
      };
}
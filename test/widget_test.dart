import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:observatorio_movilidad/core/constants/app_constants.dart';
import 'package:observatorio_movilidad/database/app_database.dart';
import 'package:observatorio_movilidad/models/reporte.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(
    const MethodChannel('plugins.flutter.io/path_provider'),
    (methodCall) async {
      if (methodCall.method == 'getApplicationDocumentsDirectory') {
        return Directory.systemTemp.path;
      }
      return null;
    },
  );

  group('Home statistics stream', () {
    late AppDatabase database;

    setUp(() async {
      database = AppDatabase();
      await database.delete(database.reportes).go();
    });

    tearDown(() async {
      await database.close();
    });

    test('updates pending count when a report is inserted and changed', () async {
      final stream = database.watchHomeStatistics();

      final initial = await stream.first;
      expect(initial.pendientes, 0);

      final pendingReport = Reporte(
        idLocal: 'report-test-1',
        rutaFotoLocal: '/tmp/photo1.jpg',
        latitud: 4.61,
        longitud: -74.08,
        precisionGps: 10,
        fechaHora: DateTime.now(),
        estadoReporte: AppConstants.estadoReportado,
        estadoSincronizacion: AppConstants.sincPendiente,
        estadoIa: AppConstants.estadoIaPendiente,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      final insertedId = await database.insertReporte(pendingReport);

      final afterInsert = await stream.firstWhere(
        (stats) => stats.pendientes == 1,
      );
      expect(afterInsert.pendientes, 1);

      final syncedReport = pendingReport.copyWith(
        id: insertedId,
        estadoSincronizacion: AppConstants.sincSincronizado,
      );
      await database.updateReporte(syncedReport);

      final afterUpdate = await stream.firstWhere(
        (stats) => stats.pendientes == 0 && stats.sincronizados == 1,
      );
      expect(afterUpdate.pendientes, 0);
      expect(afterUpdate.sincronizados, 1);
    });
  });
}

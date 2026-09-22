import 'package:flutter/material.dart';
import '../../models/reporte.dart';
import '../../database/app_database.dart';
import '../../repositories/reporte_repository.dart';
import '../../widgets/reporte_card.dart';

class ReportsScreen extends StatefulWidget {
  final AppDatabase database;

  const ReportsScreen({
    Key? key,
    required this.database,
  }) : super(key: key);

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  late final ReporteRepository _repository;

  @override
  void initState() {
    super.initState();
    _repository = ReporteRepository(widget.database);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Reporte>>(
      stream: _repository.watchReports(),
      builder: (context, snapshot) {
        final reportes = snapshot.data ?? const <Reporte>[];

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: const Text('Mis Reportes')),
            body: Center(
              child: Text('Error al cargar reportes: ${snapshot.error}'),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Mis Reportes'),
          ),
          body: reportes.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.inbox,
                        size: 64,
                        color: Colors.grey.shade300,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No hay reportes',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.grey.shade600,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Crea tu primer reporte de deterioro vial',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade500,
                            ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/report');
                        },
                        child: const Text('Crear Reporte'),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: reportes.length,
                  itemBuilder: (context, index) {
                    final reporte = reportes[index];
                    return ReporteCard(
                      reporte: reporte,
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          '/report-detail',
                          arguments: reporte.idLocal,
                        );
                      },
                    );
                  },
                ),
        );
      },
    );
  }
}

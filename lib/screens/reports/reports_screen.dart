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
  late ReporteRepository _repository;
  List<Reporte> _reportes = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _repository = ReporteRepository(widget.database);
    _cargarReportes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Reportes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _cargarReportes,
            tooltip: 'Actualizar',
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _reportes.isEmpty
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
                          Navigator.of(context).pushNamed('/report').then((_) {
                            _cargarReportes();
                          });
                        },
                        child: const Text('Crear Reporte'),
                      ),
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: () async {
                    await _cargarReportes();
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: _reportes.length,
                    itemBuilder: (context, index) {
                      final reporte = _reportes[index];
                      return ReporteCard(
                        reporte: reporte,
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(
                            '/report-detail',
                            arguments: reporte.idLocal,
                          )
                              .then((_) {
                            _cargarReportes();
                          });
                        },
                      );
                    },
                  ),
                ),
    );
  }

  Future<void> _cargarReportes() async {
    setState(() => _isLoading = true);
    try {
      final reportes = await _repository.obtenerTodosReportes();
      setState(() {
        _reportes = reportes;
        _isLoading = false;
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al cargar reportes: $e')),
        );
        setState(() => _isLoading = false);
      }
    }
  }
}

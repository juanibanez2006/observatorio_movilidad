import 'package:flutter/material.dart';
import '../../widgets/institutional_header.dart';
import '../../widgets/primary_button.dart';
import '../../core/constants/app_constants.dart';
import '../../database/app_database.dart';
import '../../main.dart';
import '../../repositories/reporte_repository.dart';
import '../../services/collector_profile_service.dart';
import '../../services/export_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ReporteRepository _repository;

  @override
  void initState() {
    super.initState();
    _repository = ReporteRepository(database);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeStatistics>(
      stream: _repository.watchHomeStatistics(),
      builder: (context, snapshot) {
        final stats = snapshot.data ?? const HomeStatistics();

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const InstitutionalHeader(
                    title: AppConstants.appName,
                    subtitle: AppConstants.appDescription,
                  ),
                  const SizedBox(height: 32),
                  _buildCollectorCard(),
                  const SizedBox(height: 16),
                  Card(
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFF1B5E20),
                            const Color(0xFF2E7D32),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 48,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Reportar deterioro vial',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Captura fotografías y registra la ubicación de deterioros en la infraestructura vial.',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Colors.white70,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/report');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: const Color(0xFF1B5E20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Text(
                                  'Nuevo Reporte',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Mis reportes',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  _buildIndicators(stats),
                  const SizedBox(height: 24),
                  _buildExportSection(stats),
                  const SizedBox(height: 16),
                  OutlinedButton.icon(
                    onPressed: () => Navigator.of(context).pushNamed('/collector-setup'),
                    icon: const Icon(Icons.person_outline),
                    label: const Text('Configuración del recolector'),
                  ),
                  PrimaryButton(
                    label: 'Ver todos mis reportes',
                    onPressed: () {
                      Navigator.of(context).pushNamed('/reports');
                    },
                    icon: Icons.list,
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildIndicators(HomeStatistics stats) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [
        _buildIndicatorCard(
          icon: Icons.assessment_outlined,
          title: 'Total reportes',
          value: stats.total.toString(),
          color: Colors.indigo,
        ),
        _buildIndicatorCard(
          icon: Icons.check_circle_outline,
          title: 'Completos',
          value: stats.completos.toString(),
          color: Colors.green,
        ),
        _buildIndicatorCard(
          icon: Icons.edit_note,
          title: 'Incompletos',
          value: stats.incompletos.toString(),
          color: Colors.orange,
        ),
        _buildIndicatorCard(
          icon: Icons.backup_outlined,
          title: 'Sin exportar',
          value: stats.sinExportar.toString(),
          color: Colors.green,
        ),
      ],
    );
  }

  Widget _buildCollectorCard() {
    return ValueListenableBuilder<CollectorProfile?>(
      valueListenable: CollectorProfileService.profileNotifier,
      builder: (context, profile, _) {
        if (profile == null) return const SizedBox.shrink();
        return Card(
          child: ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person_outline)),
            title: const Text('Recolector'),
            subtitle: Text(
              '${profile.collectorName}\nCódigo institucional\n${profile.universityCode}',
            ),
            isThreeLine: true,
            trailing: const Icon(Icons.badge_outlined),
          ),
        );
      },
    );
  }

  Widget _buildIndicatorCard({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: color),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade600,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExportSection(HomeStatistics stats) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Exportar información', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('Reportes sin exportar: ${stats.sinExportar}'),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton.icon(
                  onPressed: () => _export(),
                  icon: const Icon(Icons.archive_outlined),
                  label: const Text('Exportar todos'),
                ),
                OutlinedButton.icon(
                  onPressed: () => _export(onlyUnexported: true),
                  icon: const Icon(Icons.fiber_new),
                  label: const Text('Solo no exportados'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _export({bool onlyUnexported = false}) async {
    final profile = await CollectorProfileService().load();
    try {
      final result = await ExportService(database).export(
        installationId: profile.installationId,
        collectorName: profile.collectorName,
        universityCode: profile.universityCode,
        onlyUnexported: onlyUnexported,
      );
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Exportación completada'),
          content: Text('Archivo: ${result.file.path.split(RegExp(r'[/\\]')).last}\n\nReportes exportados: ${result.exportedReports}\nFotografías incluidas: ${result.includedImages}\nErrores: ${result.errors.length}'),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cerrar')),
            FilledButton.icon(
              onPressed: () => ExportService(database).share(result.file),
              icon: const Icon(Icons.share),
              label: const Text('Compartir archivo'),
            ),
          ],
        ),
      );
    } catch (error) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error al exportar: $error')));
    }
  }
}

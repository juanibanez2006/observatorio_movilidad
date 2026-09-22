import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import '../../models/reporte.dart';
import '../../database/app_database.dart';
import '../../repositories/reporte_repository.dart';
import '../../widgets/status_badge.dart';

class ReportDetailScreen extends StatefulWidget {
  final String idLocal;
  final AppDatabase database;

  const ReportDetailScreen({
    Key? key,
    required this.idLocal,
    required this.database,
  }) : super(key: key);

  @override
  State<ReportDetailScreen> createState() => _ReportDetailScreenState();
}

class _ReportDetailScreenState extends State<ReportDetailScreen> {
  late ReporteRepository _repository;
  Reporte? _reporte;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _repository = ReporteRepository(widget.database);
    _cargarReporte();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del Reporte'),
        actions: [
          if (_reporte != null)
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: const Text('Actualizar'),
                  onTap: _cargarReporte,
                ),
                PopupMenuItem(
                  child: const Text('Eliminar'),
                  onTap: _eliminarReporte,
                ),
              ],
            ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _reporte == null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Reporte no encontrado',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Fotografía
                      _buildFoto(),
                      const SizedBox(height: 24),

                      // Estados
                      _buildSection(
                        title: 'Estado del Reporte',
                        children: [
                          StatusBadge(
                            estado: _reporte!.estadoReporte,
                            esEstadoSincronizacion: false,
                          ),
                          const SizedBox(height: 12),
                          StatusBadge(
                            estado: _reporte!.estadoSincronizacion,
                            esEstadoSincronizacion: true,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Información básica
                      _buildSection(
                        title: 'Información Básica',
                        children: [
                          _buildInfoRow('Fecha y Hora', _formatFechaHora(_reporte!.fechaHora)),
                          _buildInfoRow('Vía/Sector', _reporte!.viaSector ?? 'No especificado'),
                          _buildInfoRow('Barrio', _reporte!.barrio ?? 'No especificado'),
                          _buildInfoRow(
                            'Punto de Referencia',
                            _reporte!.puntoReferencia ?? 'No especificado',
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Ubicación GPS
                      _buildSection(
                        title: 'Ubicación GPS',
                        children: [
                          _buildInfoRow('Latitud', _reporte!.latitud.toStringAsFixed(6)),
                          _buildInfoRow('Longitud', _reporte!.longitud.toStringAsFixed(6)),
                          _buildInfoRow(
                            'Precisión',
                            '${_reporte!.precisionGps.toStringAsFixed(1)} m',
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Descripción
                      if (_reporte!.descripcionCiudadano != null &&
                          _reporte!.descripcionCiudadano!.isNotEmpty)
                        _buildSection(
                          title: 'Descripción',
                          children: [
                            Text(
                              _reporte!.descripcionCiudadano!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      if (_reporte!.descripcionCiudadano != null &&
                          _reporte!.descripcionCiudadano!.isNotEmpty)
                        const SizedBox(height: 24),

                      // Análisis técnico
                      _buildSection(
                        title: 'Análisis Técnico',
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              border: Border.all(color: Colors.blue.shade200),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.blue.shade700,
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    'Pendiente de revisión por un profesional de Ingeniería Civil',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Análisis IA
                      _buildSection(
                        title: 'Análisis con Inteligencia Artificial',
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.purple.shade50,
                              border: Border.all(color: Colors.purple.shade200),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.purple.shade700,
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    'Pendiente de procesamiento',
                                    style: TextStyle(
                                      color: Colors.purple.shade700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Auditoría
                      _buildSection(
                        title: 'Información de Auditoría',
                        children: [
                          _buildInfoRow(
                            'ID Local',
                            _reporte!.idLocal.substring(0, 8) + '...',
                          ),
                          _buildInfoRow('Creado', _formatFechaHora(_reporte!.createdAt)),
                          _buildInfoRow('Actualizado', _formatFechaHora(_reporte!.updatedAt)),
                        ],
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1B5E20),
              ),
        ),
        const SizedBox(height: 12),
        ...children,
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600,
                  ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoto() {
    final fileExists = _reporte != null && File(_reporte!.rutaFotoLocal).existsSync();
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade50,
      ),
      child: fileExists
          ? ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(
                File(_reporte!.rutaFotoLocal),
                fit: BoxFit.cover,
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image_not_supported,
                    size: 48,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Fotografía no disponible',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
    );
  }

  Future<void> _cargarReporte() async {
    setState(() => _isLoading = true);
    try {
      final reporte = await _repository.obtenerReporteByIdLocal(widget.idLocal);
      setState(() {
        _reporte = reporte;
        _isLoading = false;
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al cargar el reporte: $e')),
        );
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _eliminarReporte() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar Reporte'),
        content: const Text('¿Está seguro de que desea eliminar este reporte?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text(
              'Eliminar',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await _repository.eliminarReporte(widget.idLocal);
        if (mounted) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Reporte eliminado')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error al eliminar: $e')),
          );
        }
      }
    }
  }

  String _formatFechaHora(DateTime fecha) {
    return DateFormat('dd/MM/yyyy HH:mm').format(fecha);
  }
}

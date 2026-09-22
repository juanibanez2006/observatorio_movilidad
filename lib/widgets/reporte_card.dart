import 'package:flutter/material.dart';
import 'dart:io';
import '../models/reporte.dart';
import 'status_badge.dart';
import '../core/theme/app_theme.dart';

class ReporteCard extends StatelessWidget {
  final Reporte reporte;
  final VoidCallback onTap;

  const ReporteCard({
    Key? key,
    required this.reporte,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        onTap: onTap,
        leading: _buildFotoThumbnail(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _formatFecha(reporte.fechaHora),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.grey.shade600,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              reporte.viaSector ?? 'Sin vía/sector',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                reporte.barrio ?? 'Sin barrio',
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: StatusBadge(
                      estado: reporte.estadoReporte,
                      esEstadoSincronizacion: false,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: StatusBadge(
                      estado: reporte.estadoSincronizacion,
                      esEstadoSincronizacion: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: AppTheme.textGrey,
        ),
      ),
    );
  }

  Widget _buildFotoThumbnail() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade200,
      ),
      child: _fileExists(reporte.rutaFotoLocal)
          ? ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                File(reporte.rutaFotoLocal),
                fit: BoxFit.cover,
              ),
            )
          : Center(
              child: Icon(
                Icons.image_not_supported,
                color: Colors.grey.shade400,
              ),
            ),
    );
  }

  bool _fileExists(String path) {
    try {
      return File(path).existsSync();
    } catch (e) {
      return false;
    }
  }

  String _formatFecha(DateTime fecha) {
    return '${fecha.day.toString().padLeft(2, '0')}/${fecha.month.toString().padLeft(2, '0')}/${fecha.year}';
  }
}

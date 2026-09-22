import 'package:flutter/material.dart';
import '../core/constants/app_constants.dart';

class StatusBadge extends StatelessWidget {
  final String estado;
  final bool esEstadoSincronizacion;

  const StatusBadge({
    Key? key,
    required this.estado,
    this.esEstadoSincronizacion = false,
  }) : super(key: key);

  Color _getColor() {
    if (esEstadoSincronizacion) {
      switch (estado) {
        case AppConstants.sincPendiente:
          return Colors.orange.shade700;
        case AppConstants.sincSincronizando:
          return Colors.blue.shade700;
        case AppConstants.sincSincronizado:
          return Colors.green.shade700;
        case AppConstants.sincError:
          return Colors.red.shade700;
        default:
          return Colors.grey.shade700;
      }
    } else {
      // Estados de reporte
      switch (estado) {
        case AppConstants.estadoReportado:
          return Colors.blue.shade700;
        case AppConstants.estadoEnRevision:
          return Colors.orange.shade700;
        case AppConstants.estadoValidado:
          return Colors.green.shade700;
        case AppConstants.estadoAtendido:
          return Colors.teal.shade700;
        default:
          return Colors.grey.shade700;
      }
    }
  }

  String _getLabel() {
    if (esEstadoSincronizacion) {
      switch (estado) {
        case AppConstants.sincPendiente:
          return 'Pendiente de sincronización';
        case AppConstants.sincSincronizando:
          return 'Sincronizando...';
        case AppConstants.sincSincronizado:
          return 'Sincronizado';
        case AppConstants.sincError:
          return 'Error de sincronización';
        default:
          return estado;
      }
    } else {
      // Estados de reporte
      switch (estado) {
        case AppConstants.estadoReportado:
          return 'Reportado';
        case AppConstants.estadoEnRevision:
          return 'En revisión';
        case AppConstants.estadoValidado:
          return 'Validado';
        case AppConstants.estadoAtendido:
          return 'Atendido';
        default:
          return estado;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getColor().withValues(alpha: 0.1),
        border: Border.all(color: _getColor()),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        _getLabel(),
        style: TextStyle(
          color: _getColor(),
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

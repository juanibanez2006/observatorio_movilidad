import 'package:flutter/material.dart';
import 'dart:io';
import '../../database/app_database.dart';
import '../../repositories/reporte_repository.dart';
import '../../services/image_service.dart';
import '../../services/location_service.dart';
import '../../widgets/primary_button.dart';

class ReportScreen extends StatefulWidget {
  final AppDatabase database;

  const ReportScreen({
    Key? key,
    required this.database,
  }) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  late ReporteRepository _repository;
  late ImageService _imageService;
  late LocationService _locationService;

  String? _imagePath;
  double? _latitud;
  double? _longitud;
  double? _precisionGps;
  bool _isLoading = false;

  final _viaSectorController = TextEditingController();
  final _barrioController = TextEditingController();
  final _puntoReferenciaController = TextEditingController();
  final _descripcionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _repository = ReporteRepository(widget.database);
    _imageService = ImageService();
    _locationService = LocationService();
  }

  @override
  void dispose() {
    _viaSectorController.dispose();
    _barrioController.dispose();
    _puntoReferenciaController.dispose();
    _descripcionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Reporte'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección Fotografía
            _buildSectionTitle('Fotografía'),
            const SizedBox(height: 12),
            _buildFotoSection(),
            const SizedBox(height: 24),

            // Sección Ubicación
            _buildSectionTitle('Ubicación GPS'),
            const SizedBox(height: 12),
            _buildLocationSection(),
            const SizedBox(height: 24),

            // Sección Información del Ciudadano
            _buildSectionTitle('Información del Deterioro'),
            const SizedBox(height: 12),
            TextField(
              controller: _viaSectorController,
              decoration: InputDecoration(
                labelText: 'Vía o sector (opcional)',
                hintText: 'Calle Principal, Carrera 3, etc.',
                prefixIcon: const Icon(Icons.location_on_outlined),
              ),
              maxLength: 100,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _barrioController,
              decoration: InputDecoration(
                labelText: 'Barrio (opcional)',
                hintText: 'Centro, San Jorge, etc.',
                prefixIcon: const Icon(Icons.apartment),
              ),
              maxLength: 100,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _puntoReferenciaController,
              decoration: InputDecoration(
                labelText: 'Punto de referencia (opcional)',
                hintText: 'Cerca de la tienda, esquina con...',
                prefixIcon: const Icon(Icons.place_outlined),
              ),
              maxLength: 150,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _descripcionController,
              decoration: InputDecoration(
                labelText: 'Descripción (opcional)',
                hintText: 'Describe el deterioro con tus palabras',
                prefixIcon: const Icon(Icons.description),
              ),
              maxLines: 3,
              maxLength: 500,
            ),
            const SizedBox(height: 32),

            // Botón Registrar
            PrimaryButton(
              label: 'Registrar Reporte',
              onPressed: _registrarReporte,
              isLoading: _isLoading,
              icon: Icons.save,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1B5E20),
          ),
    );
  }

  Widget _buildFotoSection() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade50,
          ),
          child: _imagePath != null && _fileExists(_imagePath!)
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    File(_imagePath!),
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
                        'Sin fotografía',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
        ),
        const SizedBox(height: 12),
        PrimaryButton(
          label: 'Tomar Fotografía',
          onPressed: _tomarFoto,
          icon: Icons.camera_alt,
        ),
        const SizedBox(height: 8),
        if (_imagePath != null)
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: _eliminarFoto,
              child: const Text('Eliminar fotografía'),
            ),
          ),
      ],
    );
  }

  Widget _buildLocationSection() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_latitud != null && _longitud != null) ...[
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green, size: 20),
                    const SizedBox(width: 8),
                    const Text('Ubicación capturada'),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Latitud: ${_latitud?.toStringAsFixed(6)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Longitud: ${_longitud?.toStringAsFixed(6)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Precisión: ${_precisionGps?.toStringAsFixed(1)} m',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey.shade600,
                      ),
                ),
              ] else
                Row(
                  children: [
                    Icon(Icons.location_off, color: Colors.orange, size: 20),
                    const SizedBox(width: 8),
                    const Text('Sin ubicación'),
                  ],
                ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        PrimaryButton(
          label: 'Obtener Ubicación',
          onPressed: _obtenerUbicacion,
          icon: Icons.location_on,
        ),
      ],
    );
  }

  Future<void> _tomarFoto() async {
    try {
      final path = await _imageService.takePicture();
      if (path != null) {
        setState(() {
          _imagePath = path;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al tomar foto: $e')),
        );
      }
    }
  }

  void _eliminarFoto() {
    setState(() {
      _imagePath = null;
    });
  }

  Future<void> _obtenerUbicacion() async {
    setState(() => _isLoading = true);
    try {
      final location = await _locationService.getCurrentLocation();
      setState(() {
        _latitud = location['latitud'];
        _longitud = location['longitud'];
        _precisionGps = location['precisionGps'];
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al obtener ubicación: $e')),
        );
      }
    }
  }

  Future<void> _registrarReporte() async {
    // Validaciones
    if (_imagePath == null || !_fileExists(_imagePath!)) {
      _mostrarError('Por favor captura una fotografía');
      return;
    }

    if (_latitud == null || _longitud == null) {
      _mostrarError('Por favor obtén la ubicación GPS');
      return;
    }

    setState(() => _isLoading = true);

    try {
      await _repository.crearReporteLocal(
        rutaFotoLocal: _imagePath!,
        latitud: _latitud!,
        longitud: _longitud!,
        precisionGps: _precisionGps ?? 0,
        fechaHora: DateTime.now(),
        viaSector: _viaSectorController.text.isEmpty ? null : _viaSectorController.text,
        barrio: _barrioController.text.isEmpty ? null : _barrioController.text,
        puntoReferencia: _puntoReferenciaController.text.isEmpty
            ? null
            : _puntoReferenciaController.text,
        descripcionCiudadano: _descripcionController.text.isEmpty
            ? null
            : _descripcionController.text,
      );

      if (mounted) {
        setState(() => _isLoading = false);
        _mostrarExito('Reporte guardado localmente');
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        _mostrarError('Error al guardar el reporte: $e');
      }
    }
  }

  bool _fileExists(String path) {
    try {
      return File(path).existsSync();
    } catch (e) {
      return false;
    }
  }

  void _mostrarError(String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensaje),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _mostrarExito(String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensaje),
        backgroundColor: Colors.green,
      ),
    );
  }
}

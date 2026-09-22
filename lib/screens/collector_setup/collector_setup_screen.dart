import 'package:flutter/material.dart';
import '../../services/collector_profile_service.dart';
import '../home/home_screen.dart';

class CollectorSetupScreen extends StatefulWidget {
  final CollectorProfile? profile;
  final bool isInitialSetup;

  const CollectorSetupScreen({
    super.key,
    this.profile,
    this.isInitialSetup = false,
  });

  @override
  State<CollectorSetupScreen> createState() => _CollectorSetupScreenState();
}

class _CollectorSetupScreenState extends State<CollectorSetupScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _codeController;
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;
  bool _isLoadingProfile = true;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _codeController = TextEditingController();
    _loadProfile();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoadingProfile) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Configuración del recolector')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text('Antes de iniciar la jornada, registra tus datos.'),
            const SizedBox(height: 24),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre completo'),
              textCapitalization: TextCapitalization.words,
              validator: (value) => value == null || value.trim().isEmpty ? 'Campo obligatorio' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _codeController,
              decoration: const InputDecoration(
                labelText: 'Código institucional',
                helperText: 'Ingresa tu código institucional de la Universidad Piloto de Colombia.',
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                final code = value?.trim() ?? '';
                if (code.isEmpty) return 'Campo obligatorio';
                if (!RegExp(r'^\d+$').hasMatch(code)) return 'Usa únicamente números';
                if (code.length < 4) return 'Ingresa un código válido';
                return null;
              },
            ),
            const SizedBox(height: 24),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.place_outlined),
              title: Text('Campaña activa'),
              subtitle: Text('Girardot, Cundinamarca, Colombia\nGirardot - Recolección vial 2026'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _isSaving ? null : _save,
              icon: _isSaving
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.check),
              label: Text(_isSaving ? 'Guardando...' : 'Continuar'),
            ),
            const SizedBox(height: 24),
            const Text(
              'Esta versión almacena la información localmente en este dispositivo. No desinstale la aplicación ni borre sus datos antes de realizar una exportación.\n\nRealice copias de seguridad periódicas durante las jornadas de recolección.',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isSaving = true);
    try {
      final profile = await CollectorProfileService().saveCollector(
        name: _nameController.text,
        code: _codeController.text,
      );
      if (!mounted) return;
      _nameController.text = profile.collectorName;
      _codeController.text = profile.universityCode;
      if (widget.isInitialSetup) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute<void>(builder: (_) => const HomeScreen()),
          (_) => false,
        );
      } else {
        setState(() => _isSaving = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Datos del recolector actualizados correctamente.')),
        );
      }
    } catch (_) {
      if (!mounted) return;
      setState(() => _isSaving = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'No fue posible guardar la información del recolector. Intenta nuevamente.',
          ),
        ),
      );
    }
  }

  Future<void> _loadProfile() async {
    try {
      final profile = await CollectorProfileService().load();
      if (!mounted) return;
      _nameController.text = profile.collectorName;
      _codeController.text = profile.universityCode;
      setState(() {
        _isLoadingProfile = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _isLoadingProfile = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No fue posible cargar la información del recolector.')),
      );
    }
  }
}
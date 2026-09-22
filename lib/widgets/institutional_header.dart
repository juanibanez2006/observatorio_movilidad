import 'package:flutter/material.dart';

class InstitutionalHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const InstitutionalHeader({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Logo Universidad Piloto
        Image.asset(
          'assets/images/logo_universidad.png',
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1B5E20),
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey.shade700,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        // Logo Alcaldía de Girardot
        Image.asset(
          'assets/images/logo_alcaldia.png',
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}

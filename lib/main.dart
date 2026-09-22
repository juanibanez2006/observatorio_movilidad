import 'package:flutter/material.dart';
import 'database/app_database.dart';
import 'core/theme/app_theme.dart';
import 'services/supabase_service.dart';
import 'screens/home/home_screen.dart';
import 'screens/report/report_screen.dart';
import 'screens/reports/reports_screen.dart';
import 'screens/report_detail/report_detail_screen.dart';
import 'screens/collector_setup/collector_setup_screen.dart';
import 'services/collector_profile_service.dart';

late AppDatabase database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = AppDatabase();
  await SupabaseService.instance.initialize();
  final profile = await CollectorProfileService().load();
  runApp(MyApp(profile: profile));
}

class MyApp extends StatelessWidget {
  final CollectorProfile profile;

  const MyApp({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Observatorio de Movilidad',
      theme: AppTheme.lightTheme,
      locale: const Locale('es', 'CO'),
        home: profile.collectorName.isEmpty || profile.universityCode.isEmpty
          ? CollectorSetupScreen(profile: profile, isInitialSetup: true)
          : const HomeScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            );
          case '/report':
            return MaterialPageRoute(
              builder: (_) => ReportScreen(database: database),
            );
          case '/reports':
            return MaterialPageRoute(
              builder: (_) => ReportsScreen(database: database),
            );
          case '/report-detail':
            final idLocal = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => ReportDetailScreen(
                idLocal: idLocal,
                database: database,
              ),
            );
          case '/collector-setup':
            return MaterialPageRoute(builder: (_) => const CollectorSetupScreen());
          default:
            return MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            );
        }
      },
    );
  }
}


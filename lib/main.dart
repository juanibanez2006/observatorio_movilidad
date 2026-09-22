import 'package:flutter/material.dart';
import 'database/app_database.dart';
import 'core/theme/app_theme.dart';
import 'screens/home/home_screen.dart';
import 'screens/report/report_screen.dart';
import 'screens/reports/reports_screen.dart';
import 'screens/report_detail/report_detail_screen.dart';

late AppDatabase database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = AppDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Observatorio de Movilidad',
      theme: AppTheme.lightTheme,
      locale: const Locale('es', 'CO'),
      home: const HomeScreen(),
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
          default:
            return MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            );
        }
      },
    );
  }
}


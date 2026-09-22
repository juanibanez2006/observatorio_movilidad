import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  SupabaseService._internal();

  static final SupabaseService instance = SupabaseService._internal();

  late final SupabaseClient client;

  Future<void> initialize() async {
    const url = String.fromEnvironment('SUPABASE_URL', defaultValue: '');
    const anonKey = String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: '');

    if (url.isEmpty || anonKey.isEmpty) {
      return;
    }

    await Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );

    client = Supabase.instance.client;
  }

  bool get isConfigured =>
      const bool.fromEnvironment('SUPABASE_ENABLED', defaultValue: false) ||
      (const String.fromEnvironment('SUPABASE_URL', defaultValue: '').isNotEmpty &&
          const String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: '').isNotEmpty);

  Future<void> signInAnonymously() async {
    if (!isConfigured) {
      throw StateError('Supabase no está configurado. Define SUPABASE_URL y SUPABASE_ANON_KEY.');
    }

    await client.auth.signInWithOtp(
      email: 'anon@observatorio.local',
      shouldCreateUser: true,
    );
  }

  Future<void> signOut() async {
    if (!isConfigured) {
      return;
    }

    await client.auth.signOut();
  }
}

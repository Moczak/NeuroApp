import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://kurvfdmfjwnihwlqkdpt.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1cnZmZG1manduaWh3bHFrZHB0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODM3NTY5ODQsImV4cCI6MTk5OTMzMjk4NH0.v2mAf4F-A8Ec1cmzwqNuCe7nFEwGeoWaY8p3sxhh6TA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}

// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase/supabase.dart';

Future<bool> checkCPFsupabase(String cpf) async {
  // filtrar busca cpf seja igual cpf argumento
  final supabase = SupabaseClient('https://kurvfdmfjwnihwlqkdpt.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1cnZmZG1manduaWh3bHFrZHB0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODM3NTY5ODQsImV4cCI6MTk5OTMzMjk4NH0.v2mAf4F-A8Ec1cmzwqNuCe7nFEwGeoWaY8p3sxhh6TA');

  final response =
      await supabase.from('alunosneuro').select().eq('cpf', cpf).execute();
  return response.data.isNotEmpty;
}

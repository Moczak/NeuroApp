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

Future<double?> resultadoDporcentagem(
  double? somaitensD,
  String? op,
) async {
  // Add your function code here!
  late double? resultadoDporcentagem;

  switch (op) {
    case "ok":
      resultadoDporcentagem = ((somaitensD! / 39) * 100).toDouble();
      break;
  }

  return resultadoDporcentagem!;
}

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

Future<double?> resultadoEporcentagem(
  double? somaitensD,
  String? op,
) async {
  // Add your function code here!
  late double? resultadoEporcentagem;

  switch (op) {
    case "ok":
      resultadoEporcentagem = ((somaitensD! / 72) * 100).toDouble();
      break;
  }

  return resultadoEporcentagem!;
}

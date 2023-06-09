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

Future<double?> somarDaction(
  int? item52,
  int? item53,
  int? item54,
  int? item55,
  int? item56,
  int? item57,
  int? item58,
  int? item59,
  int? item60,
  int? item61,
  int? item62,
  int? item63,
  int? item64,
  String? op,
) async {
  // Add your function code here!
  late double? resultadoimc;

  switch (op) {
    case "ok":
      resultadoimc = (item52! +
              item53! +
              item54! +
              item55! +
              item56! +
              item57! +
              item58! +
              item59! +
              item60! +
              item61! +
              item62! +
              item63! +
              item64!)
          .toDouble();
      break;
  }

  return resultadoimc!;
}

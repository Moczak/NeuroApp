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

Future<double?> somarCaction(
  int? item38,
  int? item39,
  int? item40,
  int? item41,
  int? item42,
  int? item43,
  int? item44,
  int? item45,
  int? item46,
  int? item47,
  int? item48,
  int? item49,
  int? item50,
  int? item51,
  String? op,
) async {
  // Add your function code here!
  late double? resultadoimc;

  switch (op) {
    case "ok":
      resultadoimc = (item38! +
              item39! +
              item40! +
              item41! +
              item42! +
              item43! +
              item44! +
              item45! +
              item46! +
              item47! +
              item48! +
              item49! +
              item50! +
              item51!)
          .toDouble();
      break;
  }

  return resultadoimc!;
}

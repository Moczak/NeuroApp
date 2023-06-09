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

Future<double?> somarAaction(
  int? item1,
  int? item2,
  int? item3,
  int? item4,
  int? item5,
  int? item6,
  int? item7,
  int? item8,
  int? item9,
  int? item10,
  int? item11,
  int? item12,
  int? item13,
  int? item14,
  int? item15,
  int? item16,
  int? item17,
  String? op,
) async {
  // Add your function code here!
  late double? resultadoimc;

  switch (op) {
    case "ok":
      resultadoimc = (item1! +
              item2! +
              item3! +
              item4! +
              item5! +
              item6! +
              item7! +
              item8! +
              item9! +
              item10! +
              item11! +
              item12! +
              item13! +
              item14! +
              item15! +
              item16! +
              item17!)
          .toDouble();
      break;
  }

  return resultadoimc!;
}

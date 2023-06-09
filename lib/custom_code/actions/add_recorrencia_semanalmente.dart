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

import 'package:random_string/random_string.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
Future addRecorrenciaSemanalmente(
  DateTime iniciosessao,
  int qtdaderepeticao,
  String pacienteId,
  DateTime terminosessao,
  String urlwhatsapp,
  DateTime umdiaantesaviso,
  DocumentReference userreferencia,
  int valorsessao,
) async {
  final eventosCollection = FirebaseFirestore.instance
      .collection('paciente')
      .doc(pacienteId)
      .collection('sessao');

  final weekday = iniciosessao.weekday; // 1 = Monday, 7 = Sunday
  final referencia =
      randomAlphaNumeric(10); // gera uma string aleatória de 6 caracteres
  final daysUntilNextWeekday = (weekday - iniciosessao.weekday + 7) % 7;
  final nextWeekday = iniciosessao.add(Duration(days: daysUntilNextWeekday));

  for (int i = 0; i < qtdaderepeticao; i++) {
    final event = {
      'referencia': referencia,
      'iniciosessao': Timestamp.fromDate(
        iniciosessao.add(Duration(days: i)),
      ),
      'terminosessao': Timestamp.fromDate(
        terminosessao.add(Duration(days: i)),
      ),
      'criadorepeticao': true,
      'pago': false,
      'presencaconfirmada': false,
      'presencanaoconfirmada': true,
      'presencacancelada': false,
      'pacienteausente': false,
      'realizada': false,
      'userreferencia': userreferencia,
      'urlwhatsapp': urlwhatsapp,
      'umdiaantesaviso': Timestamp.fromDate(
        umdiaantesaviso.add(Duration(days: i)),
      ),
      'notasessaogerada': false,
      'valorsessao': valorsessao,
    };
    eventosCollection.add(event);
  }
}

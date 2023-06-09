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

Future<void> addRecorrenciaMensalmente(
  DateTime iniciosessao,
  int qtdaderepeticao,
  String pacienteId,
  DateTime terminosessao,
  String urlwhatsapp,
  DateTime umdiaantesaviso,
  DocumentReference userreferencia,
  int valorsessao,
) async {
  final firestore = FirebaseFirestore.instance;

  // Get a reference to the collection
  late final CollectionReference<Object?> collectionRef;
  final pacienteRef = firestore.collection("paciente").doc(pacienteId);
  final sessaoRef = pacienteRef.collection("sessao");

  final referencia = randomAlphaNumeric(10);

  DateTime dataAtual = iniciosessao;

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
    await sessaoRef.add(event);

    int mesSeguinte = dataAtual.month + 1;
    int anoSeguinte = dataAtual.year;
    if (mesSeguinte > 12) {
      mesSeguinte = 1;
      anoSeguinte++;
    }
    DateTime dataSeguinte =
        DateTime(anoSeguinte, mesSeguinte, iniciosessao.day);

    if (dataSeguinte.day < iniciosessao.day) {
      dataSeguinte = dataSeguinte.subtract(Duration(days: 1));
    }

    dataAtual = dataSeguinte;
  }
}

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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
Future deleteRecorrenciaRef(
  String referencia,
  String pacienteId,
) async {
  final eventosCollection = FirebaseFirestore.instance
      .collection('paciente')
      .doc(pacienteId)
      .collection('sessao');
  // Query for all documents with matching "referencia" value
  final querySnapshot =
      await eventosCollection.where('referencia', isEqualTo: referencia).get();

  // Delete each document in the query result
  for (final documentSnapshot in querySnapshot.docs) {
    await documentSnapshot.reference.delete();
  }
}

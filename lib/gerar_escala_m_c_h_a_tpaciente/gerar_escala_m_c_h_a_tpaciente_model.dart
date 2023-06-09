import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GerarEscalaMCHATpacienteModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? respondeu = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Q1 widget.
  FormFieldController<String>? q1ValueController;
  // State field(s) for Q2 widget.
  FormFieldController<String>? q2ValueController;
  // State field(s) for Q3 widget.
  FormFieldController<String>? q3ValueController;
  // State field(s) for Q4 widget.
  FormFieldController<String>? q4ValueController;
  // State field(s) for Q5 widget.
  FormFieldController<String>? q5ValueController;
  // State field(s) for Q6 widget.
  FormFieldController<String>? q6ValueController;
  // State field(s) for Q7 widget.
  FormFieldController<String>? q7ValueController;
  // State field(s) for Q8 widget.
  FormFieldController<String>? q8ValueController;
  // State field(s) for Q9 widget.
  FormFieldController<String>? q9ValueController;
  // State field(s) for Q10 widget.
  FormFieldController<String>? q10ValueController;
  // State field(s) for Q11 widget.
  FormFieldController<String>? q11ValueController;
  // State field(s) for Q12 widget.
  FormFieldController<String>? q12ValueController;
  // State field(s) for Q13 widget.
  FormFieldController<String>? q13ValueController;
  // State field(s) for Q14 widget.
  FormFieldController<String>? q14ValueController;
  // State field(s) for Q15 widget.
  FormFieldController<String>? q15ValueController;
  // State field(s) for Q16 widget.
  FormFieldController<String>? q16ValueController;
  // State field(s) for Q17 widget.
  FormFieldController<String>? q17ValueController;
  // State field(s) for Q18 widget.
  FormFieldController<String>? q18ValueController;
  // State field(s) for Q19 widget.
  FormFieldController<String>? q19ValueController;
  // State field(s) for Q20 widget.
  FormFieldController<String>? q20ValueController;
  // State field(s) for Q21 widget.
  FormFieldController<String>? q21ValueController;
  // State field(s) for Q22 widget.
  FormFieldController<String>? q22ValueController;
  // State field(s) for Q23 widget.
  FormFieldController<String>? q23ValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MChatRecord? crioudocumento;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ItenscriticosRecord? itenscriticos;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TotalRecord? totalitensfalha;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

  String? get q1Value => q1ValueController?.value;
  String? get q2Value => q2ValueController?.value;
  String? get q3Value => q3ValueController?.value;
  String? get q4Value => q4ValueController?.value;
  String? get q5Value => q5ValueController?.value;
  String? get q6Value => q6ValueController?.value;
  String? get q7Value => q7ValueController?.value;
  String? get q8Value => q8ValueController?.value;
  String? get q9Value => q9ValueController?.value;
  String? get q10Value => q10ValueController?.value;
  String? get q11Value => q11ValueController?.value;
  String? get q12Value => q12ValueController?.value;
  String? get q13Value => q13ValueController?.value;
  String? get q14Value => q14ValueController?.value;
  String? get q15Value => q15ValueController?.value;
  String? get q16Value => q16ValueController?.value;
  String? get q17Value => q17ValueController?.value;
  String? get q18Value => q18ValueController?.value;
  String? get q19Value => q19ValueController?.value;
  String? get q20Value => q20ValueController?.value;
  String? get q21Value => q21ValueController?.value;
  String? get q22Value => q22ValueController?.value;
  String? get q23Value => q23ValueController?.value;
}

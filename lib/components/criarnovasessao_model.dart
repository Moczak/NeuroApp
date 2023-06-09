import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarnovasessaoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for precodasessao widget.
  TextEditingController? precodasessaoController;
  String? Function(BuildContext, String?)? precodasessaoControllerValidator;
  // State field(s) for precodopacoter widget.
  TextEditingController? precodopacoterController;
  String? Function(BuildContext, String?)? precodopacoterControllerValidator;
  // State field(s) for qtdadedesessao widget.
  TextEditingController? qtdadedesessaoController;
  String? Function(BuildContext, String?)? qtdadedesessaoControllerValidator;
  // State field(s) for pagouvalortotal widget.
  bool? pagouvalortotalValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for repetir widget.
  bool? repetirValue;
  // State field(s) for repetiropcao widget.
  FormFieldController<String>? repetiropcaoValueController;
  // State field(s) for qtdadex widget.
  TextEditingController? qtdadexController;
  String? Function(BuildContext, String?)? qtdadexControllerValidator;
  // Stores action output result for [Backend Call - API (INSCREVENOBOTCONVERSA)] action in Button widget.
  ApiCallResponse? geraiduser2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SessaoRecord? cadastrousessao;
  // Stores action output result for [Backend Call - API (INSCREVENOBOTCONVERSA)] action in Button widget.
  ApiCallResponse? geraiduser;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    precodasessaoController?.dispose();
    precodopacoterController?.dispose();
    qtdadedesessaoController?.dispose();
    qtdadexController?.dispose();
  }

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
  String? get repetiropcaoValue => repetiropcaoValueController?.value;
}

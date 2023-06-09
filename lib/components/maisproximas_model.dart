import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MaisproximasModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for sexo widget.
  TextEditingController? sexoController;
  String? Function(BuildContext, String?)? sexoControllerValidator;
  // State field(s) for idade widget.
  TextEditingController? idadeController;
  String? Function(BuildContext, String?)? idadeControllerValidator;
  // State field(s) for relacao widget.
  TextEditingController? relacaoController;
  String? Function(BuildContext, String?)? relacaoControllerValidator;
  // State field(s) for escolaridade widget.
  TextEditingController? escolaridadeController;
  String? Function(BuildContext, String?)? escolaridadeControllerValidator;
  // State field(s) for ocupacao widget.
  TextEditingController? ocupacaoController;
  String? Function(BuildContext, String?)? ocupacaoControllerValidator;
  // State field(s) for saude widget.
  TextEditingController? saudeController;
  String? Function(BuildContext, String?)? saudeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeController?.dispose();
    sexoController?.dispose();
    idadeController?.dispose();
    relacaoController?.dispose();
    escolaridadeController?.dispose();
    ocupacaoController?.dispose();
    saudeController?.dispose();
  }

  /// Additional helper methods are added here.

}

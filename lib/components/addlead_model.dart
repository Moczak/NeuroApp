import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddleadModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for sobrenome widget.
  TextEditingController? sobrenomeController;
  String? Function(BuildContext, String?)? sobrenomeControllerValidator;
  // State field(s) for ddd widget.
  TextEditingController? dddController;
  String? Function(BuildContext, String?)? dddControllerValidator;
  // State field(s) for tel widget.
  TextEditingController? telController;
  String? Function(BuildContext, String?)? telControllerValidator;
  // State field(s) for tipodecliente widget.
  FormFieldController<String>? tipodeclienteValueController;
  // State field(s) for idade widget.
  TextEditingController? idadeController;
  String? Function(BuildContext, String?)? idadeControllerValidator;
  // State field(s) for nomepai widget.
  TextEditingController? nomepaiController;
  String? Function(BuildContext, String?)? nomepaiControllerValidator;
  // State field(s) for nomemae widget.
  TextEditingController? nomemaeController;
  String? Function(BuildContext, String?)? nomemaeControllerValidator;
  // State field(s) for atuacao widget.
  TextEditingController? atuacaoController;
  String? Function(BuildContext, String?)? atuacaoControllerValidator;
  // State field(s) for nomeclinica widget.
  TextEditingController? nomeclinicaController;
  String? Function(BuildContext, String?)? nomeclinicaControllerValidator;
  // State field(s) for nomeescola widget.
  TextEditingController? nomeescolaController;
  String? Function(BuildContext, String?)? nomeescolaControllerValidator;
  // State field(s) for endereco widget.
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for obs widget.
  TextEditingController? obsController;
  String? Function(BuildContext, String?)? obsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeController?.dispose();
    sobrenomeController?.dispose();
    dddController?.dispose();
    telController?.dispose();
    idadeController?.dispose();
    nomepaiController?.dispose();
    nomemaeController?.dispose();
    atuacaoController?.dispose();
    nomeclinicaController?.dispose();
    nomeescolaController?.dispose();
    enderecoController?.dispose();
    emailController?.dispose();
    obsController?.dispose();
  }

  /// Additional helper methods are added here.

  String? get tipodeclienteValue => tipodeclienteValueController?.value;
}

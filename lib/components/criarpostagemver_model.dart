import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarpostagemverModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for titulo widget.
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  // State field(s) for hashtag widget.
  TextEditingController? hashtagController;
  String? Function(BuildContext, String?)? hashtagControllerValidator;
  // State field(s) for LINK widget.
  TextEditingController? linkController;
  String? Function(BuildContext, String?)? linkControllerValidator;
  // State field(s) for semana widget.
  String? semanaValue;
  FormFieldController<String>? semanaValueController;
  // State field(s) for diasemana widget.
  String? diasemanaValue;
  FormFieldController<String>? diasemanaValueController;
  DateTime? datePicked;
  // State field(s) for datanova widget.
  TextEditingController? datanovaController;
  String? Function(BuildContext, String?)? datanovaControllerValidator;
  // State field(s) for data widget.
  TextEditingController? dataController;
  String? Function(BuildContext, String?)? dataControllerValidator;
  // State field(s) for conteudo widget.
  TextEditingController? conteudoController;
  String? Function(BuildContext, String?)? conteudoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tituloController?.dispose();
    hashtagController?.dispose();
    linkController?.dispose();
    datanovaController?.dispose();
    dataController?.dispose();
    conteudoController?.dispose();
  }

  /// Additional helper methods are added here.

}

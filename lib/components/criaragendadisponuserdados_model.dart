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

class CriaragendadisponuserdadosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for titulo widget.
  TextEditingController? tituloController1;
  String? Function(BuildContext, String?)? tituloController1Validator;
  // State field(s) for titulo widget.
  TextEditingController? tituloController2;
  String? Function(BuildContext, String?)? tituloController2Validator;
  // State field(s) for link widget.
  TextEditingController? linkController;
  String? Function(BuildContext, String?)? linkControllerValidator;
  // State field(s) for titulo widget.
  TextEditingController? tituloController3;
  String? Function(BuildContext, String?)? tituloController3Validator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tituloController1?.dispose();
    tituloController2?.dispose();
    linkController?.dispose();
    tituloController3?.dispose();
  }

  /// Additional helper methods are added here.

}

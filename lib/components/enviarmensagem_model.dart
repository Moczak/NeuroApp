import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnviarmensagemModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for mensagem widget.
  TextEditingController? mensagemController;
  String? Function(BuildContext, String?)? mensagemControllerValidator;
  // Stores action output result for [Backend Call - API (INSCREVENOBOTCONVERSA)] action in Button widget.
  ApiCallResponse? geraidususariomensagem;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    mensagemController?.dispose();
  }

  /// Additional helper methods are added here.

}

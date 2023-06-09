import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
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

class EditareversessaoModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool novopreco = true;

  bool novoinicio = true;

  bool novotermino = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for novopreco widget.
  TextEditingController? novoprecoController1;
  String? Function(BuildContext, String?)? novoprecoController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for novopreco widget.
  TextEditingController? novoprecoController2;
  String? Function(BuildContext, String?)? novoprecoController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    novoprecoController1?.dispose();
    novoprecoController2?.dispose();
  }

  /// Additional helper methods are added here.

}

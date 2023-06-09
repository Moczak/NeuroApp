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

class PesquisamercadoeditarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for psico widget.
  TextEditingController? psicoController;
  String? Function(BuildContext, String?)? psicoControllerValidator;
  String? _psicoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigratório';
    }

    return null;
  }

  // State field(s) for terapeuta widget.
  TextEditingController? terapeutaController;
  String? Function(BuildContext, String?)? terapeutaControllerValidator;
  String? _terapeutaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigratório';
    }

    return null;
  }

  // State field(s) for fono widget.
  TextEditingController? fonoController;
  String? Function(BuildContext, String?)? fonoControllerValidator;
  String? _fonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigratório';
    }

    return null;
  }

  // State field(s) for neuro widget.
  TextEditingController? neuroController;
  String? Function(BuildContext, String?)? neuroControllerValidator;
  String? _neuroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigratório';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    psicoControllerValidator = _psicoControllerValidator;
    terapeutaControllerValidator = _terapeutaControllerValidator;
    fonoControllerValidator = _fonoControllerValidator;
    neuroControllerValidator = _neuroControllerValidator;
  }

  void dispose() {
    psicoController?.dispose();
    terapeutaController?.dispose();
    fonoController?.dispose();
    neuroController?.dispose();
  }

  /// Additional helper methods are added here.

}

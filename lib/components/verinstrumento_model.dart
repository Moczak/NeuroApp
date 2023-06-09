import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class VerinstrumentoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for AREA widget.
  String? areaValue;
  FormFieldController<String>? areaValueController;
  // State field(s) for faixadeidade widget.
  TextEditingController? faixadeidadeController;
  String? Function(BuildContext, String?)? faixadeidadeControllerValidator;
  // State field(s) for refrencia widget.
  TextEditingController? refrenciaController;
  String? Function(BuildContext, String?)? refrenciaControllerValidator;
  // State field(s) for elemavaliados widget.
  TextEditingController? elemavaliadosController;
  String? Function(BuildContext, String?)? elemavaliadosControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeController?.dispose();
    faixadeidadeController?.dispose();
    refrenciaController?.dispose();
    elemavaliadosController?.dispose();
  }

  /// Additional helper methods are added here.

}

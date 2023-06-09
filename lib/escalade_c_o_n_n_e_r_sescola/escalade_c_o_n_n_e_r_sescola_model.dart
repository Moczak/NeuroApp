import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EscaladeCONNERSescolaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for q1 widget.
  int? q1Value;
  // State field(s) for q2 widget.
  int? q2Value;
  // State field(s) for q3 widget.
  int? q3Value;
  // State field(s) for q4 widget.
  int? q4Value;
  // State field(s) for q5 widget.
  int? q5Value;
  // State field(s) for q6 widget.
  int? q6Value;
  // State field(s) for q7 widget.
  int? q7Value;
  // State field(s) for q8 widget.
  int? q8Value;
  // State field(s) for q9 widget.
  int? q9Value;
  // State field(s) for q10 widget.
  int? q10Value;
  // State field(s) for q11 widget.
  int? q11Value;
  // State field(s) for q12 widget.
  int? q12Value;
  // State field(s) for q13 widget.
  int? q13Value;
  // State field(s) for q14 widget.
  int? q14Value;
  // State field(s) for q15 widget.
  int? q15Value;
  // State field(s) for q16 widget.
  int? q16Value;
  // State field(s) for q17 widget.
  int? q17Value;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
  }

  /// Additional helper methods are added here.

}

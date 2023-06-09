import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/components/shimmer5_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class VerASRS18Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for Q1RADIO widget.
  FormFieldController<String>? q1radioValueController;
  // State field(s) for Q2RADIO widget.
  FormFieldController<String>? q2radioValueController;
  // State field(s) for Q3RADIO widget.
  FormFieldController<String>? q3radioValueController;
  // State field(s) for Q4RADIO widget.
  FormFieldController<String>? q4radioValueController;
  // State field(s) for Q5RADIO widget.
  FormFieldController<String>? q5radioValueController;
  // State field(s) for Q6RADIO widget.
  FormFieldController<String>? q6radioValueController;
  // State field(s) for Q7RADIO widget.
  FormFieldController<String>? q7radioValueController;
  // State field(s) for Q8RADIO widget.
  FormFieldController<String>? q8radioValueController;
  // State field(s) for Q9RADIO widget.
  FormFieldController<String>? q9radioValueController;
  // State field(s) for Q1BRADIO widget.
  FormFieldController<String>? q1bradioValueController;
  // State field(s) for Q2BRADIO widget.
  FormFieldController<String>? q2bradioValueController;
  // State field(s) for Q3BRADIO widget.
  FormFieldController<String>? q3bradioValueController;
  // State field(s) for Q4BRADIO widget.
  FormFieldController<String>? q4bradioValueController;
  // State field(s) for Q5BRADIO widget.
  FormFieldController<String>? q5bradioValueController;
  // State field(s) for Q6BRADIO widget.
  FormFieldController<String>? q6bradioValueController;
  // State field(s) for Q7BRADIO widget.
  FormFieldController<String>? q7bradioValueController;
  // State field(s) for Q8BRADIO widget.
  FormFieldController<String>? q8bradioValueController;
  // State field(s) for Q9BRADIO widget.
  FormFieldController<String>? q9bradioValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
  }

  /// Additional helper methods are added here.

  String? get q1radioValue => q1radioValueController?.value;
  String? get q2radioValue => q2radioValueController?.value;
  String? get q3radioValue => q3radioValueController?.value;
  String? get q4radioValue => q4radioValueController?.value;
  String? get q5radioValue => q5radioValueController?.value;
  String? get q6radioValue => q6radioValueController?.value;
  String? get q7radioValue => q7radioValueController?.value;
  String? get q8radioValue => q8radioValueController?.value;
  String? get q9radioValue => q9radioValueController?.value;
  String? get q1bradioValue => q1bradioValueController?.value;
  String? get q2bradioValue => q2bradioValueController?.value;
  String? get q3bradioValue => q3bradioValueController?.value;
  String? get q4bradioValue => q4bradioValueController?.value;
  String? get q5bradioValue => q5bradioValueController?.value;
  String? get q6bradioValue => q6bradioValueController?.value;
  String? get q7bradioValue => q7bradioValueController?.value;
  String? get q8bradioValue => q8bradioValueController?.value;
  String? get q9bradioValue => q9bradioValueController?.value;
}

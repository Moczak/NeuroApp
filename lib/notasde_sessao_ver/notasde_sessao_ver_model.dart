import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/addinstrumento_widget.dart';
import '/components/main_web_nav_widget.dart';
import '/components/shimmer2_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class NotasdeSessaoVerModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool play = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for Timer widget.
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for check1 widget.
  bool? check1Value;
  // State field(s) for check2 widget.
  bool? check2Value;
  // State field(s) for check3 widget.
  bool? check3Value;
  // State field(s) for check4 widget.
  bool? check4Value;
  // State field(s) for check5 widget.
  bool? check5Value;
  // State field(s) for check6 widget.
  bool? check6Value;
  // State field(s) for check7 widget.
  bool? check7Value;
  // State field(s) for anotacaoantes widget.
  TextEditingController? anotacaoantesController;
  String? Function(BuildContext, String?)? anotacaoantesControllerValidator;
  // State field(s) for queixa widget.
  TextEditingController? queixaController;
  String? Function(BuildContext, String?)? queixaControllerValidator;
  // State field(s) for resumo widget.
  TextEditingController? resumoController;
  String? Function(BuildContext, String?)? resumoControllerValidator;
  // State field(s) for obs widget.
  TextEditingController? obsController;
  String? Function(BuildContext, String?)? obsControllerValidator;
  // State field(s) for evolucao widget.
  TextEditingController? evolucaoController;
  String? Function(BuildContext, String?)? evolucaoControllerValidator;
  // State field(s) for proxsessao widget.
  TextEditingController? proxsessaoController;
  String? Function(BuildContext, String?)? proxsessaoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    timerController.dispose();
    anotacaoantesController?.dispose();
    queixaController?.dispose();
    resumoController?.dispose();
    obsController?.dispose();
    evolucaoController?.dispose();
    proxsessaoController?.dispose();
  }

  /// Additional helper methods are added here.

}

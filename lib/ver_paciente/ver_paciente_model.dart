import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/opensheetcliente_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/components/semarquivos_widget.dart';
import '/components/semrecibo_widget.dart';
import '/components/semrecibocontrato_widget.dart';
import '/components/semrelatorio_widget.dart';
import '/components/shimmer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
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
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class VerPacienteModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool showMenu = false;

  ///  State fields for stateful widgets in this page.

  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}

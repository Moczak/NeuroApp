import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/adquirirplano_full_widget.dart';
import '/components/adquirirplanoegresso_widget.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/components/table04_invoices_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PlanoAssinaturaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // Stores action output result for [Backend Call - API (STRIPECANCELAASSINATURA)] action in Button widget.
  ApiCallResponse? apiResultce7;
  // Model for Table04Invoices component.
  late Table04InvoicesModel table04InvoicesModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
    table04InvoicesModel = createModel(context, () => Table04InvoicesModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    table04InvoicesModel.dispose();
  }

  /// Additional helper methods are added here.

}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/editarfaturament_meta_widget.dart';
import '/components/editarfaturamento_minimo_widget.dart';
import '/components/mobile_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/components/shimmer3_widget.dart';
import '/components/shimmer4_widget.dart';
import '/components/shimmer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FinanceiroMobileModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool menu = false;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    mobileNavModel.dispose();
  }

  /// Additional helper methods are added here.

}

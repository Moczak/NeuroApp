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
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GerarGFMFModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for item1 widget.
  int? item1Value;
  // State field(s) for item2 widget.
  int? item2Value;
  // State field(s) for item3 widget.
  int? item3Value;
  // State field(s) for item4 widget.
  int? item4Value;
  // State field(s) for item5 widget.
  int? item5Value;
  // State field(s) for item6 widget.
  int? item6Value;
  // State field(s) for item7 widget.
  int? item7Value;
  // State field(s) for item8 widget.
  int? item8Value;
  // State field(s) for item9 widget.
  int? item9Value;
  // State field(s) for item10 widget.
  int? item10Value;
  // State field(s) for item11 widget.
  int? item11Value;
  // State field(s) for item12 widget.
  int? item12Value;
  // State field(s) for item13 widget.
  int? item13Value;
  // State field(s) for item14 widget.
  int? item14Value;
  // State field(s) for item15 widget.
  int? item15Value;
  // State field(s) for item16 widget.
  int? item16Value;
  // State field(s) for item17 widget.
  int? item17Value;
  // State field(s) for item18 widget.
  int? item18Value;
  // State field(s) for item19 widget.
  int? item19Value;
  // State field(s) for item20 widget.
  int? item20Value;
  // State field(s) for item21 widget.
  int? item21Value;
  // State field(s) for item22 widget.
  int? item22Value;
  // State field(s) for item23 widget.
  int? item23Value;
  // State field(s) for item24 widget.
  int? item24Value;
  // State field(s) for item25 widget.
  int? item25Value;
  // State field(s) for item26 widget.
  int? item26Value;
  // State field(s) for item27 widget.
  int? item27Value;
  // State field(s) for item28 widget.
  int? item28Value;
  // State field(s) for item29 widget.
  int? item29Value;
  // State field(s) for item30 widget.
  int? item30Value;
  // State field(s) for item31 widget.
  int? item31Value;
  // State field(s) for item32 widget.
  int? item32Value;
  // State field(s) for item33 widget.
  int? item33Value;
  // State field(s) for item34 widget.
  int? item34Value;
  // State field(s) for item35 widget.
  int? item35Value;
  // State field(s) for item36 widget.
  int? item36Value;
  // State field(s) for item37 widget.
  int? item37Value;
  // State field(s) for item38 widget.
  int? item38Value;
  // State field(s) for item39 widget.
  int? item39Value;
  // State field(s) for item40 widget.
  int? item40Value;
  // State field(s) for item41 widget.
  int? item41Value;
  // State field(s) for item42 widget.
  int? item42Value;
  // State field(s) for item43 widget.
  int? item43Value;
  // State field(s) for item44 widget.
  int? item44Value;
  // State field(s) for item45 widget.
  int? item45Value;
  // State field(s) for item46 widget.
  int? item46Value;
  // State field(s) for item47 widget.
  int? item47Value;
  // State field(s) for item48 widget.
  int? item48Value;
  // State field(s) for item49 widget.
  int? item49Value;
  // State field(s) for item50 widget.
  int? item50Value;
  // State field(s) for item51 widget.
  int? item51Value;
  // State field(s) for item52 widget.
  int? item52Value;
  // State field(s) for item53 widget.
  int? item53Value;
  // State field(s) for item54 widget.
  int? item54Value;
  // State field(s) for item55 widget.
  int? item55Value;
  // State field(s) for item56 widget.
  int? item56Value;
  // State field(s) for item57 widget.
  int? item57Value;
  // State field(s) for item58 widget.
  int? item58Value;
  // State field(s) for item59 widget.
  int? item59Value;
  // State field(s) for item60 widget.
  int? item60Value;
  // State field(s) for item61 widget.
  int? item61Value;
  // State field(s) for item62 widget.
  int? item62Value;
  // State field(s) for item63 widget.
  int? item63Value;
  // State field(s) for item64 widget.
  int? item64Value;
  // State field(s) for item65 widget.
  int? item65Value;
  // State field(s) for item66 widget.
  int? item66Value;
  // State field(s) for item67 widget.
  int? item67Value;
  // State field(s) for item68 widget.
  int? item68Value;
  // State field(s) for item69 widget.
  int? item69Value;
  // State field(s) for item70 widget.
  int? item70Value;
  // State field(s) for item71 widget.
  int? item71Value;
  // State field(s) for item72 widget.
  int? item72Value;
  // State field(s) for item73 widget.
  int? item73Value;
  // State field(s) for item74 widget.
  int? item74Value;
  // State field(s) for item75 widget.
  int? item75Value;
  // State field(s) for item76 widget.
  int? item76Value;
  // State field(s) for item77 widget.
  int? item77Value;
  // State field(s) for item78 widget.
  int? item78Value;
  // State field(s) for item79 widget.
  int? item79Value;
  // State field(s) for item80 widget.
  int? item80Value;
  // State field(s) for item81 widget.
  int? item81Value;
  // State field(s) for item82 widget.
  int? item82Value;
  // State field(s) for item83 widget.
  int? item83Value;
  // State field(s) for item84 widget.
  int? item84Value;
  // State field(s) for item85 widget.
  int? item85Value;
  // State field(s) for item86 widget.
  int? item86Value;
  // State field(s) for item87 widget.
  int? item87Value;
  // State field(s) for item88 widget.
  int? item88Value;
  // Stores action output result for [Custom Action - somarAaction] action in Button widget.
  double? resultadosomaA;
  // Stores action output result for [Custom Action - resultadoAporcentagem] action in Button widget.
  double? resultadoAporcentagem;
  // Stores action output result for [Custom Action - somarBaction] action in Button widget.
  double? resultadosomaB;
  // Stores action output result for [Custom Action - resultadoBporcentagem] action in Button widget.
  double? resultadoBporcentagem;
  // Stores action output result for [Custom Action - somarCaction] action in Button widget.
  double? resultadosomaC;
  // Stores action output result for [Custom Action - resultadoCporcentagem] action in Button widget.
  double? resultadoCporcentagem;
  // Stores action output result for [Custom Action - somarDaction] action in Button widget.
  double? resultadosomaD;
  // Stores action output result for [Custom Action - resultadoDporcentagem] action in Button widget.
  double? resultadoDporcentagem;
  // Stores action output result for [Custom Action - somarEaction] action in Button widget.
  double? resultadosomaE;
  // Stores action output result for [Custom Action - resultadoEporcentagem] action in Button widget.
  double? resultadoporcentagemE;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  GmfmRecord? criougmf;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
  }

  /// Additional helper methods are added here.

}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ContratoGerarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for cabecalho widget.
  TextEditingController? cabecalhoController;
  String? Function(BuildContext, String?)? cabecalhoControllerValidator;
  // State field(s) for endereco widget.
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;
  // State field(s) for tel widget.
  TextEditingController? telController;
  final telMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for cprimeira widget.
  TextEditingController? cprimeiraController;
  String? Function(BuildContext, String?)? cprimeiraControllerValidator;
  // State field(s) for csegunda widget.
  TextEditingController? csegundaController;
  String? Function(BuildContext, String?)? csegundaControllerValidator;
  // State field(s) for cterceira widget.
  TextEditingController? cterceiraController;
  String? Function(BuildContext, String?)? cterceiraControllerValidator;
  // State field(s) for cquarta widget.
  TextEditingController? cquartaController;
  String? Function(BuildContext, String?)? cquartaControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ContratoRecord? contratogerado;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    cabecalhoController?.dispose();
    enderecoController?.dispose();
    telController?.dispose();
    emailController?.dispose();
    cprimeiraController?.dispose();
    csegundaController?.dispose();
    cterceiraController?.dispose();
    cquartaController?.dispose();
  }

  /// Additional helper methods are added here.

}

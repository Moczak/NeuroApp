import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GerarPersonaModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool homem = true;

  bool mulher = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for idademedia widget.
  TextEditingController? idademediaController;
  String? Function(BuildContext, String?)? idademediaControllerValidator;
  // State field(s) for escolaridade widget.
  String? escolaridadeValue;
  FormFieldController<String>? escolaridadeValueController;
  // State field(s) for cargo widget.
  TextEditingController? cargoController;
  String? Function(BuildContext, String?)? cargoControllerValidator;
  // State field(s) for salario widget.
  TextEditingController? salarioController;
  String? Function(BuildContext, String?)? salarioControllerValidator;
  // State field(s) for profissao widget.
  TextEditingController? profissaoController;
  String? Function(BuildContext, String?)? profissaoControllerValidator;
  // State field(s) for ondeelesta widget.
  TextEditingController? ondeelestaController;
  String? Function(BuildContext, String?)? ondeelestaControllerValidator;
  // State field(s) for suasmotivacoes widget.
  TextEditingController? suasmotivacoesController;
  String? Function(BuildContext, String?)? suasmotivacoesControllerValidator;
  // State field(s) for seusproblemas widget.
  TextEditingController? seusproblemasController;
  String? Function(BuildContext, String?)? seusproblemasControllerValidator;
  // State field(s) for comoeuajudo widget.
  TextEditingController? comoeuajudoController;
  String? Function(BuildContext, String?)? comoeuajudoControllerValidator;
  // State field(s) for seusmedos widget.
  TextEditingController? seusmedosController;
  String? Function(BuildContext, String?)? seusmedosControllerValidator;
  // State field(s) for assuntospesquisa widget.
  TextEditingController? assuntospesquisaController;
  String? Function(BuildContext, String?)? assuntospesquisaControllerValidator;
  // State field(s) for comresolvia widget.
  TextEditingController? comresolviaController;
  String? Function(BuildContext, String?)? comresolviaControllerValidator;
  // State field(s) for diferencia widget.
  TextEditingController? diferenciaController;
  String? Function(BuildContext, String?)? diferenciaControllerValidator;
  // State field(s) for objecoes widget.
  TextEditingController? objecoesController;
  String? Function(BuildContext, String?)? objecoesControllerValidator;
  // State field(s) for duvidas widget.
  TextEditingController? duvidasController;
  String? Function(BuildContext, String?)? duvidasControllerValidator;
  // State field(s) for queixa widget.
  TextEditingController? queixaController;
  String? Function(BuildContext, String?)? queixaControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PersonaRecord? crioupersona;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    nomeController?.dispose();
    idademediaController?.dispose();
    cargoController?.dispose();
    salarioController?.dispose();
    profissaoController?.dispose();
    ondeelestaController?.dispose();
    suasmotivacoesController?.dispose();
    seusproblemasController?.dispose();
    comoeuajudoController?.dispose();
    seusmedosController?.dispose();
    assuntospesquisaController?.dispose();
    comresolviaController?.dispose();
    diferenciaController?.dispose();
    objecoesController?.dispose();
    duvidasController?.dispose();
    queixaController?.dispose();
  }

  /// Additional helper methods are added here.

}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/maisproximas_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/components/pessoasqueresidem_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
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

class GerarAnamneseModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for questao1 widget.
  TextEditingController? questao1Controller;
  String? Function(BuildContext, String?)? questao1ControllerValidator;
  // State field(s) for questao2 widget.
  FormFieldController<String>? questao2ValueController;
  // State field(s) for questao3 widget.
  FormFieldController<String>? questao3ValueController;
  // State field(s) for questao3quaismedicamentos widget.
  TextEditingController? questao3quaismedicamentosController;
  String? Function(BuildContext, String?)?
      questao3quaismedicamentosControllerValidator;
  // State field(s) for questao4 widget.
  FormFieldController<String>? questao4ValueController;
  // State field(s) for questao4quaisapelidos widget.
  TextEditingController? questao4quaisapelidosController;
  String? Function(BuildContext, String?)?
      questao4quaisapelidosControllerValidator;
  // State field(s) for questao6 widget.
  FormFieldController<String>? questao6ValueController;
  // State field(s) for questao6quaiscrencas widget.
  TextEditingController? questao6quaiscrencasController;
  String? Function(BuildContext, String?)?
      questao6quaiscrencasControllerValidator;
  // State field(s) for questao7 widget.
  FormFieldController<String>? questao7ValueController;
  // State field(s) for questao7quaisdrogas widget.
  TextEditingController? questao7quaisdrogasController;
  String? Function(BuildContext, String?)?
      questao7quaisdrogasControllerValidator;
  // State field(s) for questao8 widget.
  FormFieldController<String>? questao8ValueController;
  // State field(s) for questao8quaisproblemasvisao widget.
  TextEditingController? questao8quaisproblemasvisaoController;
  String? Function(BuildContext, String?)?
      questao8quaisproblemasvisaoControllerValidator;
  // State field(s) for questao8-1 widget.
  FormFieldController<String>? questao81ValueController;
  // State field(s) for questa8-1porqueusalentescorretivas widget.
  TextEditingController? questa81porqueusalentescorretivasController;
  String? Function(BuildContext, String?)?
      questa81porqueusalentescorretivasControllerValidator;
  // State field(s) for questao9 widget.
  FormFieldController<String>? questao9ValueController;
  // State field(s) for questao9quaisprobauditivos widget.
  TextEditingController? questao9quaisprobauditivosController;
  String? Function(BuildContext, String?)?
      questao9quaisprobauditivosControllerValidator;
  // State field(s) for questao9-1 widget.
  FormFieldController<String>? questao91ValueController;
  // State field(s) for questao9-1quaisaparelhos widget.
  TextEditingController? questao91quaisaparelhosController;
  String? Function(BuildContext, String?)?
      questao91quaisaparelhosControllerValidator;
  // State field(s) for Indicadoressobrequestesfamiliares widget.
  List<String>? indicadoressobrequestesfamiliaresValues;
  FormFieldController<List<String>>?
      indicadoressobrequestesfamiliaresValueController;
  // State field(s) for questao3-II widget.
  FormFieldController<String>? questao3IIValueController;
  // State field(s) for questao3-outros-itemII widget.
  TextEditingController? questao3OutrosItemIIController;
  String? Function(BuildContext, String?)?
      questao3OutrosItemIIControllerValidator;
  // State field(s) for QUEIXAPRINCIPAL widget.
  TextEditingController? queixaprincipalController;
  String? Function(BuildContext, String?)? queixaprincipalControllerValidator;
  // State field(s) for questaoescola-IV widget.
  FormFieldController<String>? questaoescolaIVValueController;
  // State field(s) for encaminhamentoescolamotivo widget.
  TextEditingController? encaminhamentoescolamotivoController;
  String? Function(BuildContext, String?)?
      encaminhamentoescolamotivoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    questao1Controller?.dispose();
    questao3quaismedicamentosController?.dispose();
    questao4quaisapelidosController?.dispose();
    questao6quaiscrencasController?.dispose();
    questao7quaisdrogasController?.dispose();
    questao8quaisproblemasvisaoController?.dispose();
    questa81porqueusalentescorretivasController?.dispose();
    questao9quaisprobauditivosController?.dispose();
    questao91quaisaparelhosController?.dispose();
    questao3OutrosItemIIController?.dispose();
    queixaprincipalController?.dispose();
    encaminhamentoescolamotivoController?.dispose();
  }

  /// Additional helper methods are added here.

  String? get questao2Value => questao2ValueController?.value;
  String? get questao3Value => questao3ValueController?.value;
  String? get questao4Value => questao4ValueController?.value;
  String? get questao6Value => questao6ValueController?.value;
  String? get questao7Value => questao7ValueController?.value;
  String? get questao8Value => questao8ValueController?.value;
  String? get questao81Value => questao81ValueController?.value;
  String? get questao9Value => questao9ValueController?.value;
  String? get questao91Value => questao91ValueController?.value;
  String? get questao3IIValue => questao3IIValueController?.value;
  String? get questaoescolaIVValue => questaoescolaIVValueController?.value;
}

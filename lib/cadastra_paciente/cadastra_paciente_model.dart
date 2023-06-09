import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastraPacienteModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for sobrenome widget.
  TextEditingController? sobrenomeController;
  String? Function(BuildContext, String?)? sobrenomeControllerValidator;
  String? _sobrenomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for nomeescola widget.
  TextEditingController? nomeescolaController;
  String? Function(BuildContext, String?)? nomeescolaControllerValidator;
  String? _nomeescolaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for idade widget.
  TextEditingController? idadeController;
  String? Function(BuildContext, String?)? idadeControllerValidator;
  String? _idadeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for usamedicamento widget.
  TextEditingController? usamedicamentoController;
  String? Function(BuildContext, String?)? usamedicamentoControllerValidator;
  String? _usamedicamentoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for datanascimento widget.
  TextEditingController? datanascimentoController;
  final datanascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? datanascimentoControllerValidator;
  String? _datanascimentoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for ddd widget.
  TextEditingController? dddController;
  String? Function(BuildContext, String?)? dddControllerValidator;
  String? _dddControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for tel widget.
  TextEditingController? telController;
  String? Function(BuildContext, String?)? telControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for escolaridade widget.
  String? escolaridadeValue;
  FormFieldController<String>? escolaridadeValueController;
  // State field(s) for escola widget.
  String? escolaValue;
  FormFieldController<String>? escolaValueController;
  // State field(s) for periodo widget.
  String? periodoValue;
  FormFieldController<String>? periodoValueController;
  // State field(s) for nomepai widget.
  TextEditingController? nomepaiController;
  String? Function(BuildContext, String?)? nomepaiControllerValidator;
  String? _nomepaiControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for idadepai widget.
  TextEditingController? idadepaiController;
  String? Function(BuildContext, String?)? idadepaiControllerValidator;
  String? _idadepaiControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for escolaridadepai widget.
  String? escolaridadepaiValue;
  FormFieldController<String>? escolaridadepaiValueController;
  // State field(s) for nomemae widget.
  TextEditingController? nomemaeController;
  String? Function(BuildContext, String?)? nomemaeControllerValidator;
  String? _nomemaeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for idademae widget.
  TextEditingController? idademaeController;
  String? Function(BuildContext, String?)? idademaeControllerValidator;
  String? _idademaeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for escolaridademae widget.
  String? escolaridademaeValue;
  FormFieldController<String>? escolaridademaeValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PacienteRecord? cadastroupaciente;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
    nomeControllerValidator = _nomeControllerValidator;
    sobrenomeControllerValidator = _sobrenomeControllerValidator;
    nomeescolaControllerValidator = _nomeescolaControllerValidator;
    idadeControllerValidator = _idadeControllerValidator;
    usamedicamentoControllerValidator = _usamedicamentoControllerValidator;
    datanascimentoControllerValidator = _datanascimentoControllerValidator;
    dddControllerValidator = _dddControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    nomepaiControllerValidator = _nomepaiControllerValidator;
    idadepaiControllerValidator = _idadepaiControllerValidator;
    nomemaeControllerValidator = _nomemaeControllerValidator;
    idademaeControllerValidator = _idademaeControllerValidator;
  }

  void dispose() {
    mainWebNavModel.dispose();
    nomeController?.dispose();
    sobrenomeController?.dispose();
    nomeescolaController?.dispose();
    idadeController?.dispose();
    usamedicamentoController?.dispose();
    datanascimentoController?.dispose();
    dddController?.dispose();
    telController?.dispose();
    emailController?.dispose();
    nomepaiController?.dispose();
    idadepaiController?.dispose();
    nomemaeController?.dispose();
    idademaeController?.dispose();
  }

  /// Additional helper methods are added here.

}

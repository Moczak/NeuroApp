import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompletarPerfilModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for seunomealuno widget.
  TextEditingController? seunomealunoController1;
  String? Function(BuildContext, String?)? seunomealunoController1Validator;
  // State field(s) for emailaluno widget.
  TextEditingController? emailalunoController;
  String? Function(BuildContext, String?)? emailalunoControllerValidator;
  // State field(s) for cpf widget.
  TextEditingController? cpfController1;
  String? Function(BuildContext, String?)? cpfController1Validator;
  // State field(s) for tel widget.
  TextEditingController? telController1;
  String? Function(BuildContext, String?)? telController1Validator;
  // State field(s) for SENHA widget.
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for CONFIRMSENHA widget.
  TextEditingController? confirmsenhaController;
  late bool confirmsenhaVisibility;
  String? Function(BuildContext, String?)? confirmsenhaControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for seunomealuno widget.
  TextEditingController? seunomealunoController2;
  String? Function(BuildContext, String?)? seunomealunoController2Validator;
  // State field(s) for emailaluno2 widget.
  TextEditingController? emailaluno2Controller;
  String? Function(BuildContext, String?)? emailaluno2ControllerValidator;
  // State field(s) for cpf widget.
  TextEditingController? cpfController2;
  String? Function(BuildContext, String?)? cpfController2Validator;
  // State field(s) for tel widget.
  TextEditingController? telController2;
  String? Function(BuildContext, String?)? telController2Validator;
  // State field(s) for SENHA2 widget.
  TextEditingController? senha2Controller;
  late bool senha2Visibility;
  String? Function(BuildContext, String?)? senha2ControllerValidator;
  // State field(s) for CONFIRMSENHA2 widget.
  TextEditingController? confirmsenha2Controller;
  late bool confirmsenha2Visibility;
  String? Function(BuildContext, String?)? confirmsenha2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaVisibility = false;
    confirmsenhaVisibility = false;
    senha2Visibility = false;
    confirmsenha2Visibility = false;
  }

  void dispose() {
    seunomealunoController1?.dispose();
    emailalunoController?.dispose();
    cpfController1?.dispose();
    telController1?.dispose();
    senhaController?.dispose();
    confirmsenhaController?.dispose();
    seunomealunoController2?.dispose();
    emailaluno2Controller?.dispose();
    cpfController2?.dispose();
    telController2?.dispose();
    senha2Controller?.dispose();
    confirmsenha2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}

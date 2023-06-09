import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartaoVirtualModelo02Model extends FlutterFlowModel {
  ///  Local state fields for this page.

  Color coricones = const Color(0xFFAE3133);

  String bg =
      'https://firebasestorage.googleapis.com/v0/b/universoneuro-f368b.appspot.com/o/imagens%2Fbg.jpg?alt=media&token=45bc52f6-c2f1-4dac-aefd-f6996b30deac';

  Color corfooter = const Color(0xFFAE3133);

  Color cortexto = const Color(0xFFAE3133);

  String localizacao = 'google.com';

  String insta = 'instagram.com';

  String facebook = 'facebook.com';

  String linkedin = 'linkedin.com.br';

  bool mostrarlinks = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  Color? colorPicked1;
  Color? colorPicked2;
  Color? colorPicked3;
  // State field(s) for linkedin widget.
  TextEditingController? linkedinController;
  String? Function(BuildContext, String?)? linkedinControllerValidator;
  // State field(s) for localizacao widget.
  TextEditingController? localizacaoController;
  String? Function(BuildContext, String?)? localizacaoControllerValidator;
  // State field(s) for face widget.
  TextEditingController? faceController;
  String? Function(BuildContext, String?)? faceControllerValidator;
  // State field(s) for insta widget.
  TextEditingController? instaController;
  String? Function(BuildContext, String?)? instaControllerValidator;
  // Stores action output result for [Backend Call - API (MODELOCARTAOUM)] action in Button widget.
  ApiCallResponse? sucesso;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    linkedinController?.dispose();
    localizacaoController?.dispose();
    faceController?.dispose();
    instaController?.dispose();
  }

  /// Additional helper methods are added here.

}

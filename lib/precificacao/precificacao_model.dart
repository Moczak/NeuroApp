import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dicasclinica_widget.dart';
import '/components/fundoreserva_widget.dart';
import '/components/fundoreservaeditar_widget.dart';
import '/components/main_web_nav_widget.dart';
import '/components/orpara_novos_instrumentos_editar_widget.dart';
import '/components/orpara_novos_instrumentos_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/components/pesquisamercado_widget.dart';
import '/components/pesquisamercadoeditar_widget.dart';
import '/components/qtdeatendimento_widget.dart';
import '/components/qtdeatendimentoeditar_widget.dart';
import '/components/salariodesejado_widget.dart';
import '/components/salariodesejadoeditar_widget.dart';
import '/components/shimmer5_widget.dart';
import '/components/taxacontribuicao_widget.dart';
import '/components/taxacontribuicaoeditar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class PrecificacaoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
  }

  /// Additional helper methods are added here.

}

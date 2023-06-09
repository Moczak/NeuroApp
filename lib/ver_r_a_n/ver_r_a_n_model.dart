import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/perfilsheet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerRANModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for queixa widget.
  TextEditingController? queixaController;
  String? Function(BuildContext, String?)? queixaControllerValidator;
  // State field(s) for HISTRICODODESENVOLVIMENTOEDASADE widget.
  TextEditingController? histricododesenvolvimentoedasadeController;
  String? Function(BuildContext, String?)?
      histricododesenvolvimentoedasadeControllerValidator;
  // State field(s) for Antecedentesfamiliares widget.
  TextEditingController? antecedentesfamiliaresController;
  String? Function(BuildContext, String?)?
      antecedentesfamiliaresControllerValidator;
  // State field(s) for Jeitodeserdacrianasegundoame widget.
  TextEditingController? jeitodeserdacrianasegundoameController;
  String? Function(BuildContext, String?)?
      jeitodeserdacrianasegundoameControllerValidator;
  // State field(s) for VIDAESCOLAR widget.
  TextEditingController? vidaescolarController;
  String? Function(BuildContext, String?)? vidaescolarControllerValidator;
  // State field(s) for COMPORTAMENTODACRIANADURANTEAAVALIAO widget.
  TextEditingController? comportamentodacrianaduranteaavaliaoController;
  String? Function(BuildContext, String?)?
      comportamentodacrianaduranteaavaliaoControllerValidator;
  // State field(s) for AVALIAO widget.
  TextEditingController? avaliaoController;
  String? Function(BuildContext, String?)? avaliaoControllerValidator;
  // State field(s) for Instrumentos widget.
  TextEditingController? instrumentosController;
  String? Function(BuildContext, String?)? instrumentosControllerValidator;
  // State field(s) for Ateno widget.
  TextEditingController? atenoController;
  String? Function(BuildContext, String?)? atenoControllerValidator;
  // State field(s) for FunesExecutivas widget.
  TextEditingController? funesExecutivasController;
  String? Function(BuildContext, String?)? funesExecutivasControllerValidator;
  // State field(s) for visual widget.
  TextEditingController? visualController;
  String? Function(BuildContext, String?)? visualControllerValidator;
  // State field(s) for Auditiva widget.
  TextEditingController? auditivaController;
  String? Function(BuildContext, String?)? auditivaControllerValidator;
  // State field(s) for Memriadetrabalho widget.
  TextEditingController? memriadetrabalhoController;
  String? Function(BuildContext, String?)? memriadetrabalhoControllerValidator;
  // State field(s) for LEITURASILENCIOSA widget.
  TextEditingController? leiturasilenciosaController;
  String? Function(BuildContext, String?)? leiturasilenciosaControllerValidator;
  // State field(s) for LeituraOral widget.
  TextEditingController? leituraOralController;
  String? Function(BuildContext, String?)? leituraOralControllerValidator;
  // State field(s) for InterpretaodeTextos widget.
  TextEditingController? interpretaodeTextosController;
  String? Function(BuildContext, String?)?
      interpretaodeTextosControllerValidator;
  // State field(s) for CompreenodeTexto widget.
  TextEditingController? compreenodeTextoController;
  String? Function(BuildContext, String?)? compreenodeTextoControllerValidator;
  // State field(s) for escrita widget.
  TextEditingController? escritaController;
  String? Function(BuildContext, String?)? escritaControllerValidator;
  // State field(s) for Espontnea widget.
  TextEditingController? espontneaController;
  String? Function(BuildContext, String?)? espontneaControllerValidator;
  // State field(s) for Clculo widget.
  TextEditingController? clculoController;
  String? Function(BuildContext, String?)? clculoControllerValidator;
  // State field(s) for ObservaoPsicomotora widget.
  TextEditingController? observaoPsicomotoraController;
  String? Function(BuildContext, String?)?
      observaoPsicomotoraControllerValidator;
  // State field(s) for ComportamentoemSaladeAula widget.
  TextEditingController? comportamentoemSaladeAulaController;
  String? Function(BuildContext, String?)?
      comportamentoemSaladeAulaControllerValidator;
  // State field(s) for ComportamentoemCasa widget.
  TextEditingController? comportamentoemCasaController;
  String? Function(BuildContext, String?)?
      comportamentoemCasaControllerValidator;
  // State field(s) for HoraLdica widget.
  TextEditingController? horaLdicaController;
  String? Function(BuildContext, String?)? horaLdicaControllerValidator;
  // State field(s) for CONCLUSO widget.
  TextEditingController? conclusoController;
  String? Function(BuildContext, String?)? conclusoControllerValidator;
  // State field(s) for INDICAESDETRATAMENTO widget.
  TextEditingController? indicaesdetratamentoController;
  String? Function(BuildContext, String?)?
      indicaesdetratamentoControllerValidator;
  // State field(s) for ORIENTAESESCOLA widget.
  TextEditingController? orientaesescolaController;
  String? Function(BuildContext, String?)? orientaesescolaControllerValidator;
  // State field(s) for ORIENTAESAOSPAIS widget.
  TextEditingController? orientaesaospaisController;
  String? Function(BuildContext, String?)? orientaesaospaisControllerValidator;
  // Stores action output result for [Backend Call - API (APITEMPLATERAN)] action in Button widget.
  ApiCallResponse? apiResultPDF;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    queixaController?.dispose();
    histricododesenvolvimentoedasadeController?.dispose();
    antecedentesfamiliaresController?.dispose();
    jeitodeserdacrianasegundoameController?.dispose();
    vidaescolarController?.dispose();
    comportamentodacrianaduranteaavaliaoController?.dispose();
    avaliaoController?.dispose();
    instrumentosController?.dispose();
    atenoController?.dispose();
    funesExecutivasController?.dispose();
    visualController?.dispose();
    auditivaController?.dispose();
    memriadetrabalhoController?.dispose();
    leiturasilenciosaController?.dispose();
    leituraOralController?.dispose();
    interpretaodeTextosController?.dispose();
    compreenodeTextoController?.dispose();
    escritaController?.dispose();
    espontneaController?.dispose();
    clculoController?.dispose();
    observaoPsicomotoraController?.dispose();
    comportamentoemSaladeAulaController?.dispose();
    comportamentoemCasaController?.dispose();
    horaLdicaController?.dispose();
    conclusoController?.dispose();
    indicaesdetratamentoController?.dispose();
    orientaesescolaController?.dispose();
    orientaesaospaisController?.dispose();
  }

  /// Additional helper methods are added here.

}

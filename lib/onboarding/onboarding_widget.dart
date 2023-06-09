import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'onboarding_model.dart';
export 'onboarding_model.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget>
    with TickerProviderStateMixin {
  late OnboardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 3200.ms,
          begin: Offset(0.0, -80.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 3200.ms,
          duration: 3200.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -80.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: Offset(0.6, 0.6),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Onboarding'});

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              child: Container(
                width: double.infinity,
                height: 420.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: MasonryGridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        itemCount: 11,
                        itemBuilder: (context, index) {
                          return [
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/bg9.jpg',
                                    width: 120.0,
                                    height: 120.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/bg1.jpg',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/bg8.jpg',
                                    width: 100.0,
                                    height: 0.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/bg4.jpg',
                                    width: 80.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/bg3.jpg',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/bg2.jpg',
                                    width: 120.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/bg5.jpg',
                                    width: 120.0,
                                    height: 190.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/bg6.jpg',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/bg8.jpg',
                                    width: 120.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/bg7.jpg',
                                    width: 120.0,
                                    height: 190.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/bg4.jpg',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                          ][index]();
                        },
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 670.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 230.0,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 50.0),
                              child: PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GradientText(
                                          'Cadastro feito com sucesso!',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displaySmallFamily),
                                              ),
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                            FlutterFlowTheme.of(context)
                                                .secondary
                                          ],
                                          gradientDirection:
                                              GradientDirection.ltr,
                                          gradientType: GradientType.linear,
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation1']!),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'Um caminho para a transformação de vidas',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeFamily),
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation2']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 1,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) async {
                                    await _model.pageViewController!
                                        .animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                    expansionFactor: 3.0,
                                    spacing: 8.0,
                                    radius: 16.0,
                                    dotWidth: 8.0,
                                    dotHeight: 8.0,
                                    dotColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    activeDotColor:
                                        FlutterFlowTheme.of(context).grayIcon,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 44.0),
              child: AuthUserStreamWidget(
                builder: (context) => FutureBuilder<List<AlunosneuroRow>>(
                  future: AlunosneuroTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'cpf',
                      valueOrDefault(currentUserDocument?.cpf, ''),
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitFadingCircle(
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<AlunosneuroRow> rowAlunosneuroRowList = snapshot.data!;
                    final rowAlunosneuroRow = rowAlunosneuroRowList.isNotEmpty
                        ? rowAlunosneuroRowList.first
                        : null;
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'ONBOARDING_PAGE_VAMOS_COMEÇAR_BTN_ON_TAP');
                                  if (valueOrDefault<bool>(
                                      currentUserDocument?.isAluno, false)) {
                                    if (rowAlunosneuroRow?.status ==
                                        'Concluiu') {
                                      final receitatotalCreateData1 =
                                          createReceitatotalRecordData();
                                      await ReceitatotalRecord.createDoc(
                                              currentUserReference!)
                                          .set(receitatotalCreateData1);

                                      final precificacaoCreateData1 =
                                          createPrecificacaoRecordData(
                                        homecare: false,
                                        preencheumediaregiao: false,
                                        esproprio: false,
                                        preencheusalario: false,
                                        consultorio: false,
                                        itinerante: false,
                                        fundoreservabool: false,
                                        orcinstrumentobool: false,
                                        taxacontrbool: false,
                                        atdeatendimento: 1.0,
                                        qtdadeatendimentobool: false,
                                        salariodesejado: 0.0,
                                        taxacontribuicao: 0.0,
                                        fundodereserva: 0.0,
                                        custosnovosinstrumentos: 0.0,
                                      );
                                      await PrecificacaoRecord.createDoc(
                                              currentUserReference!)
                                          .set(precificacaoCreateData1);

                                      final usersUpdateData1 =
                                          createUsersRecordData(
                                        completouPerfil: true,
                                        statusunimestre: 'Egresso',
                                        statusassinaturastripe: 'nenhum',
                                        assinaturaativa: false,
                                      );
                                      await currentUserReference!
                                          .update(usersUpdateData1);
                                      await AlunosneuroTable().update(
                                        data: {
                                          'idfirebase': currentUserUid,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'cpf',
                                          valueOrDefault(
                                              currentUserDocument?.cpf, ''),
                                        ),
                                      );

                                      context.goNamed(
                                        'HomePage',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    } else if (rowAlunosneuroRow?.status ==
                                        'Ativo') {
                                      final receitatotalCreateData2 =
                                          createReceitatotalRecordData();
                                      await ReceitatotalRecord.createDoc(
                                              currentUserReference!)
                                          .set(receitatotalCreateData2);

                                      final precificacaoCreateData2 =
                                          createPrecificacaoRecordData(
                                        homecare: false,
                                        preencheumediaregiao: false,
                                        esproprio: false,
                                        preencheusalario: false,
                                        consultorio: false,
                                        itinerante: false,
                                        fundoreservabool: false,
                                        orcinstrumentobool: false,
                                        taxacontrbool: false,
                                        atdeatendimento: 1.0,
                                        qtdadeatendimentobool: false,
                                        salariodesejado: 0.0,
                                        taxacontribuicao: 0.0,
                                        fundodereserva: 0.0,
                                        custosnovosinstrumentos: 0.0,
                                      );
                                      await PrecificacaoRecord.createDoc(
                                              currentUserReference!)
                                          .set(precificacaoCreateData2);

                                      final usersUpdateData2 =
                                          createUsersRecordData(
                                        completouPerfil: true,
                                        statusunimestre: 'Ativo',
                                        statusassinaturastripe: 'free',
                                        assinaturaativa: true,
                                      );
                                      await currentUserReference!
                                          .update(usersUpdateData2);
                                      await AlunosneuroTable().update(
                                        data: {
                                          'idfirebase': currentUserUid,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'cpf',
                                          valueOrDefault(
                                              currentUserDocument?.cpf, ''),
                                        ),
                                      );

                                      context.goNamed(
                                        'HomePage',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    } else {
                                      final receitatotalCreateData3 =
                                          createReceitatotalRecordData();
                                      await ReceitatotalRecord.createDoc(
                                              currentUserReference!)
                                          .set(receitatotalCreateData3);

                                      final precificacaoCreateData3 =
                                          createPrecificacaoRecordData(
                                        homecare: false,
                                        preencheumediaregiao: false,
                                        esproprio: false,
                                        preencheusalario: false,
                                        consultorio: false,
                                        itinerante: false,
                                        fundoreservabool: false,
                                        orcinstrumentobool: false,
                                        taxacontrbool: false,
                                        atdeatendimento: 1.0,
                                        qtdadeatendimentobool: false,
                                        salariodesejado: 0.0,
                                        taxacontribuicao: 0.0,
                                        fundodereserva: 0.0,
                                        custosnovosinstrumentos: 0.0,
                                      );
                                      await PrecificacaoRecord.createDoc(
                                              currentUserReference!)
                                          .set(precificacaoCreateData3);

                                      final usersUpdateData3 =
                                          createUsersRecordData(
                                        completouPerfil: true,
                                        statusunimestre: 'Evasão',
                                        statusassinaturastripe: 'nenhum',
                                        assinaturaativa: false,
                                      );
                                      await currentUserReference!
                                          .update(usersUpdateData3);
                                      await AlunosneuroTable().update(
                                        data: {
                                          'idfirebase': currentUserUid,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'cpf',
                                          valueOrDefault(
                                              currentUserDocument?.cpf, ''),
                                        ),
                                      );

                                      context.goNamed(
                                        'HomePage',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    }
                                  } else {
                                    final receitatotalCreateData4 =
                                        createReceitatotalRecordData();
                                    await ReceitatotalRecord.createDoc(
                                            currentUserReference!)
                                        .set(receitatotalCreateData4);

                                    final usersUpdateData4 =
                                        createUsersRecordData(
                                      completouPerfil: true,
                                      isAluno: false,
                                      statusassinaturastripe: '',
                                      assinaturaativa: false,
                                    );
                                    await currentUserReference!
                                        .update(usersUpdateData4);

                                    final precificacaoCreateData4 =
                                        createPrecificacaoRecordData(
                                      homecare: false,
                                      preencheumediaregiao: false,
                                      esproprio: false,
                                      preencheusalario: false,
                                      consultorio: false,
                                      itinerante: false,
                                      fundoreservabool: false,
                                      orcinstrumentobool: false,
                                      taxacontrbool: false,
                                      atdeatendimento: 1.0,
                                      qtdadeatendimentobool: false,
                                      salariodesejado: 0.0,
                                      taxacontribuicao: 0.0,
                                      fundodereserva: 0.0,
                                      custosnovosinstrumentos: 0.0,
                                    );
                                    await PrecificacaoRecord.createDoc(
                                            currentUserReference!)
                                        .set(precificacaoCreateData4);

                                    context.goNamed(
                                      'HomePage',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 500),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: 'VAMOS COMEÇAR',
                                options: FFButtonOptions(
                                  width: 230.0,
                                  height: 52.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF92F2E7),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF2CB6A6),
                                        fontSize: 16.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiary400,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation']!);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '../../auth/base_auth_user_provider.dart';
import '../../backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? HomePageWidget() : EntrarWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : EntrarWidget(),
          routes: [
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              requireAuth: true,
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: 'EsqueceuSenha',
              path: 'esqueceuSenha',
              requireAuth: true,
              builder: (context, params) => EsqueceuSenhaWidget(),
            ),
            FFRoute(
              name: 'EditarInstrumento',
              path: 'editarInstrumento',
              requireAuth: true,
              builder: (context, params) => EditarInstrumentoWidget(
                pacienteref: params.getParam('pacienteref',
                    ParamType.DocumentReference, false, ['paciente']),
                instrumentoref: params.getParam(
                    'instrumentoref',
                    ParamType.DocumentReference,
                    false,
                    ['paciente', 'instrumento']),
              ),
            ),
            FFRoute(
              name: 'Pacientes',
              path: 'pacientes',
              requireAuth: true,
              builder: (context, params) => PacientesWidget(),
            ),
            FFRoute(
              name: 'VerPaciente',
              path: 'verPaciente',
              requireAuth: true,
              builder: (context, params) => VerPacienteWidget(
                dadospaciente: params.getParam('dadospaciente',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'Sessoes',
              path: 'sessoes',
              requireAuth: true,
              builder: (context, params) => SessoesWidget(
                dadospacientesessao: params.getParam('dadospacientesessao',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'NotasdeSessao',
              path: 'notasdeSessao',
              requireAuth: true,
              builder: (context, params) => NotasdeSessaoWidget(
                pacienterefnotas: params.getParam('pacienterefnotas',
                    ParamType.DocumentReference, false, ['paciente']),
                sessaorefrencia: params.getParam('sessaorefrencia',
                    ParamType.DocumentReference, false, ['paciente', 'sessao']),
              ),
            ),
            FFRoute(
              name: 'CadastraPaciente',
              path: 'cadastraPaciente',
              requireAuth: true,
              builder: (context, params) => CadastraPacienteWidget(),
            ),
            FFRoute(
              name: 'EditarPaciente',
              path: 'editarPaciente',
              requireAuth: true,
              builder: (context, params) => EditarPacienteWidget(
                dadosdopacienteeditar: params.getParam('dadosdopacienteeditar',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'VerAnamnese',
              path: 'verAnamnese',
              requireAuth: true,
              builder: (context, params) => VerAnamneseWidget(
                pacienteparametro: params.getParam('pacienteparametro',
                    ParamType.DocumentReference, false, ['paciente']),
                anamneseparametro: params.getParam('anamneseparametro',
                    ParamType.DocumentReference, false, ['anamnese']),
              ),
            ),
            FFRoute(
              name: 'GerarAnamnese',
              path: 'gerarAnamnese',
              requireAuth: true,
              builder: (context, params) => GerarAnamneseWidget(
                pacientegeraranamnese: params.getParam('pacientegeraranamnese',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'VerRAN',
              path: 'verRAN',
              requireAuth: true,
              builder: (context, params) => VerRANWidget(
                refpacienteran: params.getParam('refpacienteran',
                    ParamType.DocumentReference, false, ['paciente']),
                ranparametro: params.getParam('ranparametro',
                    ParamType.DocumentReference, false, ['ran']),
              ),
            ),
            FFRoute(
              name: 'GerarRAN',
              path: 'gerarRAN',
              requireAuth: true,
              builder: (context, params) => GerarRANWidget(
                refpacienteran: params.getParam('refpacienteran',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'VerGFMF',
              path: 'verGFMF',
              requireAuth: true,
              builder: (context, params) => VerGFMFWidget(
                meupaciente: params.getParam('meupaciente',
                    ParamType.DocumentReference, false, ['paciente']),
                gmfmparametro: params.getParam('gmfmparametro',
                    ParamType.DocumentReference, false, ['gmfm']),
              ),
            ),
            FFRoute(
              name: 'CartaoVirtualModelo01',
              path: 'cartaoVirtualModelo01',
              requireAuth: true,
              builder: (context, params) => CartaoVirtualModelo01Widget(),
            ),
            FFRoute(
              name: 'CartaoVirtualModelo',
              path: 'cartaoVirtualModelo',
              requireAuth: true,
              builder: (context, params) => CartaoVirtualModeloWidget(),
            ),
            FFRoute(
              name: 'NotasdeSessaoVer',
              path: 'notasdeSessaoVer',
              requireAuth: true,
              builder: (context, params) => NotasdeSessaoVerWidget(
                pacienterefnotas: params.getParam('pacienterefnotas',
                    ParamType.DocumentReference, false, ['paciente']),
                sessaorefrencia: params.getParam('sessaorefrencia',
                    ParamType.DocumentReference, false, ['paciente', 'sessao']),
              ),
            ),
            FFRoute(
              name: 'Financeiro',
              path: 'financeiro',
              requireAuth: true,
              builder: (context, params) => FinanceiroWidget(),
            ),
            FFRoute(
              name: 'Despesas',
              path: 'despesas',
              requireAuth: true,
              builder: (context, params) => DespesasWidget(),
            ),
            FFRoute(
              name: 'GerarEscalaMCHAT',
              path: 'gerarEscalaMCHAT',
              requireAuth: true,
              builder: (context, params) => GerarEscalaMCHATWidget(
                refpacientemchat: params.getParam('refpacientemchat',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'VerEscalaMCHAT',
              path: 'verEscalaMCHAT',
              requireAuth: true,
              builder: (context, params) => VerEscalaMCHATWidget(
                refpacientemchat: params.getParam('refpacientemchat',
                    ParamType.DocumentReference, false, ['paciente']),
                referenciamchat: params.getParam('referenciamchat',
                    ParamType.DocumentReference, false, ['m_chat']),
              ),
            ),
            FFRoute(
              name: 'GerarGFMF',
              path: 'gerarGFMF',
              requireAuth: true,
              builder: (context, params) => GerarGFMFWidget(
                meupaciente: params.getParam('meupaciente',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'Ferramentas',
              path: 'ferramentas',
              requireAuth: true,
              builder: (context, params) => FerramentasWidget(),
            ),
            FFRoute(
              name: 'FinanceiroMobile',
              path: 'financeiroMobile',
              requireAuth: true,
              builder: (context, params) => FinanceiroMobileWidget(),
            ),
            FFRoute(
              name: 'ContratoGerar',
              path: 'contratoGerar',
              requireAuth: true,
              builder: (context, params) => ContratoGerarWidget(
                pacienterefcontrato: params.getParam('pacienterefcontrato',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'VerContrato2',
              path: 'verContrato2',
              requireAuth: true,
              builder: (context, params) => VerContrato2Widget(
                pacienterefcontrato: params.getParam('pacienterefcontrato',
                    ParamType.DocumentReference, false, ['paciente']),
                refdocontrato: params.getParam(
                    'refdocontrato',
                    ParamType.DocumentReference,
                    false,
                    ['paciente', 'contrato']),
              ),
            ),
            FFRoute(
              name: 'Instrumentos',
              path: 'instrumentos',
              requireAuth: true,
              builder: (context, params) => InstrumentosWidget(
                dadospacienteinstrumentos: params.getParam(
                    'dadospacienteinstrumentos',
                    ParamType.DocumentReference,
                    false,
                    ['paciente']),
              ),
            ),
            FFRoute(
              name: 'GerarASRS18',
              path: 'gerarASRS18',
              requireAuth: true,
              builder: (context, params) => GerarASRS18Widget(
                pacienteref: params.getParam('pacienteref',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'GerarASRS18Paciente',
              path: 'gerarASRS18Paciente',
              builder: (context, params) => GerarASRS18PacienteWidget(
                pacienteref: params.getParam('pacienteref',
                    ParamType.DocumentReference, false, ['paciente']),
                neuroref: params.getParam(
                    'neuroref', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'VerASRS18',
              path: 'verASRS18',
              requireAuth: true,
              builder: (context, params) => VerASRS18Widget(
                refpacienteASRS18: params.getParam('refpacienteASRS18',
                    ParamType.DocumentReference, false, ['paciente']),
                referenciaASRS18: params.getParam('referenciaASRS18',
                    ParamType.DocumentReference, false, ['ASRS18']),
              ),
            ),
            FFRoute(
              name: 'EscaladeCONNERSpais',
              path: 'escaladeCONNERSpais',
              requireAuth: true,
              builder: (context, params) => EscaladeCONNERSpaisWidget(
                pacienteref: params.getParam('pacienteref',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'VerConners',
              path: 'verConners',
              requireAuth: true,
              builder: (context, params) => VerConnersWidget(
                refpacienteCONNERS: params.getParam('refpacienteCONNERS',
                    ParamType.DocumentReference, false, ['paciente']),
                referenciaCONNERS: params.getParam('referenciaCONNERS',
                    ParamType.DocumentReference, false, ['conners']),
              ),
            ),
            FFRoute(
              name: 'EscaladeCONNERSescola',
              path: 'escaladeCONNERSescola',
              requireAuth: true,
              builder: (context, params) => EscaladeCONNERSescolaWidget(
                pacienteref: params.getParam('pacienteref',
                    ParamType.DocumentReference, false, ['paciente']),
                connersdocumentref: params.getParam('connersdocumentref',
                    ParamType.DocumentReference, false, ['conners']),
              ),
            ),
            FFRoute(
              name: 'GerarEscalaMCHATpaciente',
              path: 'gerarEscalaMCHATpaciente',
              builder: (context, params) => GerarEscalaMCHATpacienteWidget(
                refpacientemchat: params.getParam('refpacientemchat',
                    ParamType.DocumentReference, false, ['paciente']),
                neuroref: params.getParam(
                    'neuroref', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'CartaoVirtualModelo02',
              path: 'cartaoVirtualModelo02',
              requireAuth: true,
              builder: (context, params) => CartaoVirtualModelo02Widget(),
            ),
            FFRoute(
              name: 'Precificacao',
              path: 'precificacao',
              requireAuth: true,
              builder: (context, params) => PrecificacaoWidget(),
            ),
            FFRoute(
              name: 'Marketing',
              path: 'marketing',
              requireAuth: true,
              builder: (context, params) => MarketingWidget(),
            ),
            FFRoute(
              name: 'CalendarioConteudo',
              path: 'calendarioConteudo',
              requireAuth: true,
              builder: (context, params) => CalendarioConteudoWidget(),
            ),
            FFRoute(
              name: 'CalendarioConteudoVer',
              path: 'calendarioConteudoVer',
              requireAuth: true,
              builder: (context, params) => CalendarioConteudoVerWidget(
                calendararioref: params.getParam('calendararioref',
                    ParamType.DocumentReference, false, ['calendario']),
              ),
            ),
            FFRoute(
              name: 'GerarPersona',
              path: 'gerarPersona',
              requireAuth: true,
              builder: (context, params) => GerarPersonaWidget(),
            ),
            FFRoute(
              name: 'VerPersona',
              path: 'verPersona',
              requireAuth: true,
              builder: (context, params) => VerPersonaWidget(
                personaref: params.getParam('personaref',
                    ParamType.DocumentReference, false, ['users', 'persona']),
              ),
            ),
            FFRoute(
              name: 'GeradordePersona',
              path: 'geradordePersona',
              requireAuth: true,
              builder: (context, params) => GeradordePersonaWidget(),
            ),
            FFRoute(
              name: 'Propeccao',
              path: 'propeccao',
              requireAuth: true,
              builder: (context, params) => PropeccaoWidget(),
            ),
            FFRoute(
              name: 'Comunidade',
              path: 'comunidade',
              requireAuth: true,
              builder: (context, params) => ComunidadeWidget(),
            ),
            FFRoute(
              name: 'MeuPerfilComunidade',
              path: 'meuPerfilComunidade',
              requireAuth: true,
              builder: (context, params) => MeuPerfilComunidadeWidget(),
            ),
            FFRoute(
              name: 'OtherPerfilComunidade',
              path: 'otherPerfilComunidade',
              requireAuth: true,
              builder: (context, params) => OtherPerfilComunidadeWidget(
                userref: params.getParam(
                    'userref', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'ComunidadeNeuro',
              path: 'comunidadeNeuro',
              requireAuth: true,
              builder: (context, params) => ComunidadeNeuroWidget(),
            ),
            FFRoute(
              name: 'AgendaDisponibilidade',
              path: 'agendaDisponibilidade',
              requireAuth: true,
              builder: (context, params) => AgendaDisponibilidadeWidget(),
            ),
            FFRoute(
              name: 'AgendaDisponibilidadePaciente',
              path: 'agendaDisponibilidadePaciente',
              builder: (context, params) => AgendaDisponibilidadePacienteWidget(
                profreferencia: params.getParam('profreferencia',
                    ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'MinhaAgenda',
              path: 'minhaAgenda',
              requireAuth: true,
              builder: (context, params) => MinhaAgendaWidget(),
            ),
            FFRoute(
              name: 'InstrumentosReferencia',
              path: 'instrumentosReferencia',
              requireAuth: true,
              builder: (context, params) => InstrumentosReferenciaWidget(),
            ),
            FFRoute(
              name: 'Ebooks',
              path: 'ebooks',
              requireAuth: true,
              builder: (context, params) => EbooksWidget(
                pacienteref: params.getParam('pacienteref',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'Farmacologia',
              path: 'farmacologia',
              requireAuth: true,
              builder: (context, params) => FarmacologiaWidget(),
            ),
            FFRoute(
              name: 'CodigodeEtica',
              path: 'codigodeEtica',
              requireAuth: true,
              builder: (context, params) => CodigodeEticaWidget(),
            ),
            FFRoute(
              name: 'AutismoTratamentosPsicof',
              path: 'autismoTratamentosPsicof',
              requireAuth: true,
              builder: (context, params) => AutismoTratamentosPsicofWidget(),
            ),
            FFRoute(
              name: 'Epilepsias',
              path: 'epilepsias',
              requireAuth: true,
              builder: (context, params) => EpilepsiasWidget(),
            ),
            FFRoute(
              name: 'TEMPLATEPAGINACopy',
              path: 'tEMPLATEPAGINACopy',
              requireAuth: true,
              builder: (context, params) => TEMPLATEPAGINACopyWidget(
                pacienteref: params.getParam('pacienteref',
                    ParamType.DocumentReference, false, ['paciente']),
              ),
            ),
            FFRoute(
              name: 'Home17Calendar',
              path: 'home17Calendar',
              requireAuth: true,
              builder: (context, params) => Home17CalendarWidget(),
            ),
            FFRoute(
              name: 'Onboarding',
              path: 'onboarding',
              requireAuth: true,
              builder: (context, params) => OnboardingWidget(),
            ),
            FFRoute(
              name: 'Entrar',
              path: 'entrar',
              builder: (context, params) => EntrarWidget(),
            ),
            FFRoute(
              name: 'CompletarPerfil',
              path: 'completarPerfil',
              builder: (context, params) => CompletarPerfilWidget(
                cpf: params.getParam('cpf', ParamType.String),
                isAluno: params.getParam('isAluno', ParamType.bool),
                statusunimestre:
                    params.getParam('statusunimestre', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'PagamentoConfirmado',
              path: 'pagamentoConfirmado',
              builder: (context, params) => PagamentoConfirmadoWidget(),
            ),
            FFRoute(
              name: 'PlanoAssinatura',
              path: 'planoAssinatura',
              requireAuth: true,
              builder: (context, params) => PlanoAssinaturaWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/entrar';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/BGFULL.png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 500),
      );
}

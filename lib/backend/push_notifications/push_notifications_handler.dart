import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          params: parameterData.params,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/BGFULL.png',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get params => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'EsqueceuSenha': ParameterData.none(),
  'EditarInstrumento': (data) async => ParameterData(
        allParams: {
          'pacienteref': getParameter<DocumentReference>(data, 'pacienteref'),
          'instrumentoref':
              getParameter<DocumentReference>(data, 'instrumentoref'),
        },
      ),
  'Pacientes': ParameterData.none(),
  'VerPaciente': (data) async => ParameterData(
        allParams: {
          'dadospaciente':
              getParameter<DocumentReference>(data, 'dadospaciente'),
        },
      ),
  'Sessoes': (data) async => ParameterData(
        allParams: {
          'dadospacientesessao':
              getParameter<DocumentReference>(data, 'dadospacientesessao'),
        },
      ),
  'NotasdeSessao': (data) async => ParameterData(
        allParams: {
          'pacienterefnotas':
              getParameter<DocumentReference>(data, 'pacienterefnotas'),
          'sessaorefrencia':
              getParameter<DocumentReference>(data, 'sessaorefrencia'),
        },
      ),
  'CadastraPaciente': ParameterData.none(),
  'EditarPaciente': (data) async => ParameterData(
        allParams: {
          'dadosdopacienteeditar':
              getParameter<DocumentReference>(data, 'dadosdopacienteeditar'),
        },
      ),
  'VerAnamnese': (data) async => ParameterData(
        allParams: {
          'pacienteparametro':
              getParameter<DocumentReference>(data, 'pacienteparametro'),
          'anamneseparametro':
              getParameter<DocumentReference>(data, 'anamneseparametro'),
        },
      ),
  'GerarAnamnese': (data) async => ParameterData(
        allParams: {
          'pacientegeraranamnese':
              getParameter<DocumentReference>(data, 'pacientegeraranamnese'),
        },
      ),
  'VerRAN': (data) async => ParameterData(
        allParams: {
          'refpacienteran':
              getParameter<DocumentReference>(data, 'refpacienteran'),
          'ranparametro': getParameter<DocumentReference>(data, 'ranparametro'),
        },
      ),
  'GerarRAN': (data) async => ParameterData(
        allParams: {
          'refpacienteran':
              getParameter<DocumentReference>(data, 'refpacienteran'),
        },
      ),
  'VerGFMF': (data) async => ParameterData(
        allParams: {
          'meupaciente': getParameter<DocumentReference>(data, 'meupaciente'),
          'gmfmparametro':
              getParameter<DocumentReference>(data, 'gmfmparametro'),
        },
      ),
  'CartaoVirtualModelo01': ParameterData.none(),
  'CartaoVirtualModelo': ParameterData.none(),
  'NotasdeSessaoVer': (data) async => ParameterData(
        allParams: {
          'pacienterefnotas':
              getParameter<DocumentReference>(data, 'pacienterefnotas'),
          'sessaorefrencia':
              getParameter<DocumentReference>(data, 'sessaorefrencia'),
        },
      ),
  'Financeiro': ParameterData.none(),
  'Despesas': ParameterData.none(),
  'GerarEscalaMCHAT': (data) async => ParameterData(
        allParams: {
          'refpacientemchat':
              getParameter<DocumentReference>(data, 'refpacientemchat'),
        },
      ),
  'VerEscalaMCHAT': (data) async => ParameterData(
        allParams: {
          'refpacientemchat':
              getParameter<DocumentReference>(data, 'refpacientemchat'),
          'referenciamchat':
              getParameter<DocumentReference>(data, 'referenciamchat'),
        },
      ),
  'GerarGFMF': (data) async => ParameterData(
        allParams: {
          'meupaciente': getParameter<DocumentReference>(data, 'meupaciente'),
        },
      ),
  'Ferramentas': ParameterData.none(),
  'FinanceiroMobile': ParameterData.none(),
  'ContratoGerar': (data) async => ParameterData(
        allParams: {
          'pacienterefcontrato':
              getParameter<DocumentReference>(data, 'pacienterefcontrato'),
        },
      ),
  'VerContrato2': (data) async => ParameterData(
        allParams: {
          'pacienterefcontrato':
              getParameter<DocumentReference>(data, 'pacienterefcontrato'),
          'refdocontrato':
              getParameter<DocumentReference>(data, 'refdocontrato'),
        },
      ),
  'Instrumentos': (data) async => ParameterData(
        allParams: {
          'dadospacienteinstrumentos': getParameter<DocumentReference>(
              data, 'dadospacienteinstrumentos'),
        },
      ),
  'GerarASRS18': (data) async => ParameterData(
        allParams: {
          'pacienteref': getParameter<DocumentReference>(data, 'pacienteref'),
        },
      ),
  'GerarASRS18Paciente': (data) async => ParameterData(
        allParams: {
          'pacienteref': getParameter<DocumentReference>(data, 'pacienteref'),
          'neuroref': getParameter<DocumentReference>(data, 'neuroref'),
        },
      ),
  'VerASRS18': (data) async => ParameterData(
        allParams: {
          'refpacienteASRS18':
              getParameter<DocumentReference>(data, 'refpacienteASRS18'),
          'referenciaASRS18':
              getParameter<DocumentReference>(data, 'referenciaASRS18'),
        },
      ),
  'EscaladeCONNERSpais': (data) async => ParameterData(
        allParams: {
          'pacienteref': getParameter<DocumentReference>(data, 'pacienteref'),
        },
      ),
  'VerConners': (data) async => ParameterData(
        allParams: {
          'refpacienteCONNERS':
              getParameter<DocumentReference>(data, 'refpacienteCONNERS'),
          'referenciaCONNERS':
              getParameter<DocumentReference>(data, 'referenciaCONNERS'),
        },
      ),
  'EscaladeCONNERSescola': (data) async => ParameterData(
        allParams: {
          'pacienteref': getParameter<DocumentReference>(data, 'pacienteref'),
          'connersdocumentref':
              getParameter<DocumentReference>(data, 'connersdocumentref'),
        },
      ),
  'GerarEscalaMCHATpaciente': (data) async => ParameterData(
        allParams: {
          'refpacientemchat':
              getParameter<DocumentReference>(data, 'refpacientemchat'),
          'neuroref': getParameter<DocumentReference>(data, 'neuroref'),
        },
      ),
  'CartaoVirtualModelo02': ParameterData.none(),
  'Precificacao': ParameterData.none(),
  'Marketing': ParameterData.none(),
  'CalendarioConteudo': ParameterData.none(),
  'CalendarioConteudoVer': (data) async => ParameterData(
        allParams: {
          'calendararioref':
              getParameter<DocumentReference>(data, 'calendararioref'),
        },
      ),
  'GerarPersona': ParameterData.none(),
  'VerPersona': (data) async => ParameterData(
        allParams: {
          'personaref': getParameter<DocumentReference>(data, 'personaref'),
        },
      ),
  'GeradordePersona': ParameterData.none(),
  'Propeccao': ParameterData.none(),
  'Comunidade': ParameterData.none(),
  'MeuPerfilComunidade': ParameterData.none(),
  'OtherPerfilComunidade': (data) async => ParameterData(
        allParams: {
          'userref': getParameter<DocumentReference>(data, 'userref'),
        },
      ),
  'ComunidadeNeuro': ParameterData.none(),
  'AgendaDisponibilidade': ParameterData.none(),
  'AgendaDisponibilidadePaciente': (data) async => ParameterData(
        allParams: {
          'profreferencia':
              getParameter<DocumentReference>(data, 'profreferencia'),
        },
      ),
  'MinhaAgenda': ParameterData.none(),
  'InstrumentosReferencia': ParameterData.none(),
  'Ebooks': (data) async => ParameterData(
        allParams: {
          'pacienteref': getParameter<DocumentReference>(data, 'pacienteref'),
        },
      ),
  'Farmacologia': ParameterData.none(),
  'CodigodeEtica': ParameterData.none(),
  'AutismoTratamentosPsicof': ParameterData.none(),
  'Epilepsias': ParameterData.none(),
  'TEMPLATEPAGINACopy': (data) async => ParameterData(
        allParams: {
          'pacienteref': getParameter<DocumentReference>(data, 'pacienteref'),
        },
      ),
  'Home17Calendar': ParameterData.none(),
  'Onboarding': ParameterData.none(),
  'Entrar': ParameterData.none(),
  'CompletarPerfil': (data) async => ParameterData(
        allParams: {
          'cpf': getParameter<String>(data, 'cpf'),
          'isAluno': getParameter<bool>(data, 'isAluno'),
          'statusunimestre': getParameter<String>(data, 'statusunimestre'),
        },
      ),
  'PagamentoConfirmado': ParameterData.none(),
  'PlanoAssinatura': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}

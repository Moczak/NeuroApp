import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import '../cloud_functions/cloud_functions.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApitemplateranCall {
  static Future<ApiCallResponse> call({
    String? templateId = '',
    String? usamedicamento = '',
    String? nome = '',
    String? sobrenome = '',
    String? datanascimento = '',
    String? dataran = '',
    String? escolaridade = '',
    String? escolaEMP = '',
    String? nomeEscola = '',
    String? pai = '',
    String? idadePai = '',
    String? escolaridadePai = '',
    String? mae = '',
    String? idadeMae = '',
    String? escolaridadeMae = '',
    String? queixa = '',
    String? historicododesenvolvimentodasaude = '',
    String? antecedentesfamiliares = '',
    String? logoCliente =
        'https://firebasestorage.googleapis.com/v0/b/universoneuro-f368b.appspot.com/o/imagens%2Flogo-exemplo.jpg?alt=media&token=1b8a3e16-ed0d-4959-af40-0703262fb426',
    String? endereco =
        'Av. Juscelino Kubitscheck, 627 - Centro, Joinville - SC, 89201-100',
    String? nomeprofissional = '',
    String? email = '',
    String? assinatura =
        'https://apitemplateio-user.s3-ap-southeast-1.amazonaws.com/1/20/ce8988bc-dab7-4a0d-a368-0f6997396139.png',
    String? profissao = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ApitemplateranCall',
        'variables': {
          'templateId': templateId,
          'usamedicamento': usamedicamento,
          'nome': nome,
          'sobrenome': sobrenome,
          'datanascimento': datanascimento,
          'dataran': dataran,
          'escolaridade': escolaridade,
          'escolaEMP': escolaEMP,
          'nomeEscola': nomeEscola,
          'pai': pai,
          'idadePai': idadePai,
          'escolaridadePai': escolaridadePai,
          'mae': mae,
          'idadeMae': idadeMae,
          'escolaridadeMae': escolaridadeMae,
          'queixa': queixa,
          'historicododesenvolvimentodasaude':
              historicododesenvolvimentodasaude,
          'antecedentesfamiliares': antecedentesfamiliares,
          'logoCliente': logoCliente,
          'endereco': endereco,
          'nomeprofissional': nomeprofissional,
          'email': email,
          'assinatura': assinatura,
          'profissao': profissao,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic downloadurl(dynamic response) => getJsonField(
        response,
        r'''$.download_url''',
      );
}

class ApitemplatecontratoCall {
  static Future<ApiCallResponse> call({
    String? templateId = 'test',
    String? usamedicamento = 'test',
    String? nome = 'test',
    String? sobrenome = 'test',
    String? datanascimento = 'test',
    String? datacontrato = 'test',
    String? escolaridade = 'test',
    String? escolaEMP = 'testt',
    String? nomeEscola = 'test',
    String? pai = 'test',
    String? idadePai = 'test',
    String? escolaridadePai = 'test',
    String? mae = 'test',
    String? idadeMae = 'test',
    String? escolaridadeMae = 'test',
    String? logoCliente =
        'https://firebasestorage.googleapis.com/v0/b/universoneuro-f368b.appspot.com/o/imagens%2Flogo-exemplo.jpg?alt=media&token=1b8a3e16-ed0d-4959-af40-0703262fb426',
    String? endereco =
        'Av. Juscelino Kubitscheck, 627 - Centro, Joinville - SC, 89201-100',
    String? nomeprofissional = 'Angelita Fulle',
    String? email = 'example@example.com',
    String? profissao = 'Neuropsicopedagogo Clínico',
    String? cprimeira =
        'A CONTRATADA é responsável pelo ‘Atendimento [ Sua Especialidade ]’ do(a) [ Termo Utilizado para Paciente ] citado acima, aqui representado(a) pelo(a) CONTRATANTE, nos dias e horários estabelecidos entre as partes contratantes e abaixo especificados, em encontros com duração de XX (escrito por extenso) minutos cada, sendo todas os atendimentos nos horários agendados. Parágrafo Primeiro: Essa primeira etapa do ‘Atendimento [ Sua Especialidade ]’ que corresponde ao ‘Diagnóstico’ será realizada ___ vez(es) por semana, num total mínimo de (x) encontros sendo : (x) com a criança, (x) com os pais . Além dos encontros com a criança e os pais, se faz necessário: (x) encontros com a escola , o qual não haverá despesas com honorários por parte do contratante. No último encontro os pais devem receber o Relatório/Laudo [ Sua Especialidade ], com todas as explicações que se fizerem necessárias. Parágrafo Segundo: A segunda etapa do ‘Atendimento [ Sua Especialidade ]’ refere-se ao ‘Acompanhamento’ ou seja, intervenção. Essa etapa diz respeito somente àquelas crianças que necessitam de dar continuidade ao atendimento. Para essa etapa será feito um novo contrato fixando-se o período que for necessário de acordo com a hipótese de diagnóstico [ Sua Especialidade ].',
    String? csegunda =
        'Pelos serviços descritos na Cláusula Segunda, o(a) CONTRATANTE se compromete pagar ao (à) CONTRATADO (a) a importância de R\$ XX,XX ( reais) por cada encontro realizado. O valor total referente aos atendimentos fica no valor de R\$ XX,XX ( reais), podendo ser pago em XX parcelas de R\$ XX,XX, sendo a primeira efetuada no primeiro encontro e as demais com XX dias.',
    String? cterceira =
        'O (A) CONTRATADO (A) deverá iniciar todos os encontros pontualmente no horário pré-estabelecido. Qualquer eventual atraso por parte do (a) CONTRATADO(A), fica assegurado ao (à) CONTRATANTE o direito de exigir a compensação do tempo equivalente ao do atraso que poderá ser coberto no mesmo dia ou em data a ser definida. O atraso por parte do (a) CONTRATANTE, acarretará perda do tempo correspondente previsto para o encontro.Parágrafo primeiro: O(a) CONTRATANTE tem o prazo de até 24 (vinte e quatro) horas, que antecedem ao horário pré-estabelecido dos encontros, para comunicar eventual falta. O encontro será cobrado normalmente e o(a) CONTRATADO(A) se compromete a repor o horário do encontro em dia a ser combinado, preferencialmente na mesma semana, de tal forma que a cliente não fique prejudicado. Não havendo horário disponível que seja do agrado dos pais, fica estabelecido o pagamento referente à falta não cabendo reposição de horário pelo(a) CONTRATADO(A). Parágrafo Segundo: Caso o (a) CONTRATADO (A) desmarque algum encontro por motivos particulares, o(a) CONTRATANTE terá o direito de reposição do encontro com dia e hora a ser acordados entre as partes. Parágrafo Terceiro: quando qualquer um dos encontros pré-fixados do cliente ocorrer em dia de feriado, o(a) CONTRATADO(a) se compromete a atender dentro da mesma semana em horário a ser escolhido de acordo com as partes.',
    String? cquarta =
        'O (A) menor ou o(a) seu(sua) responsável poderá a qualquer momento desistir do ‘Atendimento [ Sua Especialidade ]’, resguardando o mesmo direito ao profissional, caso alguns itens não estejam sendo cumpridos. Em caso de desistência por parte da família, fica o(a) [ Sua Especialidade ] isento(a) de qualquer responsabilidade sobre o (a) [ Termo Utilizado para Paciente ] . Qualquer que seja a causa ou a responsabilidade pela suspensão do processo da etapa correspondente ao ‘Diagnóstico ou Tratamento’, fica acordado o ressarcimento de todos os pagamentos devidos pelo CONTRATANTE até a data do cancelamento.E assim, por estarem justas e contratadas, as partes assinam o presente instrumento particular em 2 (duas) vias de igual teor e forma, na presença de testemunhas abaixo relacionadas, para que surta seus jurídicos e legais efeitos.',
    String? cabecalho = 'Centro de Atendimento Especializado',
    String? telpaciente = '0000000',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ApitemplatecontratoCall',
        'variables': {
          'templateId': templateId,
          'usamedicamento': usamedicamento,
          'nome': nome,
          'sobrenome': sobrenome,
          'datanascimento': datanascimento,
          'datacontrato': datacontrato,
          'escolaridade': escolaridade,
          'escolaEMP': escolaEMP,
          'nomeEscola': nomeEscola,
          'pai': pai,
          'idadePai': idadePai,
          'escolaridadePai': escolaridadePai,
          'mae': mae,
          'idadeMae': idadeMae,
          'escolaridadeMae': escolaridadeMae,
          'logoCliente': logoCliente,
          'endereco': endereco,
          'nomeprofissional': nomeprofissional,
          'email': email,
          'profissao': profissao,
          'cprimeira': cprimeira,
          'csegunda': csegunda,
          'cterceira': cterceira,
          'cquarta': cquarta,
          'cabecalho': cabecalho,
          'telpaciente': telpaciente,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic downloadurl(dynamic response) => getJsonField(
        response,
        r'''$.download_url''',
      );
}

class ApitemplatereciboCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? sobrenome = '',
    String? datanascimento = '',
    String? datarecibo = '',
    String? pai = '',
    String? mae = '',
    String? logoCliente =
        'https://firebasestorage.googleapis.com/v0/b/universoneuro-f368b.appspot.com/o/imagens%2Flogo-exemplo.jpg?alt=media&token=1b8a3e16-ed0d-4959-af40-0703262fb426',
    String? endereco =
        'Av. Juscelino Kubitscheck, 627 - Centro, Joinville - SC, 89201-100',
    String? nomeprofissional = '',
    String? email = '',
    String? profissao = '',
    String? dadosrecibo =
        'O (A) menor ou o(a) seu(sua) responsável poderá a qualquer momento desistir do ‘Atendimento [ Sua Especialidade ]’, resguardando o mesmo direito ao profissional, caso alguns itens não estejam sendo cumpridos. Em caso de desistência por parte da família, fica o(a) [ Sua Especialidade ] isento(a) de qualquer responsabilidade sobre o (a) [ Termo Utilizado para Paciente ] . Qualquer que seja a causa ou a responsabilidade pela suspensão do processo da etapa correspondente ao ‘Diagnóstico ou Tratamento’, fica acordado o ressarcimento de todos os pagamentos devidos pelo CONTRATANTE até a data do cancelamento.E assim, por estarem justas e contratadas, as partes assinam o presente instrumento particular em 2 (duas) vias de igual teor e forma, na presença de testemunhas abaixo relacionadas, para que surta seus jurídicos e legais efeitos.',
    String? telprofissional = '',
    String? telpaciente = '',
    String? formapagamento = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ApitemplatereciboCall',
        'variables': {
          'nome': nome,
          'sobrenome': sobrenome,
          'datanascimento': datanascimento,
          'datarecibo': datarecibo,
          'pai': pai,
          'mae': mae,
          'logoCliente': logoCliente,
          'endereco': endereco,
          'nomeprofissional': nomeprofissional,
          'email': email,
          'profissao': profissao,
          'dadosrecibo': dadosrecibo,
          'telprofissional': telprofissional,
          'telpaciente': telpaciente,
          'formapagamento': formapagamento,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic downloadurl(dynamic response) => getJsonField(
        response,
        r'''$.download_url''',
      );
}

class ModelopostCall {
  static Future<ApiCallResponse> call({
    String? backgroundColor = '#848484',
    String? barrainstagram = '#F64747',
    String? suaimagem =
        'https://firebasestorage.googleapis.com/v0/b/universoneuro-f368b.appspot.com/o/imagens%2Fuser-min.png?alt=media&token=33e5a3f9-6570-4f53-bb4b-2e3bb6aad610',
    String? seuinstagram = '@SEUINSTAGRAM',
    String? texto = 'TEXTO AQUI',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ModelopostCall',
        'variables': {
          'backgroundColor': backgroundColor,
          'barrainstagram': barrainstagram,
          'suaimagem': suaimagem,
          'seuinstagram': seuinstagram,
          'texto': texto,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic downloadurl(dynamic response) => getJsonField(
        response,
        r'''$.download_url''',
      );
  static dynamic downloadurlpng(dynamic response) => getJsonField(
        response,
        r'''$.download_url_png''',
      );
}

class ModelocartaoumCall {
  static Future<ApiCallResponse> call({
    String? nomeprofissional = '',
    String? profissao = '',
    String? bg = '',
    String? linkwhatsapp = '',
    String? coricones = '',
    String? cortextoprofissao = '',
    String? localizacao = '',
    String? bgfooter = '',
    String? linkface = '',
    String? linkemail = '',
    String? linklinkedin = '',
    String? linkinsta = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ModelocartaoumCall',
        'variables': {
          'nomeprofissional': nomeprofissional,
          'profissao': profissao,
          'bg': bg,
          'linkwhatsapp': linkwhatsapp,
          'coricones': coricones,
          'cortextoprofissao': cortextoprofissao,
          'localizacao': localizacao,
          'bgfooter': bgfooter,
          'linkface': linkface,
          'linkemail': linkemail,
          'linklinkedin': linklinkedin,
          'linkinsta': linkinsta,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic downloadurl(dynamic response) => getJsonField(
        response,
        r'''$.download_url''',
      );
}

class InscrevenobotconversaCall {
  static Future<ApiCallResponse> call({
    String? tel = '',
    String? primeironome = '',
    String? ultimonome = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'InscrevenobotconversaCall',
        'variables': {
          'tel': tel,
          'primeironome': primeironome,
          'ultimonome': ultimonome,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic iduser(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class EnviamsgbotconversaCall {
  static Future<ApiCallResponse> call({
    String? iduser = '35118669',
    String? nomeuser = 'Daniel',
    String? data = '20/03',
    String? horario = '15:30',
    String? profissional = 'Angelita Fulle',
    String? telprofissional = '11970783420',
    String? endereco = 'Endereço: ',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EnviamsgbotconversaCall',
        'variables': {
          'iduser': iduser,
          'nomeuser': nomeuser,
          'data': data,
          'horario': horario,
          'profissional': profissional,
          'telprofissional': telprofissional,
          'endereco': endereco,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class EnviamsgbotconversacobrancaCall {
  static Future<ApiCallResponse> call({
    String? iduser = '35118669',
    String? nomeuser = 'Daniel',
    String? data = '20/03',
    String? horario = '15:30',
    String? profissional = 'Angelita Fulle',
    String? telprofissional = '11970783420',
    String? endereco = 'Endereço: ',
    String? valoremaberto = 'R\$ 25.00',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EnviamsgbotconversacobrancaCall',
        'variables': {
          'iduser': iduser,
          'nomeuser': nomeuser,
          'data': data,
          'horario': horario,
          'profissional': profissional,
          'telprofissional': telprofissional,
          'endereco': endereco,
          'valoremaberto': valoremaberto,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class EnviamsgbotconversacustomizadaCall {
  static Future<ApiCallResponse> call({
    String? iduser = '35118669',
    String? message = 'Mensagem aqui...',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EnviamsgbotconversacustomizadaCall',
        'variables': {
          'iduser': iduser,
          'message': message,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class MakeimghtmlCall {
  static Future<ApiCallResponse> call({
    String? html = '',
    String? css = '',
    String? url = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'MakeimghtmlCall',
        'variables': {
          'html': html,
          'css': css,
          'url': url,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class StripeassinaturaCall {
  static Future<ApiCallResponse> call({
    String? priceID = 'price_1N5cYaAvgekXUTu4KWCnoar0',
    String? mode = 'subscription',
    String? key =
        'sk_test_51N5YRmAvgekXUTu4Uw6sgTZPunOHHT1Ah5fhA84lrMJ7E8rUh68umvivUc2acphoZlNr1FnkuMGz0Wr8kEAeWpSe00o2FtNW19',
    String? cancelUrl = 'https://neuropsicopedagogoemacao.com.br/',
    String? emailcliente = '',
    String? idusuariofirebase = '',
    String? cpfuser = '',
    String? nome = '',
    String? nomedoplano = 'Plano Egressos',
    String? successUrl =
        'https://neuropsicopedagogoemacao.com.br/pagamentoConfirmado',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StripeassinaturaCall',
        'variables': {
          'priceID': priceID,
          'mode': mode,
          'key': key,
          'cancelUrl': cancelUrl,
          'emailcliente': emailcliente,
          'idusuariofirebase': idusuariofirebase,
          'cpfuser': cpfuser,
          'nome': nome,
          'nomedoplano': nomedoplano,
          'successUrl': successUrl,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic idlinkpgto(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic urlcheckout(dynamic response) => getJsonField(
        response,
        r'''$.url''',
      );
  static dynamic statuspaimment(dynamic response) => getJsonField(
        response,
        r'''$.payment_status''',
      );
}

class StripeinvoiceCall {
  static Future<ApiCallResponse> call({
    String? id = 'cus_NrfvTKWRcnfYN9',
    String? key =
        'sk_test_51N5YRmAvgekXUTu4Uw6sgTZPunOHHT1Ah5fhA84lrMJ7E8rUh68umvivUc2acphoZlNr1FnkuMGz0Wr8kEAeWpSe00o2FtNW19',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StripeinvoiceCall',
        'variables': {
          'id': id,
          'key': key,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.data[:].amount''',
      );
  static dynamic descricaoplano(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.data[:].description''',
      );
  static dynamic periodo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.data[:].period''',
      );
  static dynamic finalperiodo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.data[:].period.end''',
      );
  static dynamic inicioperiodo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.data[:].period.start''',
      );
  static dynamic planovalor(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.data[:].plan.amount''',
      );
  static dynamic recorrencia(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.data[:].price.recurring.interval''',
      );
  static dynamic linesurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lines.url''',
      );
  static dynamic numerodafatura(dynamic response) => getJsonField(
        response,
        r'''$.data[:].number''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.data[:].status''',
      );
  static dynamic linkpdffatura(dynamic response) => getJsonField(
        response,
        r'''$.data[:].invoice_pdf''',
      );
  static dynamic faturaurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].hosted_invoice_url''',
      );
}

class StripecancelaassinaturaCall {
  static Future<ApiCallResponse> call({
    String? idassinaturastripe = 'sub_1N5wZjAvgekXUTu4DKZ1MIPg',
    String? key =
        'sk_test_51N5YRmAvgekXUTu4Uw6sgTZPunOHHT1Ah5fhA84lrMJ7E8rUh68umvivUc2acphoZlNr1FnkuMGz0Wr8kEAeWpSe00o2FtNW19',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StripecancelaassinaturaCall',
        'variables': {
          'idassinaturastripe': idassinaturastripe,
          'key': key,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}

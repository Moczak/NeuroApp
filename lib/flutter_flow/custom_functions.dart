import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '../../auth/firebase_auth/auth_util.dart';

bool showSearchResult(
  String? textSearchFor,
  String? textSearchIn,
) {
  // Add your function code here!
  return textSearchIn!.toLowerCase().contains(textSearchFor!.toLowerCase());
}

DateTime adicionarDuracaoSemanaData(
  int duracao,
  DateTime dataRecorrencia,
) {
  // quero adicionar recorrencia de dia em uma data
  final DateTime data = DateTime.now();
  final DateTime dataRecorrencia = data.add(Duration(days: 7));

  return dataRecorrencia;
}

DateTime adicionarDuracaoMesData(DateTime dataRecorrencia) {
  // quero adicionar recorrencia de dia em uma data
  final DateTime data = DateTime.now();
  final DateTime dataRecorrencia = data.add(Duration(days: 31));

  return dataRecorrencia;
}

int? somarA(
  int? item1,
  int? item2,
  int? totaldositens,
  int? item3,
  int? item4,
  int? item5,
  int? item6,
  int? item7,
  int? item8,
  int? item9,
  int? item10,
  int? item11,
  int? item12,
  int? item13,
  int? item14,
  int? item15,
  int? item16,
  int? item17,
) {
  totaldositens = (item1! +
      item2! +
      item17! +
      item3! +
      item4! +
      item5! +
      item6! +
      item7! +
      item8! +
      item9! +
      item10! +
      item11! +
      item12! +
      item13! +
      item14! +
      item15! +
      item16!);
  return totaldositens;
}

int? somarB(
  int? item18,
  int? item19,
  int? totaldositens,
  int? item20,
  int? item21,
  int? item22,
  int? item23,
  int? item24,
  int? item25,
  int? item26,
  int? item27,
  int? item28,
  int? item29,
  int? item30,
  int? item31,
  int? item32,
  int? item33,
  int? item34,
  int? item35,
  int? item36,
  int? item37,
) {
  totaldositens = (item18! +
      item19! +
      item20! +
      item21! +
      item22! +
      item23! +
      item24! +
      item25! +
      item26! +
      item27! +
      item28! +
      item29! +
      item30! +
      item31! +
      item32! +
      item33! +
      item34! +
      item35! +
      item36! +
      item37!);
  return totaldositens;
}

int? somarC(
  int? item38,
  int? item39,
  int? totaldositens,
  int? item40,
  int? item41,
  int? item42,
  int? item43,
  int? item44,
  int? item45,
  int? item46,
  int? item47,
  int? item48,
  int? item49,
  int? item50,
  int? item51,
) {
  totaldositens = (item38! +
      item39! +
      item40! +
      item41! +
      item42! +
      item43! +
      item44! +
      item45! +
      item46! +
      item47! +
      item48! +
      item49! +
      item50! +
      item51!);
  return totaldositens;
}

bool connersmaiorouiguala62(double totaldeitens) {
  // if for maior ou igual a 3 retorna true else retorna false
  if (totaldeitens >= 62) {
    return true;
  } else {
    return false;
  }
}

int? somarD(
  int? item52,
  int? item53,
  int? totaldositens,
  int? item54,
  int? item55,
  int? item56,
  int? item57,
  int? item58,
  int? item59,
  int? item60,
  int? item61,
  int? item62,
  int? item63,
  int? item64,
) {
  totaldositens = (item52! +
      item53! +
      item54! +
      item55! +
      item56! +
      item57! +
      item58! +
      item59! +
      item60! +
      item61! +
      item62! +
      item63! +
      item64!);
  return totaldositens;
}

DateTime firtDayCalendar(DateTime now) {
  var now = DateTime.now();
  // quero retorar o dia 1 do mês atual
  return DateTime(now.year, now.month - 3, now.day);
}

DateTime lastDayCalendar(DateTime now) {
  var now = DateTime.now();
  // quero retorar o dia 1 do mês atual
  return DateTime(now.year, now.month + 5, now.day);
}

int filtrarDocumentoParteB(
  List<ParteBRecord> listarespostas,
  String filtropalavra,
) {
  // SOMAR ITENS DE UM DOCUMENTO E RETORNAR A SOMA DOS ITENS FILTRANDO POR PALAVRA
  int soma = 0;
  for (var i = 0; i < listarespostas.length; i++) {
    if (listarespostas[i].q1 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q2 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q3 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q4 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q5 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q6 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q7 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q8 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q9 == filtropalavra) {
      soma = soma + 1;
    }
  }
  return soma;
}

int filtrarDocumentoParteA(
  List<ParteARecord> listarespostas,
  String filtropalavra,
) {
  // SOMAR ITENS DE UM DOCUMENTO E RETORNAR A SOMA DOS ITENS FILTRANDO POR PALAVRA
  int soma = 0;
  for (var i = 0; i < listarespostas.length; i++) {
    if (listarespostas[i].q1 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q2 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q3 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q4 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q5 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q6 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q7 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q8 == filtropalavra) {
      soma = soma + 1;
    }
    if (listarespostas[i].q9 == filtropalavra) {
      soma = soma + 1;
    }
  }
  return soma;
}

int? somarE(
  int? item65,
  int? item66,
  int? totaldositens,
  int? item67,
  int? item68,
  int? item69,
  int? item70,
  int? item71,
  int? item72,
  int? item73,
  int? item74,
  int? item75,
  int? item76,
  int? item77,
  int? item78,
  int? item79,
  int? item80,
  int? item81,
  int? item82,
  int? item83,
  int? item84,
  int? item85,
  int? item86,
  int? item87,
  int? item88,
) {
  totaldositens = (item65! +
      item66! +
      item67! +
      item68! +
      item69! +
      item70! +
      item71! +
      item72! +
      item73! +
      item74! +
      item75! +
      item76! +
      item77! +
      item78! +
      item79! +
      item80! +
      item81! +
      item82! +
      item83! +
      item84! +
      item85! +
      item86! +
      item87! +
      item88!);
  return totaldositens;
}

DateTime adicionarTempoNaHora(
  DateTime dataAgendada,
  int adicionarTempo,
) {
  // quero adicionar 30 minutos em uma data no calendário
  var now = new DateTime.now();
  var newDate = now.add(new Duration(minutes: adicionarTempo));
  return newDate;
}

bool maiorouiguala2(double totaldeitens) {
  // if for maior ou igual a 3 retorna true else retorna false
  if (totaldeitens >= 2) {
    return true;
  } else {
    return false;
  }
}

bool connersmaiorouiguala58(double totaldeitens) {
  // if for maior ou igual a 3 retorna true else retorna false
  if (totaldeitens >= 58) {
    return true;
  } else {
    return false;
  }
}

DateTime adicionarDuracaoDiasData(
  int duracao,
  DateTime dataRecorrencia,
) {
  // quero adicionar recorrencia de dia em uma data
  final DateTime data = DateTime.now();
  final DateTime dataRecorrencia = data.add(Duration(days: duracao));

  return dataRecorrencia;
}

bool maiorouiguala3(double totaldeitens) {
  // if for maior ou igual a 3 retorna true else retorna false
  if (totaldeitens >= 3) {
    return true;
  } else {
    return false;
  }
}

bool maiorouiguala4parteB(double totaldeitens) {
  // if for maior ou igual a 3 retorna true else retorna false
  if (totaldeitens >= 4) {
    return true;
  } else {
    return false;
  }
}

String? colarTexto(String textoCopiado) {
  // colar um texto copiado de um widget
  final String? texto = textoCopiado;
  return texto;
}

int? somaLista(List<int> numeroLista) {
  int soma = 0;
  int loop = numeroLista.length;

  for (int i = 0; i < loop; i++) {
    soma = soma + numeroLista[i];
  }
  return soma;
}

String converteremreais(int thePrice) {
  var f = NumberFormat("###,###.00", "pt_BR");
  return f.format(thePrice);
}

double metaFaturado(
  double valorfaturado,
  double meta,
) {
  // quero dividir um valor por outro
  return (valorfaturado * 100) / meta;
}

int? somarConnersPais(
  int? item1,
  int? item2,
  int? totaldositens,
  int? item3,
  int? item4,
  int? item5,
  int? item6,
  int? item7,
  int? item8,
  int? item9,
  int? item10,
  int? item11,
  int? item12,
  int? item13,
  int? item14,
  int? item15,
  int? item16,
  int? item17,
) {
  totaldositens = (item1! +
      item2! +
      item17! +
      item3! +
      item4! +
      item5! +
      item6! +
      item7! +
      item8! +
      item9! +
      item10! +
      item11! +
      item12! +
      item13! +
      item14! +
      item15! +
      item16!);
  return totaldositens;
}

String ultimos30dias(
  DateTime diaAtual,
  DateTime dia1,
  String diaAtualFormatado,
  String dia1Formatado,
) {
  // quero selecionar o dia 1 do mês até o dia atual
  DateTime now = DateTime.now();
  DateTime start = DateTime(now.year, now.month, 1);
  DateTime end = DateTime(now.year, now.month, now.day);
  diaAtual = DateTime(now.year, now.month, now.day);
  dia1 = DateTime(now.year, now.month, 1);
  dia1Formatado = DateFormat('dd/MM/yyyy').format(dia1);
  diaAtualFormatado = DateFormat('dd/MM/yyyy').format(diaAtual);
  return '$dia1Formatado - $diaAtualFormatado';
}

DateTime dia1domesatual(DateTime dia1) {
  // quero retorar o dia 1 do mês atual
  return DateTime(dia1.year, dia1.month, 1);
}

int? somarConnersProf(
  int? item1,
  int? item2,
  int? totaldositens,
  int? item3,
  int? item4,
  int? item5,
  int? item6,
  int? item7,
  int? item8,
  int? item9,
  int? item10,
  int? item11,
  int? item12,
  int? item13,
  int? item14,
  int? item15,
  int? item16,
  int? item17,
) {
  totaldositens = (item1! +
      item2! +
      item17! +
      item3! +
      item4! +
      item5! +
      item6! +
      item7! +
      item8! +
      item9! +
      item10! +
      item11! +
      item12! +
      item13! +
      item14! +
      item15! +
      item16!);
  return totaldositens;
}

int somardoisvalores(
  int despesa,
  int faturado,
) {
  // subtrair dois valores
  int resultado = faturado - despesa;
  return resultado;
}

String converterCorRGB(Color cor) {
  // CONVERTER UMA COR EM RGB
  return 'rgb(${cor.red}, ${cor.green}, ${cor.blue})';
}

bool maiorouiguala4parteA(double totaldeitens) {
  // if for maior ou igual a 3 retorna true else retorna false
  if (totaldeitens >= 4) {
    return true;
  } else {
    return false;
  }
}

int filtrarLista(
  List<String> listarespostas,
  String filtropalavra,
) {
  // Filter List Array in Dart RETORN SUM
  int sum = 0;
  for (var i = 0; i < listarespostas.length; i++) {
    if (listarespostas[i] == filtropalavra) {
      sum = sum + 1;
    }
  }
  return sum;
}

String evitarQbradeLinha(String texto) {
  // remover a opção de quebra de linha e transformar o texto em apenas uma linha
  return texto.replaceAll('\n', ' ');
}

int converteremMS(int minutos) {
  // multiplicar um valor por 60000
  return minutos * 60000;
}

int qtdadedeHORAS(
  DateTime horaInicial,
  DateTime horafinal,
) {
  // Calculate hours Between 2 Timestamp Variables
  int horas = horafinal.difference(horaInicial).inHours;
  return horas * 3600000;
}

double mediade4valores(
  double valor1,
  double valor2,
  double valor3,
  double valor4,
) {
  // quero resultado da média entre 4 valores
  double media = (valor1 + valor2 + valor3 + valor4) / 4;
  return media;
}

double somar5itens(
  double v1,
  double v2,
  double v3,
  double v4,
  double v5,
) {
  // somar 4 valores
  return v1 + v2 + v3 + v4 + v5;
}

double dividirumvalor(
  double totalreceita,
  double numerosessao,
) {
  // dividir uma valor pelo numero de sessao
  return totalreceita / numerosessao;
}

bool maiorouigualasessao(
  double media,
  double valorsessao,
) {
  // se o valor 1 for maior ou igual ao valor 2 retorna verdadeiro
  if (valorsessao >= media) {
    return true;
  } else {
    return false;
  }
}

int? likes(PostagensRecord? posts) {
  return posts!.likes!.length;
}

bool hasUploadedMedia(String? mediaPath) {
  return mediaPath != null && mediaPath.isNotEmpty;
}

List<InstrumentosRecord> filtrarInstrumento(
  List<InstrumentosRecord>? instrumentos,
  List<String>? categorias,
) {
  // se a categoria do instrumento for igual a categoria da lista retorna a lista se não retorna
  if (instrumentos == null || categorias == null) {
    return [];
  }
  return instrumentos
      .where((element) => categorias.contains(element.categoria))
      .toList();
}

List<InstrumentosRecord> filtroPro(
  List<String> categorias,
  List<InstrumentosRecord> listaProdutos,
) {
  // if categoria for selecionada retora else retorna sem filtro
  if (categorias.isEmpty) {
    return listaProdutos;
  } else {
    return listaProdutos
        .where((element) => element.categorialista!
            .any((element) => categorias.contains(element)))
        .toList();
  }
}

DateTime convertUnixDate(int unixdate) {
  // converta Unix timestamp em uma data dd/MM/yyyy
  return DateTime.fromMillisecondsSinceEpoch(unixdate * 1000);
}

String? convertToCurrency(int precostripe) {
  // converter centavos em valor real
  if (precostripe == null) {
    return null;
  }
  final formatter = new NumberFormat("#,##0.00", "pt_BR");
  final value = precostripe / 100;
  return formatter.format(value);
}

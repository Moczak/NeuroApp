import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'precificacao_record.g.dart';

abstract class PrecificacaoRecord
    implements Built<PrecificacaoRecord, PrecificacaoRecordBuilder> {
  static Serializer<PrecificacaoRecord> get serializer =>
      _$precificacaoRecordSerializer;

  double? get salariodesejado;

  double? get fundodereserva;

  double? get custosnovosinstrumentos;

  double? get taxacontribuicao;

  bool? get homecare;

  bool? get esproprio;

  bool? get consultorio;

  bool? get itinerante;

  bool? get preencheumediaregiao;

  double? get psicologopreco;

  double? get terapeutapreco;

  double? get fonopreco;

  double? get psicopedagogopreco;

  bool? get preencheusalario;

  bool? get fundoreservabool;

  bool? get orcinstrumentobool;

  bool? get taxacontrbool;

  double? get atdeatendimento;

  bool? get qtdadeatendimentobool;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PrecificacaoRecordBuilder builder) => builder
    ..salariodesejado = 0.0
    ..fundodereserva = 0.0
    ..custosnovosinstrumentos = 0.0
    ..taxacontribuicao = 0.0
    ..homecare = false
    ..esproprio = false
    ..consultorio = false
    ..itinerante = false
    ..preencheumediaregiao = false
    ..psicologopreco = 0.0
    ..terapeutapreco = 0.0
    ..fonopreco = 0.0
    ..psicopedagogopreco = 0.0
    ..preencheusalario = false
    ..fundoreservabool = false
    ..orcinstrumentobool = false
    ..taxacontrbool = false
    ..atdeatendimento = 0.0
    ..qtdadeatendimentobool = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('precificacao')
          : FirebaseFirestore.instance.collectionGroup('precificacao');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('precificacao').doc();

  static Stream<PrecificacaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PrecificacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PrecificacaoRecord._();
  factory PrecificacaoRecord(
          [void Function(PrecificacaoRecordBuilder) updates]) =
      _$PrecificacaoRecord;

  static PrecificacaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPrecificacaoRecordData({
  double? salariodesejado,
  double? fundodereserva,
  double? custosnovosinstrumentos,
  double? taxacontribuicao,
  bool? homecare,
  bool? esproprio,
  bool? consultorio,
  bool? itinerante,
  bool? preencheumediaregiao,
  double? psicologopreco,
  double? terapeutapreco,
  double? fonopreco,
  double? psicopedagogopreco,
  bool? preencheusalario,
  bool? fundoreservabool,
  bool? orcinstrumentobool,
  bool? taxacontrbool,
  double? atdeatendimento,
  bool? qtdadeatendimentobool,
}) {
  final firestoreData = serializers.toFirestore(
    PrecificacaoRecord.serializer,
    PrecificacaoRecord(
      (p) => p
        ..salariodesejado = salariodesejado
        ..fundodereserva = fundodereserva
        ..custosnovosinstrumentos = custosnovosinstrumentos
        ..taxacontribuicao = taxacontribuicao
        ..homecare = homecare
        ..esproprio = esproprio
        ..consultorio = consultorio
        ..itinerante = itinerante
        ..preencheumediaregiao = preencheumediaregiao
        ..psicologopreco = psicologopreco
        ..terapeutapreco = terapeutapreco
        ..fonopreco = fonopreco
        ..psicopedagogopreco = psicopedagogopreco
        ..preencheusalario = preencheusalario
        ..fundoreservabool = fundoreservabool
        ..orcinstrumentobool = orcinstrumentobool
        ..taxacontrbool = taxacontrbool
        ..atdeatendimento = atdeatendimento
        ..qtdadeatendimentobool = qtdadeatendimentobool,
    ),
  );

  return firestoreData;
}

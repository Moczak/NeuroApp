import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ran_record.g.dart';

abstract class RanRecord implements Built<RanRecord, RanRecordBuilder> {
  static Serializer<RanRecord> get serializer => _$ranRecordSerializer;

  DocumentReference? get paciente;

  DateTime? get data;

  @BuiltValueField(wireName: 'QUEIXA')
  String? get queixa;

  @BuiltValueField(wireName: 'HISTRICODODESENVOLVIMENTOEDASADE')
  String? get histricododesenvolvimentoedasade;

  @BuiltValueField(wireName: 'Antecedentesfamiliares')
  String? get antecedentesfamiliares;

  @BuiltValueField(wireName: 'Jeitodeserdacrianasegundoame')
  String? get jeitodeserdacrianasegundoame;

  @BuiltValueField(wireName: 'VIDAESCOLAR')
  String? get vidaescolar;

  @BuiltValueField(wireName: 'COMPORTAMENTODACRIANADURANTEAAVALIAO')
  String? get comportamentodacrianaduranteaavaliao;

  @BuiltValueField(wireName: 'AVALIAO')
  String? get avaliao;

  @BuiltValueField(wireName: 'Instrumentos')
  String? get instrumentos;

  @BuiltValueField(wireName: 'Ateno')
  String? get ateno;

  @BuiltValueField(wireName: 'FuncoesExecutivas')
  String? get funcoesExecutivas;

  @BuiltValueField(wireName: 'Visual')
  String? get visual;

  @BuiltValueField(wireName: 'Auditiva')
  String? get auditiva;

  @BuiltValueField(wireName: 'Memoriadetrabalho')
  String? get memoriadetrabalho;

  @BuiltValueField(wireName: 'LEITURASILENCIOSA')
  String? get leiturasilenciosa;

  @BuiltValueField(wireName: 'LEITURAORAL')
  String? get leituraoral;

  @BuiltValueField(wireName: 'INTERPRETAODETEXTO')
  String? get interpretaodetexto;

  @BuiltValueField(wireName: 'COMPREENSODETEXTO')
  String? get compreensodetexto;

  @BuiltValueField(wireName: 'CaLCULO')
  String? get caLCULO;

  @BuiltValueField(wireName: 'OBSERVAcaOPSICOMOTORA')
  String? get oBSERVAcaOPSICOMOTORA;

  @BuiltValueField(wireName: 'COMPORTAMENTOEMSALADEAULA')
  String? get comportamentoemsaladeaula;

  @BuiltValueField(wireName: 'COMPORTAMENTOEMCASA')
  String? get comportamentoemcasa;

  @BuiltValueField(wireName: 'HORALDICA')
  String? get horaldica;

  @BuiltValueField(wireName: 'CONCLUSAO')
  String? get conclusao;

  @BuiltValueField(wireName: 'INDICACOESDETRATAMENTO')
  String? get indicacoesdetratamento;

  @BuiltValueField(wireName: 'ORIENTACOESESCOLA')
  String? get orientacoesescola;

  @BuiltValueField(wireName: 'ORIENTACOESAOSPAIS')
  String? get orientacoesaospais;

  @BuiltValueField(wireName: 'ESCRITA')
  String? get escrita;

  @BuiltValueField(wireName: 'ESPONTANEA')
  String? get espontanea;

  String? get assinatura;

  String? get urldownload;

  bool? get geroupdf;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RanRecordBuilder builder) => builder
    ..queixa = ''
    ..histricododesenvolvimentoedasade = ''
    ..antecedentesfamiliares = ''
    ..jeitodeserdacrianasegundoame = ''
    ..vidaescolar = ''
    ..comportamentodacrianaduranteaavaliao = ''
    ..avaliao = ''
    ..instrumentos = ''
    ..ateno = ''
    ..funcoesExecutivas = ''
    ..visual = ''
    ..auditiva = ''
    ..memoriadetrabalho = ''
    ..leiturasilenciosa = ''
    ..leituraoral = ''
    ..interpretaodetexto = ''
    ..compreensodetexto = ''
    ..caLCULO = ''
    ..oBSERVAcaOPSICOMOTORA = ''
    ..comportamentoemsaladeaula = ''
    ..comportamentoemcasa = ''
    ..horaldica = ''
    ..conclusao = ''
    ..indicacoesdetratamento = ''
    ..orientacoesescola = ''
    ..orientacoesaospais = ''
    ..escrita = ''
    ..espontanea = ''
    ..assinatura = ''
    ..urldownload = ''
    ..geroupdf = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ran');

  static Stream<RanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RanRecord._();
  factory RanRecord([void Function(RanRecordBuilder) updates]) = _$RanRecord;

  static RanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRanRecordData({
  DocumentReference? paciente,
  DateTime? data,
  String? queixa,
  String? histricododesenvolvimentoedasade,
  String? antecedentesfamiliares,
  String? jeitodeserdacrianasegundoame,
  String? vidaescolar,
  String? comportamentodacrianaduranteaavaliao,
  String? avaliao,
  String? instrumentos,
  String? ateno,
  String? funcoesExecutivas,
  String? visual,
  String? auditiva,
  String? memoriadetrabalho,
  String? leiturasilenciosa,
  String? leituraoral,
  String? interpretaodetexto,
  String? compreensodetexto,
  String? caLCULO,
  String? oBSERVAcaOPSICOMOTORA,
  String? comportamentoemsaladeaula,
  String? comportamentoemcasa,
  String? horaldica,
  String? conclusao,
  String? indicacoesdetratamento,
  String? orientacoesescola,
  String? orientacoesaospais,
  String? escrita,
  String? espontanea,
  String? assinatura,
  String? urldownload,
  bool? geroupdf,
}) {
  final firestoreData = serializers.toFirestore(
    RanRecord.serializer,
    RanRecord(
      (r) => r
        ..paciente = paciente
        ..data = data
        ..queixa = queixa
        ..histricododesenvolvimentoedasade = histricododesenvolvimentoedasade
        ..antecedentesfamiliares = antecedentesfamiliares
        ..jeitodeserdacrianasegundoame = jeitodeserdacrianasegundoame
        ..vidaescolar = vidaescolar
        ..comportamentodacrianaduranteaavaliao =
            comportamentodacrianaduranteaavaliao
        ..avaliao = avaliao
        ..instrumentos = instrumentos
        ..ateno = ateno
        ..funcoesExecutivas = funcoesExecutivas
        ..visual = visual
        ..auditiva = auditiva
        ..memoriadetrabalho = memoriadetrabalho
        ..leiturasilenciosa = leiturasilenciosa
        ..leituraoral = leituraoral
        ..interpretaodetexto = interpretaodetexto
        ..compreensodetexto = compreensodetexto
        ..caLCULO = caLCULO
        ..oBSERVAcaOPSICOMOTORA = oBSERVAcaOPSICOMOTORA
        ..comportamentoemsaladeaula = comportamentoemsaladeaula
        ..comportamentoemcasa = comportamentoemcasa
        ..horaldica = horaldica
        ..conclusao = conclusao
        ..indicacoesdetratamento = indicacoesdetratamento
        ..orientacoesescola = orientacoesescola
        ..orientacoesaospais = orientacoesaospais
        ..escrita = escrita
        ..espontanea = espontanea
        ..assinatura = assinatura
        ..urldownload = urldownload
        ..geroupdf = geroupdf,
    ),
  );

  return firestoreData;
}

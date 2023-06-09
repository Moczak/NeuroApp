import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sessao_record.g.dart';

abstract class SessaoRecord
    implements Built<SessaoRecord, SessaoRecordBuilder> {
  static Serializer<SessaoRecord> get serializer => _$sessaoRecordSerializer;

  String? get obs;

  String? get status;

  String? get modeloatendimento;

  @BuiltValueField(wireName: 'AnotaesdeAntesdaSesso')
  String? get anotaesdeAntesdaSesso;

  @BuiltValueField(wireName: 'QueixadoCliente')
  String? get queixadoCliente;

  @BuiltValueField(wireName: 'ResumodaSesso')
  String? get resumodaSesso;

  @BuiltValueField(wireName: 'Observao')
  String? get observao;

  @BuiltValueField(wireName: 'Evoluo')
  String? get evoluo;

  bool? get pago;

  bool? get presencanaoconfirmada;

  bool? get presencaconfirmada;

  bool? get presencacancelada;

  bool? get realizada;

  DateTime? get datapagamentosessao;

  String? get formadepgto;

  bool? get pacienteausente;

  int? get valorsessao;

  bool? get notassessaogerada;

  double? get valorsessaoDouble;

  String? get nomepaciente;

  String? get urlwhatsapp;

  DateTime? get umdiaantesaviso;

  String? get urlrecibo;

  String? get proxsessao;

  bool? get check1;

  bool? get check2;

  bool? get check3;

  bool? get check4;

  bool? get check5;

  bool? get check6;

  bool? get check7;

  DocumentReference? get userreferencia;

  int? get valordopacote;

  bool? get pagamentoporpacote;

  String? get referencia;

  bool? get criadorepeticao;

  DateTime? get iniciosessao;

  DateTime? get terminosessao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SessaoRecordBuilder builder) => builder
    ..obs = ''
    ..status = ''
    ..modeloatendimento = ''
    ..anotaesdeAntesdaSesso = ''
    ..queixadoCliente = ''
    ..resumodaSesso = ''
    ..observao = ''
    ..evoluo = ''
    ..pago = false
    ..presencanaoconfirmada = false
    ..presencaconfirmada = false
    ..presencacancelada = false
    ..realizada = false
    ..formadepgto = ''
    ..pacienteausente = false
    ..valorsessao = 0
    ..notassessaogerada = false
    ..valorsessaoDouble = 0.0
    ..nomepaciente = ''
    ..urlwhatsapp = ''
    ..urlrecibo = ''
    ..proxsessao = ''
    ..check1 = false
    ..check2 = false
    ..check3 = false
    ..check4 = false
    ..check5 = false
    ..check6 = false
    ..check7 = false
    ..valordopacote = 0
    ..pagamentoporpacote = false
    ..referencia = ''
    ..criadorepeticao = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sessao')
          : FirebaseFirestore.instance.collectionGroup('sessao');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('sessao').doc();

  static Stream<SessaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SessaoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SessaoRecord._();
  factory SessaoRecord([void Function(SessaoRecordBuilder) updates]) =
      _$SessaoRecord;

  static SessaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSessaoRecordData({
  String? obs,
  String? status,
  String? modeloatendimento,
  String? anotaesdeAntesdaSesso,
  String? queixadoCliente,
  String? resumodaSesso,
  String? observao,
  String? evoluo,
  bool? pago,
  bool? presencanaoconfirmada,
  bool? presencaconfirmada,
  bool? presencacancelada,
  bool? realizada,
  DateTime? datapagamentosessao,
  String? formadepgto,
  bool? pacienteausente,
  int? valorsessao,
  bool? notassessaogerada,
  double? valorsessaoDouble,
  String? nomepaciente,
  String? urlwhatsapp,
  DateTime? umdiaantesaviso,
  String? urlrecibo,
  String? proxsessao,
  bool? check1,
  bool? check2,
  bool? check3,
  bool? check4,
  bool? check5,
  bool? check6,
  bool? check7,
  DocumentReference? userreferencia,
  int? valordopacote,
  bool? pagamentoporpacote,
  String? referencia,
  bool? criadorepeticao,
  DateTime? iniciosessao,
  DateTime? terminosessao,
}) {
  final firestoreData = serializers.toFirestore(
    SessaoRecord.serializer,
    SessaoRecord(
      (s) => s
        ..obs = obs
        ..status = status
        ..modeloatendimento = modeloatendimento
        ..anotaesdeAntesdaSesso = anotaesdeAntesdaSesso
        ..queixadoCliente = queixadoCliente
        ..resumodaSesso = resumodaSesso
        ..observao = observao
        ..evoluo = evoluo
        ..pago = pago
        ..presencanaoconfirmada = presencanaoconfirmada
        ..presencaconfirmada = presencaconfirmada
        ..presencacancelada = presencacancelada
        ..realizada = realizada
        ..datapagamentosessao = datapagamentosessao
        ..formadepgto = formadepgto
        ..pacienteausente = pacienteausente
        ..valorsessao = valorsessao
        ..notassessaogerada = notassessaogerada
        ..valorsessaoDouble = valorsessaoDouble
        ..nomepaciente = nomepaciente
        ..urlwhatsapp = urlwhatsapp
        ..umdiaantesaviso = umdiaantesaviso
        ..urlrecibo = urlrecibo
        ..proxsessao = proxsessao
        ..check1 = check1
        ..check2 = check2
        ..check3 = check3
        ..check4 = check4
        ..check5 = check5
        ..check6 = check6
        ..check7 = check7
        ..userreferencia = userreferencia
        ..valordopacote = valordopacote
        ..pagamentoporpacote = pagamentoporpacote
        ..referencia = referencia
        ..criadorepeticao = criadorepeticao
        ..iniciosessao = iniciosessao
        ..terminosessao = terminosessao,
    ),
  );

  return firestoreData;
}

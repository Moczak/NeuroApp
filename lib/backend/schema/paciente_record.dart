import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'paciente_record.g.dart';

abstract class PacienteRecord
    implements Built<PacienteRecord, PacienteRecordBuilder> {
  static Serializer<PacienteRecord> get serializer =>
      _$pacienteRecordSerializer;

  String? get nome;

  String? get idade;

  String? get nomedamae;

  String? get nomedopai;

  String? get idademae;

  String? get idadepai;

  String? get escolaridadepai;

  String? get escolaridademae;

  String? get escolaEMP;

  String? get periodoemqueestuda;

  String? get nomedaescola;

  DocumentReference? get usuario;

  String? get foto;

  String? get sobrenome;

  String? get escolaridade;

  String? get datadenascimento;

  String? get telefone;

  String? get email;

  String? get usamedicamento;

  String? get queixadopaciente;

  double? get status;

  String? get urlwhats;

  String? get ddd;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PacienteRecordBuilder builder) => builder
    ..nome = ''
    ..idade = ''
    ..nomedamae = ''
    ..nomedopai = ''
    ..idademae = ''
    ..idadepai = ''
    ..escolaridadepai = ''
    ..escolaridademae = ''
    ..escolaEMP = ''
    ..periodoemqueestuda = ''
    ..nomedaescola = ''
    ..foto = ''
    ..sobrenome = ''
    ..escolaridade = ''
    ..datadenascimento = ''
    ..telefone = ''
    ..email = ''
    ..usamedicamento = ''
    ..queixadopaciente = ''
    ..status = 0.0
    ..urlwhats = ''
    ..ddd = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paciente');

  static Stream<PacienteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PacienteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PacienteRecord._();
  factory PacienteRecord([void Function(PacienteRecordBuilder) updates]) =
      _$PacienteRecord;

  static PacienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPacienteRecordData({
  String? nome,
  String? idade,
  String? nomedamae,
  String? nomedopai,
  String? idademae,
  String? idadepai,
  String? escolaridadepai,
  String? escolaridademae,
  String? escolaEMP,
  String? periodoemqueestuda,
  String? nomedaescola,
  DocumentReference? usuario,
  String? foto,
  String? sobrenome,
  String? escolaridade,
  String? datadenascimento,
  String? telefone,
  String? email,
  String? usamedicamento,
  String? queixadopaciente,
  double? status,
  String? urlwhats,
  String? ddd,
}) {
  final firestoreData = serializers.toFirestore(
    PacienteRecord.serializer,
    PacienteRecord(
      (p) => p
        ..nome = nome
        ..idade = idade
        ..nomedamae = nomedamae
        ..nomedopai = nomedopai
        ..idademae = idademae
        ..idadepai = idadepai
        ..escolaridadepai = escolaridadepai
        ..escolaridademae = escolaridademae
        ..escolaEMP = escolaEMP
        ..periodoemqueestuda = periodoemqueestuda
        ..nomedaescola = nomedaescola
        ..usuario = usuario
        ..foto = foto
        ..sobrenome = sobrenome
        ..escolaridade = escolaridade
        ..datadenascimento = datadenascimento
        ..telefone = telefone
        ..email = email
        ..usamedicamento = usamedicamento
        ..queixadopaciente = queixadopaciente
        ..status = status
        ..urlwhats = urlwhats
        ..ddd = ddd,
    ),
  );

  return firestoreData;
}

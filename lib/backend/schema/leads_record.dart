import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'leads_record.g.dart';

abstract class LeadsRecord implements Built<LeadsRecord, LeadsRecordBuilder> {
  static Serializer<LeadsRecord> get serializer => _$leadsRecordSerializer;

  DateTime? get data;

  String? get nome;

  String? get telefone;

  String? get email;

  String? get categoria;

  String? get nomedopai;

  String? get nomedamae;

  String? get nomedaescola;

  String? get idadefilho;

  String? get status;

  String? get endereco;

  String? get areadeatuacao;

  String? get nomeclinica;

  String? get obs;

  String? get notas;

  String? get sobrenome;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(LeadsRecordBuilder builder) => builder
    ..nome = ''
    ..telefone = ''
    ..email = ''
    ..categoria = ''
    ..nomedopai = ''
    ..nomedamae = ''
    ..nomedaescola = ''
    ..idadefilho = ''
    ..status = ''
    ..endereco = ''
    ..areadeatuacao = ''
    ..nomeclinica = ''
    ..obs = ''
    ..notas = ''
    ..sobrenome = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('leads')
          : FirebaseFirestore.instance.collectionGroup('leads');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('leads').doc();

  static Stream<LeadsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LeadsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LeadsRecord._();
  factory LeadsRecord([void Function(LeadsRecordBuilder) updates]) =
      _$LeadsRecord;

  static LeadsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLeadsRecordData({
  DateTime? data,
  String? nome,
  String? telefone,
  String? email,
  String? categoria,
  String? nomedopai,
  String? nomedamae,
  String? nomedaescola,
  String? idadefilho,
  String? status,
  String? endereco,
  String? areadeatuacao,
  String? nomeclinica,
  String? obs,
  String? notas,
  String? sobrenome,
}) {
  final firestoreData = serializers.toFirestore(
    LeadsRecord.serializer,
    LeadsRecord(
      (l) => l
        ..data = data
        ..nome = nome
        ..telefone = telefone
        ..email = email
        ..categoria = categoria
        ..nomedopai = nomedopai
        ..nomedamae = nomedamae
        ..nomedaescola = nomedaescola
        ..idadefilho = idadefilho
        ..status = status
        ..endereco = endereco
        ..areadeatuacao = areadeatuacao
        ..nomeclinica = nomeclinica
        ..obs = obs
        ..notas = notas
        ..sobrenome = sobrenome,
    ),
  );

  return firestoreData;
}

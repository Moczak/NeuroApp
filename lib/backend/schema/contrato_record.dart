import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'contrato_record.g.dart';

abstract class ContratoRecord
    implements Built<ContratoRecord, ContratoRecordBuilder> {
  static Serializer<ContratoRecord> get serializer =>
      _$contratoRecordSerializer;

  String? get cabecalho;

  String? get url;

  bool? get contratogerado;

  String? get cprimeira;

  String? get csegunda;

  String? get cterceira;

  String? get cquarta;

  String? get logourl;

  String? get tel;

  String? get email;

  String? get endereco;

  String? get datacontratostring;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ContratoRecordBuilder builder) => builder
    ..cabecalho = ''
    ..url = ''
    ..contratogerado = false
    ..cprimeira = ''
    ..csegunda = ''
    ..cterceira = ''
    ..cquarta = ''
    ..logourl = ''
    ..tel = ''
    ..email = ''
    ..endereco = ''
    ..datacontratostring = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contrato')
          : FirebaseFirestore.instance.collectionGroup('contrato');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('contrato').doc();

  static Stream<ContratoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ContratoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ContratoRecord._();
  factory ContratoRecord([void Function(ContratoRecordBuilder) updates]) =
      _$ContratoRecord;

  static ContratoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createContratoRecordData({
  String? cabecalho,
  String? url,
  bool? contratogerado,
  String? cprimeira,
  String? csegunda,
  String? cterceira,
  String? cquarta,
  String? logourl,
  String? tel,
  String? email,
  String? endereco,
  String? datacontratostring,
}) {
  final firestoreData = serializers.toFirestore(
    ContratoRecord.serializer,
    ContratoRecord(
      (c) => c
        ..cabecalho = cabecalho
        ..url = url
        ..contratogerado = contratogerado
        ..cprimeira = cprimeira
        ..csegunda = csegunda
        ..cterceira = cterceira
        ..cquarta = cquarta
        ..logourl = logourl
        ..tel = tel
        ..email = email
        ..endereco = endereco
        ..datacontratostring = datacontratostring,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'instrumento_record.g.dart';

abstract class InstrumentoRecord
    implements Built<InstrumentoRecord, InstrumentoRecordBuilder> {
  static Serializer<InstrumentoRecord> get serializer =>
      _$instrumentoRecordSerializer;

  DocumentReference? get sessao;

  String? get areaavaliada;

  String? get nomeinstrumento;

  String? get resultado;

  String? get referenciainstrumento;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(InstrumentoRecordBuilder builder) => builder
    ..areaavaliada = ''
    ..nomeinstrumento = ''
    ..resultado = ''
    ..referenciainstrumento = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('instrumento')
          : FirebaseFirestore.instance.collectionGroup('instrumento');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('instrumento').doc();

  static Stream<InstrumentoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InstrumentoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InstrumentoRecord._();
  factory InstrumentoRecord([void Function(InstrumentoRecordBuilder) updates]) =
      _$InstrumentoRecord;

  static InstrumentoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInstrumentoRecordData({
  DocumentReference? sessao,
  String? areaavaliada,
  String? nomeinstrumento,
  String? resultado,
  String? referenciainstrumento,
}) {
  final firestoreData = serializers.toFirestore(
    InstrumentoRecord.serializer,
    InstrumentoRecord(
      (i) => i
        ..sessao = sessao
        ..areaavaliada = areaavaliada
        ..nomeinstrumento = nomeinstrumento
        ..resultado = resultado
        ..referenciainstrumento = referenciainstrumento,
    ),
  );

  return firestoreData;
}

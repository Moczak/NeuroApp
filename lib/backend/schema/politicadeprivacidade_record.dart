import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'politicadeprivacidade_record.g.dart';

abstract class PoliticadeprivacidadeRecord
    implements
        Built<PoliticadeprivacidadeRecord, PoliticadeprivacidadeRecordBuilder> {
  static Serializer<PoliticadeprivacidadeRecord> get serializer =>
      _$politicadeprivacidadeRecordSerializer;

  String? get titulo;

  String? get descricao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PoliticadeprivacidadeRecordBuilder builder) =>
      builder
        ..titulo = ''
        ..descricao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('politicadeprivacidade');

  static Stream<PoliticadeprivacidadeRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PoliticadeprivacidadeRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PoliticadeprivacidadeRecord._();
  factory PoliticadeprivacidadeRecord(
          [void Function(PoliticadeprivacidadeRecordBuilder) updates]) =
      _$PoliticadeprivacidadeRecord;

  static PoliticadeprivacidadeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPoliticadeprivacidadeRecordData({
  String? titulo,
  String? descricao,
}) {
  final firestoreData = serializers.toFirestore(
    PoliticadeprivacidadeRecord.serializer,
    PoliticadeprivacidadeRecord(
      (p) => p
        ..titulo = titulo
        ..descricao = descricao,
    ),
  );

  return firestoreData;
}

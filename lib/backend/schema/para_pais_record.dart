import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'para_pais_record.g.dart';

abstract class ParaPaisRecord
    implements Built<ParaPaisRecord, ParaPaisRecordBuilder> {
  static Serializer<ParaPaisRecord> get serializer =>
      _$paraPaisRecordSerializer;

  int? get resultado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ParaPaisRecordBuilder builder) =>
      builder..resultado = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('paraPais')
          : FirebaseFirestore.instance.collectionGroup('paraPais');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('paraPais').doc();

  static Stream<ParaPaisRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ParaPaisRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ParaPaisRecord._();
  factory ParaPaisRecord([void Function(ParaPaisRecordBuilder) updates]) =
      _$ParaPaisRecord;

  static ParaPaisRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createParaPaisRecordData({
  int? resultado,
}) {
  final firestoreData = serializers.toFirestore(
    ParaPaisRecord.serializer,
    ParaPaisRecord(
      (p) => p..resultado = resultado,
    ),
  );

  return firestoreData;
}

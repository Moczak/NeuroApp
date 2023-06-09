import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sindromesepilpticas_record.g.dart';

abstract class SindromesepilpticasRecord
    implements
        Built<SindromesepilpticasRecord, SindromesepilpticasRecordBuilder> {
  static Serializer<SindromesepilpticasRecord> get serializer =>
      _$sindromesepilpticasRecordSerializer;

  String? get titulo;

  String? get descricao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SindromesepilpticasRecordBuilder builder) =>
      builder
        ..titulo = ''
        ..descricao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sindromesepilpticas');

  static Stream<SindromesepilpticasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SindromesepilpticasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SindromesepilpticasRecord._();
  factory SindromesepilpticasRecord(
          [void Function(SindromesepilpticasRecordBuilder) updates]) =
      _$SindromesepilpticasRecord;

  static SindromesepilpticasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSindromesepilpticasRecordData({
  String? titulo,
  String? descricao,
}) {
  final firestoreData = serializers.toFirestore(
    SindromesepilpticasRecord.serializer,
    SindromesepilpticasRecord(
      (s) => s
        ..titulo = titulo
        ..descricao = descricao,
    ),
  );

  return firestoreData;
}

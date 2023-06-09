import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'para_escola_record.g.dart';

abstract class ParaEscolaRecord
    implements Built<ParaEscolaRecord, ParaEscolaRecordBuilder> {
  static Serializer<ParaEscolaRecord> get serializer =>
      _$paraEscolaRecordSerializer;

  int? get resultado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ParaEscolaRecordBuilder builder) =>
      builder..resultado = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('paraEscola')
          : FirebaseFirestore.instance.collectionGroup('paraEscola');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('paraEscola').doc();

  static Stream<ParaEscolaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ParaEscolaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ParaEscolaRecord._();
  factory ParaEscolaRecord([void Function(ParaEscolaRecordBuilder) updates]) =
      _$ParaEscolaRecord;

  static ParaEscolaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createParaEscolaRecordData({
  int? resultado,
}) {
  final firestoreData = serializers.toFirestore(
    ParaEscolaRecord.serializer,
    ParaEscolaRecord(
      (p) => p..resultado = resultado,
    ),
  );

  return firestoreData;
}

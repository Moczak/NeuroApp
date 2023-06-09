import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dicas_record.g.dart';

abstract class DicasRecord implements Built<DicasRecord, DicasRecordBuilder> {
  static Serializer<DicasRecord> get serializer => _$dicasRecordSerializer;

  String? get titulo;

  String? get descricao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DicasRecordBuilder builder) => builder
    ..titulo = ''
    ..descricao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dicas');

  static Stream<DicasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DicasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DicasRecord._();
  factory DicasRecord([void Function(DicasRecordBuilder) updates]) =
      _$DicasRecord;

  static DicasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDicasRecordData({
  String? titulo,
  String? descricao,
}) {
  final firestoreData = serializers.toFirestore(
    DicasRecord.serializer,
    DicasRecord(
      (d) => d
        ..titulo = titulo
        ..descricao = descricao,
    ),
  );

  return firestoreData;
}

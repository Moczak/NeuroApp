import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'modelo_ran_record.g.dart';

abstract class ModeloRanRecord
    implements Built<ModeloRanRecord, ModeloRanRecordBuilder> {
  static Serializer<ModeloRanRecord> get serializer =>
      _$modeloRanRecordSerializer;

  String? get item1;

  String? get itemIII;

  @BuiltValueField(wireName: 'III-1')
  String? get iii1;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ModeloRanRecordBuilder builder) => builder
    ..item1 = ''
    ..itemIII = ''
    ..iii1 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('modelo_ran');

  static Stream<ModeloRanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ModeloRanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ModeloRanRecord._();
  factory ModeloRanRecord([void Function(ModeloRanRecordBuilder) updates]) =
      _$ModeloRanRecord;

  static ModeloRanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createModeloRanRecordData({
  String? item1,
  String? itemIII,
  String? iii1,
}) {
  final firestoreData = serializers.toFirestore(
    ModeloRanRecord.serializer,
    ModeloRanRecord(
      (m) => m
        ..item1 = item1
        ..itemIII = itemIII
        ..iii1 = iii1,
    ),
  );

  return firestoreData;
}

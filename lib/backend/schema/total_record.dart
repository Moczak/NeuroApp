import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'total_record.g.dart';

abstract class TotalRecord implements Built<TotalRecord, TotalRecordBuilder> {
  static Serializer<TotalRecord> get serializer => _$totalRecordSerializer;

  BuiltList<String>? get questaofalha;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(TotalRecordBuilder builder) =>
      builder..questaofalha = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('total')
          : FirebaseFirestore.instance.collectionGroup('total');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('total').doc();

  static Stream<TotalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TotalRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TotalRecord._();
  factory TotalRecord([void Function(TotalRecordBuilder) updates]) =
      _$TotalRecord;

  static TotalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTotalRecordData() {
  final firestoreData = serializers.toFirestore(
    TotalRecord.serializer,
    TotalRecord(
      (t) => t..questaofalha = null,
    ),
  );

  return firestoreData;
}

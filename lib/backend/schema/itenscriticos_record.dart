import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'itenscriticos_record.g.dart';

abstract class ItenscriticosRecord
    implements Built<ItenscriticosRecord, ItenscriticosRecordBuilder> {
  static Serializer<ItenscriticosRecord> get serializer =>
      _$itenscriticosRecordSerializer;

  BuiltList<String>? get questaocritica;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ItenscriticosRecordBuilder builder) =>
      builder..questaocritica = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('itenscriticos')
          : FirebaseFirestore.instance.collectionGroup('itenscriticos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('itenscriticos').doc();

  static Stream<ItenscriticosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItenscriticosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ItenscriticosRecord._();
  factory ItenscriticosRecord(
          [void Function(ItenscriticosRecordBuilder) updates]) =
      _$ItenscriticosRecord;

  static ItenscriticosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItenscriticosRecordData() {
  final firestoreData = serializers.toFirestore(
    ItenscriticosRecord.serializer,
    ItenscriticosRecord(
      (i) => i..questaocritica = null,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alunoscensupeg_record.g.dart';

abstract class AlunoscensupegRecord
    implements Built<AlunoscensupegRecord, AlunoscensupegRecordBuilder> {
  static Serializer<AlunoscensupegRecord> get serializer =>
      _$alunoscensupegRecordSerializer;

  String? get email;

  bool? get ativo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlunoscensupegRecordBuilder builder) => builder
    ..email = ''
    ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alunoscensupeg');

  static Stream<AlunoscensupegRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlunoscensupegRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlunoscensupegRecord._();
  factory AlunoscensupegRecord(
          [void Function(AlunoscensupegRecordBuilder) updates]) =
      _$AlunoscensupegRecord;

  static AlunoscensupegRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlunoscensupegRecordData({
  String? email,
  bool? ativo,
}) {
  final firestoreData = serializers.toFirestore(
    AlunoscensupegRecord.serializer,
    AlunoscensupegRecord(
      (a) => a
        ..email = email
        ..ativo = ativo,
    ),
  );

  return firestoreData;
}

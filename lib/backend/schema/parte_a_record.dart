import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'parte_a_record.g.dart';

abstract class ParteARecord
    implements Built<ParteARecord, ParteARecordBuilder> {
  static Serializer<ParteARecord> get serializer => _$parteARecordSerializer;

  String? get q1;

  String? get q2;

  String? get q3;

  String? get q4;

  String? get q5;

  String? get q6;

  String? get q7;

  String? get q8;

  String? get q9;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ParteARecordBuilder builder) => builder
    ..q1 = ''
    ..q2 = ''
    ..q3 = ''
    ..q4 = ''
    ..q5 = ''
    ..q6 = ''
    ..q7 = ''
    ..q8 = ''
    ..q9 = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('parteA')
          : FirebaseFirestore.instance.collectionGroup('parteA');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('parteA').doc();

  static Stream<ParteARecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ParteARecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ParteARecord._();
  factory ParteARecord([void Function(ParteARecordBuilder) updates]) =
      _$ParteARecord;

  static ParteARecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createParteARecordData({
  String? q1,
  String? q2,
  String? q3,
  String? q4,
  String? q5,
  String? q6,
  String? q7,
  String? q8,
  String? q9,
}) {
  final firestoreData = serializers.toFirestore(
    ParteARecord.serializer,
    ParteARecord(
      (p) => p
        ..q1 = q1
        ..q2 = q2
        ..q3 = q3
        ..q4 = q4
        ..q5 = q5
        ..q6 = q6
        ..q7 = q7
        ..q8 = q8
        ..q9 = q9,
    ),
  );

  return firestoreData;
}

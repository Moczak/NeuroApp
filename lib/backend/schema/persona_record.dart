import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'persona_record.g.dart';

abstract class PersonaRecord
    implements Built<PersonaRecord, PersonaRecordBuilder> {
  static Serializer<PersonaRecord> get serializer => _$personaRecordSerializer;

  String? get q1;

  String? get q2;

  String? get q3;

  String? get q4;

  String? get q5;

  String? get q6;

  String? get q7;

  String? get q8;

  String? get q9;

  String? get q10;

  String? get q11;

  String? get q12;

  String? get q13;

  String? get q14;

  String? get q15;

  String? get q18;

  String? get q19;

  bool? get homem;

  bool? get mulher;

  DateTime? get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PersonaRecordBuilder builder) => builder
    ..q1 = ''
    ..q2 = ''
    ..q3 = ''
    ..q4 = ''
    ..q5 = ''
    ..q6 = ''
    ..q7 = ''
    ..q8 = ''
    ..q9 = ''
    ..q10 = ''
    ..q11 = ''
    ..q12 = ''
    ..q13 = ''
    ..q14 = ''
    ..q15 = ''
    ..q18 = ''
    ..q19 = ''
    ..homem = false
    ..mulher = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('persona')
          : FirebaseFirestore.instance.collectionGroup('persona');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('persona').doc();

  static Stream<PersonaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PersonaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PersonaRecord._();
  factory PersonaRecord([void Function(PersonaRecordBuilder) updates]) =
      _$PersonaRecord;

  static PersonaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPersonaRecordData({
  String? q1,
  String? q2,
  String? q3,
  String? q4,
  String? q5,
  String? q6,
  String? q7,
  String? q8,
  String? q9,
  String? q10,
  String? q11,
  String? q12,
  String? q13,
  String? q14,
  String? q15,
  String? q18,
  String? q19,
  bool? homem,
  bool? mulher,
  DateTime? data,
}) {
  final firestoreData = serializers.toFirestore(
    PersonaRecord.serializer,
    PersonaRecord(
      (p) => p
        ..q1 = q1
        ..q2 = q2
        ..q3 = q3
        ..q4 = q4
        ..q5 = q5
        ..q6 = q6
        ..q7 = q7
        ..q8 = q8
        ..q9 = q9
        ..q10 = q10
        ..q11 = q11
        ..q12 = q12
        ..q13 = q13
        ..q14 = q14
        ..q15 = q15
        ..q18 = q18
        ..q19 = q19
        ..homem = homem
        ..mulher = mulher
        ..data = data,
    ),
  );

  return firestoreData;
}

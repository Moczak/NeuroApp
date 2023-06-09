import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'm_chat_record.g.dart';

abstract class MChatRecord implements Built<MChatRecord, MChatRecordBuilder> {
  static Serializer<MChatRecord> get serializer => _$mChatRecordSerializer;

  DocumentReference? get paciente;

  bool? get q1;

  bool? get q2;

  bool? get q3;

  bool? get q4;

  bool? get q5;

  bool? get q6;

  bool? get q7;

  bool? get q8;

  bool? get q9;

  bool? get q10;

  bool? get q11;

  bool? get q12;

  bool? get q13;

  bool? get q14;

  bool? get q15;

  bool? get q16;

  bool? get q17;

  bool? get q18;

  bool? get q19;

  bool? get q20;

  bool? get q21;

  bool? get q22;

  bool? get q23;

  DateTime? get data;

  String? get q1string;

  String? get q2string;

  String? get q3string;

  String? get q7string;

  String? get q4string;

  String? get q5string;

  String? get q6string;

  String? get q8string;

  String? get q9string;

  String? get q10string;

  String? get q11string;

  String? get q12string;

  String? get q13string;

  String? get q14string;

  String? get q15string;

  String? get q16string;

  String? get q17string;

  String? get q18string;

  String? get q19string;

  String? get q20string;

  String? get q21string;

  String? get q22string;

  String? get q23string;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MChatRecordBuilder builder) => builder
    ..q1 = false
    ..q2 = false
    ..q3 = false
    ..q4 = false
    ..q5 = false
    ..q6 = false
    ..q7 = false
    ..q8 = false
    ..q9 = false
    ..q10 = false
    ..q11 = false
    ..q12 = false
    ..q13 = false
    ..q14 = false
    ..q15 = false
    ..q16 = false
    ..q17 = false
    ..q18 = false
    ..q19 = false
    ..q20 = false
    ..q21 = false
    ..q22 = false
    ..q23 = false
    ..q1string = ''
    ..q2string = ''
    ..q3string = ''
    ..q7string = ''
    ..q4string = ''
    ..q5string = ''
    ..q6string = ''
    ..q8string = ''
    ..q9string = ''
    ..q10string = ''
    ..q11string = ''
    ..q12string = ''
    ..q13string = ''
    ..q14string = ''
    ..q15string = ''
    ..q16string = ''
    ..q17string = ''
    ..q18string = ''
    ..q19string = ''
    ..q20string = ''
    ..q21string = ''
    ..q22string = ''
    ..q23string = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('m_chat');

  static Stream<MChatRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MChatRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MChatRecord._();
  factory MChatRecord([void Function(MChatRecordBuilder) updates]) =
      _$MChatRecord;

  static MChatRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMChatRecordData({
  DocumentReference? paciente,
  bool? q1,
  bool? q2,
  bool? q3,
  bool? q4,
  bool? q5,
  bool? q6,
  bool? q7,
  bool? q8,
  bool? q9,
  bool? q10,
  bool? q11,
  bool? q12,
  bool? q13,
  bool? q14,
  bool? q15,
  bool? q16,
  bool? q17,
  bool? q18,
  bool? q19,
  bool? q20,
  bool? q21,
  bool? q22,
  bool? q23,
  DateTime? data,
  String? q1string,
  String? q2string,
  String? q3string,
  String? q7string,
  String? q4string,
  String? q5string,
  String? q6string,
  String? q8string,
  String? q9string,
  String? q10string,
  String? q11string,
  String? q12string,
  String? q13string,
  String? q14string,
  String? q15string,
  String? q16string,
  String? q17string,
  String? q18string,
  String? q19string,
  String? q20string,
  String? q21string,
  String? q22string,
  String? q23string,
}) {
  final firestoreData = serializers.toFirestore(
    MChatRecord.serializer,
    MChatRecord(
      (m) => m
        ..paciente = paciente
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
        ..q16 = q16
        ..q17 = q17
        ..q18 = q18
        ..q19 = q19
        ..q20 = q20
        ..q21 = q21
        ..q22 = q22
        ..q23 = q23
        ..data = data
        ..q1string = q1string
        ..q2string = q2string
        ..q3string = q3string
        ..q7string = q7string
        ..q4string = q4string
        ..q5string = q5string
        ..q6string = q6string
        ..q8string = q8string
        ..q9string = q9string
        ..q10string = q10string
        ..q11string = q11string
        ..q12string = q12string
        ..q13string = q13string
        ..q14string = q14string
        ..q15string = q15string
        ..q16string = q16string
        ..q17string = q17string
        ..q18string = q18string
        ..q19string = q19string
        ..q20string = q20string
        ..q21string = q21string
        ..q22string = q22string
        ..q23string = q23string,
    ),
  );

  return firestoreData;
}

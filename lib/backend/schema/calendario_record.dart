import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calendario_record.g.dart';

abstract class CalendarioRecord
    implements Built<CalendarioRecord, CalendarioRecordBuilder> {
  static Serializer<CalendarioRecord> get serializer =>
      _$calendarioRecordSerializer;

  String? get anostring;

  bool? get concluido;

  String? get mesnomestring;

  DocumentReference? get user;

  String? get diadasemana;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CalendarioRecordBuilder builder) => builder
    ..anostring = ''
    ..concluido = false
    ..mesnomestring = ''
    ..diadasemana = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calendario');

  static Stream<CalendarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CalendarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CalendarioRecord._();
  factory CalendarioRecord([void Function(CalendarioRecordBuilder) updates]) =
      _$CalendarioRecord;

  static CalendarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCalendarioRecordData({
  String? anostring,
  bool? concluido,
  String? mesnomestring,
  DocumentReference? user,
  String? diadasemana,
}) {
  final firestoreData = serializers.toFirestore(
    CalendarioRecord.serializer,
    CalendarioRecord(
      (c) => c
        ..anostring = anostring
        ..concluido = concluido
        ..mesnomestring = mesnomestring
        ..user = user
        ..diadasemana = diadasemana,
    ),
  );

  return firestoreData;
}

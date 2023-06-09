import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dates_record.g.dart';

abstract class DatesRecord implements Built<DatesRecord, DatesRecordBuilder> {
  static Serializer<DatesRecord> get serializer => _$datesRecordSerializer;

  DateTime? get startTime;

  String? get referencia;

  String? get subject;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatesRecordBuilder builder) => builder
    ..referencia = ''
    ..subject = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dates');

  static Stream<DatesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatesRecord._();
  factory DatesRecord([void Function(DatesRecordBuilder) updates]) =
      _$DatesRecord;

  static DatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatesRecordData({
  DateTime? startTime,
  String? referencia,
  String? subject,
}) {
  final firestoreData = serializers.toFirestore(
    DatesRecord.serializer,
    DatesRecord(
      (d) => d
        ..startTime = startTime
        ..referencia = referencia
        ..subject = subject,
    ),
  );

  return firestoreData;
}

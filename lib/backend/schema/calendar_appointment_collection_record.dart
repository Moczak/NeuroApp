import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calendar_appointment_collection_record.g.dart';

abstract class CalendarAppointmentCollectionRecord
    implements
        Built<CalendarAppointmentCollectionRecord,
            CalendarAppointmentCollectionRecordBuilder> {
  static Serializer<CalendarAppointmentCollectionRecord> get serializer =>
      _$calendarAppointmentCollectionRecordSerializer;

  @BuiltValueField(wireName: 'Subject')
  String? get subject;

  @BuiltValueField(wireName: 'StartTime')
  String? get startTime;

  @BuiltValueField(wireName: 'EndTime')
  String? get endTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(
          CalendarAppointmentCollectionRecordBuilder builder) =>
      builder
        ..subject = ''
        ..startTime = ''
        ..endTime = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CalendarAppointmentCollection');

  static Stream<CalendarAppointmentCollectionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CalendarAppointmentCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CalendarAppointmentCollectionRecord._();
  factory CalendarAppointmentCollectionRecord(
          [void Function(CalendarAppointmentCollectionRecordBuilder) updates]) =
      _$CalendarAppointmentCollectionRecord;

  static CalendarAppointmentCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCalendarAppointmentCollectionRecordData({
  String? subject,
  String? startTime,
  String? endTime,
}) {
  final firestoreData = serializers.toFirestore(
    CalendarAppointmentCollectionRecord.serializer,
    CalendarAppointmentCollectionRecord(
      (c) => c
        ..subject = subject
        ..startTime = startTime
        ..endTime = endTime,
    ),
  );

  return firestoreData;
}

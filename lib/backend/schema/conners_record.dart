import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'conners_record.g.dart';

abstract class ConnersRecord
    implements Built<ConnersRecord, ConnersRecordBuilder> {
  static Serializer<ConnersRecord> get serializer => _$connersRecordSerializer;

  DocumentReference? get paciente;

  DateTime? get data;

  bool? get cricouparaescola;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ConnersRecordBuilder builder) =>
      builder..cricouparaescola = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conners');

  static Stream<ConnersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConnersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConnersRecord._();
  factory ConnersRecord([void Function(ConnersRecordBuilder) updates]) =
      _$ConnersRecord;

  static ConnersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConnersRecordData({
  DocumentReference? paciente,
  DateTime? data,
  bool? cricouparaescola,
}) {
  final firestoreData = serializers.toFirestore(
    ConnersRecord.serializer,
    ConnersRecord(
      (c) => c
        ..paciente = paciente
        ..data = data
        ..cricouparaescola = cricouparaescola,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'asrs18_record.g.dart';

abstract class Asrs18Record
    implements Built<Asrs18Record, Asrs18RecordBuilder> {
  static Serializer<Asrs18Record> get serializer => _$asrs18RecordSerializer;

  DocumentReference? get paciente;

  DateTime? get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(Asrs18RecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ASRS18');

  static Stream<Asrs18Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Asrs18Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Asrs18Record._();
  factory Asrs18Record([void Function(Asrs18RecordBuilder) updates]) =
      _$Asrs18Record;

  static Asrs18Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAsrs18RecordData({
  DocumentReference? paciente,
  DateTime? data,
}) {
  final firestoreData = serializers.toFirestore(
    Asrs18Record.serializer,
    Asrs18Record(
      (a) => a
        ..paciente = paciente
        ..data = data,
    ),
  );

  return firestoreData;
}

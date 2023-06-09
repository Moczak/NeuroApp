import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'autismoremedio_record.g.dart';

abstract class AutismoremedioRecord
    implements Built<AutismoremedioRecord, AutismoremedioRecordBuilder> {
  static Serializer<AutismoremedioRecord> get serializer =>
      _$autismoremedioRecordSerializer;

  String? get titulo;

  String? get descricao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AutismoremedioRecordBuilder builder) => builder
    ..titulo = ''
    ..descricao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('autismoremedio');

  static Stream<AutismoremedioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AutismoremedioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AutismoremedioRecord._();
  factory AutismoremedioRecord(
          [void Function(AutismoremedioRecordBuilder) updates]) =
      _$AutismoremedioRecord;

  static AutismoremedioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAutismoremedioRecordData({
  String? titulo,
  String? descricao,
}) {
  final firestoreData = serializers.toFirestore(
    AutismoremedioRecord.serializer,
    AutismoremedioRecord(
      (a) => a
        ..titulo = titulo
        ..descricao = descricao,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'codigodeetica_record.g.dart';

abstract class CodigodeeticaRecord
    implements Built<CodigodeeticaRecord, CodigodeeticaRecordBuilder> {
  static Serializer<CodigodeeticaRecord> get serializer =>
      _$codigodeeticaRecordSerializer;

  String? get capitulo;

  String? get descricao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CodigodeeticaRecordBuilder builder) => builder
    ..capitulo = ''
    ..descricao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('codigodeetica');

  static Stream<CodigodeeticaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CodigodeeticaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CodigodeeticaRecord._();
  factory CodigodeeticaRecord(
          [void Function(CodigodeeticaRecordBuilder) updates]) =
      _$CodigodeeticaRecord;

  static CodigodeeticaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCodigodeeticaRecordData({
  String? capitulo,
  String? descricao,
}) {
  final firestoreData = serializers.toFirestore(
    CodigodeeticaRecord.serializer,
    CodigodeeticaRecord(
      (c) => c
        ..capitulo = capitulo
        ..descricao = descricao,
    ),
  );

  return firestoreData;
}

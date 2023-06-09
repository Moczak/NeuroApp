import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'documentos_record.g.dart';

abstract class DocumentosRecord
    implements Built<DocumentosRecord, DocumentosRecordBuilder> {
  static Serializer<DocumentosRecord> get serializer =>
      _$documentosRecordSerializer;

  DocumentReference? get pacientereferencia;

  String? get pdfurl;

  String? get nomedodocumento;

  bool? get isUpload;

  String? get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DocumentosRecordBuilder builder) => builder
    ..pdfurl = ''
    ..nomedodocumento = ''
    ..isUpload = false
    ..data = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documentos');

  static Stream<DocumentosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DocumentosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DocumentosRecord._();
  factory DocumentosRecord([void Function(DocumentosRecordBuilder) updates]) =
      _$DocumentosRecord;

  static DocumentosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDocumentosRecordData({
  DocumentReference? pacientereferencia,
  String? pdfurl,
  String? nomedodocumento,
  bool? isUpload,
  String? data,
}) {
  final firestoreData = serializers.toFirestore(
    DocumentosRecord.serializer,
    DocumentosRecord(
      (d) => d
        ..pacientereferencia = pacientereferencia
        ..pdfurl = pdfurl
        ..nomedodocumento = nomedodocumento
        ..isUpload = isUpload
        ..data = data,
    ),
  );

  return firestoreData;
}

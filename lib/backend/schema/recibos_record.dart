import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recibos_record.g.dart';

abstract class RecibosRecord
    implements Built<RecibosRecord, RecibosRecordBuilder> {
  static Serializer<RecibosRecord> get serializer => _$recibosRecordSerializer;

  DocumentReference? get sessao;

  String? get urlrecibo;

  DateTime? get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(RecibosRecordBuilder builder) =>
      builder..urlrecibo = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recibos')
          : FirebaseFirestore.instance.collectionGroup('recibos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('recibos').doc();

  static Stream<RecibosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecibosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecibosRecord._();
  factory RecibosRecord([void Function(RecibosRecordBuilder) updates]) =
      _$RecibosRecord;

  static RecibosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecibosRecordData({
  DocumentReference? sessao,
  String? urlrecibo,
  DateTime? data,
}) {
  final firestoreData = serializers.toFirestore(
    RecibosRecord.serializer,
    RecibosRecord(
      (r) => r
        ..sessao = sessao
        ..urlrecibo = urlrecibo
        ..data = data,
    ),
  );

  return firestoreData;
}

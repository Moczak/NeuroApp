import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'receitatotal_record.g.dart';

abstract class ReceitatotalRecord
    implements Built<ReceitatotalRecord, ReceitatotalRecordBuilder> {
  static Serializer<ReceitatotalRecord> get serializer =>
      _$receitatotalRecordSerializer;

  DateTime? get data;

  DocumentReference? get sessao;

  int? get receitaspagasInt;

  double? get receitaspagasDouble;

  DocumentReference? get paciente;

  String? get nomepaciente;

  String? get datastring;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ReceitatotalRecordBuilder builder) => builder
    ..receitaspagasInt = 0
    ..receitaspagasDouble = 0.0
    ..nomepaciente = ''
    ..datastring = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('receitatotal')
          : FirebaseFirestore.instance.collectionGroup('receitatotal');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('receitatotal').doc();

  static Stream<ReceitatotalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReceitatotalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReceitatotalRecord._();
  factory ReceitatotalRecord(
          [void Function(ReceitatotalRecordBuilder) updates]) =
      _$ReceitatotalRecord;

  static ReceitatotalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReceitatotalRecordData({
  DateTime? data,
  DocumentReference? sessao,
  int? receitaspagasInt,
  double? receitaspagasDouble,
  DocumentReference? paciente,
  String? nomepaciente,
  String? datastring,
}) {
  final firestoreData = serializers.toFirestore(
    ReceitatotalRecord.serializer,
    ReceitatotalRecord(
      (r) => r
        ..data = data
        ..sessao = sessao
        ..receitaspagasInt = receitaspagasInt
        ..receitaspagasDouble = receitaspagasDouble
        ..paciente = paciente
        ..nomepaciente = nomepaciente
        ..datastring = datastring,
    ),
  );

  return firestoreData;
}

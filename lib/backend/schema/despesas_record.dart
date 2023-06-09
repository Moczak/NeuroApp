import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'despesas_record.g.dart';

abstract class DespesasRecord
    implements Built<DespesasRecord, DespesasRecordBuilder> {
  static Serializer<DespesasRecord> get serializer =>
      _$despesasRecordSerializer;

  DateTime? get data;

  bool? get fixo;

  int? get valorInt;

  double? get valorDouble;

  String? get titulo;

  bool? get pago;

  String? get descricao;

  int? get diadepagamento;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DespesasRecordBuilder builder) => builder
    ..fixo = false
    ..valorInt = 0
    ..valorDouble = 0.0
    ..titulo = ''
    ..pago = false
    ..descricao = ''
    ..diadepagamento = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('despesas')
          : FirebaseFirestore.instance.collectionGroup('despesas');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('despesas').doc();

  static Stream<DespesasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DespesasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DespesasRecord._();
  factory DespesasRecord([void Function(DespesasRecordBuilder) updates]) =
      _$DespesasRecord;

  static DespesasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDespesasRecordData({
  DateTime? data,
  bool? fixo,
  int? valorInt,
  double? valorDouble,
  String? titulo,
  bool? pago,
  String? descricao,
  int? diadepagamento,
}) {
  final firestoreData = serializers.toFirestore(
    DespesasRecord.serializer,
    DespesasRecord(
      (d) => d
        ..data = data
        ..fixo = fixo
        ..valorInt = valorInt
        ..valorDouble = valorDouble
        ..titulo = titulo
        ..pago = pago
        ..descricao = descricao
        ..diadepagamento = diadepagamento,
    ),
  );

  return firestoreData;
}

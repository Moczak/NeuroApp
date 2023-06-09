import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gmfm_record.g.dart';

abstract class GmfmRecord implements Built<GmfmRecord, GmfmRecordBuilder> {
  static Serializer<GmfmRecord> get serializer => _$gmfmRecordSerializer;

  DocumentReference? get paciente;

  double? get resultadoA;

  double? get resultadoB;

  double? get resultadoC;

  double? get resultadoD;

  double? get resultadoE;

  double? get porcentagemA;

  double? get porcentagemB;

  double? get porcentagemC;

  double? get porcentagemD;

  double? get porcentagemE;

  @BuiltValueField(wireName: 'DATA')
  DateTime? get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GmfmRecordBuilder builder) => builder
    ..resultadoA = 0.0
    ..resultadoB = 0.0
    ..resultadoC = 0.0
    ..resultadoD = 0.0
    ..resultadoE = 0.0
    ..porcentagemA = 0.0
    ..porcentagemB = 0.0
    ..porcentagemC = 0.0
    ..porcentagemD = 0.0
    ..porcentagemE = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gmfm');

  static Stream<GmfmRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GmfmRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GmfmRecord._();
  factory GmfmRecord([void Function(GmfmRecordBuilder) updates]) = _$GmfmRecord;

  static GmfmRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGmfmRecordData({
  DocumentReference? paciente,
  double? resultadoA,
  double? resultadoB,
  double? resultadoC,
  double? resultadoD,
  double? resultadoE,
  double? porcentagemA,
  double? porcentagemB,
  double? porcentagemC,
  double? porcentagemD,
  double? porcentagemE,
  DateTime? data,
}) {
  final firestoreData = serializers.toFirestore(
    GmfmRecord.serializer,
    GmfmRecord(
      (g) => g
        ..paciente = paciente
        ..resultadoA = resultadoA
        ..resultadoB = resultadoB
        ..resultadoC = resultadoC
        ..resultadoD = resultadoD
        ..resultadoE = resultadoE
        ..porcentagemA = porcentagemA
        ..porcentagemB = porcentagemB
        ..porcentagemC = porcentagemC
        ..porcentagemD = porcentagemD
        ..porcentagemE = porcentagemE
        ..data = data,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'instrumentos_record.g.dart';

abstract class InstrumentosRecord
    implements Built<InstrumentosRecord, InstrumentosRecordBuilder> {
  static Serializer<InstrumentosRecord> get serializer =>
      _$instrumentosRecordSerializer;

  String? get categoria;

  @BuiltValueField(wireName: 'RefdoInstrumento')
  String? get refdoInstrumento;

  @BuiltValueField(wireName: 'Faixaetriaindicada')
  String? get faixaetriaindicada;

  @BuiltValueField(wireName: 'Elementosavaliados')
  String? get elementosavaliados;

  String? get nome;

  BuiltList<String>? get categorialista;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InstrumentosRecordBuilder builder) => builder
    ..categoria = ''
    ..refdoInstrumento = ''
    ..faixaetriaindicada = ''
    ..elementosavaliados = ''
    ..nome = ''
    ..categorialista = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('instrumentos');

  static Stream<InstrumentosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InstrumentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InstrumentosRecord._();
  factory InstrumentosRecord(
          [void Function(InstrumentosRecordBuilder) updates]) =
      _$InstrumentosRecord;

  static InstrumentosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInstrumentosRecordData({
  String? categoria,
  String? refdoInstrumento,
  String? faixaetriaindicada,
  String? elementosavaliados,
  String? nome,
}) {
  final firestoreData = serializers.toFirestore(
    InstrumentosRecord.serializer,
    InstrumentosRecord(
      (i) => i
        ..categoria = categoria
        ..refdoInstrumento = refdoInstrumento
        ..faixaetriaindicada = faixaetriaindicada
        ..elementosavaliados = elementosavaliados
        ..nome = nome
        ..categorialista = null,
    ),
  );

  return firestoreData;
}

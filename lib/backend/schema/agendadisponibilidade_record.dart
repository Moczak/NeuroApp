import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agendadisponibilidade_record.g.dart';

abstract class AgendadisponibilidadeRecord
    implements
        Built<AgendadisponibilidadeRecord, AgendadisponibilidadeRecordBuilder> {
  static Serializer<AgendadisponibilidadeRecord> get serializer =>
      _$agendadisponibilidadeRecordSerializer;

  DateTime? get data;

  DateTime? get horario;

  bool? get disponivel;

  String? get nome;

  String? get telefone;

  String? get linkmeet;

  bool? get realizado;

  String? get obs;

  bool? get agendado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(AgendadisponibilidadeRecordBuilder builder) =>
      builder
        ..disponivel = false
        ..nome = ''
        ..telefone = ''
        ..linkmeet = ''
        ..realizado = false
        ..obs = ''
        ..agendado = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('agendadisponibilidade')
          : FirebaseFirestore.instance.collectionGroup('agendadisponibilidade');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('agendadisponibilidade').doc();

  static Stream<AgendadisponibilidadeRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AgendadisponibilidadeRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AgendadisponibilidadeRecord._();
  factory AgendadisponibilidadeRecord(
          [void Function(AgendadisponibilidadeRecordBuilder) updates]) =
      _$AgendadisponibilidadeRecord;

  static AgendadisponibilidadeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAgendadisponibilidadeRecordData({
  DateTime? data,
  DateTime? horario,
  bool? disponivel,
  String? nome,
  String? telefone,
  String? linkmeet,
  bool? realizado,
  String? obs,
  bool? agendado,
}) {
  final firestoreData = serializers.toFirestore(
    AgendadisponibilidadeRecord.serializer,
    AgendadisponibilidadeRecord(
      (a) => a
        ..data = data
        ..horario = horario
        ..disponivel = disponivel
        ..nome = nome
        ..telefone = telefone
        ..linkmeet = linkmeet
        ..realizado = realizado
        ..obs = obs
        ..agendado = agendado,
    ),
  );

  return firestoreData;
}

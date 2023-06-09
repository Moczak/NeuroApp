import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agendapaciente_record.g.dart';

abstract class AgendapacienteRecord
    implements Built<AgendapacienteRecord, AgendapacienteRecordBuilder> {
  static Serializer<AgendapacienteRecord> get serializer =>
      _$agendapacienteRecordSerializer;

  DocumentReference? get paciente;

  String? get nome;

  DateTime? get data;

  DateTime? get horainicial;

  DateTime? get horafinal;

  bool? get realizado;

  bool? get confirmoupresenca;

  DocumentReference? get sessaoreferencia;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(AgendapacienteRecordBuilder builder) => builder
    ..nome = ''
    ..realizado = false
    ..confirmoupresenca = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('agendapaciente')
          : FirebaseFirestore.instance.collectionGroup('agendapaciente');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('agendapaciente').doc();

  static Stream<AgendapacienteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AgendapacienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AgendapacienteRecord._();
  factory AgendapacienteRecord(
          [void Function(AgendapacienteRecordBuilder) updates]) =
      _$AgendapacienteRecord;

  static AgendapacienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAgendapacienteRecordData({
  DocumentReference? paciente,
  String? nome,
  DateTime? data,
  DateTime? horainicial,
  DateTime? horafinal,
  bool? realizado,
  bool? confirmoupresenca,
  DocumentReference? sessaoreferencia,
}) {
  final firestoreData = serializers.toFirestore(
    AgendapacienteRecord.serializer,
    AgendapacienteRecord(
      (a) => a
        ..paciente = paciente
        ..nome = nome
        ..data = data
        ..horainicial = horainicial
        ..horafinal = horafinal
        ..realizado = realizado
        ..confirmoupresenca = confirmoupresenca
        ..sessaoreferencia = sessaoreferencia,
    ),
  );

  return firestoreData;
}

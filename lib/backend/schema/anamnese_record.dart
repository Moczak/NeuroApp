import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anamnese_record.g.dart';

abstract class AnamneseRecord
    implements Built<AnamneseRecord, AnamneseRecordBuilder> {
  static Serializer<AnamneseRecord> get serializer =>
      _$anamneseRecordSerializer;

  DocumentReference? get paciente;

  DateTime? get data;

  String? get questao1;

  String? get questao2;

  String? get questao3;

  String? get questao3quaismedicamentos;

  String? get questao4;

  String? get questao4historiadoapelido;

  String? get questao6;

  String? get questao6algumacrenca;

  String? get questao7;

  String? get questao7quaisdrogas;

  String? get questao8;

  String? get questao8qualprobdevisao;

  @BuiltValueField(wireName: 'questao8-1')
  String? get questao81;

  @BuiltValueField(wireName: 'questao8-1pqusalentescorretivas')
  String? get questao81pqusalentescorretivas;

  String? get questao9;

  String? get questao9qualprobauditivo;

  @BuiltValueField(wireName: 'questao9-1')
  String? get questao91;

  @BuiltValueField(wireName: 'questao9-1qualaparelhoauditivo')
  String? get questao91qualaparelhoauditivo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AnamneseRecordBuilder builder) => builder
    ..questao1 = ''
    ..questao2 = ''
    ..questao3 = ''
    ..questao3quaismedicamentos = ''
    ..questao4 = ''
    ..questao4historiadoapelido = ''
    ..questao6 = ''
    ..questao6algumacrenca = ''
    ..questao7 = ''
    ..questao7quaisdrogas = ''
    ..questao8 = ''
    ..questao8qualprobdevisao = ''
    ..questao81 = ''
    ..questao81pqusalentescorretivas = ''
    ..questao9 = ''
    ..questao9qualprobauditivo = ''
    ..questao91 = ''
    ..questao91qualaparelhoauditivo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anamnese');

  static Stream<AnamneseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AnamneseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AnamneseRecord._();
  factory AnamneseRecord([void Function(AnamneseRecordBuilder) updates]) =
      _$AnamneseRecord;

  static AnamneseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAnamneseRecordData({
  DocumentReference? paciente,
  DateTime? data,
  String? questao1,
  String? questao2,
  String? questao3,
  String? questao3quaismedicamentos,
  String? questao4,
  String? questao4historiadoapelido,
  String? questao6,
  String? questao6algumacrenca,
  String? questao7,
  String? questao7quaisdrogas,
  String? questao8,
  String? questao8qualprobdevisao,
  String? questao81,
  String? questao81pqusalentescorretivas,
  String? questao9,
  String? questao9qualprobauditivo,
  String? questao91,
  String? questao91qualaparelhoauditivo,
}) {
  final firestoreData = serializers.toFirestore(
    AnamneseRecord.serializer,
    AnamneseRecord(
      (a) => a
        ..paciente = paciente
        ..data = data
        ..questao1 = questao1
        ..questao2 = questao2
        ..questao3 = questao3
        ..questao3quaismedicamentos = questao3quaismedicamentos
        ..questao4 = questao4
        ..questao4historiadoapelido = questao4historiadoapelido
        ..questao6 = questao6
        ..questao6algumacrenca = questao6algumacrenca
        ..questao7 = questao7
        ..questao7quaisdrogas = questao7quaisdrogas
        ..questao8 = questao8
        ..questao8qualprobdevisao = questao8qualprobdevisao
        ..questao81 = questao81
        ..questao81pqusalentescorretivas = questao81pqusalentescorretivas
        ..questao9 = questao9
        ..questao9qualprobauditivo = questao9qualprobauditivo
        ..questao91 = questao91
        ..questao91qualaparelhoauditivo = questao91qualaparelhoauditivo,
    ),
  );

  return firestoreData;
}

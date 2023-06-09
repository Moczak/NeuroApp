import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'membrosproximos_record.g.dart';

abstract class MembrosproximosRecord
    implements Built<MembrosproximosRecord, MembrosproximosRecordBuilder> {
  static Serializer<MembrosproximosRecord> get serializer =>
      _$membrosproximosRecordSerializer;

  DocumentReference? get pacienteref;

  String? get nome;

  String? get sexo;

  int? get idade;

  String? get escolaridade;

  String? get ocupacao;

  String? get saude;

  String? get relacao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MembrosproximosRecordBuilder builder) =>
      builder
        ..nome = ''
        ..sexo = ''
        ..idade = 0
        ..escolaridade = ''
        ..ocupacao = ''
        ..saude = ''
        ..relacao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('membrosproximos');

  static Stream<MembrosproximosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MembrosproximosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MembrosproximosRecord._();
  factory MembrosproximosRecord(
          [void Function(MembrosproximosRecordBuilder) updates]) =
      _$MembrosproximosRecord;

  static MembrosproximosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMembrosproximosRecordData({
  DocumentReference? pacienteref,
  String? nome,
  String? sexo,
  int? idade,
  String? escolaridade,
  String? ocupacao,
  String? saude,
  String? relacao,
}) {
  final firestoreData = serializers.toFirestore(
    MembrosproximosRecord.serializer,
    MembrosproximosRecord(
      (m) => m
        ..pacienteref = pacienteref
        ..nome = nome
        ..sexo = sexo
        ..idade = idade
        ..escolaridade = escolaridade
        ..ocupacao = ocupacao
        ..saude = saude
        ..relacao = relacao,
    ),
  );

  return firestoreData;
}

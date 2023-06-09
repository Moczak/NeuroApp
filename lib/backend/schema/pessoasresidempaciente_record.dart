import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pessoasresidempaciente_record.g.dart';

abstract class PessoasresidempacienteRecord
    implements
        Built<PessoasresidempacienteRecord,
            PessoasresidempacienteRecordBuilder> {
  static Serializer<PessoasresidempacienteRecord> get serializer =>
      _$pessoasresidempacienteRecordSerializer;

  DocumentReference? get pacienteref;

  String? get nome;

  String? get sexo;

  int? get idade;

  String? get parentesco;

  String? get escolaridade;

  String? get ocupacao;

  String? get saude;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PessoasresidempacienteRecordBuilder builder) =>
      builder
        ..nome = ''
        ..sexo = ''
        ..idade = 0
        ..parentesco = ''
        ..escolaridade = ''
        ..ocupacao = ''
        ..saude = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pessoasresidempaciente');

  static Stream<PessoasresidempacienteRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PessoasresidempacienteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PessoasresidempacienteRecord._();
  factory PessoasresidempacienteRecord(
          [void Function(PessoasresidempacienteRecordBuilder) updates]) =
      _$PessoasresidempacienteRecord;

  static PessoasresidempacienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPessoasresidempacienteRecordData({
  DocumentReference? pacienteref,
  String? nome,
  String? sexo,
  int? idade,
  String? parentesco,
  String? escolaridade,
  String? ocupacao,
  String? saude,
}) {
  final firestoreData = serializers.toFirestore(
    PessoasresidempacienteRecord.serializer,
    PessoasresidempacienteRecord(
      (p) => p
        ..pacienteref = pacienteref
        ..nome = nome
        ..sexo = sexo
        ..idade = idade
        ..parentesco = parentesco
        ..escolaridade = escolaridade
        ..ocupacao = ocupacao
        ..saude = saude,
    ),
  );

  return firestoreData;
}

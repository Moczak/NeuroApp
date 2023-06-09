import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'neurofarmacologia_record.g.dart';

abstract class NeurofarmacologiaRecord
    implements Built<NeurofarmacologiaRecord, NeurofarmacologiaRecordBuilder> {
  static Serializer<NeurofarmacologiaRecord> get serializer =>
      _$neurofarmacologiaRecordSerializer;

  String? get categoria;

  String? get nome;

  String? get foto;

  String? get descricao;

  String? get principioativo;

  BuiltList<DocumentReference>? get favorito;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NeurofarmacologiaRecordBuilder builder) =>
      builder
        ..categoria = ''
        ..nome = ''
        ..foto = ''
        ..descricao = ''
        ..principioativo = ''
        ..favorito = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('neurofarmacologia');

  static Stream<NeurofarmacologiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NeurofarmacologiaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NeurofarmacologiaRecord._();
  factory NeurofarmacologiaRecord(
          [void Function(NeurofarmacologiaRecordBuilder) updates]) =
      _$NeurofarmacologiaRecord;

  static NeurofarmacologiaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNeurofarmacologiaRecordData({
  String? categoria,
  String? nome,
  String? foto,
  String? descricao,
  String? principioativo,
}) {
  final firestoreData = serializers.toFirestore(
    NeurofarmacologiaRecord.serializer,
    NeurofarmacologiaRecord(
      (n) => n
        ..categoria = categoria
        ..nome = nome
        ..foto = foto
        ..descricao = descricao
        ..principioativo = principioativo
        ..favorito = null,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'noticia_record.g.dart';

abstract class NoticiaRecord
    implements Built<NoticiaRecord, NoticiaRecordBuilder> {
  static Serializer<NoticiaRecord> get serializer => _$noticiaRecordSerializer;

  DocumentReference? get user;

  String? get titulo;

  String? get descricao;

  String? get data;

  String? get imagem;

  DateTime? get datanativa;

  bool? get postOwner;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NoticiaRecordBuilder builder) => builder
    ..titulo = ''
    ..descricao = ''
    ..data = ''
    ..imagem = ''
    ..postOwner = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('noticia');

  static Stream<NoticiaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NoticiaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NoticiaRecord._();
  factory NoticiaRecord([void Function(NoticiaRecordBuilder) updates]) =
      _$NoticiaRecord;

  static NoticiaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNoticiaRecordData({
  DocumentReference? user,
  String? titulo,
  String? descricao,
  String? data,
  String? imagem,
  DateTime? datanativa,
  bool? postOwner,
}) {
  final firestoreData = serializers.toFirestore(
    NoticiaRecord.serializer,
    NoticiaRecord(
      (n) => n
        ..user = user
        ..titulo = titulo
        ..descricao = descricao
        ..data = data
        ..imagem = imagem
        ..datanativa = datanativa
        ..postOwner = postOwner,
    ),
  );

  return firestoreData;
}

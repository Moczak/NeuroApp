import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  DateTime? get datapostagem;

  bool? get foipostado;

  String? get tema;

  String? get diadasemana;

  String? get hashtags;

  String? get descricaopost;

  String? get nomedodiadasemana;

  String? get link;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..foipostado = false
    ..tema = ''
    ..diadasemana = ''
    ..hashtags = ''
    ..descricaopost = ''
    ..nomedodiadasemana = ''
    ..link = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('posts')
          : FirebaseFirestore.instance.collectionGroup('posts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('posts').doc();

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostsRecordData({
  DateTime? datapostagem,
  bool? foipostado,
  String? tema,
  String? diadasemana,
  String? hashtags,
  String? descricaopost,
  String? nomedodiadasemana,
  String? link,
}) {
  final firestoreData = serializers.toFirestore(
    PostsRecord.serializer,
    PostsRecord(
      (p) => p
        ..datapostagem = datapostagem
        ..foipostado = foipostado
        ..tema = tema
        ..diadasemana = diadasemana
        ..hashtags = hashtags
        ..descricaopost = descricaopost
        ..nomedodiadasemana = nomedodiadasemana
        ..link = link,
    ),
  );

  return firestoreData;
}

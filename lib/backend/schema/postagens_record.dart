import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'postagens_record.g.dart';

abstract class PostagensRecord
    implements Built<PostagensRecord, PostagensRecordBuilder> {
  static Serializer<PostagensRecord> get serializer =>
      _$postagensRecordSerializer;

  @BuiltValueField(wireName: 'post_user')
  DocumentReference? get postUser;

  @BuiltValueField(wireName: 'post_photo')
  String? get postPhoto;

  @BuiltValueField(wireName: 'time_posted')
  DateTime? get timePosted;

  BuiltList<DocumentReference>? get likes;

  @BuiltValueField(wireName: 'post_caption')
  String? get postCaption;

  bool? get addimagem;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostagensRecordBuilder builder) => builder
    ..postPhoto = ''
    ..likes = ListBuilder()
    ..postCaption = ''
    ..addimagem = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('postagens');

  static Stream<PostagensRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostagensRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostagensRecord._();
  factory PostagensRecord([void Function(PostagensRecordBuilder) updates]) =
      _$PostagensRecord;

  static PostagensRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostagensRecordData({
  DocumentReference? postUser,
  String? postPhoto,
  DateTime? timePosted,
  String? postCaption,
  bool? addimagem,
}) {
  final firestoreData = serializers.toFirestore(
    PostagensRecord.serializer,
    PostagensRecord(
      (p) => p
        ..postUser = postUser
        ..postPhoto = postPhoto
        ..timePosted = timePosted
        ..likes = null
        ..postCaption = postCaption
        ..addimagem = addimagem,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comentario_post_record.g.dart';

abstract class ComentarioPostRecord
    implements Built<ComentarioPostRecord, ComentarioPostRecordBuilder> {
  static Serializer<ComentarioPostRecord> get serializer =>
      _$comentarioPostRecordSerializer;

  DateTime? get data;

  String? get comentario;

  DocumentReference? get user;

  DocumentReference? get post;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComentarioPostRecordBuilder builder) =>
      builder..comentario = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comentarioPost');

  static Stream<ComentarioPostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComentarioPostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComentarioPostRecord._();
  factory ComentarioPostRecord(
          [void Function(ComentarioPostRecordBuilder) updates]) =
      _$ComentarioPostRecord;

  static ComentarioPostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComentarioPostRecordData({
  DateTime? data,
  String? comentario,
  DocumentReference? user,
  DocumentReference? post,
}) {
  final firestoreData = serializers.toFirestore(
    ComentarioPostRecord.serializer,
    ComentarioPostRecord(
      (c) => c
        ..data = data
        ..comentario = comentario
        ..user = user
        ..post = post,
    ),
  );

  return firestoreData;
}

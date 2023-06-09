import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videos_record.g.dart';

abstract class VideosRecord
    implements Built<VideosRecord, VideosRecordBuilder> {
  static Serializer<VideosRecord> get serializer => _$videosRecordSerializer;

  String? get professor;

  String? get titulo;

  String? get descricao;

  String? get tempo;

  String? get thumb;

  String? get videourl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideosRecordBuilder builder) => builder
    ..professor = ''
    ..titulo = ''
    ..descricao = ''
    ..tempo = ''
    ..thumb = ''
    ..videourl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideosRecord._();
  factory VideosRecord([void Function(VideosRecordBuilder) updates]) =
      _$VideosRecord;

  static VideosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideosRecordData({
  String? professor,
  String? titulo,
  String? descricao,
  String? tempo,
  String? thumb,
  String? videourl,
}) {
  final firestoreData = serializers.toFirestore(
    VideosRecord.serializer,
    VideosRecord(
      (v) => v
        ..professor = professor
        ..titulo = titulo
        ..descricao = descricao
        ..tempo = tempo
        ..thumb = thumb
        ..videourl = videourl,
    ),
  );

  return firestoreData;
}

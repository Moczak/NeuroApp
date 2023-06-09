import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notificacao_record.g.dart';

abstract class NotificacaoRecord
    implements Built<NotificacaoRecord, NotificacaoRecordBuilder> {
  static Serializer<NotificacaoRecord> get serializer =>
      _$notificacaoRecordSerializer;

  String? get titulo;

  DateTime? get data;

  bool? get lida;

  String? get descricao;

  String? get referencia;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(NotificacaoRecordBuilder builder) => builder
    ..titulo = ''
    ..lida = false
    ..descricao = ''
    ..referencia = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notificacao')
          : FirebaseFirestore.instance.collectionGroup('notificacao');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('notificacao').doc();

  static Stream<NotificacaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificacaoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificacaoRecord._();
  factory NotificacaoRecord([void Function(NotificacaoRecordBuilder) updates]) =
      _$NotificacaoRecord;

  static NotificacaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificacaoRecordData({
  String? titulo,
  DateTime? data,
  bool? lida,
  String? descricao,
  String? referencia,
}) {
  final firestoreData = serializers.toFirestore(
    NotificacaoRecord.serializer,
    NotificacaoRecord(
      (n) => n
        ..titulo = titulo
        ..data = data
        ..lida = lida
        ..descricao = descricao
        ..referencia = referencia,
    ),
  );

  return firestoreData;
}

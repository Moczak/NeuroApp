import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'estruturaraltecnico_record.g.dart';

abstract class EstruturaraltecnicoRecord
    implements
        Built<EstruturaraltecnicoRecord, EstruturaraltecnicoRecordBuilder> {
  static Serializer<EstruturaraltecnicoRecord> get serializer =>
      _$estruturaraltecnicoRecordSerializer;

  String? get titulo;

  String? get descricao1;

  String? get descricao2;

  String? get brevedescricao;

  String? get conclusao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EstruturaraltecnicoRecordBuilder builder) =>
      builder
        ..titulo = ''
        ..descricao1 = ''
        ..descricao2 = ''
        ..brevedescricao = ''
        ..conclusao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estruturaraltecnico');

  static Stream<EstruturaraltecnicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EstruturaraltecnicoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EstruturaraltecnicoRecord._();
  factory EstruturaraltecnicoRecord(
          [void Function(EstruturaraltecnicoRecordBuilder) updates]) =
      _$EstruturaraltecnicoRecord;

  static EstruturaraltecnicoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEstruturaraltecnicoRecordData({
  String? titulo,
  String? descricao1,
  String? descricao2,
  String? brevedescricao,
  String? conclusao,
}) {
  final firestoreData = serializers.toFirestore(
    EstruturaraltecnicoRecord.serializer,
    EstruturaraltecnicoRecord(
      (e) => e
        ..titulo = titulo
        ..descricao1 = descricao1
        ..descricao2 = descricao2
        ..brevedescricao = brevedescricao
        ..conclusao = conclusao,
    ),
  );

  return firestoreData;
}

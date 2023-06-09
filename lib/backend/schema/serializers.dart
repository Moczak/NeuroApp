import 'package:built_value/standard_json_plugin.dart';
import 'package:from_css_color/from_css_color.dart';

import 'users_record.dart';
import 'anamnese_record.dart';
import 'paciente_record.dart';
import 'neurofarmacologia_record.dart';
import 'alunoscensupeg_record.dart';
import 'politicadeprivacidade_record.dart';
import 'noticia_record.dart';
import 'dicas_record.dart';
import 'sindromesepilpticas_record.dart';
import 'codigodeetica_record.dart';
import 'videos_record.dart';
import 'documentos_record.dart';
import 'ran_record.dart';
import 'estruturaraltecnico_record.dart';
import 'gmfm_record.dart';
import 'autismoremedio_record.dart';
import 'modelo_ran_record.dart';
import 'sessao_record.dart';
import 'receitatotal_record.dart';
import 'despesas_record.dart';
import 'm_chat_record.dart';
import 'itenscriticos_record.dart';
import 'total_record.dart';
import 'contrato_record.dart';
import 'recibos_record.dart';
import 'asrs18_record.dart';
import 'parte_a_record.dart';
import 'parte_b_record.dart';
import 'conners_record.dart';
import 'para_pais_record.dart';
import 'para_escola_record.dart';
import 'notificacao_record.dart';
import 'instrumento_record.dart';
import 'precificacao_record.dart';
import 'persona_record.dart';
import 'leads_record.dart';
import 'chats_record.dart';
import 'chat_messages_record.dart';
import 'calendario_record.dart';
import 'posts_record.dart';
import 'postagens_record.dart';
import 'comentario_post_record.dart';
import 'followers_record.dart';
import 'agendadisponibilidade_record.dart';
import 'agendapaciente_record.dart';
import 'pessoasresidempaciente_record.dart';
import 'membrosproximos_record.dart';
import 'instrumentos_record.dart';
import 'categoria_record.dart';
import 'calendar_appointment_collection_record.dart';
import 'dates_record.dart';

import 'index.dart';

export 'index.dart';

part 'serializers.g.dart';

const kDocumentReferenceField = 'Document__Reference__Field';

@SerializersFor(const [
  UsersRecord,
  AnamneseRecord,
  PacienteRecord,
  NeurofarmacologiaRecord,
  AlunoscensupegRecord,
  PoliticadeprivacidadeRecord,
  NoticiaRecord,
  DicasRecord,
  SindromesepilpticasRecord,
  CodigodeeticaRecord,
  VideosRecord,
  DocumentosRecord,
  RanRecord,
  EstruturaraltecnicoRecord,
  GmfmRecord,
  AutismoremedioRecord,
  ModeloRanRecord,
  SessaoRecord,
  ReceitatotalRecord,
  DespesasRecord,
  MChatRecord,
  ItenscriticosRecord,
  TotalRecord,
  ContratoRecord,
  RecibosRecord,
  Asrs18Record,
  ParteARecord,
  ParteBRecord,
  ConnersRecord,
  ParaPaisRecord,
  ParaEscolaRecord,
  NotificacaoRecord,
  InstrumentoRecord,
  PrecificacaoRecord,
  PersonaRecord,
  LeadsRecord,
  ChatsRecord,
  ChatMessagesRecord,
  CalendarioRecord,
  PostsRecord,
  PostagensRecord,
  ComentarioPostRecord,
  FollowersRecord,
  AgendadisponibilidadeRecord,
  AgendapacienteRecord,
  PessoasresidempacienteRecord,
  MembrosproximosRecord,
  InstrumentosRecord,
  CategoriaRecord,
  CalendarAppointmentCollectionRecord,
  DatesRecord,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DocumentReferenceSerializer())
      ..add(DateTimeSerializer())
      ..add(LatLngSerializer())
      ..add(FirestoreUtilDataSerializer())
      ..add(ColorSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

extension SerializerExtensions on Serializers {
  Map<String, dynamic> toFirestore<T>(Serializer<T> serializer, T object) =>
      mapToFirestore(serializeWith(serializer, object) as Map<String, dynamic>);
}

class DocumentReferenceSerializer
    implements PrimitiveSerializer<DocumentReference> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DocumentReference]);
  @override
  final String wireName = 'DocumentReference';

  @override
  Object serialize(Serializers serializers, DocumentReference reference,
      {FullType specifiedType: FullType.unspecified}) {
    return reference;
  }

  @override
  DocumentReference deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DocumentReference;
}

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType: FullType.unspecified}) {
    return dateTime;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DateTime;
}

class LatLngSerializer implements PrimitiveSerializer<LatLng> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([LatLng]);
  @override
  final String wireName = 'LatLng';

  @override
  Object serialize(Serializers serializers, LatLng location,
      {FullType specifiedType: FullType.unspecified}) {
    return location;
  }

  @override
  LatLng deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as LatLng;
}

class FirestoreUtilData {
  const FirestoreUtilData({
    this.fieldValues = const {},
    this.clearUnsetFields = true,
    this.create = false,
    this.delete = false,
  });
  final Map<String, dynamic> fieldValues;
  final bool clearUnsetFields;
  final bool create;
  final bool delete;
  static String get name => 'firestoreUtilData';
}

class FirestoreUtilDataSerializer
    implements PrimitiveSerializer<FirestoreUtilData> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([FirestoreUtilData]);
  @override
  final String wireName = 'FirestoreUtilData';

  @override
  Object serialize(Serializers serializers, FirestoreUtilData firestoreUtilData,
      {FullType specifiedType: FullType.unspecified}) {
    return firestoreUtilData;
  }

  @override
  FirestoreUtilData deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as FirestoreUtilData;
}

class ColorSerializer implements PrimitiveSerializer<Color> {
  @override
  final Iterable<Type> types = new BuiltList<Type>([Color]);
  @override
  final String wireName = 'Color';

  @override
  Object serialize(Serializers serializers, Color color,
      {FullType specifiedType: FullType.unspecified}) {
    return color.toCssString();
  }

  @override
  Color deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      fromCssColor(serialized as String);
}

Map<String, dynamic> serializedData(DocumentSnapshot doc) => {
      ...mapFromFirestore(doc.data() as Map<String, dynamic>),
      kDocumentReferenceField: doc.reference
    };

Map<String, dynamic> mapFromFirestore(Map<String, dynamic> data) =>
    mergeNestedFields(data)
        .where((k, _) => k != FirestoreUtilData.name)
        .map((key, value) {
      // Handle Timestamp
      if (value is Timestamp) {
        value = value.toDate();
      }
      // Handle list of Timestamp
      if (value is Iterable && value.isNotEmpty && value.first is Timestamp) {
        value = value.map((v) => (v as Timestamp).toDate()).toList();
      }
      // Handle GeoPoint
      if (value is GeoPoint) {
        value = value.toLatLng();
      }
      // Handle list of GeoPoint
      if (value is Iterable && value.isNotEmpty && value.first is GeoPoint) {
        value = value.map((v) => (v as GeoPoint).toLatLng()).toList();
      }
      // Handle nested data.
      if (value is Map) {
        value = mapFromFirestore(value as Map<String, dynamic>);
      }
      // Handle list of nested data.
      if (value is Iterable && value.isNotEmpty && value.first is Map) {
        value = value
            .map((v) => mapFromFirestore(v as Map<String, dynamic>))
            .toList();
      }
      return MapEntry(key, value);
    });

Map<String, dynamic> mapToFirestore(Map<String, dynamic> data) =>
    data.where((k, v) => k != FirestoreUtilData.name).map((key, value) {
      // Handle GeoPoint
      if (value is LatLng) {
        value = value.toGeoPoint();
      }
      // Handle list of GeoPoint
      if (value is Iterable && value.isNotEmpty && value.first is LatLng) {
        value = value.map((v) => (v as LatLng).toGeoPoint()).toList();
      }
      // Handle nested data.
      if (value is Map) {
        value = mapFromFirestore(value as Map<String, dynamic>);
      }
      // Handle list of nested data.
      if (value is Iterable && value.isNotEmpty && value.first is Map) {
        value = value
            .map((v) => mapFromFirestore(v as Map<String, dynamic>))
            .toList();
      }
      return MapEntry(key, value);
    });

List<GeoPoint>? convertToGeoPointList(List<LatLng>? list) =>
    list?.map((e) => e.toGeoPoint()).toList();

extension GeoPointExtension on LatLng {
  GeoPoint toGeoPoint() => GeoPoint(latitude, longitude);
}

extension LatLngExtension on GeoPoint {
  LatLng toLatLng() => LatLng(latitude, longitude);
}

DocumentReference toRef(String ref) => FirebaseFirestore.instance.doc(ref);

T? safeGet<T>(T Function() func, [Function(dynamic)? reportError]) {
  try {
    return func();
  } catch (e) {
    reportError?.call(e);
  }
  return null;
}

Map<String, dynamic> mergeNestedFields(Map<String, dynamic> data) {
  final nestedData = data.where((k, _) => k.contains('.'));
  final fieldNames = nestedData.keys.map((k) => k.split('.').first).toSet();
  // Remove nested values (e.g. 'foo.bar') and merge them into a map.
  data.removeWhere((k, _) => k.contains('.'));
  fieldNames.forEach((name) {
    final mergedValues = mergeNestedFields(
      nestedData
          .where((k, _) => k.split('.').first == name)
          .map((k, v) => MapEntry(k.split('.').skip(1).join('.'), v)),
    );
    final existingValue = data[name];
    data[name] = {
      if (existingValue != null && existingValue is Map)
        ...existingValue as Map<String, dynamic>,
      ...mergedValues,
    };
  });
  // Merge any nested maps inside any of the fields as well.
  data.where((_, v) => v is Map).forEach((k, v) {
    data[k] = mergeNestedFields(v as Map<String, dynamic>);
  });

  return data;
}

extension _WhereMapExtension<K, V> on Map<K, V> {
  Map<K, V> where(bool Function(K, V) test) =>
      Map.fromEntries(entries.where((e) => test(e.key, e.value)));
}

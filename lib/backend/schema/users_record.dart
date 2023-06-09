import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get state;

  String? get city;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  bool? get isAdmin;

  bool? get isAluno;

  @BuiltValueField(wireName: 'CompletouPerfil')
  bool? get completouPerfil;

  String? get logotipo;

  String? get endereco;

  String? get profissao;

  double? get faturamentoMinimo;

  double? get metaFaturamento;

  String? get sobrenome;

  int? get pontos;

  bool? get aceitoucomunidade;

  BuiltList<DocumentReference>? get following;

  bool? get mostraremail;

  bool? get mostrartelefone;

  String? get assinatura;

  String? get cpf;

  String? get statusunimestre;

  String? get idclientestripe;

  String? get idassinaturastripe;

  String? get statusassinaturastripe;

  String? get nomedoplano;

  bool? get gerouassinatura;

  String? get priveID;

  bool? get assinaturaativa;

  @BuiltValueField(wireName: 'comprou-m-chat')
  bool? get comprouMChat;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..state = ''
    ..city = ''
    ..phoneNumber = ''
    ..isAdmin = false
    ..isAluno = false
    ..completouPerfil = false
    ..logotipo = ''
    ..endereco = ''
    ..profissao = ''
    ..faturamentoMinimo = 0.0
    ..metaFaturamento = 0.0
    ..sobrenome = ''
    ..pontos = 0
    ..aceitoucomunidade = false
    ..following = ListBuilder()
    ..mostraremail = false
    ..mostrartelefone = false
    ..assinatura = ''
    ..cpf = ''
    ..statusunimestre = ''
    ..idclientestripe = ''
    ..idassinaturastripe = ''
    ..statusassinaturastripe = ''
    ..nomedoplano = ''
    ..gerouassinatura = false
    ..priveID = ''
    ..assinaturaativa = false
    ..comprouMChat = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? state,
  String? city,
  String? phoneNumber,
  bool? isAdmin,
  bool? isAluno,
  bool? completouPerfil,
  String? logotipo,
  String? endereco,
  String? profissao,
  double? faturamentoMinimo,
  double? metaFaturamento,
  String? sobrenome,
  int? pontos,
  bool? aceitoucomunidade,
  bool? mostraremail,
  bool? mostrartelefone,
  String? assinatura,
  String? cpf,
  String? statusunimestre,
  String? idclientestripe,
  String? idassinaturastripe,
  String? statusassinaturastripe,
  String? nomedoplano,
  bool? gerouassinatura,
  String? priveID,
  bool? assinaturaativa,
  bool? comprouMChat,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..state = state
        ..city = city
        ..phoneNumber = phoneNumber
        ..isAdmin = isAdmin
        ..isAluno = isAluno
        ..completouPerfil = completouPerfil
        ..logotipo = logotipo
        ..endereco = endereco
        ..profissao = profissao
        ..faturamentoMinimo = faturamentoMinimo
        ..metaFaturamento = metaFaturamento
        ..sobrenome = sobrenome
        ..pontos = pontos
        ..aceitoucomunidade = aceitoucomunidade
        ..following = null
        ..mostraremail = mostraremail
        ..mostrartelefone = mostrartelefone
        ..assinatura = assinatura
        ..cpf = cpf
        ..statusunimestre = statusunimestre
        ..idclientestripe = idclientestripe
        ..idassinaturastripe = idassinaturastripe
        ..statusassinaturastripe = statusassinaturastripe
        ..nomedoplano = nomedoplano
        ..gerouassinatura = gerouassinatura
        ..priveID = priveID
        ..assinaturaativa = assinaturaativa
        ..comprouMChat = comprouMChat,
    ),
  );

  return firestoreData;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAluno;
    if (value != null) {
      result
        ..add('isAluno')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.completouPerfil;
    if (value != null) {
      result
        ..add('CompletouPerfil')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.logotipo;
    if (value != null) {
      result
        ..add('logotipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endereco;
    if (value != null) {
      result
        ..add('endereco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profissao;
    if (value != null) {
      result
        ..add('profissao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.faturamentoMinimo;
    if (value != null) {
      result
        ..add('faturamentoMinimo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.metaFaturamento;
    if (value != null) {
      result
        ..add('metaFaturamento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.sobrenome;
    if (value != null) {
      result
        ..add('sobrenome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pontos;
    if (value != null) {
      result
        ..add('pontos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aceitoucomunidade;
    if (value != null) {
      result
        ..add('aceitoucomunidade')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.following;
    if (value != null) {
      result
        ..add('following')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.mostraremail;
    if (value != null) {
      result
        ..add('mostraremail')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mostrartelefone;
    if (value != null) {
      result
        ..add('mostrartelefone')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.assinatura;
    if (value != null) {
      result
        ..add('assinatura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpf;
    if (value != null) {
      result
        ..add('cpf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusunimestre;
    if (value != null) {
      result
        ..add('statusunimestre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idclientestripe;
    if (value != null) {
      result
        ..add('idclientestripe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idassinaturastripe;
    if (value != null) {
      result
        ..add('idassinaturastripe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusassinaturastripe;
    if (value != null) {
      result
        ..add('statusassinaturastripe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomedoplano;
    if (value != null) {
      result
        ..add('nomedoplano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gerouassinatura;
    if (value != null) {
      result
        ..add('gerouassinatura')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.priveID;
    if (value != null) {
      result
        ..add('priveID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assinaturaativa;
    if (value != null) {
      result
        ..add('assinaturaativa')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.comprouMChat;
    if (value != null) {
      result
        ..add('comprou-m-chat')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isAluno':
          result.isAluno = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'CompletouPerfil':
          result.completouPerfil = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'logotipo':
          result.logotipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endereco':
          result.endereco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profissao':
          result.profissao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'faturamentoMinimo':
          result.faturamentoMinimo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'metaFaturamento':
          result.metaFaturamento = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'sobrenome':
          result.sobrenome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pontos':
          result.pontos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'aceitoucomunidade':
          result.aceitoucomunidade = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'following':
          result.following.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'mostraremail':
          result.mostraremail = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'mostrartelefone':
          result.mostrartelefone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'assinatura':
          result.assinatura = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpf':
          result.cpf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statusunimestre':
          result.statusunimestre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idclientestripe':
          result.idclientestripe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idassinaturastripe':
          result.idassinaturastripe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statusassinaturastripe':
          result.statusassinaturastripe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedoplano':
          result.nomedoplano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gerouassinatura':
          result.gerouassinatura = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'priveID':
          result.priveID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'assinaturaativa':
          result.assinaturaativa = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'comprou-m-chat':
          result.comprouMChat = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? state;
  @override
  final String? city;
  @override
  final String? phoneNumber;
  @override
  final bool? isAdmin;
  @override
  final bool? isAluno;
  @override
  final bool? completouPerfil;
  @override
  final String? logotipo;
  @override
  final String? endereco;
  @override
  final String? profissao;
  @override
  final double? faturamentoMinimo;
  @override
  final double? metaFaturamento;
  @override
  final String? sobrenome;
  @override
  final int? pontos;
  @override
  final bool? aceitoucomunidade;
  @override
  final BuiltList<DocumentReference<Object?>>? following;
  @override
  final bool? mostraremail;
  @override
  final bool? mostrartelefone;
  @override
  final String? assinatura;
  @override
  final String? cpf;
  @override
  final String? statusunimestre;
  @override
  final String? idclientestripe;
  @override
  final String? idassinaturastripe;
  @override
  final String? statusassinaturastripe;
  @override
  final String? nomedoplano;
  @override
  final bool? gerouassinatura;
  @override
  final String? priveID;
  @override
  final bool? assinaturaativa;
  @override
  final bool? comprouMChat;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.state,
      this.city,
      this.phoneNumber,
      this.isAdmin,
      this.isAluno,
      this.completouPerfil,
      this.logotipo,
      this.endereco,
      this.profissao,
      this.faturamentoMinimo,
      this.metaFaturamento,
      this.sobrenome,
      this.pontos,
      this.aceitoucomunidade,
      this.following,
      this.mostraremail,
      this.mostrartelefone,
      this.assinatura,
      this.cpf,
      this.statusunimestre,
      this.idclientestripe,
      this.idassinaturastripe,
      this.statusassinaturastripe,
      this.nomedoplano,
      this.gerouassinatura,
      this.priveID,
      this.assinaturaativa,
      this.comprouMChat,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        state == other.state &&
        city == other.city &&
        phoneNumber == other.phoneNumber &&
        isAdmin == other.isAdmin &&
        isAluno == other.isAluno &&
        completouPerfil == other.completouPerfil &&
        logotipo == other.logotipo &&
        endereco == other.endereco &&
        profissao == other.profissao &&
        faturamentoMinimo == other.faturamentoMinimo &&
        metaFaturamento == other.metaFaturamento &&
        sobrenome == other.sobrenome &&
        pontos == other.pontos &&
        aceitoucomunidade == other.aceitoucomunidade &&
        following == other.following &&
        mostraremail == other.mostraremail &&
        mostrartelefone == other.mostrartelefone &&
        assinatura == other.assinatura &&
        cpf == other.cpf &&
        statusunimestre == other.statusunimestre &&
        idclientestripe == other.idclientestripe &&
        idassinaturastripe == other.idassinaturastripe &&
        statusassinaturastripe == other.statusassinaturastripe &&
        nomedoplano == other.nomedoplano &&
        gerouassinatura == other.gerouassinatura &&
        priveID == other.priveID &&
        assinaturaativa == other.assinaturaativa &&
        comprouMChat == other.comprouMChat &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, isAluno.hashCode);
    _$hash = $jc(_$hash, completouPerfil.hashCode);
    _$hash = $jc(_$hash, logotipo.hashCode);
    _$hash = $jc(_$hash, endereco.hashCode);
    _$hash = $jc(_$hash, profissao.hashCode);
    _$hash = $jc(_$hash, faturamentoMinimo.hashCode);
    _$hash = $jc(_$hash, metaFaturamento.hashCode);
    _$hash = $jc(_$hash, sobrenome.hashCode);
    _$hash = $jc(_$hash, pontos.hashCode);
    _$hash = $jc(_$hash, aceitoucomunidade.hashCode);
    _$hash = $jc(_$hash, following.hashCode);
    _$hash = $jc(_$hash, mostraremail.hashCode);
    _$hash = $jc(_$hash, mostrartelefone.hashCode);
    _$hash = $jc(_$hash, assinatura.hashCode);
    _$hash = $jc(_$hash, cpf.hashCode);
    _$hash = $jc(_$hash, statusunimestre.hashCode);
    _$hash = $jc(_$hash, idclientestripe.hashCode);
    _$hash = $jc(_$hash, idassinaturastripe.hashCode);
    _$hash = $jc(_$hash, statusassinaturastripe.hashCode);
    _$hash = $jc(_$hash, nomedoplano.hashCode);
    _$hash = $jc(_$hash, gerouassinatura.hashCode);
    _$hash = $jc(_$hash, priveID.hashCode);
    _$hash = $jc(_$hash, assinaturaativa.hashCode);
    _$hash = $jc(_$hash, comprouMChat.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('state', state)
          ..add('city', city)
          ..add('phoneNumber', phoneNumber)
          ..add('isAdmin', isAdmin)
          ..add('isAluno', isAluno)
          ..add('completouPerfil', completouPerfil)
          ..add('logotipo', logotipo)
          ..add('endereco', endereco)
          ..add('profissao', profissao)
          ..add('faturamentoMinimo', faturamentoMinimo)
          ..add('metaFaturamento', metaFaturamento)
          ..add('sobrenome', sobrenome)
          ..add('pontos', pontos)
          ..add('aceitoucomunidade', aceitoucomunidade)
          ..add('following', following)
          ..add('mostraremail', mostraremail)
          ..add('mostrartelefone', mostrartelefone)
          ..add('assinatura', assinatura)
          ..add('cpf', cpf)
          ..add('statusunimestre', statusunimestre)
          ..add('idclientestripe', idclientestripe)
          ..add('idassinaturastripe', idassinaturastripe)
          ..add('statusassinaturastripe', statusassinaturastripe)
          ..add('nomedoplano', nomedoplano)
          ..add('gerouassinatura', gerouassinatura)
          ..add('priveID', priveID)
          ..add('assinaturaativa', assinaturaativa)
          ..add('comprouMChat', comprouMChat)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  bool? _isAluno;
  bool? get isAluno => _$this._isAluno;
  set isAluno(bool? isAluno) => _$this._isAluno = isAluno;

  bool? _completouPerfil;
  bool? get completouPerfil => _$this._completouPerfil;
  set completouPerfil(bool? completouPerfil) =>
      _$this._completouPerfil = completouPerfil;

  String? _logotipo;
  String? get logotipo => _$this._logotipo;
  set logotipo(String? logotipo) => _$this._logotipo = logotipo;

  String? _endereco;
  String? get endereco => _$this._endereco;
  set endereco(String? endereco) => _$this._endereco = endereco;

  String? _profissao;
  String? get profissao => _$this._profissao;
  set profissao(String? profissao) => _$this._profissao = profissao;

  double? _faturamentoMinimo;
  double? get faturamentoMinimo => _$this._faturamentoMinimo;
  set faturamentoMinimo(double? faturamentoMinimo) =>
      _$this._faturamentoMinimo = faturamentoMinimo;

  double? _metaFaturamento;
  double? get metaFaturamento => _$this._metaFaturamento;
  set metaFaturamento(double? metaFaturamento) =>
      _$this._metaFaturamento = metaFaturamento;

  String? _sobrenome;
  String? get sobrenome => _$this._sobrenome;
  set sobrenome(String? sobrenome) => _$this._sobrenome = sobrenome;

  int? _pontos;
  int? get pontos => _$this._pontos;
  set pontos(int? pontos) => _$this._pontos = pontos;

  bool? _aceitoucomunidade;
  bool? get aceitoucomunidade => _$this._aceitoucomunidade;
  set aceitoucomunidade(bool? aceitoucomunidade) =>
      _$this._aceitoucomunidade = aceitoucomunidade;

  ListBuilder<DocumentReference<Object?>>? _following;
  ListBuilder<DocumentReference<Object?>> get following =>
      _$this._following ??= new ListBuilder<DocumentReference<Object?>>();
  set following(ListBuilder<DocumentReference<Object?>>? following) =>
      _$this._following = following;

  bool? _mostraremail;
  bool? get mostraremail => _$this._mostraremail;
  set mostraremail(bool? mostraremail) => _$this._mostraremail = mostraremail;

  bool? _mostrartelefone;
  bool? get mostrartelefone => _$this._mostrartelefone;
  set mostrartelefone(bool? mostrartelefone) =>
      _$this._mostrartelefone = mostrartelefone;

  String? _assinatura;
  String? get assinatura => _$this._assinatura;
  set assinatura(String? assinatura) => _$this._assinatura = assinatura;

  String? _cpf;
  String? get cpf => _$this._cpf;
  set cpf(String? cpf) => _$this._cpf = cpf;

  String? _statusunimestre;
  String? get statusunimestre => _$this._statusunimestre;
  set statusunimestre(String? statusunimestre) =>
      _$this._statusunimestre = statusunimestre;

  String? _idclientestripe;
  String? get idclientestripe => _$this._idclientestripe;
  set idclientestripe(String? idclientestripe) =>
      _$this._idclientestripe = idclientestripe;

  String? _idassinaturastripe;
  String? get idassinaturastripe => _$this._idassinaturastripe;
  set idassinaturastripe(String? idassinaturastripe) =>
      _$this._idassinaturastripe = idassinaturastripe;

  String? _statusassinaturastripe;
  String? get statusassinaturastripe => _$this._statusassinaturastripe;
  set statusassinaturastripe(String? statusassinaturastripe) =>
      _$this._statusassinaturastripe = statusassinaturastripe;

  String? _nomedoplano;
  String? get nomedoplano => _$this._nomedoplano;
  set nomedoplano(String? nomedoplano) => _$this._nomedoplano = nomedoplano;

  bool? _gerouassinatura;
  bool? get gerouassinatura => _$this._gerouassinatura;
  set gerouassinatura(bool? gerouassinatura) =>
      _$this._gerouassinatura = gerouassinatura;

  String? _priveID;
  String? get priveID => _$this._priveID;
  set priveID(String? priveID) => _$this._priveID = priveID;

  bool? _assinaturaativa;
  bool? get assinaturaativa => _$this._assinaturaativa;
  set assinaturaativa(bool? assinaturaativa) =>
      _$this._assinaturaativa = assinaturaativa;

  bool? _comprouMChat;
  bool? get comprouMChat => _$this._comprouMChat;
  set comprouMChat(bool? comprouMChat) => _$this._comprouMChat = comprouMChat;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _state = $v.state;
      _city = $v.city;
      _phoneNumber = $v.phoneNumber;
      _isAdmin = $v.isAdmin;
      _isAluno = $v.isAluno;
      _completouPerfil = $v.completouPerfil;
      _logotipo = $v.logotipo;
      _endereco = $v.endereco;
      _profissao = $v.profissao;
      _faturamentoMinimo = $v.faturamentoMinimo;
      _metaFaturamento = $v.metaFaturamento;
      _sobrenome = $v.sobrenome;
      _pontos = $v.pontos;
      _aceitoucomunidade = $v.aceitoucomunidade;
      _following = $v.following?.toBuilder();
      _mostraremail = $v.mostraremail;
      _mostrartelefone = $v.mostrartelefone;
      _assinatura = $v.assinatura;
      _cpf = $v.cpf;
      _statusunimestre = $v.statusunimestre;
      _idclientestripe = $v.idclientestripe;
      _idassinaturastripe = $v.idassinaturastripe;
      _statusassinaturastripe = $v.statusassinaturastripe;
      _nomedoplano = $v.nomedoplano;
      _gerouassinatura = $v.gerouassinatura;
      _priveID = $v.priveID;
      _assinaturaativa = $v.assinaturaativa;
      _comprouMChat = $v.comprouMChat;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              state: state,
              city: city,
              phoneNumber: phoneNumber,
              isAdmin: isAdmin,
              isAluno: isAluno,
              completouPerfil: completouPerfil,
              logotipo: logotipo,
              endereco: endereco,
              profissao: profissao,
              faturamentoMinimo: faturamentoMinimo,
              metaFaturamento: metaFaturamento,
              sobrenome: sobrenome,
              pontos: pontos,
              aceitoucomunidade: aceitoucomunidade,
              following: _following?.build(),
              mostraremail: mostraremail,
              mostrartelefone: mostrartelefone,
              assinatura: assinatura,
              cpf: cpf,
              statusunimestre: statusunimestre,
              idclientestripe: idclientestripe,
              idassinaturastripe: idassinaturastripe,
              statusassinaturastripe: statusassinaturastripe,
              nomedoplano: nomedoplano,
              gerouassinatura: gerouassinatura,
              priveID: priveID,
              assinaturaativa: assinaturaativa,
              comprouMChat: comprouMChat,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'following';
        _following?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

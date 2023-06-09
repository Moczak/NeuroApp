// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leads_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LeadsRecord> _$leadsRecordSerializer = new _$LeadsRecordSerializer();

class _$LeadsRecordSerializer implements StructuredSerializer<LeadsRecord> {
  @override
  final Iterable<Type> types = const [LeadsRecord, _$LeadsRecord];
  @override
  final String wireName = 'LeadsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LeadsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone;
    if (value != null) {
      result
        ..add('telefone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomedopai;
    if (value != null) {
      result
        ..add('nomedopai')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomedamae;
    if (value != null) {
      result
        ..add('nomedamae')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomedaescola;
    if (value != null) {
      result
        ..add('nomedaescola')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idadefilho;
    if (value != null) {
      result
        ..add('idadefilho')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
    value = object.areadeatuacao;
    if (value != null) {
      result
        ..add('areadeatuacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomeclinica;
    if (value != null) {
      result
        ..add('nomeclinica')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.obs;
    if (value != null) {
      result
        ..add('obs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notas;
    if (value != null) {
      result
        ..add('notas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sobrenome;
    if (value != null) {
      result
        ..add('sobrenome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LeadsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeadsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone':
          result.telefone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedopai':
          result.nomedopai = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedamae':
          result.nomedamae = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedaescola':
          result.nomedaescola = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idadefilho':
          result.idadefilho = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endereco':
          result.endereco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'areadeatuacao':
          result.areadeatuacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomeclinica':
          result.nomeclinica = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'obs':
          result.obs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notas':
          result.notas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sobrenome':
          result.sobrenome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LeadsRecord extends LeadsRecord {
  @override
  final DateTime? data;
  @override
  final String? nome;
  @override
  final String? telefone;
  @override
  final String? email;
  @override
  final String? categoria;
  @override
  final String? nomedopai;
  @override
  final String? nomedamae;
  @override
  final String? nomedaescola;
  @override
  final String? idadefilho;
  @override
  final String? status;
  @override
  final String? endereco;
  @override
  final String? areadeatuacao;
  @override
  final String? nomeclinica;
  @override
  final String? obs;
  @override
  final String? notas;
  @override
  final String? sobrenome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LeadsRecord([void Function(LeadsRecordBuilder)? updates]) =>
      (new LeadsRecordBuilder()..update(updates))._build();

  _$LeadsRecord._(
      {this.data,
      this.nome,
      this.telefone,
      this.email,
      this.categoria,
      this.nomedopai,
      this.nomedamae,
      this.nomedaescola,
      this.idadefilho,
      this.status,
      this.endereco,
      this.areadeatuacao,
      this.nomeclinica,
      this.obs,
      this.notas,
      this.sobrenome,
      this.ffRef})
      : super._();

  @override
  LeadsRecord rebuild(void Function(LeadsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeadsRecordBuilder toBuilder() => new LeadsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeadsRecord &&
        data == other.data &&
        nome == other.nome &&
        telefone == other.telefone &&
        email == other.email &&
        categoria == other.categoria &&
        nomedopai == other.nomedopai &&
        nomedamae == other.nomedamae &&
        nomedaescola == other.nomedaescola &&
        idadefilho == other.idadefilho &&
        status == other.status &&
        endereco == other.endereco &&
        areadeatuacao == other.areadeatuacao &&
        nomeclinica == other.nomeclinica &&
        obs == other.obs &&
        notas == other.notas &&
        sobrenome == other.sobrenome &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, telefone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, nomedopai.hashCode);
    _$hash = $jc(_$hash, nomedamae.hashCode);
    _$hash = $jc(_$hash, nomedaescola.hashCode);
    _$hash = $jc(_$hash, idadefilho.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, endereco.hashCode);
    _$hash = $jc(_$hash, areadeatuacao.hashCode);
    _$hash = $jc(_$hash, nomeclinica.hashCode);
    _$hash = $jc(_$hash, obs.hashCode);
    _$hash = $jc(_$hash, notas.hashCode);
    _$hash = $jc(_$hash, sobrenome.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeadsRecord')
          ..add('data', data)
          ..add('nome', nome)
          ..add('telefone', telefone)
          ..add('email', email)
          ..add('categoria', categoria)
          ..add('nomedopai', nomedopai)
          ..add('nomedamae', nomedamae)
          ..add('nomedaescola', nomedaescola)
          ..add('idadefilho', idadefilho)
          ..add('status', status)
          ..add('endereco', endereco)
          ..add('areadeatuacao', areadeatuacao)
          ..add('nomeclinica', nomeclinica)
          ..add('obs', obs)
          ..add('notas', notas)
          ..add('sobrenome', sobrenome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LeadsRecordBuilder implements Builder<LeadsRecord, LeadsRecordBuilder> {
  _$LeadsRecord? _$v;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _telefone;
  String? get telefone => _$this._telefone;
  set telefone(String? telefone) => _$this._telefone = telefone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _nomedopai;
  String? get nomedopai => _$this._nomedopai;
  set nomedopai(String? nomedopai) => _$this._nomedopai = nomedopai;

  String? _nomedamae;
  String? get nomedamae => _$this._nomedamae;
  set nomedamae(String? nomedamae) => _$this._nomedamae = nomedamae;

  String? _nomedaescola;
  String? get nomedaescola => _$this._nomedaescola;
  set nomedaescola(String? nomedaescola) => _$this._nomedaescola = nomedaescola;

  String? _idadefilho;
  String? get idadefilho => _$this._idadefilho;
  set idadefilho(String? idadefilho) => _$this._idadefilho = idadefilho;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _endereco;
  String? get endereco => _$this._endereco;
  set endereco(String? endereco) => _$this._endereco = endereco;

  String? _areadeatuacao;
  String? get areadeatuacao => _$this._areadeatuacao;
  set areadeatuacao(String? areadeatuacao) =>
      _$this._areadeatuacao = areadeatuacao;

  String? _nomeclinica;
  String? get nomeclinica => _$this._nomeclinica;
  set nomeclinica(String? nomeclinica) => _$this._nomeclinica = nomeclinica;

  String? _obs;
  String? get obs => _$this._obs;
  set obs(String? obs) => _$this._obs = obs;

  String? _notas;
  String? get notas => _$this._notas;
  set notas(String? notas) => _$this._notas = notas;

  String? _sobrenome;
  String? get sobrenome => _$this._sobrenome;
  set sobrenome(String? sobrenome) => _$this._sobrenome = sobrenome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LeadsRecordBuilder() {
    LeadsRecord._initializeBuilder(this);
  }

  LeadsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _nome = $v.nome;
      _telefone = $v.telefone;
      _email = $v.email;
      _categoria = $v.categoria;
      _nomedopai = $v.nomedopai;
      _nomedamae = $v.nomedamae;
      _nomedaescola = $v.nomedaescola;
      _idadefilho = $v.idadefilho;
      _status = $v.status;
      _endereco = $v.endereco;
      _areadeatuacao = $v.areadeatuacao;
      _nomeclinica = $v.nomeclinica;
      _obs = $v.obs;
      _notas = $v.notas;
      _sobrenome = $v.sobrenome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeadsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeadsRecord;
  }

  @override
  void update(void Function(LeadsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeadsRecord build() => _build();

  _$LeadsRecord _build() {
    final _$result = _$v ??
        new _$LeadsRecord._(
            data: data,
            nome: nome,
            telefone: telefone,
            email: email,
            categoria: categoria,
            nomedopai: nomedopai,
            nomedamae: nomedamae,
            nomedaescola: nomedaescola,
            idadefilho: idadefilho,
            status: status,
            endereco: endereco,
            areadeatuacao: areadeatuacao,
            nomeclinica: nomeclinica,
            obs: obs,
            notas: notas,
            sobrenome: sobrenome,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

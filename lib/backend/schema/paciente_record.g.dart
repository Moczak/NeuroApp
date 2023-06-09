// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paciente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PacienteRecord> _$pacienteRecordSerializer =
    new _$PacienteRecordSerializer();

class _$PacienteRecordSerializer
    implements StructuredSerializer<PacienteRecord> {
  @override
  final Iterable<Type> types = const [PacienteRecord, _$PacienteRecord];
  @override
  final String wireName = 'PacienteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PacienteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idade;
    if (value != null) {
      result
        ..add('idade')
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
    value = object.nomedopai;
    if (value != null) {
      result
        ..add('nomedopai')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idademae;
    if (value != null) {
      result
        ..add('idademae')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idadepai;
    if (value != null) {
      result
        ..add('idadepai')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.escolaridadepai;
    if (value != null) {
      result
        ..add('escolaridadepai')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.escolaridademae;
    if (value != null) {
      result
        ..add('escolaridademae')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.escolaEMP;
    if (value != null) {
      result
        ..add('escolaEMP')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.periodoemqueestuda;
    if (value != null) {
      result
        ..add('periodoemqueestuda')
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
    value = object.usuario;
    if (value != null) {
      result
        ..add('usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
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
    value = object.escolaridade;
    if (value != null) {
      result
        ..add('escolaridade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datadenascimento;
    if (value != null) {
      result
        ..add('datadenascimento')
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
    value = object.usamedicamento;
    if (value != null) {
      result
        ..add('usamedicamento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.queixadopaciente;
    if (value != null) {
      result
        ..add('queixadopaciente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.urlwhats;
    if (value != null) {
      result
        ..add('urlwhats')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ddd;
    if (value != null) {
      result
        ..add('ddd')
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
  PacienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PacienteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idade':
          result.idade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedamae':
          result.nomedamae = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedopai':
          result.nomedopai = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idademae':
          result.idademae = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idadepai':
          result.idadepai = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'escolaridadepai':
          result.escolaridadepai = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'escolaridademae':
          result.escolaridademae = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'escolaEMP':
          result.escolaEMP = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'periodoemqueestuda':
          result.periodoemqueestuda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedaescola':
          result.nomedaescola = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'usuario':
          result.usuario = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sobrenome':
          result.sobrenome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'escolaridade':
          result.escolaridade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'datadenascimento':
          result.datadenascimento = serializers.deserialize(value,
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
        case 'usamedicamento':
          result.usamedicamento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'queixadopaciente':
          result.queixadopaciente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'urlwhats':
          result.urlwhats = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ddd':
          result.ddd = serializers.deserialize(value,
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

class _$PacienteRecord extends PacienteRecord {
  @override
  final String? nome;
  @override
  final String? idade;
  @override
  final String? nomedamae;
  @override
  final String? nomedopai;
  @override
  final String? idademae;
  @override
  final String? idadepai;
  @override
  final String? escolaridadepai;
  @override
  final String? escolaridademae;
  @override
  final String? escolaEMP;
  @override
  final String? periodoemqueestuda;
  @override
  final String? nomedaescola;
  @override
  final DocumentReference<Object?>? usuario;
  @override
  final String? foto;
  @override
  final String? sobrenome;
  @override
  final String? escolaridade;
  @override
  final String? datadenascimento;
  @override
  final String? telefone;
  @override
  final String? email;
  @override
  final String? usamedicamento;
  @override
  final String? queixadopaciente;
  @override
  final double? status;
  @override
  final String? urlwhats;
  @override
  final String? ddd;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PacienteRecord([void Function(PacienteRecordBuilder)? updates]) =>
      (new PacienteRecordBuilder()..update(updates))._build();

  _$PacienteRecord._(
      {this.nome,
      this.idade,
      this.nomedamae,
      this.nomedopai,
      this.idademae,
      this.idadepai,
      this.escolaridadepai,
      this.escolaridademae,
      this.escolaEMP,
      this.periodoemqueestuda,
      this.nomedaescola,
      this.usuario,
      this.foto,
      this.sobrenome,
      this.escolaridade,
      this.datadenascimento,
      this.telefone,
      this.email,
      this.usamedicamento,
      this.queixadopaciente,
      this.status,
      this.urlwhats,
      this.ddd,
      this.ffRef})
      : super._();

  @override
  PacienteRecord rebuild(void Function(PacienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PacienteRecordBuilder toBuilder() =>
      new PacienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PacienteRecord &&
        nome == other.nome &&
        idade == other.idade &&
        nomedamae == other.nomedamae &&
        nomedopai == other.nomedopai &&
        idademae == other.idademae &&
        idadepai == other.idadepai &&
        escolaridadepai == other.escolaridadepai &&
        escolaridademae == other.escolaridademae &&
        escolaEMP == other.escolaEMP &&
        periodoemqueestuda == other.periodoemqueestuda &&
        nomedaescola == other.nomedaescola &&
        usuario == other.usuario &&
        foto == other.foto &&
        sobrenome == other.sobrenome &&
        escolaridade == other.escolaridade &&
        datadenascimento == other.datadenascimento &&
        telefone == other.telefone &&
        email == other.email &&
        usamedicamento == other.usamedicamento &&
        queixadopaciente == other.queixadopaciente &&
        status == other.status &&
        urlwhats == other.urlwhats &&
        ddd == other.ddd &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, idade.hashCode);
    _$hash = $jc(_$hash, nomedamae.hashCode);
    _$hash = $jc(_$hash, nomedopai.hashCode);
    _$hash = $jc(_$hash, idademae.hashCode);
    _$hash = $jc(_$hash, idadepai.hashCode);
    _$hash = $jc(_$hash, escolaridadepai.hashCode);
    _$hash = $jc(_$hash, escolaridademae.hashCode);
    _$hash = $jc(_$hash, escolaEMP.hashCode);
    _$hash = $jc(_$hash, periodoemqueestuda.hashCode);
    _$hash = $jc(_$hash, nomedaescola.hashCode);
    _$hash = $jc(_$hash, usuario.hashCode);
    _$hash = $jc(_$hash, foto.hashCode);
    _$hash = $jc(_$hash, sobrenome.hashCode);
    _$hash = $jc(_$hash, escolaridade.hashCode);
    _$hash = $jc(_$hash, datadenascimento.hashCode);
    _$hash = $jc(_$hash, telefone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, usamedicamento.hashCode);
    _$hash = $jc(_$hash, queixadopaciente.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, urlwhats.hashCode);
    _$hash = $jc(_$hash, ddd.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PacienteRecord')
          ..add('nome', nome)
          ..add('idade', idade)
          ..add('nomedamae', nomedamae)
          ..add('nomedopai', nomedopai)
          ..add('idademae', idademae)
          ..add('idadepai', idadepai)
          ..add('escolaridadepai', escolaridadepai)
          ..add('escolaridademae', escolaridademae)
          ..add('escolaEMP', escolaEMP)
          ..add('periodoemqueestuda', periodoemqueestuda)
          ..add('nomedaescola', nomedaescola)
          ..add('usuario', usuario)
          ..add('foto', foto)
          ..add('sobrenome', sobrenome)
          ..add('escolaridade', escolaridade)
          ..add('datadenascimento', datadenascimento)
          ..add('telefone', telefone)
          ..add('email', email)
          ..add('usamedicamento', usamedicamento)
          ..add('queixadopaciente', queixadopaciente)
          ..add('status', status)
          ..add('urlwhats', urlwhats)
          ..add('ddd', ddd)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PacienteRecordBuilder
    implements Builder<PacienteRecord, PacienteRecordBuilder> {
  _$PacienteRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _idade;
  String? get idade => _$this._idade;
  set idade(String? idade) => _$this._idade = idade;

  String? _nomedamae;
  String? get nomedamae => _$this._nomedamae;
  set nomedamae(String? nomedamae) => _$this._nomedamae = nomedamae;

  String? _nomedopai;
  String? get nomedopai => _$this._nomedopai;
  set nomedopai(String? nomedopai) => _$this._nomedopai = nomedopai;

  String? _idademae;
  String? get idademae => _$this._idademae;
  set idademae(String? idademae) => _$this._idademae = idademae;

  String? _idadepai;
  String? get idadepai => _$this._idadepai;
  set idadepai(String? idadepai) => _$this._idadepai = idadepai;

  String? _escolaridadepai;
  String? get escolaridadepai => _$this._escolaridadepai;
  set escolaridadepai(String? escolaridadepai) =>
      _$this._escolaridadepai = escolaridadepai;

  String? _escolaridademae;
  String? get escolaridademae => _$this._escolaridademae;
  set escolaridademae(String? escolaridademae) =>
      _$this._escolaridademae = escolaridademae;

  String? _escolaEMP;
  String? get escolaEMP => _$this._escolaEMP;
  set escolaEMP(String? escolaEMP) => _$this._escolaEMP = escolaEMP;

  String? _periodoemqueestuda;
  String? get periodoemqueestuda => _$this._periodoemqueestuda;
  set periodoemqueestuda(String? periodoemqueestuda) =>
      _$this._periodoemqueestuda = periodoemqueestuda;

  String? _nomedaescola;
  String? get nomedaescola => _$this._nomedaescola;
  set nomedaescola(String? nomedaescola) => _$this._nomedaescola = nomedaescola;

  DocumentReference<Object?>? _usuario;
  DocumentReference<Object?>? get usuario => _$this._usuario;
  set usuario(DocumentReference<Object?>? usuario) => _$this._usuario = usuario;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  String? _sobrenome;
  String? get sobrenome => _$this._sobrenome;
  set sobrenome(String? sobrenome) => _$this._sobrenome = sobrenome;

  String? _escolaridade;
  String? get escolaridade => _$this._escolaridade;
  set escolaridade(String? escolaridade) => _$this._escolaridade = escolaridade;

  String? _datadenascimento;
  String? get datadenascimento => _$this._datadenascimento;
  set datadenascimento(String? datadenascimento) =>
      _$this._datadenascimento = datadenascimento;

  String? _telefone;
  String? get telefone => _$this._telefone;
  set telefone(String? telefone) => _$this._telefone = telefone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _usamedicamento;
  String? get usamedicamento => _$this._usamedicamento;
  set usamedicamento(String? usamedicamento) =>
      _$this._usamedicamento = usamedicamento;

  String? _queixadopaciente;
  String? get queixadopaciente => _$this._queixadopaciente;
  set queixadopaciente(String? queixadopaciente) =>
      _$this._queixadopaciente = queixadopaciente;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _urlwhats;
  String? get urlwhats => _$this._urlwhats;
  set urlwhats(String? urlwhats) => _$this._urlwhats = urlwhats;

  String? _ddd;
  String? get ddd => _$this._ddd;
  set ddd(String? ddd) => _$this._ddd = ddd;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PacienteRecordBuilder() {
    PacienteRecord._initializeBuilder(this);
  }

  PacienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _idade = $v.idade;
      _nomedamae = $v.nomedamae;
      _nomedopai = $v.nomedopai;
      _idademae = $v.idademae;
      _idadepai = $v.idadepai;
      _escolaridadepai = $v.escolaridadepai;
      _escolaridademae = $v.escolaridademae;
      _escolaEMP = $v.escolaEMP;
      _periodoemqueestuda = $v.periodoemqueestuda;
      _nomedaescola = $v.nomedaescola;
      _usuario = $v.usuario;
      _foto = $v.foto;
      _sobrenome = $v.sobrenome;
      _escolaridade = $v.escolaridade;
      _datadenascimento = $v.datadenascimento;
      _telefone = $v.telefone;
      _email = $v.email;
      _usamedicamento = $v.usamedicamento;
      _queixadopaciente = $v.queixadopaciente;
      _status = $v.status;
      _urlwhats = $v.urlwhats;
      _ddd = $v.ddd;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PacienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PacienteRecord;
  }

  @override
  void update(void Function(PacienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PacienteRecord build() => _build();

  _$PacienteRecord _build() {
    final _$result = _$v ??
        new _$PacienteRecord._(
            nome: nome,
            idade: idade,
            nomedamae: nomedamae,
            nomedopai: nomedopai,
            idademae: idademae,
            idadepai: idadepai,
            escolaridadepai: escolaridadepai,
            escolaridademae: escolaridademae,
            escolaEMP: escolaEMP,
            periodoemqueestuda: periodoemqueestuda,
            nomedaescola: nomedaescola,
            usuario: usuario,
            foto: foto,
            sobrenome: sobrenome,
            escolaridade: escolaridade,
            datadenascimento: datadenascimento,
            telefone: telefone,
            email: email,
            usamedicamento: usamedicamento,
            queixadopaciente: queixadopaciente,
            status: status,
            urlwhats: urlwhats,
            ddd: ddd,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pessoasresidempaciente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PessoasresidempacienteRecord>
    _$pessoasresidempacienteRecordSerializer =
    new _$PessoasresidempacienteRecordSerializer();

class _$PessoasresidempacienteRecordSerializer
    implements StructuredSerializer<PessoasresidempacienteRecord> {
  @override
  final Iterable<Type> types = const [
    PessoasresidempacienteRecord,
    _$PessoasresidempacienteRecord
  ];
  @override
  final String wireName = 'PessoasresidempacienteRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PessoasresidempacienteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pacienteref;
    if (value != null) {
      result
        ..add('pacienteref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sexo;
    if (value != null) {
      result
        ..add('sexo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idade;
    if (value != null) {
      result
        ..add('idade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.parentesco;
    if (value != null) {
      result
        ..add('parentesco')
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
    value = object.ocupacao;
    if (value != null) {
      result
        ..add('ocupacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.saude;
    if (value != null) {
      result
        ..add('saude')
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
  PessoasresidempacienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PessoasresidempacienteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pacienteref':
          result.pacienteref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sexo':
          result.sexo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idade':
          result.idade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'parentesco':
          result.parentesco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'escolaridade':
          result.escolaridade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ocupacao':
          result.ocupacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'saude':
          result.saude = serializers.deserialize(value,
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

class _$PessoasresidempacienteRecord extends PessoasresidempacienteRecord {
  @override
  final DocumentReference<Object?>? pacienteref;
  @override
  final String? nome;
  @override
  final String? sexo;
  @override
  final int? idade;
  @override
  final String? parentesco;
  @override
  final String? escolaridade;
  @override
  final String? ocupacao;
  @override
  final String? saude;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PessoasresidempacienteRecord(
          [void Function(PessoasresidempacienteRecordBuilder)? updates]) =>
      (new PessoasresidempacienteRecordBuilder()..update(updates))._build();

  _$PessoasresidempacienteRecord._(
      {this.pacienteref,
      this.nome,
      this.sexo,
      this.idade,
      this.parentesco,
      this.escolaridade,
      this.ocupacao,
      this.saude,
      this.ffRef})
      : super._();

  @override
  PessoasresidempacienteRecord rebuild(
          void Function(PessoasresidempacienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PessoasresidempacienteRecordBuilder toBuilder() =>
      new PessoasresidempacienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PessoasresidempacienteRecord &&
        pacienteref == other.pacienteref &&
        nome == other.nome &&
        sexo == other.sexo &&
        idade == other.idade &&
        parentesco == other.parentesco &&
        escolaridade == other.escolaridade &&
        ocupacao == other.ocupacao &&
        saude == other.saude &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pacienteref.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, sexo.hashCode);
    _$hash = $jc(_$hash, idade.hashCode);
    _$hash = $jc(_$hash, parentesco.hashCode);
    _$hash = $jc(_$hash, escolaridade.hashCode);
    _$hash = $jc(_$hash, ocupacao.hashCode);
    _$hash = $jc(_$hash, saude.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PessoasresidempacienteRecord')
          ..add('pacienteref', pacienteref)
          ..add('nome', nome)
          ..add('sexo', sexo)
          ..add('idade', idade)
          ..add('parentesco', parentesco)
          ..add('escolaridade', escolaridade)
          ..add('ocupacao', ocupacao)
          ..add('saude', saude)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PessoasresidempacienteRecordBuilder
    implements
        Builder<PessoasresidempacienteRecord,
            PessoasresidempacienteRecordBuilder> {
  _$PessoasresidempacienteRecord? _$v;

  DocumentReference<Object?>? _pacienteref;
  DocumentReference<Object?>? get pacienteref => _$this._pacienteref;
  set pacienteref(DocumentReference<Object?>? pacienteref) =>
      _$this._pacienteref = pacienteref;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _sexo;
  String? get sexo => _$this._sexo;
  set sexo(String? sexo) => _$this._sexo = sexo;

  int? _idade;
  int? get idade => _$this._idade;
  set idade(int? idade) => _$this._idade = idade;

  String? _parentesco;
  String? get parentesco => _$this._parentesco;
  set parentesco(String? parentesco) => _$this._parentesco = parentesco;

  String? _escolaridade;
  String? get escolaridade => _$this._escolaridade;
  set escolaridade(String? escolaridade) => _$this._escolaridade = escolaridade;

  String? _ocupacao;
  String? get ocupacao => _$this._ocupacao;
  set ocupacao(String? ocupacao) => _$this._ocupacao = ocupacao;

  String? _saude;
  String? get saude => _$this._saude;
  set saude(String? saude) => _$this._saude = saude;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PessoasresidempacienteRecordBuilder() {
    PessoasresidempacienteRecord._initializeBuilder(this);
  }

  PessoasresidempacienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pacienteref = $v.pacienteref;
      _nome = $v.nome;
      _sexo = $v.sexo;
      _idade = $v.idade;
      _parentesco = $v.parentesco;
      _escolaridade = $v.escolaridade;
      _ocupacao = $v.ocupacao;
      _saude = $v.saude;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PessoasresidempacienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PessoasresidempacienteRecord;
  }

  @override
  void update(void Function(PessoasresidempacienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PessoasresidempacienteRecord build() => _build();

  _$PessoasresidempacienteRecord _build() {
    final _$result = _$v ??
        new _$PessoasresidempacienteRecord._(
            pacienteref: pacienteref,
            nome: nome,
            sexo: sexo,
            idade: idade,
            parentesco: parentesco,
            escolaridade: escolaridade,
            ocupacao: ocupacao,
            saude: saude,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

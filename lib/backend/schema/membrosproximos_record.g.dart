// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membrosproximos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MembrosproximosRecord> _$membrosproximosRecordSerializer =
    new _$MembrosproximosRecordSerializer();

class _$MembrosproximosRecordSerializer
    implements StructuredSerializer<MembrosproximosRecord> {
  @override
  final Iterable<Type> types = const [
    MembrosproximosRecord,
    _$MembrosproximosRecord
  ];
  @override
  final String wireName = 'MembrosproximosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MembrosproximosRecord object,
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
    value = object.relacao;
    if (value != null) {
      result
        ..add('relacao')
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
  MembrosproximosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MembrosproximosRecordBuilder();

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
        case 'relacao':
          result.relacao = serializers.deserialize(value,
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

class _$MembrosproximosRecord extends MembrosproximosRecord {
  @override
  final DocumentReference<Object?>? pacienteref;
  @override
  final String? nome;
  @override
  final String? sexo;
  @override
  final int? idade;
  @override
  final String? escolaridade;
  @override
  final String? ocupacao;
  @override
  final String? saude;
  @override
  final String? relacao;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MembrosproximosRecord(
          [void Function(MembrosproximosRecordBuilder)? updates]) =>
      (new MembrosproximosRecordBuilder()..update(updates))._build();

  _$MembrosproximosRecord._(
      {this.pacienteref,
      this.nome,
      this.sexo,
      this.idade,
      this.escolaridade,
      this.ocupacao,
      this.saude,
      this.relacao,
      this.ffRef})
      : super._();

  @override
  MembrosproximosRecord rebuild(
          void Function(MembrosproximosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MembrosproximosRecordBuilder toBuilder() =>
      new MembrosproximosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MembrosproximosRecord &&
        pacienteref == other.pacienteref &&
        nome == other.nome &&
        sexo == other.sexo &&
        idade == other.idade &&
        escolaridade == other.escolaridade &&
        ocupacao == other.ocupacao &&
        saude == other.saude &&
        relacao == other.relacao &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pacienteref.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, sexo.hashCode);
    _$hash = $jc(_$hash, idade.hashCode);
    _$hash = $jc(_$hash, escolaridade.hashCode);
    _$hash = $jc(_$hash, ocupacao.hashCode);
    _$hash = $jc(_$hash, saude.hashCode);
    _$hash = $jc(_$hash, relacao.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MembrosproximosRecord')
          ..add('pacienteref', pacienteref)
          ..add('nome', nome)
          ..add('sexo', sexo)
          ..add('idade', idade)
          ..add('escolaridade', escolaridade)
          ..add('ocupacao', ocupacao)
          ..add('saude', saude)
          ..add('relacao', relacao)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MembrosproximosRecordBuilder
    implements Builder<MembrosproximosRecord, MembrosproximosRecordBuilder> {
  _$MembrosproximosRecord? _$v;

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

  String? _escolaridade;
  String? get escolaridade => _$this._escolaridade;
  set escolaridade(String? escolaridade) => _$this._escolaridade = escolaridade;

  String? _ocupacao;
  String? get ocupacao => _$this._ocupacao;
  set ocupacao(String? ocupacao) => _$this._ocupacao = ocupacao;

  String? _saude;
  String? get saude => _$this._saude;
  set saude(String? saude) => _$this._saude = saude;

  String? _relacao;
  String? get relacao => _$this._relacao;
  set relacao(String? relacao) => _$this._relacao = relacao;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MembrosproximosRecordBuilder() {
    MembrosproximosRecord._initializeBuilder(this);
  }

  MembrosproximosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pacienteref = $v.pacienteref;
      _nome = $v.nome;
      _sexo = $v.sexo;
      _idade = $v.idade;
      _escolaridade = $v.escolaridade;
      _ocupacao = $v.ocupacao;
      _saude = $v.saude;
      _relacao = $v.relacao;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MembrosproximosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MembrosproximosRecord;
  }

  @override
  void update(void Function(MembrosproximosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MembrosproximosRecord build() => _build();

  _$MembrosproximosRecord _build() {
    final _$result = _$v ??
        new _$MembrosproximosRecord._(
            pacienteref: pacienteref,
            nome: nome,
            sexo: sexo,
            idade: idade,
            escolaridade: escolaridade,
            ocupacao: ocupacao,
            saude: saude,
            relacao: relacao,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

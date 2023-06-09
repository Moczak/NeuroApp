// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neurofarmacologia_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NeurofarmacologiaRecord> _$neurofarmacologiaRecordSerializer =
    new _$NeurofarmacologiaRecordSerializer();

class _$NeurofarmacologiaRecordSerializer
    implements StructuredSerializer<NeurofarmacologiaRecord> {
  @override
  final Iterable<Type> types = const [
    NeurofarmacologiaRecord,
    _$NeurofarmacologiaRecord
  ];
  @override
  final String wireName = 'NeurofarmacologiaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NeurofarmacologiaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.principioativo;
    if (value != null) {
      result
        ..add('principioativo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorito;
    if (value != null) {
      result
        ..add('favorito')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  NeurofarmacologiaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NeurofarmacologiaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'principioativo':
          result.principioativo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorito':
          result.favorito.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$NeurofarmacologiaRecord extends NeurofarmacologiaRecord {
  @override
  final String? categoria;
  @override
  final String? nome;
  @override
  final String? foto;
  @override
  final String? descricao;
  @override
  final String? principioativo;
  @override
  final BuiltList<DocumentReference<Object?>>? favorito;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NeurofarmacologiaRecord(
          [void Function(NeurofarmacologiaRecordBuilder)? updates]) =>
      (new NeurofarmacologiaRecordBuilder()..update(updates))._build();

  _$NeurofarmacologiaRecord._(
      {this.categoria,
      this.nome,
      this.foto,
      this.descricao,
      this.principioativo,
      this.favorito,
      this.ffRef})
      : super._();

  @override
  NeurofarmacologiaRecord rebuild(
          void Function(NeurofarmacologiaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NeurofarmacologiaRecordBuilder toBuilder() =>
      new NeurofarmacologiaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NeurofarmacologiaRecord &&
        categoria == other.categoria &&
        nome == other.nome &&
        foto == other.foto &&
        descricao == other.descricao &&
        principioativo == other.principioativo &&
        favorito == other.favorito &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, foto.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, principioativo.hashCode);
    _$hash = $jc(_$hash, favorito.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NeurofarmacologiaRecord')
          ..add('categoria', categoria)
          ..add('nome', nome)
          ..add('foto', foto)
          ..add('descricao', descricao)
          ..add('principioativo', principioativo)
          ..add('favorito', favorito)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NeurofarmacologiaRecordBuilder
    implements
        Builder<NeurofarmacologiaRecord, NeurofarmacologiaRecordBuilder> {
  _$NeurofarmacologiaRecord? _$v;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  String? _principioativo;
  String? get principioativo => _$this._principioativo;
  set principioativo(String? principioativo) =>
      _$this._principioativo = principioativo;

  ListBuilder<DocumentReference<Object?>>? _favorito;
  ListBuilder<DocumentReference<Object?>> get favorito =>
      _$this._favorito ??= new ListBuilder<DocumentReference<Object?>>();
  set favorito(ListBuilder<DocumentReference<Object?>>? favorito) =>
      _$this._favorito = favorito;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NeurofarmacologiaRecordBuilder() {
    NeurofarmacologiaRecord._initializeBuilder(this);
  }

  NeurofarmacologiaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoria = $v.categoria;
      _nome = $v.nome;
      _foto = $v.foto;
      _descricao = $v.descricao;
      _principioativo = $v.principioativo;
      _favorito = $v.favorito?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NeurofarmacologiaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NeurofarmacologiaRecord;
  }

  @override
  void update(void Function(NeurofarmacologiaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NeurofarmacologiaRecord build() => _build();

  _$NeurofarmacologiaRecord _build() {
    _$NeurofarmacologiaRecord _$result;
    try {
      _$result = _$v ??
          new _$NeurofarmacologiaRecord._(
              categoria: categoria,
              nome: nome,
              foto: foto,
              descricao: descricao,
              principioativo: principioativo,
              favorito: _favorito?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favorito';
        _favorito?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NeurofarmacologiaRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

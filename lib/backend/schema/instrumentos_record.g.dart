// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrumentos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstrumentosRecord> _$instrumentosRecordSerializer =
    new _$InstrumentosRecordSerializer();

class _$InstrumentosRecordSerializer
    implements StructuredSerializer<InstrumentosRecord> {
  @override
  final Iterable<Type> types = const [InstrumentosRecord, _$InstrumentosRecord];
  @override
  final String wireName = 'InstrumentosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InstrumentosRecord object,
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
    value = object.refdoInstrumento;
    if (value != null) {
      result
        ..add('RefdoInstrumento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.faixaetriaindicada;
    if (value != null) {
      result
        ..add('Faixaetriaindicada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.elementosavaliados;
    if (value != null) {
      result
        ..add('Elementosavaliados')
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
    value = object.categorialista;
    if (value != null) {
      result
        ..add('categorialista')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  InstrumentosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstrumentosRecordBuilder();

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
        case 'RefdoInstrumento':
          result.refdoInstrumento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Faixaetriaindicada':
          result.faixaetriaindicada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Elementosavaliados':
          result.elementosavaliados = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categorialista':
          result.categorialista.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$InstrumentosRecord extends InstrumentosRecord {
  @override
  final String? categoria;
  @override
  final String? refdoInstrumento;
  @override
  final String? faixaetriaindicada;
  @override
  final String? elementosavaliados;
  @override
  final String? nome;
  @override
  final BuiltList<String>? categorialista;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InstrumentosRecord(
          [void Function(InstrumentosRecordBuilder)? updates]) =>
      (new InstrumentosRecordBuilder()..update(updates))._build();

  _$InstrumentosRecord._(
      {this.categoria,
      this.refdoInstrumento,
      this.faixaetriaindicada,
      this.elementosavaliados,
      this.nome,
      this.categorialista,
      this.ffRef})
      : super._();

  @override
  InstrumentosRecord rebuild(
          void Function(InstrumentosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstrumentosRecordBuilder toBuilder() =>
      new InstrumentosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstrumentosRecord &&
        categoria == other.categoria &&
        refdoInstrumento == other.refdoInstrumento &&
        faixaetriaindicada == other.faixaetriaindicada &&
        elementosavaliados == other.elementosavaliados &&
        nome == other.nome &&
        categorialista == other.categorialista &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, refdoInstrumento.hashCode);
    _$hash = $jc(_$hash, faixaetriaindicada.hashCode);
    _$hash = $jc(_$hash, elementosavaliados.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, categorialista.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstrumentosRecord')
          ..add('categoria', categoria)
          ..add('refdoInstrumento', refdoInstrumento)
          ..add('faixaetriaindicada', faixaetriaindicada)
          ..add('elementosavaliados', elementosavaliados)
          ..add('nome', nome)
          ..add('categorialista', categorialista)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InstrumentosRecordBuilder
    implements Builder<InstrumentosRecord, InstrumentosRecordBuilder> {
  _$InstrumentosRecord? _$v;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _refdoInstrumento;
  String? get refdoInstrumento => _$this._refdoInstrumento;
  set refdoInstrumento(String? refdoInstrumento) =>
      _$this._refdoInstrumento = refdoInstrumento;

  String? _faixaetriaindicada;
  String? get faixaetriaindicada => _$this._faixaetriaindicada;
  set faixaetriaindicada(String? faixaetriaindicada) =>
      _$this._faixaetriaindicada = faixaetriaindicada;

  String? _elementosavaliados;
  String? get elementosavaliados => _$this._elementosavaliados;
  set elementosavaliados(String? elementosavaliados) =>
      _$this._elementosavaliados = elementosavaliados;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  ListBuilder<String>? _categorialista;
  ListBuilder<String> get categorialista =>
      _$this._categorialista ??= new ListBuilder<String>();
  set categorialista(ListBuilder<String>? categorialista) =>
      _$this._categorialista = categorialista;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InstrumentosRecordBuilder() {
    InstrumentosRecord._initializeBuilder(this);
  }

  InstrumentosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoria = $v.categoria;
      _refdoInstrumento = $v.refdoInstrumento;
      _faixaetriaindicada = $v.faixaetriaindicada;
      _elementosavaliados = $v.elementosavaliados;
      _nome = $v.nome;
      _categorialista = $v.categorialista?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstrumentosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstrumentosRecord;
  }

  @override
  void update(void Function(InstrumentosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstrumentosRecord build() => _build();

  _$InstrumentosRecord _build() {
    _$InstrumentosRecord _$result;
    try {
      _$result = _$v ??
          new _$InstrumentosRecord._(
              categoria: categoria,
              refdoInstrumento: refdoInstrumento,
              faixaetriaindicada: faixaetriaindicada,
              elementosavaliados: elementosavaliados,
              nome: nome,
              categorialista: _categorialista?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categorialista';
        _categorialista?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstrumentosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

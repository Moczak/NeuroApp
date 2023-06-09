// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrumento_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstrumentoRecord> _$instrumentoRecordSerializer =
    new _$InstrumentoRecordSerializer();

class _$InstrumentoRecordSerializer
    implements StructuredSerializer<InstrumentoRecord> {
  @override
  final Iterable<Type> types = const [InstrumentoRecord, _$InstrumentoRecord];
  @override
  final String wireName = 'InstrumentoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InstrumentoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sessao;
    if (value != null) {
      result
        ..add('sessao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.areaavaliada;
    if (value != null) {
      result
        ..add('areaavaliada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomeinstrumento;
    if (value != null) {
      result
        ..add('nomeinstrumento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.resultado;
    if (value != null) {
      result
        ..add('resultado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referenciainstrumento;
    if (value != null) {
      result
        ..add('referenciainstrumento')
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
  InstrumentoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstrumentoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sessao':
          result.sessao = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'areaavaliada':
          result.areaavaliada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomeinstrumento':
          result.nomeinstrumento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'resultado':
          result.resultado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'referenciainstrumento':
          result.referenciainstrumento = serializers.deserialize(value,
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

class _$InstrumentoRecord extends InstrumentoRecord {
  @override
  final DocumentReference<Object?>? sessao;
  @override
  final String? areaavaliada;
  @override
  final String? nomeinstrumento;
  @override
  final String? resultado;
  @override
  final String? referenciainstrumento;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InstrumentoRecord(
          [void Function(InstrumentoRecordBuilder)? updates]) =>
      (new InstrumentoRecordBuilder()..update(updates))._build();

  _$InstrumentoRecord._(
      {this.sessao,
      this.areaavaliada,
      this.nomeinstrumento,
      this.resultado,
      this.referenciainstrumento,
      this.ffRef})
      : super._();

  @override
  InstrumentoRecord rebuild(void Function(InstrumentoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstrumentoRecordBuilder toBuilder() =>
      new InstrumentoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstrumentoRecord &&
        sessao == other.sessao &&
        areaavaliada == other.areaavaliada &&
        nomeinstrumento == other.nomeinstrumento &&
        resultado == other.resultado &&
        referenciainstrumento == other.referenciainstrumento &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessao.hashCode);
    _$hash = $jc(_$hash, areaavaliada.hashCode);
    _$hash = $jc(_$hash, nomeinstrumento.hashCode);
    _$hash = $jc(_$hash, resultado.hashCode);
    _$hash = $jc(_$hash, referenciainstrumento.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstrumentoRecord')
          ..add('sessao', sessao)
          ..add('areaavaliada', areaavaliada)
          ..add('nomeinstrumento', nomeinstrumento)
          ..add('resultado', resultado)
          ..add('referenciainstrumento', referenciainstrumento)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InstrumentoRecordBuilder
    implements Builder<InstrumentoRecord, InstrumentoRecordBuilder> {
  _$InstrumentoRecord? _$v;

  DocumentReference<Object?>? _sessao;
  DocumentReference<Object?>? get sessao => _$this._sessao;
  set sessao(DocumentReference<Object?>? sessao) => _$this._sessao = sessao;

  String? _areaavaliada;
  String? get areaavaliada => _$this._areaavaliada;
  set areaavaliada(String? areaavaliada) => _$this._areaavaliada = areaavaliada;

  String? _nomeinstrumento;
  String? get nomeinstrumento => _$this._nomeinstrumento;
  set nomeinstrumento(String? nomeinstrumento) =>
      _$this._nomeinstrumento = nomeinstrumento;

  String? _resultado;
  String? get resultado => _$this._resultado;
  set resultado(String? resultado) => _$this._resultado = resultado;

  String? _referenciainstrumento;
  String? get referenciainstrumento => _$this._referenciainstrumento;
  set referenciainstrumento(String? referenciainstrumento) =>
      _$this._referenciainstrumento = referenciainstrumento;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InstrumentoRecordBuilder() {
    InstrumentoRecord._initializeBuilder(this);
  }

  InstrumentoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessao = $v.sessao;
      _areaavaliada = $v.areaavaliada;
      _nomeinstrumento = $v.nomeinstrumento;
      _resultado = $v.resultado;
      _referenciainstrumento = $v.referenciainstrumento;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstrumentoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstrumentoRecord;
  }

  @override
  void update(void Function(InstrumentoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstrumentoRecord build() => _build();

  _$InstrumentoRecord _build() {
    final _$result = _$v ??
        new _$InstrumentoRecord._(
            sessao: sessao,
            areaavaliada: areaavaliada,
            nomeinstrumento: nomeinstrumento,
            resultado: resultado,
            referenciainstrumento: referenciainstrumento,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

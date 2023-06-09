// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_pais_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParaPaisRecord> _$paraPaisRecordSerializer =
    new _$ParaPaisRecordSerializer();

class _$ParaPaisRecordSerializer
    implements StructuredSerializer<ParaPaisRecord> {
  @override
  final Iterable<Type> types = const [ParaPaisRecord, _$ParaPaisRecord];
  @override
  final String wireName = 'ParaPaisRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParaPaisRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.resultado;
    if (value != null) {
      result
        ..add('resultado')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ParaPaisRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParaPaisRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'resultado':
          result.resultado = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ParaPaisRecord extends ParaPaisRecord {
  @override
  final int? resultado;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ParaPaisRecord([void Function(ParaPaisRecordBuilder)? updates]) =>
      (new ParaPaisRecordBuilder()..update(updates))._build();

  _$ParaPaisRecord._({this.resultado, this.ffRef}) : super._();

  @override
  ParaPaisRecord rebuild(void Function(ParaPaisRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParaPaisRecordBuilder toBuilder() =>
      new ParaPaisRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParaPaisRecord &&
        resultado == other.resultado &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resultado.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParaPaisRecord')
          ..add('resultado', resultado)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ParaPaisRecordBuilder
    implements Builder<ParaPaisRecord, ParaPaisRecordBuilder> {
  _$ParaPaisRecord? _$v;

  int? _resultado;
  int? get resultado => _$this._resultado;
  set resultado(int? resultado) => _$this._resultado = resultado;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ParaPaisRecordBuilder() {
    ParaPaisRecord._initializeBuilder(this);
  }

  ParaPaisRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resultado = $v.resultado;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParaPaisRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParaPaisRecord;
  }

  @override
  void update(void Function(ParaPaisRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParaPaisRecord build() => _build();

  _$ParaPaisRecord _build() {
    final _$result =
        _$v ?? new _$ParaPaisRecord._(resultado: resultado, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

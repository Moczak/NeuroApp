// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_escola_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParaEscolaRecord> _$paraEscolaRecordSerializer =
    new _$ParaEscolaRecordSerializer();

class _$ParaEscolaRecordSerializer
    implements StructuredSerializer<ParaEscolaRecord> {
  @override
  final Iterable<Type> types = const [ParaEscolaRecord, _$ParaEscolaRecord];
  @override
  final String wireName = 'ParaEscolaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParaEscolaRecord object,
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
  ParaEscolaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParaEscolaRecordBuilder();

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

class _$ParaEscolaRecord extends ParaEscolaRecord {
  @override
  final int? resultado;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ParaEscolaRecord(
          [void Function(ParaEscolaRecordBuilder)? updates]) =>
      (new ParaEscolaRecordBuilder()..update(updates))._build();

  _$ParaEscolaRecord._({this.resultado, this.ffRef}) : super._();

  @override
  ParaEscolaRecord rebuild(void Function(ParaEscolaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParaEscolaRecordBuilder toBuilder() =>
      new ParaEscolaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParaEscolaRecord &&
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
    return (newBuiltValueToStringHelper(r'ParaEscolaRecord')
          ..add('resultado', resultado)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ParaEscolaRecordBuilder
    implements Builder<ParaEscolaRecord, ParaEscolaRecordBuilder> {
  _$ParaEscolaRecord? _$v;

  int? _resultado;
  int? get resultado => _$this._resultado;
  set resultado(int? resultado) => _$this._resultado = resultado;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ParaEscolaRecordBuilder() {
    ParaEscolaRecord._initializeBuilder(this);
  }

  ParaEscolaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resultado = $v.resultado;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParaEscolaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParaEscolaRecord;
  }

  @override
  void update(void Function(ParaEscolaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParaEscolaRecord build() => _build();

  _$ParaEscolaRecord _build() {
    final _$result =
        _$v ?? new _$ParaEscolaRecord._(resultado: resultado, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codigodeetica_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodigodeeticaRecord> _$codigodeeticaRecordSerializer =
    new _$CodigodeeticaRecordSerializer();

class _$CodigodeeticaRecordSerializer
    implements StructuredSerializer<CodigodeeticaRecord> {
  @override
  final Iterable<Type> types = const [
    CodigodeeticaRecord,
    _$CodigodeeticaRecord
  ];
  @override
  final String wireName = 'CodigodeeticaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CodigodeeticaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.capitulo;
    if (value != null) {
      result
        ..add('capitulo')
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
  CodigodeeticaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodigodeeticaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'capitulo':
          result.capitulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
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

class _$CodigodeeticaRecord extends CodigodeeticaRecord {
  @override
  final String? capitulo;
  @override
  final String? descricao;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CodigodeeticaRecord(
          [void Function(CodigodeeticaRecordBuilder)? updates]) =>
      (new CodigodeeticaRecordBuilder()..update(updates))._build();

  _$CodigodeeticaRecord._({this.capitulo, this.descricao, this.ffRef})
      : super._();

  @override
  CodigodeeticaRecord rebuild(
          void Function(CodigodeeticaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodigodeeticaRecordBuilder toBuilder() =>
      new CodigodeeticaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodigodeeticaRecord &&
        capitulo == other.capitulo &&
        descricao == other.descricao &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capitulo.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CodigodeeticaRecord')
          ..add('capitulo', capitulo)
          ..add('descricao', descricao)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CodigodeeticaRecordBuilder
    implements Builder<CodigodeeticaRecord, CodigodeeticaRecordBuilder> {
  _$CodigodeeticaRecord? _$v;

  String? _capitulo;
  String? get capitulo => _$this._capitulo;
  set capitulo(String? capitulo) => _$this._capitulo = capitulo;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CodigodeeticaRecordBuilder() {
    CodigodeeticaRecord._initializeBuilder(this);
  }

  CodigodeeticaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capitulo = $v.capitulo;
      _descricao = $v.descricao;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodigodeeticaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CodigodeeticaRecord;
  }

  @override
  void update(void Function(CodigodeeticaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CodigodeeticaRecord build() => _build();

  _$CodigodeeticaRecord _build() {
    final _$result = _$v ??
        new _$CodigodeeticaRecord._(
            capitulo: capitulo, descricao: descricao, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

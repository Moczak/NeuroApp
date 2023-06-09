// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alunoscensupeg_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlunoscensupegRecord> _$alunoscensupegRecordSerializer =
    new _$AlunoscensupegRecordSerializer();

class _$AlunoscensupegRecordSerializer
    implements StructuredSerializer<AlunoscensupegRecord> {
  @override
  final Iterable<Type> types = const [
    AlunoscensupegRecord,
    _$AlunoscensupegRecord
  ];
  @override
  final String wireName = 'AlunoscensupegRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AlunoscensupegRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ativo;
    if (value != null) {
      result
        ..add('ativo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AlunoscensupegRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlunoscensupegRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ativo':
          result.ativo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$AlunoscensupegRecord extends AlunoscensupegRecord {
  @override
  final String? email;
  @override
  final bool? ativo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlunoscensupegRecord(
          [void Function(AlunoscensupegRecordBuilder)? updates]) =>
      (new AlunoscensupegRecordBuilder()..update(updates))._build();

  _$AlunoscensupegRecord._({this.email, this.ativo, this.ffRef}) : super._();

  @override
  AlunoscensupegRecord rebuild(
          void Function(AlunoscensupegRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlunoscensupegRecordBuilder toBuilder() =>
      new AlunoscensupegRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlunoscensupegRecord &&
        email == other.email &&
        ativo == other.ativo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, ativo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlunoscensupegRecord')
          ..add('email', email)
          ..add('ativo', ativo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlunoscensupegRecordBuilder
    implements Builder<AlunoscensupegRecord, AlunoscensupegRecordBuilder> {
  _$AlunoscensupegRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _ativo;
  bool? get ativo => _$this._ativo;
  set ativo(bool? ativo) => _$this._ativo = ativo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlunoscensupegRecordBuilder() {
    AlunoscensupegRecord._initializeBuilder(this);
  }

  AlunoscensupegRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _ativo = $v.ativo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlunoscensupegRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlunoscensupegRecord;
  }

  @override
  void update(void Function(AlunoscensupegRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlunoscensupegRecord build() => _build();

  _$AlunoscensupegRecord _build() {
    final _$result = _$v ??
        new _$AlunoscensupegRecord._(email: email, ativo: ativo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

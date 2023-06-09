// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parte_a_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParteARecord> _$parteARecordSerializer =
    new _$ParteARecordSerializer();

class _$ParteARecordSerializer implements StructuredSerializer<ParteARecord> {
  @override
  final Iterable<Type> types = const [ParteARecord, _$ParteARecord];
  @override
  final String wireName = 'ParteARecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParteARecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.q1;
    if (value != null) {
      result
        ..add('q1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q2;
    if (value != null) {
      result
        ..add('q2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q3;
    if (value != null) {
      result
        ..add('q3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q4;
    if (value != null) {
      result
        ..add('q4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q5;
    if (value != null) {
      result
        ..add('q5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q6;
    if (value != null) {
      result
        ..add('q6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q7;
    if (value != null) {
      result
        ..add('q7')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q8;
    if (value != null) {
      result
        ..add('q8')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q9;
    if (value != null) {
      result
        ..add('q9')
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
  ParteARecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParteARecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'q1':
          result.q1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q2':
          result.q2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q3':
          result.q3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q4':
          result.q4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q5':
          result.q5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q6':
          result.q6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q7':
          result.q7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q8':
          result.q8 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q9':
          result.q9 = serializers.deserialize(value,
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

class _$ParteARecord extends ParteARecord {
  @override
  final String? q1;
  @override
  final String? q2;
  @override
  final String? q3;
  @override
  final String? q4;
  @override
  final String? q5;
  @override
  final String? q6;
  @override
  final String? q7;
  @override
  final String? q8;
  @override
  final String? q9;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ParteARecord([void Function(ParteARecordBuilder)? updates]) =>
      (new ParteARecordBuilder()..update(updates))._build();

  _$ParteARecord._(
      {this.q1,
      this.q2,
      this.q3,
      this.q4,
      this.q5,
      this.q6,
      this.q7,
      this.q8,
      this.q9,
      this.ffRef})
      : super._();

  @override
  ParteARecord rebuild(void Function(ParteARecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParteARecordBuilder toBuilder() => new ParteARecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParteARecord &&
        q1 == other.q1 &&
        q2 == other.q2 &&
        q3 == other.q3 &&
        q4 == other.q4 &&
        q5 == other.q5 &&
        q6 == other.q6 &&
        q7 == other.q7 &&
        q8 == other.q8 &&
        q9 == other.q9 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, q1.hashCode);
    _$hash = $jc(_$hash, q2.hashCode);
    _$hash = $jc(_$hash, q3.hashCode);
    _$hash = $jc(_$hash, q4.hashCode);
    _$hash = $jc(_$hash, q5.hashCode);
    _$hash = $jc(_$hash, q6.hashCode);
    _$hash = $jc(_$hash, q7.hashCode);
    _$hash = $jc(_$hash, q8.hashCode);
    _$hash = $jc(_$hash, q9.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParteARecord')
          ..add('q1', q1)
          ..add('q2', q2)
          ..add('q3', q3)
          ..add('q4', q4)
          ..add('q5', q5)
          ..add('q6', q6)
          ..add('q7', q7)
          ..add('q8', q8)
          ..add('q9', q9)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ParteARecordBuilder
    implements Builder<ParteARecord, ParteARecordBuilder> {
  _$ParteARecord? _$v;

  String? _q1;
  String? get q1 => _$this._q1;
  set q1(String? q1) => _$this._q1 = q1;

  String? _q2;
  String? get q2 => _$this._q2;
  set q2(String? q2) => _$this._q2 = q2;

  String? _q3;
  String? get q3 => _$this._q3;
  set q3(String? q3) => _$this._q3 = q3;

  String? _q4;
  String? get q4 => _$this._q4;
  set q4(String? q4) => _$this._q4 = q4;

  String? _q5;
  String? get q5 => _$this._q5;
  set q5(String? q5) => _$this._q5 = q5;

  String? _q6;
  String? get q6 => _$this._q6;
  set q6(String? q6) => _$this._q6 = q6;

  String? _q7;
  String? get q7 => _$this._q7;
  set q7(String? q7) => _$this._q7 = q7;

  String? _q8;
  String? get q8 => _$this._q8;
  set q8(String? q8) => _$this._q8 = q8;

  String? _q9;
  String? get q9 => _$this._q9;
  set q9(String? q9) => _$this._q9 = q9;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ParteARecordBuilder() {
    ParteARecord._initializeBuilder(this);
  }

  ParteARecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _q1 = $v.q1;
      _q2 = $v.q2;
      _q3 = $v.q3;
      _q4 = $v.q4;
      _q5 = $v.q5;
      _q6 = $v.q6;
      _q7 = $v.q7;
      _q8 = $v.q8;
      _q9 = $v.q9;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParteARecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParteARecord;
  }

  @override
  void update(void Function(ParteARecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParteARecord build() => _build();

  _$ParteARecord _build() {
    final _$result = _$v ??
        new _$ParteARecord._(
            q1: q1,
            q2: q2,
            q3: q3,
            q4: q4,
            q5: q5,
            q6: q6,
            q7: q7,
            q8: q8,
            q9: q9,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

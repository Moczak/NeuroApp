// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonaRecord> _$personaRecordSerializer =
    new _$PersonaRecordSerializer();

class _$PersonaRecordSerializer implements StructuredSerializer<PersonaRecord> {
  @override
  final Iterable<Type> types = const [PersonaRecord, _$PersonaRecord];
  @override
  final String wireName = 'PersonaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PersonaRecord object,
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
    value = object.q10;
    if (value != null) {
      result
        ..add('q10')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q11;
    if (value != null) {
      result
        ..add('q11')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q12;
    if (value != null) {
      result
        ..add('q12')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q13;
    if (value != null) {
      result
        ..add('q13')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q14;
    if (value != null) {
      result
        ..add('q14')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q15;
    if (value != null) {
      result
        ..add('q15')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q18;
    if (value != null) {
      result
        ..add('q18')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q19;
    if (value != null) {
      result
        ..add('q19')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.homem;
    if (value != null) {
      result
        ..add('homem')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mulher;
    if (value != null) {
      result
        ..add('mulher')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  PersonaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonaRecordBuilder();

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
        case 'q10':
          result.q10 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q11':
          result.q11 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q12':
          result.q12 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q13':
          result.q13 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q14':
          result.q14 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q15':
          result.q15 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q18':
          result.q18 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q19':
          result.q19 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'homem':
          result.homem = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'mulher':
          result.mulher = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$PersonaRecord extends PersonaRecord {
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
  final String? q10;
  @override
  final String? q11;
  @override
  final String? q12;
  @override
  final String? q13;
  @override
  final String? q14;
  @override
  final String? q15;
  @override
  final String? q18;
  @override
  final String? q19;
  @override
  final bool? homem;
  @override
  final bool? mulher;
  @override
  final DateTime? data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PersonaRecord([void Function(PersonaRecordBuilder)? updates]) =>
      (new PersonaRecordBuilder()..update(updates))._build();

  _$PersonaRecord._(
      {this.q1,
      this.q2,
      this.q3,
      this.q4,
      this.q5,
      this.q6,
      this.q7,
      this.q8,
      this.q9,
      this.q10,
      this.q11,
      this.q12,
      this.q13,
      this.q14,
      this.q15,
      this.q18,
      this.q19,
      this.homem,
      this.mulher,
      this.data,
      this.ffRef})
      : super._();

  @override
  PersonaRecord rebuild(void Function(PersonaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonaRecordBuilder toBuilder() => new PersonaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonaRecord &&
        q1 == other.q1 &&
        q2 == other.q2 &&
        q3 == other.q3 &&
        q4 == other.q4 &&
        q5 == other.q5 &&
        q6 == other.q6 &&
        q7 == other.q7 &&
        q8 == other.q8 &&
        q9 == other.q9 &&
        q10 == other.q10 &&
        q11 == other.q11 &&
        q12 == other.q12 &&
        q13 == other.q13 &&
        q14 == other.q14 &&
        q15 == other.q15 &&
        q18 == other.q18 &&
        q19 == other.q19 &&
        homem == other.homem &&
        mulher == other.mulher &&
        data == other.data &&
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
    _$hash = $jc(_$hash, q10.hashCode);
    _$hash = $jc(_$hash, q11.hashCode);
    _$hash = $jc(_$hash, q12.hashCode);
    _$hash = $jc(_$hash, q13.hashCode);
    _$hash = $jc(_$hash, q14.hashCode);
    _$hash = $jc(_$hash, q15.hashCode);
    _$hash = $jc(_$hash, q18.hashCode);
    _$hash = $jc(_$hash, q19.hashCode);
    _$hash = $jc(_$hash, homem.hashCode);
    _$hash = $jc(_$hash, mulher.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonaRecord')
          ..add('q1', q1)
          ..add('q2', q2)
          ..add('q3', q3)
          ..add('q4', q4)
          ..add('q5', q5)
          ..add('q6', q6)
          ..add('q7', q7)
          ..add('q8', q8)
          ..add('q9', q9)
          ..add('q10', q10)
          ..add('q11', q11)
          ..add('q12', q12)
          ..add('q13', q13)
          ..add('q14', q14)
          ..add('q15', q15)
          ..add('q18', q18)
          ..add('q19', q19)
          ..add('homem', homem)
          ..add('mulher', mulher)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PersonaRecordBuilder
    implements Builder<PersonaRecord, PersonaRecordBuilder> {
  _$PersonaRecord? _$v;

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

  String? _q10;
  String? get q10 => _$this._q10;
  set q10(String? q10) => _$this._q10 = q10;

  String? _q11;
  String? get q11 => _$this._q11;
  set q11(String? q11) => _$this._q11 = q11;

  String? _q12;
  String? get q12 => _$this._q12;
  set q12(String? q12) => _$this._q12 = q12;

  String? _q13;
  String? get q13 => _$this._q13;
  set q13(String? q13) => _$this._q13 = q13;

  String? _q14;
  String? get q14 => _$this._q14;
  set q14(String? q14) => _$this._q14 = q14;

  String? _q15;
  String? get q15 => _$this._q15;
  set q15(String? q15) => _$this._q15 = q15;

  String? _q18;
  String? get q18 => _$this._q18;
  set q18(String? q18) => _$this._q18 = q18;

  String? _q19;
  String? get q19 => _$this._q19;
  set q19(String? q19) => _$this._q19 = q19;

  bool? _homem;
  bool? get homem => _$this._homem;
  set homem(bool? homem) => _$this._homem = homem;

  bool? _mulher;
  bool? get mulher => _$this._mulher;
  set mulher(bool? mulher) => _$this._mulher = mulher;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PersonaRecordBuilder() {
    PersonaRecord._initializeBuilder(this);
  }

  PersonaRecordBuilder get _$this {
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
      _q10 = $v.q10;
      _q11 = $v.q11;
      _q12 = $v.q12;
      _q13 = $v.q13;
      _q14 = $v.q14;
      _q15 = $v.q15;
      _q18 = $v.q18;
      _q19 = $v.q19;
      _homem = $v.homem;
      _mulher = $v.mulher;
      _data = $v.data;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonaRecord;
  }

  @override
  void update(void Function(PersonaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonaRecord build() => _build();

  _$PersonaRecord _build() {
    final _$result = _$v ??
        new _$PersonaRecord._(
            q1: q1,
            q2: q2,
            q3: q3,
            q4: q4,
            q5: q5,
            q6: q6,
            q7: q7,
            q8: q8,
            q9: q9,
            q10: q10,
            q11: q11,
            q12: q12,
            q13: q13,
            q14: q14,
            q15: q15,
            q18: q18,
            q19: q19,
            homem: homem,
            mulher: mulher,
            data: data,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

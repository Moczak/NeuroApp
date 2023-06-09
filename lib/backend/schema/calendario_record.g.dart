// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CalendarioRecord> _$calendarioRecordSerializer =
    new _$CalendarioRecordSerializer();

class _$CalendarioRecordSerializer
    implements StructuredSerializer<CalendarioRecord> {
  @override
  final Iterable<Type> types = const [CalendarioRecord, _$CalendarioRecord];
  @override
  final String wireName = 'CalendarioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CalendarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.anostring;
    if (value != null) {
      result
        ..add('anostring')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.concluido;
    if (value != null) {
      result
        ..add('concluido')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mesnomestring;
    if (value != null) {
      result
        ..add('mesnomestring')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.diadasemana;
    if (value != null) {
      result
        ..add('diadasemana')
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
  CalendarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalendarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'anostring':
          result.anostring = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'concluido':
          result.concluido = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'mesnomestring':
          result.mesnomestring = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'diadasemana':
          result.diadasemana = serializers.deserialize(value,
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

class _$CalendarioRecord extends CalendarioRecord {
  @override
  final String? anostring;
  @override
  final bool? concluido;
  @override
  final String? mesnomestring;
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? diadasemana;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CalendarioRecord(
          [void Function(CalendarioRecordBuilder)? updates]) =>
      (new CalendarioRecordBuilder()..update(updates))._build();

  _$CalendarioRecord._(
      {this.anostring,
      this.concluido,
      this.mesnomestring,
      this.user,
      this.diadasemana,
      this.ffRef})
      : super._();

  @override
  CalendarioRecord rebuild(void Function(CalendarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarioRecordBuilder toBuilder() =>
      new CalendarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarioRecord &&
        anostring == other.anostring &&
        concluido == other.concluido &&
        mesnomestring == other.mesnomestring &&
        user == other.user &&
        diadasemana == other.diadasemana &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anostring.hashCode);
    _$hash = $jc(_$hash, concluido.hashCode);
    _$hash = $jc(_$hash, mesnomestring.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, diadasemana.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalendarioRecord')
          ..add('anostring', anostring)
          ..add('concluido', concluido)
          ..add('mesnomestring', mesnomestring)
          ..add('user', user)
          ..add('diadasemana', diadasemana)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CalendarioRecordBuilder
    implements Builder<CalendarioRecord, CalendarioRecordBuilder> {
  _$CalendarioRecord? _$v;

  String? _anostring;
  String? get anostring => _$this._anostring;
  set anostring(String? anostring) => _$this._anostring = anostring;

  bool? _concluido;
  bool? get concluido => _$this._concluido;
  set concluido(bool? concluido) => _$this._concluido = concluido;

  String? _mesnomestring;
  String? get mesnomestring => _$this._mesnomestring;
  set mesnomestring(String? mesnomestring) =>
      _$this._mesnomestring = mesnomestring;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _diadasemana;
  String? get diadasemana => _$this._diadasemana;
  set diadasemana(String? diadasemana) => _$this._diadasemana = diadasemana;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CalendarioRecordBuilder() {
    CalendarioRecord._initializeBuilder(this);
  }

  CalendarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anostring = $v.anostring;
      _concluido = $v.concluido;
      _mesnomestring = $v.mesnomestring;
      _user = $v.user;
      _diadasemana = $v.diadasemana;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalendarioRecord;
  }

  @override
  void update(void Function(CalendarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarioRecord build() => _build();

  _$CalendarioRecord _build() {
    final _$result = _$v ??
        new _$CalendarioRecord._(
            anostring: anostring,
            concluido: concluido,
            mesnomestring: mesnomestring,
            user: user,
            diadasemana: diadasemana,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conners_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConnersRecord> _$connersRecordSerializer =
    new _$ConnersRecordSerializer();

class _$ConnersRecordSerializer implements StructuredSerializer<ConnersRecord> {
  @override
  final Iterable<Type> types = const [ConnersRecord, _$ConnersRecord];
  @override
  final String wireName = 'ConnersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConnersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.paciente;
    if (value != null) {
      result
        ..add('paciente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cricouparaescola;
    if (value != null) {
      result
        ..add('cricouparaescola')
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
  ConnersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConnersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'paciente':
          result.paciente = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cricouparaescola':
          result.cricouparaescola = serializers.deserialize(value,
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

class _$ConnersRecord extends ConnersRecord {
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final DateTime? data;
  @override
  final bool? cricouparaescola;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConnersRecord([void Function(ConnersRecordBuilder)? updates]) =>
      (new ConnersRecordBuilder()..update(updates))._build();

  _$ConnersRecord._(
      {this.paciente, this.data, this.cricouparaescola, this.ffRef})
      : super._();

  @override
  ConnersRecord rebuild(void Function(ConnersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnersRecordBuilder toBuilder() => new ConnersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConnersRecord &&
        paciente == other.paciente &&
        data == other.data &&
        cricouparaescola == other.cricouparaescola &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, cricouparaescola.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConnersRecord')
          ..add('paciente', paciente)
          ..add('data', data)
          ..add('cricouparaescola', cricouparaescola)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConnersRecordBuilder
    implements Builder<ConnersRecord, ConnersRecordBuilder> {
  _$ConnersRecord? _$v;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  bool? _cricouparaescola;
  bool? get cricouparaescola => _$this._cricouparaescola;
  set cricouparaescola(bool? cricouparaescola) =>
      _$this._cricouparaescola = cricouparaescola;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConnersRecordBuilder() {
    ConnersRecord._initializeBuilder(this);
  }

  ConnersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paciente = $v.paciente;
      _data = $v.data;
      _cricouparaescola = $v.cricouparaescola;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConnersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConnersRecord;
  }

  @override
  void update(void Function(ConnersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConnersRecord build() => _build();

  _$ConnersRecord _build() {
    final _$result = _$v ??
        new _$ConnersRecord._(
            paciente: paciente,
            data: data,
            cricouparaescola: cricouparaescola,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

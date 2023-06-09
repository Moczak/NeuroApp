// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asrs18_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Asrs18Record> _$asrs18RecordSerializer =
    new _$Asrs18RecordSerializer();

class _$Asrs18RecordSerializer implements StructuredSerializer<Asrs18Record> {
  @override
  final Iterable<Type> types = const [Asrs18Record, _$Asrs18Record];
  @override
  final String wireName = 'Asrs18Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Asrs18Record object,
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
  Asrs18Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Asrs18RecordBuilder();

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

class _$Asrs18Record extends Asrs18Record {
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final DateTime? data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Asrs18Record([void Function(Asrs18RecordBuilder)? updates]) =>
      (new Asrs18RecordBuilder()..update(updates))._build();

  _$Asrs18Record._({this.paciente, this.data, this.ffRef}) : super._();

  @override
  Asrs18Record rebuild(void Function(Asrs18RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Asrs18RecordBuilder toBuilder() => new Asrs18RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Asrs18Record &&
        paciente == other.paciente &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Asrs18Record')
          ..add('paciente', paciente)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Asrs18RecordBuilder
    implements Builder<Asrs18Record, Asrs18RecordBuilder> {
  _$Asrs18Record? _$v;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Asrs18RecordBuilder() {
    Asrs18Record._initializeBuilder(this);
  }

  Asrs18RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paciente = $v.paciente;
      _data = $v.data;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Asrs18Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Asrs18Record;
  }

  @override
  void update(void Function(Asrs18RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Asrs18Record build() => _build();

  _$Asrs18Record _build() {
    final _$result = _$v ??
        new _$Asrs18Record._(paciente: paciente, data: data, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

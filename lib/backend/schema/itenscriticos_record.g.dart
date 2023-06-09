// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itenscriticos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItenscriticosRecord> _$itenscriticosRecordSerializer =
    new _$ItenscriticosRecordSerializer();

class _$ItenscriticosRecordSerializer
    implements StructuredSerializer<ItenscriticosRecord> {
  @override
  final Iterable<Type> types = const [
    ItenscriticosRecord,
    _$ItenscriticosRecord
  ];
  @override
  final String wireName = 'ItenscriticosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ItenscriticosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.questaocritica;
    if (value != null) {
      result
        ..add('questaocritica')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ItenscriticosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItenscriticosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'questaocritica':
          result.questaocritica.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ItenscriticosRecord extends ItenscriticosRecord {
  @override
  final BuiltList<String>? questaocritica;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItenscriticosRecord(
          [void Function(ItenscriticosRecordBuilder)? updates]) =>
      (new ItenscriticosRecordBuilder()..update(updates))._build();

  _$ItenscriticosRecord._({this.questaocritica, this.ffRef}) : super._();

  @override
  ItenscriticosRecord rebuild(
          void Function(ItenscriticosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItenscriticosRecordBuilder toBuilder() =>
      new ItenscriticosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItenscriticosRecord &&
        questaocritica == other.questaocritica &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questaocritica.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItenscriticosRecord')
          ..add('questaocritica', questaocritica)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItenscriticosRecordBuilder
    implements Builder<ItenscriticosRecord, ItenscriticosRecordBuilder> {
  _$ItenscriticosRecord? _$v;

  ListBuilder<String>? _questaocritica;
  ListBuilder<String> get questaocritica =>
      _$this._questaocritica ??= new ListBuilder<String>();
  set questaocritica(ListBuilder<String>? questaocritica) =>
      _$this._questaocritica = questaocritica;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItenscriticosRecordBuilder() {
    ItenscriticosRecord._initializeBuilder(this);
  }

  ItenscriticosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questaocritica = $v.questaocritica?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItenscriticosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItenscriticosRecord;
  }

  @override
  void update(void Function(ItenscriticosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItenscriticosRecord build() => _build();

  _$ItenscriticosRecord _build() {
    _$ItenscriticosRecord _$result;
    try {
      _$result = _$v ??
          new _$ItenscriticosRecord._(
              questaocritica: _questaocritica?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questaocritica';
        _questaocritica?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ItenscriticosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

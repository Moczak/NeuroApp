// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelo_ran_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModeloRanRecord> _$modeloRanRecordSerializer =
    new _$ModeloRanRecordSerializer();

class _$ModeloRanRecordSerializer
    implements StructuredSerializer<ModeloRanRecord> {
  @override
  final Iterable<Type> types = const [ModeloRanRecord, _$ModeloRanRecord];
  @override
  final String wireName = 'ModeloRanRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ModeloRanRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.item1;
    if (value != null) {
      result
        ..add('item1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemIII;
    if (value != null) {
      result
        ..add('itemIII')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iii1;
    if (value != null) {
      result
        ..add('III-1')
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
  ModeloRanRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModeloRanRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item1':
          result.item1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'itemIII':
          result.itemIII = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'III-1':
          result.iii1 = serializers.deserialize(value,
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

class _$ModeloRanRecord extends ModeloRanRecord {
  @override
  final String? item1;
  @override
  final String? itemIII;
  @override
  final String? iii1;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ModeloRanRecord([void Function(ModeloRanRecordBuilder)? updates]) =>
      (new ModeloRanRecordBuilder()..update(updates))._build();

  _$ModeloRanRecord._({this.item1, this.itemIII, this.iii1, this.ffRef})
      : super._();

  @override
  ModeloRanRecord rebuild(void Function(ModeloRanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModeloRanRecordBuilder toBuilder() =>
      new ModeloRanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModeloRanRecord &&
        item1 == other.item1 &&
        itemIII == other.itemIII &&
        iii1 == other.iii1 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item1.hashCode);
    _$hash = $jc(_$hash, itemIII.hashCode);
    _$hash = $jc(_$hash, iii1.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModeloRanRecord')
          ..add('item1', item1)
          ..add('itemIII', itemIII)
          ..add('iii1', iii1)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ModeloRanRecordBuilder
    implements Builder<ModeloRanRecord, ModeloRanRecordBuilder> {
  _$ModeloRanRecord? _$v;

  String? _item1;
  String? get item1 => _$this._item1;
  set item1(String? item1) => _$this._item1 = item1;

  String? _itemIII;
  String? get itemIII => _$this._itemIII;
  set itemIII(String? itemIII) => _$this._itemIII = itemIII;

  String? _iii1;
  String? get iii1 => _$this._iii1;
  set iii1(String? iii1) => _$this._iii1 = iii1;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ModeloRanRecordBuilder() {
    ModeloRanRecord._initializeBuilder(this);
  }

  ModeloRanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item1 = $v.item1;
      _itemIII = $v.itemIII;
      _iii1 = $v.iii1;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModeloRanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModeloRanRecord;
  }

  @override
  void update(void Function(ModeloRanRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModeloRanRecord build() => _build();

  _$ModeloRanRecord _build() {
    final _$result = _$v ??
        new _$ModeloRanRecord._(
            item1: item1, itemIII: itemIII, iii1: iii1, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

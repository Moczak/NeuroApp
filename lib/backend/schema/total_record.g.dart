// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TotalRecord> _$totalRecordSerializer = new _$TotalRecordSerializer();

class _$TotalRecordSerializer implements StructuredSerializer<TotalRecord> {
  @override
  final Iterable<Type> types = const [TotalRecord, _$TotalRecord];
  @override
  final String wireName = 'TotalRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TotalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.questaofalha;
    if (value != null) {
      result
        ..add('questaofalha')
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
  TotalRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TotalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'questaofalha':
          result.questaofalha.replace(serializers.deserialize(value,
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

class _$TotalRecord extends TotalRecord {
  @override
  final BuiltList<String>? questaofalha;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TotalRecord([void Function(TotalRecordBuilder)? updates]) =>
      (new TotalRecordBuilder()..update(updates))._build();

  _$TotalRecord._({this.questaofalha, this.ffRef}) : super._();

  @override
  TotalRecord rebuild(void Function(TotalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TotalRecordBuilder toBuilder() => new TotalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TotalRecord &&
        questaofalha == other.questaofalha &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questaofalha.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TotalRecord')
          ..add('questaofalha', questaofalha)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TotalRecordBuilder implements Builder<TotalRecord, TotalRecordBuilder> {
  _$TotalRecord? _$v;

  ListBuilder<String>? _questaofalha;
  ListBuilder<String> get questaofalha =>
      _$this._questaofalha ??= new ListBuilder<String>();
  set questaofalha(ListBuilder<String>? questaofalha) =>
      _$this._questaofalha = questaofalha;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TotalRecordBuilder() {
    TotalRecord._initializeBuilder(this);
  }

  TotalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questaofalha = $v.questaofalha?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TotalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TotalRecord;
  }

  @override
  void update(void Function(TotalRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TotalRecord build() => _build();

  _$TotalRecord _build() {
    _$TotalRecord _$result;
    try {
      _$result = _$v ??
          new _$TotalRecord._(
              questaofalha: _questaofalha?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questaofalha';
        _questaofalha?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TotalRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

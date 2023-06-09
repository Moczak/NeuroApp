// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recibos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecibosRecord> _$recibosRecordSerializer =
    new _$RecibosRecordSerializer();

class _$RecibosRecordSerializer implements StructuredSerializer<RecibosRecord> {
  @override
  final Iterable<Type> types = const [RecibosRecord, _$RecibosRecord];
  @override
  final String wireName = 'RecibosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecibosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sessao;
    if (value != null) {
      result
        ..add('sessao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.urlrecibo;
    if (value != null) {
      result
        ..add('urlrecibo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  RecibosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecibosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sessao':
          result.sessao = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'urlrecibo':
          result.urlrecibo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$RecibosRecord extends RecibosRecord {
  @override
  final DocumentReference<Object?>? sessao;
  @override
  final String? urlrecibo;
  @override
  final DateTime? data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecibosRecord([void Function(RecibosRecordBuilder)? updates]) =>
      (new RecibosRecordBuilder()..update(updates))._build();

  _$RecibosRecord._({this.sessao, this.urlrecibo, this.data, this.ffRef})
      : super._();

  @override
  RecibosRecord rebuild(void Function(RecibosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecibosRecordBuilder toBuilder() => new RecibosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecibosRecord &&
        sessao == other.sessao &&
        urlrecibo == other.urlrecibo &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessao.hashCode);
    _$hash = $jc(_$hash, urlrecibo.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecibosRecord')
          ..add('sessao', sessao)
          ..add('urlrecibo', urlrecibo)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecibosRecordBuilder
    implements Builder<RecibosRecord, RecibosRecordBuilder> {
  _$RecibosRecord? _$v;

  DocumentReference<Object?>? _sessao;
  DocumentReference<Object?>? get sessao => _$this._sessao;
  set sessao(DocumentReference<Object?>? sessao) => _$this._sessao = sessao;

  String? _urlrecibo;
  String? get urlrecibo => _$this._urlrecibo;
  set urlrecibo(String? urlrecibo) => _$this._urlrecibo = urlrecibo;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecibosRecordBuilder() {
    RecibosRecord._initializeBuilder(this);
  }

  RecibosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessao = $v.sessao;
      _urlrecibo = $v.urlrecibo;
      _data = $v.data;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecibosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecibosRecord;
  }

  @override
  void update(void Function(RecibosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecibosRecord build() => _build();

  _$RecibosRecord _build() {
    final _$result = _$v ??
        new _$RecibosRecord._(
            sessao: sessao, urlrecibo: urlrecibo, data: data, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

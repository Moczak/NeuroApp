// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dicas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DicasRecord> _$dicasRecordSerializer = new _$DicasRecordSerializer();

class _$DicasRecordSerializer implements StructuredSerializer<DicasRecord> {
  @override
  final Iterable<Type> types = const [DicasRecord, _$DicasRecord];
  @override
  final String wireName = 'DicasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DicasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
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
  DicasRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DicasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
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

class _$DicasRecord extends DicasRecord {
  @override
  final String? titulo;
  @override
  final String? descricao;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DicasRecord([void Function(DicasRecordBuilder)? updates]) =>
      (new DicasRecordBuilder()..update(updates))._build();

  _$DicasRecord._({this.titulo, this.descricao, this.ffRef}) : super._();

  @override
  DicasRecord rebuild(void Function(DicasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DicasRecordBuilder toBuilder() => new DicasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DicasRecord &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DicasRecord')
          ..add('titulo', titulo)
          ..add('descricao', descricao)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DicasRecordBuilder implements Builder<DicasRecord, DicasRecordBuilder> {
  _$DicasRecord? _$v;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DicasRecordBuilder() {
    DicasRecord._initializeBuilder(this);
  }

  DicasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _descricao = $v.descricao;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DicasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DicasRecord;
  }

  @override
  void update(void Function(DicasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DicasRecord build() => _build();

  _$DicasRecord _build() {
    final _$result = _$v ??
        new _$DicasRecord._(titulo: titulo, descricao: descricao, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

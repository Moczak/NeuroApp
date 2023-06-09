// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estruturaraltecnico_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EstruturaraltecnicoRecord> _$estruturaraltecnicoRecordSerializer =
    new _$EstruturaraltecnicoRecordSerializer();

class _$EstruturaraltecnicoRecordSerializer
    implements StructuredSerializer<EstruturaraltecnicoRecord> {
  @override
  final Iterable<Type> types = const [
    EstruturaraltecnicoRecord,
    _$EstruturaraltecnicoRecord
  ];
  @override
  final String wireName = 'EstruturaraltecnicoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EstruturaraltecnicoRecord object,
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
    value = object.descricao1;
    if (value != null) {
      result
        ..add('descricao1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao2;
    if (value != null) {
      result
        ..add('descricao2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.brevedescricao;
    if (value != null) {
      result
        ..add('brevedescricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conclusao;
    if (value != null) {
      result
        ..add('conclusao')
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
  EstruturaraltecnicoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EstruturaraltecnicoRecordBuilder();

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
        case 'descricao1':
          result.descricao1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricao2':
          result.descricao2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'brevedescricao':
          result.brevedescricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'conclusao':
          result.conclusao = serializers.deserialize(value,
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

class _$EstruturaraltecnicoRecord extends EstruturaraltecnicoRecord {
  @override
  final String? titulo;
  @override
  final String? descricao1;
  @override
  final String? descricao2;
  @override
  final String? brevedescricao;
  @override
  final String? conclusao;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EstruturaraltecnicoRecord(
          [void Function(EstruturaraltecnicoRecordBuilder)? updates]) =>
      (new EstruturaraltecnicoRecordBuilder()..update(updates))._build();

  _$EstruturaraltecnicoRecord._(
      {this.titulo,
      this.descricao1,
      this.descricao2,
      this.brevedescricao,
      this.conclusao,
      this.ffRef})
      : super._();

  @override
  EstruturaraltecnicoRecord rebuild(
          void Function(EstruturaraltecnicoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstruturaraltecnicoRecordBuilder toBuilder() =>
      new EstruturaraltecnicoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstruturaraltecnicoRecord &&
        titulo == other.titulo &&
        descricao1 == other.descricao1 &&
        descricao2 == other.descricao2 &&
        brevedescricao == other.brevedescricao &&
        conclusao == other.conclusao &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, descricao1.hashCode);
    _$hash = $jc(_$hash, descricao2.hashCode);
    _$hash = $jc(_$hash, brevedescricao.hashCode);
    _$hash = $jc(_$hash, conclusao.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EstruturaraltecnicoRecord')
          ..add('titulo', titulo)
          ..add('descricao1', descricao1)
          ..add('descricao2', descricao2)
          ..add('brevedescricao', brevedescricao)
          ..add('conclusao', conclusao)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EstruturaraltecnicoRecordBuilder
    implements
        Builder<EstruturaraltecnicoRecord, EstruturaraltecnicoRecordBuilder> {
  _$EstruturaraltecnicoRecord? _$v;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _descricao1;
  String? get descricao1 => _$this._descricao1;
  set descricao1(String? descricao1) => _$this._descricao1 = descricao1;

  String? _descricao2;
  String? get descricao2 => _$this._descricao2;
  set descricao2(String? descricao2) => _$this._descricao2 = descricao2;

  String? _brevedescricao;
  String? get brevedescricao => _$this._brevedescricao;
  set brevedescricao(String? brevedescricao) =>
      _$this._brevedescricao = brevedescricao;

  String? _conclusao;
  String? get conclusao => _$this._conclusao;
  set conclusao(String? conclusao) => _$this._conclusao = conclusao;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EstruturaraltecnicoRecordBuilder() {
    EstruturaraltecnicoRecord._initializeBuilder(this);
  }

  EstruturaraltecnicoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _descricao1 = $v.descricao1;
      _descricao2 = $v.descricao2;
      _brevedescricao = $v.brevedescricao;
      _conclusao = $v.conclusao;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstruturaraltecnicoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EstruturaraltecnicoRecord;
  }

  @override
  void update(void Function(EstruturaraltecnicoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstruturaraltecnicoRecord build() => _build();

  _$EstruturaraltecnicoRecord _build() {
    final _$result = _$v ??
        new _$EstruturaraltecnicoRecord._(
            titulo: titulo,
            descricao1: descricao1,
            descricao2: descricao2,
            brevedescricao: brevedescricao,
            conclusao: conclusao,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

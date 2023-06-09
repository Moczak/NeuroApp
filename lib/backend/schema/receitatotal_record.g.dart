// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receitatotal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReceitatotalRecord> _$receitatotalRecordSerializer =
    new _$ReceitatotalRecordSerializer();

class _$ReceitatotalRecordSerializer
    implements StructuredSerializer<ReceitatotalRecord> {
  @override
  final Iterable<Type> types = const [ReceitatotalRecord, _$ReceitatotalRecord];
  @override
  final String wireName = 'ReceitatotalRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ReceitatotalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sessao;
    if (value != null) {
      result
        ..add('sessao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.receitaspagasInt;
    if (value != null) {
      result
        ..add('receitaspagasInt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.receitaspagasDouble;
    if (value != null) {
      result
        ..add('receitaspagasDouble')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.paciente;
    if (value != null) {
      result
        ..add('paciente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nomepaciente;
    if (value != null) {
      result
        ..add('nomepaciente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datastring;
    if (value != null) {
      result
        ..add('datastring')
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
  ReceitatotalRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReceitatotalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'sessao':
          result.sessao = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'receitaspagasInt':
          result.receitaspagasInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'receitaspagasDouble':
          result.receitaspagasDouble = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'paciente':
          result.paciente = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'nomepaciente':
          result.nomepaciente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'datastring':
          result.datastring = serializers.deserialize(value,
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

class _$ReceitatotalRecord extends ReceitatotalRecord {
  @override
  final DateTime? data;
  @override
  final DocumentReference<Object?>? sessao;
  @override
  final int? receitaspagasInt;
  @override
  final double? receitaspagasDouble;
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final String? nomepaciente;
  @override
  final String? datastring;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReceitatotalRecord(
          [void Function(ReceitatotalRecordBuilder)? updates]) =>
      (new ReceitatotalRecordBuilder()..update(updates))._build();

  _$ReceitatotalRecord._(
      {this.data,
      this.sessao,
      this.receitaspagasInt,
      this.receitaspagasDouble,
      this.paciente,
      this.nomepaciente,
      this.datastring,
      this.ffRef})
      : super._();

  @override
  ReceitatotalRecord rebuild(
          void Function(ReceitatotalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceitatotalRecordBuilder toBuilder() =>
      new ReceitatotalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceitatotalRecord &&
        data == other.data &&
        sessao == other.sessao &&
        receitaspagasInt == other.receitaspagasInt &&
        receitaspagasDouble == other.receitaspagasDouble &&
        paciente == other.paciente &&
        nomepaciente == other.nomepaciente &&
        datastring == other.datastring &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, sessao.hashCode);
    _$hash = $jc(_$hash, receitaspagasInt.hashCode);
    _$hash = $jc(_$hash, receitaspagasDouble.hashCode);
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, nomepaciente.hashCode);
    _$hash = $jc(_$hash, datastring.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceitatotalRecord')
          ..add('data', data)
          ..add('sessao', sessao)
          ..add('receitaspagasInt', receitaspagasInt)
          ..add('receitaspagasDouble', receitaspagasDouble)
          ..add('paciente', paciente)
          ..add('nomepaciente', nomepaciente)
          ..add('datastring', datastring)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReceitatotalRecordBuilder
    implements Builder<ReceitatotalRecord, ReceitatotalRecordBuilder> {
  _$ReceitatotalRecord? _$v;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DocumentReference<Object?>? _sessao;
  DocumentReference<Object?>? get sessao => _$this._sessao;
  set sessao(DocumentReference<Object?>? sessao) => _$this._sessao = sessao;

  int? _receitaspagasInt;
  int? get receitaspagasInt => _$this._receitaspagasInt;
  set receitaspagasInt(int? receitaspagasInt) =>
      _$this._receitaspagasInt = receitaspagasInt;

  double? _receitaspagasDouble;
  double? get receitaspagasDouble => _$this._receitaspagasDouble;
  set receitaspagasDouble(double? receitaspagasDouble) =>
      _$this._receitaspagasDouble = receitaspagasDouble;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  String? _nomepaciente;
  String? get nomepaciente => _$this._nomepaciente;
  set nomepaciente(String? nomepaciente) => _$this._nomepaciente = nomepaciente;

  String? _datastring;
  String? get datastring => _$this._datastring;
  set datastring(String? datastring) => _$this._datastring = datastring;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReceitatotalRecordBuilder() {
    ReceitatotalRecord._initializeBuilder(this);
  }

  ReceitatotalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _sessao = $v.sessao;
      _receitaspagasInt = $v.receitaspagasInt;
      _receitaspagasDouble = $v.receitaspagasDouble;
      _paciente = $v.paciente;
      _nomepaciente = $v.nomepaciente;
      _datastring = $v.datastring;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceitatotalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReceitatotalRecord;
  }

  @override
  void update(void Function(ReceitatotalRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceitatotalRecord build() => _build();

  _$ReceitatotalRecord _build() {
    final _$result = _$v ??
        new _$ReceitatotalRecord._(
            data: data,
            sessao: sessao,
            receitaspagasInt: receitaspagasInt,
            receitaspagasDouble: receitaspagasDouble,
            paciente: paciente,
            nomepaciente: nomepaciente,
            datastring: datastring,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

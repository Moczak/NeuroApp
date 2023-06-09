// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DespesasRecord> _$despesasRecordSerializer =
    new _$DespesasRecordSerializer();

class _$DespesasRecordSerializer
    implements StructuredSerializer<DespesasRecord> {
  @override
  final Iterable<Type> types = const [DespesasRecord, _$DespesasRecord];
  @override
  final String wireName = 'DespesasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DespesasRecord object,
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
    value = object.fixo;
    if (value != null) {
      result
        ..add('fixo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.valorInt;
    if (value != null) {
      result
        ..add('valorInt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.valorDouble;
    if (value != null) {
      result
        ..add('valorDouble')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pago;
    if (value != null) {
      result
        ..add('pago')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.diadepagamento;
    if (value != null) {
      result
        ..add('diadepagamento')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  DespesasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DespesasRecordBuilder();

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
        case 'fixo':
          result.fixo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'valorInt':
          result.valorInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'valorDouble':
          result.valorDouble = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pago':
          result.pago = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'diadepagamento':
          result.diadepagamento = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$DespesasRecord extends DespesasRecord {
  @override
  final DateTime? data;
  @override
  final bool? fixo;
  @override
  final int? valorInt;
  @override
  final double? valorDouble;
  @override
  final String? titulo;
  @override
  final bool? pago;
  @override
  final String? descricao;
  @override
  final int? diadepagamento;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DespesasRecord([void Function(DespesasRecordBuilder)? updates]) =>
      (new DespesasRecordBuilder()..update(updates))._build();

  _$DespesasRecord._(
      {this.data,
      this.fixo,
      this.valorInt,
      this.valorDouble,
      this.titulo,
      this.pago,
      this.descricao,
      this.diadepagamento,
      this.ffRef})
      : super._();

  @override
  DespesasRecord rebuild(void Function(DespesasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DespesasRecordBuilder toBuilder() =>
      new DespesasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DespesasRecord &&
        data == other.data &&
        fixo == other.fixo &&
        valorInt == other.valorInt &&
        valorDouble == other.valorDouble &&
        titulo == other.titulo &&
        pago == other.pago &&
        descricao == other.descricao &&
        diadepagamento == other.diadepagamento &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, fixo.hashCode);
    _$hash = $jc(_$hash, valorInt.hashCode);
    _$hash = $jc(_$hash, valorDouble.hashCode);
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, pago.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, diadepagamento.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DespesasRecord')
          ..add('data', data)
          ..add('fixo', fixo)
          ..add('valorInt', valorInt)
          ..add('valorDouble', valorDouble)
          ..add('titulo', titulo)
          ..add('pago', pago)
          ..add('descricao', descricao)
          ..add('diadepagamento', diadepagamento)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DespesasRecordBuilder
    implements Builder<DespesasRecord, DespesasRecordBuilder> {
  _$DespesasRecord? _$v;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  bool? _fixo;
  bool? get fixo => _$this._fixo;
  set fixo(bool? fixo) => _$this._fixo = fixo;

  int? _valorInt;
  int? get valorInt => _$this._valorInt;
  set valorInt(int? valorInt) => _$this._valorInt = valorInt;

  double? _valorDouble;
  double? get valorDouble => _$this._valorDouble;
  set valorDouble(double? valorDouble) => _$this._valorDouble = valorDouble;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  bool? _pago;
  bool? get pago => _$this._pago;
  set pago(bool? pago) => _$this._pago = pago;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  int? _diadepagamento;
  int? get diadepagamento => _$this._diadepagamento;
  set diadepagamento(int? diadepagamento) =>
      _$this._diadepagamento = diadepagamento;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DespesasRecordBuilder() {
    DespesasRecord._initializeBuilder(this);
  }

  DespesasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _fixo = $v.fixo;
      _valorInt = $v.valorInt;
      _valorDouble = $v.valorDouble;
      _titulo = $v.titulo;
      _pago = $v.pago;
      _descricao = $v.descricao;
      _diadepagamento = $v.diadepagamento;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DespesasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DespesasRecord;
  }

  @override
  void update(void Function(DespesasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DespesasRecord build() => _build();

  _$DespesasRecord _build() {
    final _$result = _$v ??
        new _$DespesasRecord._(
            data: data,
            fixo: fixo,
            valorInt: valorInt,
            valorDouble: valorDouble,
            titulo: titulo,
            pago: pago,
            descricao: descricao,
            diadepagamento: diadepagamento,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

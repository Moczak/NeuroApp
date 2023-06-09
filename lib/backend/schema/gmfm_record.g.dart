// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gmfm_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmfmRecord> _$gmfmRecordSerializer = new _$GmfmRecordSerializer();

class _$GmfmRecordSerializer implements StructuredSerializer<GmfmRecord> {
  @override
  final Iterable<Type> types = const [GmfmRecord, _$GmfmRecord];
  @override
  final String wireName = 'GmfmRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmfmRecord object,
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
    value = object.resultadoA;
    if (value != null) {
      result
        ..add('resultadoA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.resultadoB;
    if (value != null) {
      result
        ..add('resultadoB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.resultadoC;
    if (value != null) {
      result
        ..add('resultadoC')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.resultadoD;
    if (value != null) {
      result
        ..add('resultadoD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.resultadoE;
    if (value != null) {
      result
        ..add('resultadoE')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.porcentagemA;
    if (value != null) {
      result
        ..add('porcentagemA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.porcentagemB;
    if (value != null) {
      result
        ..add('porcentagemB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.porcentagemC;
    if (value != null) {
      result
        ..add('porcentagemC')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.porcentagemD;
    if (value != null) {
      result
        ..add('porcentagemD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.porcentagemE;
    if (value != null) {
      result
        ..add('porcentagemE')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('DATA')
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
  GmfmRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmfmRecordBuilder();

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
        case 'resultadoA':
          result.resultadoA = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'resultadoB':
          result.resultadoB = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'resultadoC':
          result.resultadoC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'resultadoD':
          result.resultadoD = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'resultadoE':
          result.resultadoE = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'porcentagemA':
          result.porcentagemA = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'porcentagemB':
          result.porcentagemB = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'porcentagemC':
          result.porcentagemC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'porcentagemD':
          result.porcentagemD = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'porcentagemE':
          result.porcentagemE = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'DATA':
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

class _$GmfmRecord extends GmfmRecord {
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final double? resultadoA;
  @override
  final double? resultadoB;
  @override
  final double? resultadoC;
  @override
  final double? resultadoD;
  @override
  final double? resultadoE;
  @override
  final double? porcentagemA;
  @override
  final double? porcentagemB;
  @override
  final double? porcentagemC;
  @override
  final double? porcentagemD;
  @override
  final double? porcentagemE;
  @override
  final DateTime? data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GmfmRecord([void Function(GmfmRecordBuilder)? updates]) =>
      (new GmfmRecordBuilder()..update(updates))._build();

  _$GmfmRecord._(
      {this.paciente,
      this.resultadoA,
      this.resultadoB,
      this.resultadoC,
      this.resultadoD,
      this.resultadoE,
      this.porcentagemA,
      this.porcentagemB,
      this.porcentagemC,
      this.porcentagemD,
      this.porcentagemE,
      this.data,
      this.ffRef})
      : super._();

  @override
  GmfmRecord rebuild(void Function(GmfmRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmfmRecordBuilder toBuilder() => new GmfmRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmfmRecord &&
        paciente == other.paciente &&
        resultadoA == other.resultadoA &&
        resultadoB == other.resultadoB &&
        resultadoC == other.resultadoC &&
        resultadoD == other.resultadoD &&
        resultadoE == other.resultadoE &&
        porcentagemA == other.porcentagemA &&
        porcentagemB == other.porcentagemB &&
        porcentagemC == other.porcentagemC &&
        porcentagemD == other.porcentagemD &&
        porcentagemE == other.porcentagemE &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, resultadoA.hashCode);
    _$hash = $jc(_$hash, resultadoB.hashCode);
    _$hash = $jc(_$hash, resultadoC.hashCode);
    _$hash = $jc(_$hash, resultadoD.hashCode);
    _$hash = $jc(_$hash, resultadoE.hashCode);
    _$hash = $jc(_$hash, porcentagemA.hashCode);
    _$hash = $jc(_$hash, porcentagemB.hashCode);
    _$hash = $jc(_$hash, porcentagemC.hashCode);
    _$hash = $jc(_$hash, porcentagemD.hashCode);
    _$hash = $jc(_$hash, porcentagemE.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmfmRecord')
          ..add('paciente', paciente)
          ..add('resultadoA', resultadoA)
          ..add('resultadoB', resultadoB)
          ..add('resultadoC', resultadoC)
          ..add('resultadoD', resultadoD)
          ..add('resultadoE', resultadoE)
          ..add('porcentagemA', porcentagemA)
          ..add('porcentagemB', porcentagemB)
          ..add('porcentagemC', porcentagemC)
          ..add('porcentagemD', porcentagemD)
          ..add('porcentagemE', porcentagemE)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GmfmRecordBuilder implements Builder<GmfmRecord, GmfmRecordBuilder> {
  _$GmfmRecord? _$v;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  double? _resultadoA;
  double? get resultadoA => _$this._resultadoA;
  set resultadoA(double? resultadoA) => _$this._resultadoA = resultadoA;

  double? _resultadoB;
  double? get resultadoB => _$this._resultadoB;
  set resultadoB(double? resultadoB) => _$this._resultadoB = resultadoB;

  double? _resultadoC;
  double? get resultadoC => _$this._resultadoC;
  set resultadoC(double? resultadoC) => _$this._resultadoC = resultadoC;

  double? _resultadoD;
  double? get resultadoD => _$this._resultadoD;
  set resultadoD(double? resultadoD) => _$this._resultadoD = resultadoD;

  double? _resultadoE;
  double? get resultadoE => _$this._resultadoE;
  set resultadoE(double? resultadoE) => _$this._resultadoE = resultadoE;

  double? _porcentagemA;
  double? get porcentagemA => _$this._porcentagemA;
  set porcentagemA(double? porcentagemA) => _$this._porcentagemA = porcentagemA;

  double? _porcentagemB;
  double? get porcentagemB => _$this._porcentagemB;
  set porcentagemB(double? porcentagemB) => _$this._porcentagemB = porcentagemB;

  double? _porcentagemC;
  double? get porcentagemC => _$this._porcentagemC;
  set porcentagemC(double? porcentagemC) => _$this._porcentagemC = porcentagemC;

  double? _porcentagemD;
  double? get porcentagemD => _$this._porcentagemD;
  set porcentagemD(double? porcentagemD) => _$this._porcentagemD = porcentagemD;

  double? _porcentagemE;
  double? get porcentagemE => _$this._porcentagemE;
  set porcentagemE(double? porcentagemE) => _$this._porcentagemE = porcentagemE;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GmfmRecordBuilder() {
    GmfmRecord._initializeBuilder(this);
  }

  GmfmRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paciente = $v.paciente;
      _resultadoA = $v.resultadoA;
      _resultadoB = $v.resultadoB;
      _resultadoC = $v.resultadoC;
      _resultadoD = $v.resultadoD;
      _resultadoE = $v.resultadoE;
      _porcentagemA = $v.porcentagemA;
      _porcentagemB = $v.porcentagemB;
      _porcentagemC = $v.porcentagemC;
      _porcentagemD = $v.porcentagemD;
      _porcentagemE = $v.porcentagemE;
      _data = $v.data;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmfmRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmfmRecord;
  }

  @override
  void update(void Function(GmfmRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmfmRecord build() => _build();

  _$GmfmRecord _build() {
    final _$result = _$v ??
        new _$GmfmRecord._(
            paciente: paciente,
            resultadoA: resultadoA,
            resultadoB: resultadoB,
            resultadoC: resultadoC,
            resultadoD: resultadoD,
            resultadoE: resultadoE,
            porcentagemA: porcentagemA,
            porcentagemB: porcentagemB,
            porcentagemC: porcentagemC,
            porcentagemD: porcentagemD,
            porcentagemE: porcentagemE,
            data: data,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precificacao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrecificacaoRecord> _$precificacaoRecordSerializer =
    new _$PrecificacaoRecordSerializer();

class _$PrecificacaoRecordSerializer
    implements StructuredSerializer<PrecificacaoRecord> {
  @override
  final Iterable<Type> types = const [PrecificacaoRecord, _$PrecificacaoRecord];
  @override
  final String wireName = 'PrecificacaoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrecificacaoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.salariodesejado;
    if (value != null) {
      result
        ..add('salariodesejado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.fundodereserva;
    if (value != null) {
      result
        ..add('fundodereserva')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.custosnovosinstrumentos;
    if (value != null) {
      result
        ..add('custosnovosinstrumentos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.taxacontribuicao;
    if (value != null) {
      result
        ..add('taxacontribuicao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.homecare;
    if (value != null) {
      result
        ..add('homecare')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.esproprio;
    if (value != null) {
      result
        ..add('esproprio')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.consultorio;
    if (value != null) {
      result
        ..add('consultorio')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.itinerante;
    if (value != null) {
      result
        ..add('itinerante')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.preencheumediaregiao;
    if (value != null) {
      result
        ..add('preencheumediaregiao')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.psicologopreco;
    if (value != null) {
      result
        ..add('psicologopreco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.terapeutapreco;
    if (value != null) {
      result
        ..add('terapeutapreco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.fonopreco;
    if (value != null) {
      result
        ..add('fonopreco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.psicopedagogopreco;
    if (value != null) {
      result
        ..add('psicopedagogopreco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.preencheusalario;
    if (value != null) {
      result
        ..add('preencheusalario')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.fundoreservabool;
    if (value != null) {
      result
        ..add('fundoreservabool')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orcinstrumentobool;
    if (value != null) {
      result
        ..add('orcinstrumentobool')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.taxacontrbool;
    if (value != null) {
      result
        ..add('taxacontrbool')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.atdeatendimento;
    if (value != null) {
      result
        ..add('atdeatendimento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qtdadeatendimentobool;
    if (value != null) {
      result
        ..add('qtdadeatendimentobool')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  PrecificacaoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrecificacaoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'salariodesejado':
          result.salariodesejado = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'fundodereserva':
          result.fundodereserva = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'custosnovosinstrumentos':
          result.custosnovosinstrumentos = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'taxacontribuicao':
          result.taxacontribuicao = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'homecare':
          result.homecare = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'esproprio':
          result.esproprio = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'consultorio':
          result.consultorio = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'itinerante':
          result.itinerante = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'preencheumediaregiao':
          result.preencheumediaregiao = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'psicologopreco':
          result.psicologopreco = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'terapeutapreco':
          result.terapeutapreco = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'fonopreco':
          result.fonopreco = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'psicopedagogopreco':
          result.psicopedagogopreco = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'preencheusalario':
          result.preencheusalario = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'fundoreservabool':
          result.fundoreservabool = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'orcinstrumentobool':
          result.orcinstrumentobool = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'taxacontrbool':
          result.taxacontrbool = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'atdeatendimento':
          result.atdeatendimento = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'qtdadeatendimentobool':
          result.qtdadeatendimentobool = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$PrecificacaoRecord extends PrecificacaoRecord {
  @override
  final double? salariodesejado;
  @override
  final double? fundodereserva;
  @override
  final double? custosnovosinstrumentos;
  @override
  final double? taxacontribuicao;
  @override
  final bool? homecare;
  @override
  final bool? esproprio;
  @override
  final bool? consultorio;
  @override
  final bool? itinerante;
  @override
  final bool? preencheumediaregiao;
  @override
  final double? psicologopreco;
  @override
  final double? terapeutapreco;
  @override
  final double? fonopreco;
  @override
  final double? psicopedagogopreco;
  @override
  final bool? preencheusalario;
  @override
  final bool? fundoreservabool;
  @override
  final bool? orcinstrumentobool;
  @override
  final bool? taxacontrbool;
  @override
  final double? atdeatendimento;
  @override
  final bool? qtdadeatendimentobool;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PrecificacaoRecord(
          [void Function(PrecificacaoRecordBuilder)? updates]) =>
      (new PrecificacaoRecordBuilder()..update(updates))._build();

  _$PrecificacaoRecord._(
      {this.salariodesejado,
      this.fundodereserva,
      this.custosnovosinstrumentos,
      this.taxacontribuicao,
      this.homecare,
      this.esproprio,
      this.consultorio,
      this.itinerante,
      this.preencheumediaregiao,
      this.psicologopreco,
      this.terapeutapreco,
      this.fonopreco,
      this.psicopedagogopreco,
      this.preencheusalario,
      this.fundoreservabool,
      this.orcinstrumentobool,
      this.taxacontrbool,
      this.atdeatendimento,
      this.qtdadeatendimentobool,
      this.ffRef})
      : super._();

  @override
  PrecificacaoRecord rebuild(
          void Function(PrecificacaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecificacaoRecordBuilder toBuilder() =>
      new PrecificacaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecificacaoRecord &&
        salariodesejado == other.salariodesejado &&
        fundodereserva == other.fundodereserva &&
        custosnovosinstrumentos == other.custosnovosinstrumentos &&
        taxacontribuicao == other.taxacontribuicao &&
        homecare == other.homecare &&
        esproprio == other.esproprio &&
        consultorio == other.consultorio &&
        itinerante == other.itinerante &&
        preencheumediaregiao == other.preencheumediaregiao &&
        psicologopreco == other.psicologopreco &&
        terapeutapreco == other.terapeutapreco &&
        fonopreco == other.fonopreco &&
        psicopedagogopreco == other.psicopedagogopreco &&
        preencheusalario == other.preencheusalario &&
        fundoreservabool == other.fundoreservabool &&
        orcinstrumentobool == other.orcinstrumentobool &&
        taxacontrbool == other.taxacontrbool &&
        atdeatendimento == other.atdeatendimento &&
        qtdadeatendimentobool == other.qtdadeatendimentobool &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, salariodesejado.hashCode);
    _$hash = $jc(_$hash, fundodereserva.hashCode);
    _$hash = $jc(_$hash, custosnovosinstrumentos.hashCode);
    _$hash = $jc(_$hash, taxacontribuicao.hashCode);
    _$hash = $jc(_$hash, homecare.hashCode);
    _$hash = $jc(_$hash, esproprio.hashCode);
    _$hash = $jc(_$hash, consultorio.hashCode);
    _$hash = $jc(_$hash, itinerante.hashCode);
    _$hash = $jc(_$hash, preencheumediaregiao.hashCode);
    _$hash = $jc(_$hash, psicologopreco.hashCode);
    _$hash = $jc(_$hash, terapeutapreco.hashCode);
    _$hash = $jc(_$hash, fonopreco.hashCode);
    _$hash = $jc(_$hash, psicopedagogopreco.hashCode);
    _$hash = $jc(_$hash, preencheusalario.hashCode);
    _$hash = $jc(_$hash, fundoreservabool.hashCode);
    _$hash = $jc(_$hash, orcinstrumentobool.hashCode);
    _$hash = $jc(_$hash, taxacontrbool.hashCode);
    _$hash = $jc(_$hash, atdeatendimento.hashCode);
    _$hash = $jc(_$hash, qtdadeatendimentobool.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecificacaoRecord')
          ..add('salariodesejado', salariodesejado)
          ..add('fundodereserva', fundodereserva)
          ..add('custosnovosinstrumentos', custosnovosinstrumentos)
          ..add('taxacontribuicao', taxacontribuicao)
          ..add('homecare', homecare)
          ..add('esproprio', esproprio)
          ..add('consultorio', consultorio)
          ..add('itinerante', itinerante)
          ..add('preencheumediaregiao', preencheumediaregiao)
          ..add('psicologopreco', psicologopreco)
          ..add('terapeutapreco', terapeutapreco)
          ..add('fonopreco', fonopreco)
          ..add('psicopedagogopreco', psicopedagogopreco)
          ..add('preencheusalario', preencheusalario)
          ..add('fundoreservabool', fundoreservabool)
          ..add('orcinstrumentobool', orcinstrumentobool)
          ..add('taxacontrbool', taxacontrbool)
          ..add('atdeatendimento', atdeatendimento)
          ..add('qtdadeatendimentobool', qtdadeatendimentobool)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PrecificacaoRecordBuilder
    implements Builder<PrecificacaoRecord, PrecificacaoRecordBuilder> {
  _$PrecificacaoRecord? _$v;

  double? _salariodesejado;
  double? get salariodesejado => _$this._salariodesejado;
  set salariodesejado(double? salariodesejado) =>
      _$this._salariodesejado = salariodesejado;

  double? _fundodereserva;
  double? get fundodereserva => _$this._fundodereserva;
  set fundodereserva(double? fundodereserva) =>
      _$this._fundodereserva = fundodereserva;

  double? _custosnovosinstrumentos;
  double? get custosnovosinstrumentos => _$this._custosnovosinstrumentos;
  set custosnovosinstrumentos(double? custosnovosinstrumentos) =>
      _$this._custosnovosinstrumentos = custosnovosinstrumentos;

  double? _taxacontribuicao;
  double? get taxacontribuicao => _$this._taxacontribuicao;
  set taxacontribuicao(double? taxacontribuicao) =>
      _$this._taxacontribuicao = taxacontribuicao;

  bool? _homecare;
  bool? get homecare => _$this._homecare;
  set homecare(bool? homecare) => _$this._homecare = homecare;

  bool? _esproprio;
  bool? get esproprio => _$this._esproprio;
  set esproprio(bool? esproprio) => _$this._esproprio = esproprio;

  bool? _consultorio;
  bool? get consultorio => _$this._consultorio;
  set consultorio(bool? consultorio) => _$this._consultorio = consultorio;

  bool? _itinerante;
  bool? get itinerante => _$this._itinerante;
  set itinerante(bool? itinerante) => _$this._itinerante = itinerante;

  bool? _preencheumediaregiao;
  bool? get preencheumediaregiao => _$this._preencheumediaregiao;
  set preencheumediaregiao(bool? preencheumediaregiao) =>
      _$this._preencheumediaregiao = preencheumediaregiao;

  double? _psicologopreco;
  double? get psicologopreco => _$this._psicologopreco;
  set psicologopreco(double? psicologopreco) =>
      _$this._psicologopreco = psicologopreco;

  double? _terapeutapreco;
  double? get terapeutapreco => _$this._terapeutapreco;
  set terapeutapreco(double? terapeutapreco) =>
      _$this._terapeutapreco = terapeutapreco;

  double? _fonopreco;
  double? get fonopreco => _$this._fonopreco;
  set fonopreco(double? fonopreco) => _$this._fonopreco = fonopreco;

  double? _psicopedagogopreco;
  double? get psicopedagogopreco => _$this._psicopedagogopreco;
  set psicopedagogopreco(double? psicopedagogopreco) =>
      _$this._psicopedagogopreco = psicopedagogopreco;

  bool? _preencheusalario;
  bool? get preencheusalario => _$this._preencheusalario;
  set preencheusalario(bool? preencheusalario) =>
      _$this._preencheusalario = preencheusalario;

  bool? _fundoreservabool;
  bool? get fundoreservabool => _$this._fundoreservabool;
  set fundoreservabool(bool? fundoreservabool) =>
      _$this._fundoreservabool = fundoreservabool;

  bool? _orcinstrumentobool;
  bool? get orcinstrumentobool => _$this._orcinstrumentobool;
  set orcinstrumentobool(bool? orcinstrumentobool) =>
      _$this._orcinstrumentobool = orcinstrumentobool;

  bool? _taxacontrbool;
  bool? get taxacontrbool => _$this._taxacontrbool;
  set taxacontrbool(bool? taxacontrbool) =>
      _$this._taxacontrbool = taxacontrbool;

  double? _atdeatendimento;
  double? get atdeatendimento => _$this._atdeatendimento;
  set atdeatendimento(double? atdeatendimento) =>
      _$this._atdeatendimento = atdeatendimento;

  bool? _qtdadeatendimentobool;
  bool? get qtdadeatendimentobool => _$this._qtdadeatendimentobool;
  set qtdadeatendimentobool(bool? qtdadeatendimentobool) =>
      _$this._qtdadeatendimentobool = qtdadeatendimentobool;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PrecificacaoRecordBuilder() {
    PrecificacaoRecord._initializeBuilder(this);
  }

  PrecificacaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _salariodesejado = $v.salariodesejado;
      _fundodereserva = $v.fundodereserva;
      _custosnovosinstrumentos = $v.custosnovosinstrumentos;
      _taxacontribuicao = $v.taxacontribuicao;
      _homecare = $v.homecare;
      _esproprio = $v.esproprio;
      _consultorio = $v.consultorio;
      _itinerante = $v.itinerante;
      _preencheumediaregiao = $v.preencheumediaregiao;
      _psicologopreco = $v.psicologopreco;
      _terapeutapreco = $v.terapeutapreco;
      _fonopreco = $v.fonopreco;
      _psicopedagogopreco = $v.psicopedagogopreco;
      _preencheusalario = $v.preencheusalario;
      _fundoreservabool = $v.fundoreservabool;
      _orcinstrumentobool = $v.orcinstrumentobool;
      _taxacontrbool = $v.taxacontrbool;
      _atdeatendimento = $v.atdeatendimento;
      _qtdadeatendimentobool = $v.qtdadeatendimentobool;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecificacaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrecificacaoRecord;
  }

  @override
  void update(void Function(PrecificacaoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecificacaoRecord build() => _build();

  _$PrecificacaoRecord _build() {
    final _$result = _$v ??
        new _$PrecificacaoRecord._(
            salariodesejado: salariodesejado,
            fundodereserva: fundodereserva,
            custosnovosinstrumentos: custosnovosinstrumentos,
            taxacontribuicao: taxacontribuicao,
            homecare: homecare,
            esproprio: esproprio,
            consultorio: consultorio,
            itinerante: itinerante,
            preencheumediaregiao: preencheumediaregiao,
            psicologopreco: psicologopreco,
            terapeutapreco: terapeutapreco,
            fonopreco: fonopreco,
            psicopedagogopreco: psicopedagogopreco,
            preencheusalario: preencheusalario,
            fundoreservabool: fundoreservabool,
            orcinstrumentobool: orcinstrumentobool,
            taxacontrbool: taxacontrbool,
            atdeatendimento: atdeatendimento,
            qtdadeatendimentobool: qtdadeatendimentobool,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

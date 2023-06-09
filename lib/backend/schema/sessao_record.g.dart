// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SessaoRecord> _$sessaoRecordSerializer =
    new _$SessaoRecordSerializer();

class _$SessaoRecordSerializer implements StructuredSerializer<SessaoRecord> {
  @override
  final Iterable<Type> types = const [SessaoRecord, _$SessaoRecord];
  @override
  final String wireName = 'SessaoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SessaoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.obs;
    if (value != null) {
      result
        ..add('obs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modeloatendimento;
    if (value != null) {
      result
        ..add('modeloatendimento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anotaesdeAntesdaSesso;
    if (value != null) {
      result
        ..add('AnotaesdeAntesdaSesso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.queixadoCliente;
    if (value != null) {
      result
        ..add('QueixadoCliente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.resumodaSesso;
    if (value != null) {
      result
        ..add('ResumodaSesso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.observao;
    if (value != null) {
      result
        ..add('Observao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.evoluo;
    if (value != null) {
      result
        ..add('Evoluo')
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
    value = object.presencanaoconfirmada;
    if (value != null) {
      result
        ..add('presencanaoconfirmada')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.presencaconfirmada;
    if (value != null) {
      result
        ..add('presencaconfirmada')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.presencacancelada;
    if (value != null) {
      result
        ..add('presencacancelada')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.realizada;
    if (value != null) {
      result
        ..add('realizada')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.datapagamentosessao;
    if (value != null) {
      result
        ..add('datapagamentosessao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.formadepgto;
    if (value != null) {
      result
        ..add('formadepgto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pacienteausente;
    if (value != null) {
      result
        ..add('pacienteausente')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.valorsessao;
    if (value != null) {
      result
        ..add('valorsessao')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.notassessaogerada;
    if (value != null) {
      result
        ..add('notassessaogerada')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.valorsessaoDouble;
    if (value != null) {
      result
        ..add('valorsessaoDouble')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.nomepaciente;
    if (value != null) {
      result
        ..add('nomepaciente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlwhatsapp;
    if (value != null) {
      result
        ..add('urlwhatsapp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.umdiaantesaviso;
    if (value != null) {
      result
        ..add('umdiaantesaviso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.urlrecibo;
    if (value != null) {
      result
        ..add('urlrecibo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proxsessao;
    if (value != null) {
      result
        ..add('proxsessao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.check1;
    if (value != null) {
      result
        ..add('check1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.check2;
    if (value != null) {
      result
        ..add('check2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.check3;
    if (value != null) {
      result
        ..add('check3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.check4;
    if (value != null) {
      result
        ..add('check4')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.check5;
    if (value != null) {
      result
        ..add('check5')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.check6;
    if (value != null) {
      result
        ..add('check6')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.check7;
    if (value != null) {
      result
        ..add('check7')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userreferencia;
    if (value != null) {
      result
        ..add('userreferencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.valordopacote;
    if (value != null) {
      result
        ..add('valordopacote')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pagamentoporpacote;
    if (value != null) {
      result
        ..add('pagamentoporpacote')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.referencia;
    if (value != null) {
      result
        ..add('referencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.criadorepeticao;
    if (value != null) {
      result
        ..add('criadorepeticao')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.iniciosessao;
    if (value != null) {
      result
        ..add('iniciosessao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.terminosessao;
    if (value != null) {
      result
        ..add('terminosessao')
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
  SessaoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessaoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'obs':
          result.obs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'modeloatendimento':
          result.modeloatendimento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AnotaesdeAntesdaSesso':
          result.anotaesdeAntesdaSesso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'QueixadoCliente':
          result.queixadoCliente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ResumodaSesso':
          result.resumodaSesso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Observao':
          result.observao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Evoluo':
          result.evoluo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pago':
          result.pago = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'presencanaoconfirmada':
          result.presencanaoconfirmada = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'presencaconfirmada':
          result.presencaconfirmada = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'presencacancelada':
          result.presencacancelada = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'realizada':
          result.realizada = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'datapagamentosessao':
          result.datapagamentosessao = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'formadepgto':
          result.formadepgto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pacienteausente':
          result.pacienteausente = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'valorsessao':
          result.valorsessao = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'notassessaogerada':
          result.notassessaogerada = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'valorsessaoDouble':
          result.valorsessaoDouble = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'nomepaciente':
          result.nomepaciente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'urlwhatsapp':
          result.urlwhatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'umdiaantesaviso':
          result.umdiaantesaviso = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'urlrecibo':
          result.urlrecibo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proxsessao':
          result.proxsessao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'check1':
          result.check1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'check2':
          result.check2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'check3':
          result.check3 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'check4':
          result.check4 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'check5':
          result.check5 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'check6':
          result.check6 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'check7':
          result.check7 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userreferencia':
          result.userreferencia = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'valordopacote':
          result.valordopacote = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pagamentoporpacote':
          result.pagamentoporpacote = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'referencia':
          result.referencia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'criadorepeticao':
          result.criadorepeticao = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'iniciosessao':
          result.iniciosessao = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'terminosessao':
          result.terminosessao = serializers.deserialize(value,
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

class _$SessaoRecord extends SessaoRecord {
  @override
  final String? obs;
  @override
  final String? status;
  @override
  final String? modeloatendimento;
  @override
  final String? anotaesdeAntesdaSesso;
  @override
  final String? queixadoCliente;
  @override
  final String? resumodaSesso;
  @override
  final String? observao;
  @override
  final String? evoluo;
  @override
  final bool? pago;
  @override
  final bool? presencanaoconfirmada;
  @override
  final bool? presencaconfirmada;
  @override
  final bool? presencacancelada;
  @override
  final bool? realizada;
  @override
  final DateTime? datapagamentosessao;
  @override
  final String? formadepgto;
  @override
  final bool? pacienteausente;
  @override
  final int? valorsessao;
  @override
  final bool? notassessaogerada;
  @override
  final double? valorsessaoDouble;
  @override
  final String? nomepaciente;
  @override
  final String? urlwhatsapp;
  @override
  final DateTime? umdiaantesaviso;
  @override
  final String? urlrecibo;
  @override
  final String? proxsessao;
  @override
  final bool? check1;
  @override
  final bool? check2;
  @override
  final bool? check3;
  @override
  final bool? check4;
  @override
  final bool? check5;
  @override
  final bool? check6;
  @override
  final bool? check7;
  @override
  final DocumentReference<Object?>? userreferencia;
  @override
  final int? valordopacote;
  @override
  final bool? pagamentoporpacote;
  @override
  final String? referencia;
  @override
  final bool? criadorepeticao;
  @override
  final DateTime? iniciosessao;
  @override
  final DateTime? terminosessao;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SessaoRecord([void Function(SessaoRecordBuilder)? updates]) =>
      (new SessaoRecordBuilder()..update(updates))._build();

  _$SessaoRecord._(
      {this.obs,
      this.status,
      this.modeloatendimento,
      this.anotaesdeAntesdaSesso,
      this.queixadoCliente,
      this.resumodaSesso,
      this.observao,
      this.evoluo,
      this.pago,
      this.presencanaoconfirmada,
      this.presencaconfirmada,
      this.presencacancelada,
      this.realizada,
      this.datapagamentosessao,
      this.formadepgto,
      this.pacienteausente,
      this.valorsessao,
      this.notassessaogerada,
      this.valorsessaoDouble,
      this.nomepaciente,
      this.urlwhatsapp,
      this.umdiaantesaviso,
      this.urlrecibo,
      this.proxsessao,
      this.check1,
      this.check2,
      this.check3,
      this.check4,
      this.check5,
      this.check6,
      this.check7,
      this.userreferencia,
      this.valordopacote,
      this.pagamentoporpacote,
      this.referencia,
      this.criadorepeticao,
      this.iniciosessao,
      this.terminosessao,
      this.ffRef})
      : super._();

  @override
  SessaoRecord rebuild(void Function(SessaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessaoRecordBuilder toBuilder() => new SessaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessaoRecord &&
        obs == other.obs &&
        status == other.status &&
        modeloatendimento == other.modeloatendimento &&
        anotaesdeAntesdaSesso == other.anotaesdeAntesdaSesso &&
        queixadoCliente == other.queixadoCliente &&
        resumodaSesso == other.resumodaSesso &&
        observao == other.observao &&
        evoluo == other.evoluo &&
        pago == other.pago &&
        presencanaoconfirmada == other.presencanaoconfirmada &&
        presencaconfirmada == other.presencaconfirmada &&
        presencacancelada == other.presencacancelada &&
        realizada == other.realizada &&
        datapagamentosessao == other.datapagamentosessao &&
        formadepgto == other.formadepgto &&
        pacienteausente == other.pacienteausente &&
        valorsessao == other.valorsessao &&
        notassessaogerada == other.notassessaogerada &&
        valorsessaoDouble == other.valorsessaoDouble &&
        nomepaciente == other.nomepaciente &&
        urlwhatsapp == other.urlwhatsapp &&
        umdiaantesaviso == other.umdiaantesaviso &&
        urlrecibo == other.urlrecibo &&
        proxsessao == other.proxsessao &&
        check1 == other.check1 &&
        check2 == other.check2 &&
        check3 == other.check3 &&
        check4 == other.check4 &&
        check5 == other.check5 &&
        check6 == other.check6 &&
        check7 == other.check7 &&
        userreferencia == other.userreferencia &&
        valordopacote == other.valordopacote &&
        pagamentoporpacote == other.pagamentoporpacote &&
        referencia == other.referencia &&
        criadorepeticao == other.criadorepeticao &&
        iniciosessao == other.iniciosessao &&
        terminosessao == other.terminosessao &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, obs.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, modeloatendimento.hashCode);
    _$hash = $jc(_$hash, anotaesdeAntesdaSesso.hashCode);
    _$hash = $jc(_$hash, queixadoCliente.hashCode);
    _$hash = $jc(_$hash, resumodaSesso.hashCode);
    _$hash = $jc(_$hash, observao.hashCode);
    _$hash = $jc(_$hash, evoluo.hashCode);
    _$hash = $jc(_$hash, pago.hashCode);
    _$hash = $jc(_$hash, presencanaoconfirmada.hashCode);
    _$hash = $jc(_$hash, presencaconfirmada.hashCode);
    _$hash = $jc(_$hash, presencacancelada.hashCode);
    _$hash = $jc(_$hash, realizada.hashCode);
    _$hash = $jc(_$hash, datapagamentosessao.hashCode);
    _$hash = $jc(_$hash, formadepgto.hashCode);
    _$hash = $jc(_$hash, pacienteausente.hashCode);
    _$hash = $jc(_$hash, valorsessao.hashCode);
    _$hash = $jc(_$hash, notassessaogerada.hashCode);
    _$hash = $jc(_$hash, valorsessaoDouble.hashCode);
    _$hash = $jc(_$hash, nomepaciente.hashCode);
    _$hash = $jc(_$hash, urlwhatsapp.hashCode);
    _$hash = $jc(_$hash, umdiaantesaviso.hashCode);
    _$hash = $jc(_$hash, urlrecibo.hashCode);
    _$hash = $jc(_$hash, proxsessao.hashCode);
    _$hash = $jc(_$hash, check1.hashCode);
    _$hash = $jc(_$hash, check2.hashCode);
    _$hash = $jc(_$hash, check3.hashCode);
    _$hash = $jc(_$hash, check4.hashCode);
    _$hash = $jc(_$hash, check5.hashCode);
    _$hash = $jc(_$hash, check6.hashCode);
    _$hash = $jc(_$hash, check7.hashCode);
    _$hash = $jc(_$hash, userreferencia.hashCode);
    _$hash = $jc(_$hash, valordopacote.hashCode);
    _$hash = $jc(_$hash, pagamentoporpacote.hashCode);
    _$hash = $jc(_$hash, referencia.hashCode);
    _$hash = $jc(_$hash, criadorepeticao.hashCode);
    _$hash = $jc(_$hash, iniciosessao.hashCode);
    _$hash = $jc(_$hash, terminosessao.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessaoRecord')
          ..add('obs', obs)
          ..add('status', status)
          ..add('modeloatendimento', modeloatendimento)
          ..add('anotaesdeAntesdaSesso', anotaesdeAntesdaSesso)
          ..add('queixadoCliente', queixadoCliente)
          ..add('resumodaSesso', resumodaSesso)
          ..add('observao', observao)
          ..add('evoluo', evoluo)
          ..add('pago', pago)
          ..add('presencanaoconfirmada', presencanaoconfirmada)
          ..add('presencaconfirmada', presencaconfirmada)
          ..add('presencacancelada', presencacancelada)
          ..add('realizada', realizada)
          ..add('datapagamentosessao', datapagamentosessao)
          ..add('formadepgto', formadepgto)
          ..add('pacienteausente', pacienteausente)
          ..add('valorsessao', valorsessao)
          ..add('notassessaogerada', notassessaogerada)
          ..add('valorsessaoDouble', valorsessaoDouble)
          ..add('nomepaciente', nomepaciente)
          ..add('urlwhatsapp', urlwhatsapp)
          ..add('umdiaantesaviso', umdiaantesaviso)
          ..add('urlrecibo', urlrecibo)
          ..add('proxsessao', proxsessao)
          ..add('check1', check1)
          ..add('check2', check2)
          ..add('check3', check3)
          ..add('check4', check4)
          ..add('check5', check5)
          ..add('check6', check6)
          ..add('check7', check7)
          ..add('userreferencia', userreferencia)
          ..add('valordopacote', valordopacote)
          ..add('pagamentoporpacote', pagamentoporpacote)
          ..add('referencia', referencia)
          ..add('criadorepeticao', criadorepeticao)
          ..add('iniciosessao', iniciosessao)
          ..add('terminosessao', terminosessao)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SessaoRecordBuilder
    implements Builder<SessaoRecord, SessaoRecordBuilder> {
  _$SessaoRecord? _$v;

  String? _obs;
  String? get obs => _$this._obs;
  set obs(String? obs) => _$this._obs = obs;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _modeloatendimento;
  String? get modeloatendimento => _$this._modeloatendimento;
  set modeloatendimento(String? modeloatendimento) =>
      _$this._modeloatendimento = modeloatendimento;

  String? _anotaesdeAntesdaSesso;
  String? get anotaesdeAntesdaSesso => _$this._anotaesdeAntesdaSesso;
  set anotaesdeAntesdaSesso(String? anotaesdeAntesdaSesso) =>
      _$this._anotaesdeAntesdaSesso = anotaesdeAntesdaSesso;

  String? _queixadoCliente;
  String? get queixadoCliente => _$this._queixadoCliente;
  set queixadoCliente(String? queixadoCliente) =>
      _$this._queixadoCliente = queixadoCliente;

  String? _resumodaSesso;
  String? get resumodaSesso => _$this._resumodaSesso;
  set resumodaSesso(String? resumodaSesso) =>
      _$this._resumodaSesso = resumodaSesso;

  String? _observao;
  String? get observao => _$this._observao;
  set observao(String? observao) => _$this._observao = observao;

  String? _evoluo;
  String? get evoluo => _$this._evoluo;
  set evoluo(String? evoluo) => _$this._evoluo = evoluo;

  bool? _pago;
  bool? get pago => _$this._pago;
  set pago(bool? pago) => _$this._pago = pago;

  bool? _presencanaoconfirmada;
  bool? get presencanaoconfirmada => _$this._presencanaoconfirmada;
  set presencanaoconfirmada(bool? presencanaoconfirmada) =>
      _$this._presencanaoconfirmada = presencanaoconfirmada;

  bool? _presencaconfirmada;
  bool? get presencaconfirmada => _$this._presencaconfirmada;
  set presencaconfirmada(bool? presencaconfirmada) =>
      _$this._presencaconfirmada = presencaconfirmada;

  bool? _presencacancelada;
  bool? get presencacancelada => _$this._presencacancelada;
  set presencacancelada(bool? presencacancelada) =>
      _$this._presencacancelada = presencacancelada;

  bool? _realizada;
  bool? get realizada => _$this._realizada;
  set realizada(bool? realizada) => _$this._realizada = realizada;

  DateTime? _datapagamentosessao;
  DateTime? get datapagamentosessao => _$this._datapagamentosessao;
  set datapagamentosessao(DateTime? datapagamentosessao) =>
      _$this._datapagamentosessao = datapagamentosessao;

  String? _formadepgto;
  String? get formadepgto => _$this._formadepgto;
  set formadepgto(String? formadepgto) => _$this._formadepgto = formadepgto;

  bool? _pacienteausente;
  bool? get pacienteausente => _$this._pacienteausente;
  set pacienteausente(bool? pacienteausente) =>
      _$this._pacienteausente = pacienteausente;

  int? _valorsessao;
  int? get valorsessao => _$this._valorsessao;
  set valorsessao(int? valorsessao) => _$this._valorsessao = valorsessao;

  bool? _notassessaogerada;
  bool? get notassessaogerada => _$this._notassessaogerada;
  set notassessaogerada(bool? notassessaogerada) =>
      _$this._notassessaogerada = notassessaogerada;

  double? _valorsessaoDouble;
  double? get valorsessaoDouble => _$this._valorsessaoDouble;
  set valorsessaoDouble(double? valorsessaoDouble) =>
      _$this._valorsessaoDouble = valorsessaoDouble;

  String? _nomepaciente;
  String? get nomepaciente => _$this._nomepaciente;
  set nomepaciente(String? nomepaciente) => _$this._nomepaciente = nomepaciente;

  String? _urlwhatsapp;
  String? get urlwhatsapp => _$this._urlwhatsapp;
  set urlwhatsapp(String? urlwhatsapp) => _$this._urlwhatsapp = urlwhatsapp;

  DateTime? _umdiaantesaviso;
  DateTime? get umdiaantesaviso => _$this._umdiaantesaviso;
  set umdiaantesaviso(DateTime? umdiaantesaviso) =>
      _$this._umdiaantesaviso = umdiaantesaviso;

  String? _urlrecibo;
  String? get urlrecibo => _$this._urlrecibo;
  set urlrecibo(String? urlrecibo) => _$this._urlrecibo = urlrecibo;

  String? _proxsessao;
  String? get proxsessao => _$this._proxsessao;
  set proxsessao(String? proxsessao) => _$this._proxsessao = proxsessao;

  bool? _check1;
  bool? get check1 => _$this._check1;
  set check1(bool? check1) => _$this._check1 = check1;

  bool? _check2;
  bool? get check2 => _$this._check2;
  set check2(bool? check2) => _$this._check2 = check2;

  bool? _check3;
  bool? get check3 => _$this._check3;
  set check3(bool? check3) => _$this._check3 = check3;

  bool? _check4;
  bool? get check4 => _$this._check4;
  set check4(bool? check4) => _$this._check4 = check4;

  bool? _check5;
  bool? get check5 => _$this._check5;
  set check5(bool? check5) => _$this._check5 = check5;

  bool? _check6;
  bool? get check6 => _$this._check6;
  set check6(bool? check6) => _$this._check6 = check6;

  bool? _check7;
  bool? get check7 => _$this._check7;
  set check7(bool? check7) => _$this._check7 = check7;

  DocumentReference<Object?>? _userreferencia;
  DocumentReference<Object?>? get userreferencia => _$this._userreferencia;
  set userreferencia(DocumentReference<Object?>? userreferencia) =>
      _$this._userreferencia = userreferencia;

  int? _valordopacote;
  int? get valordopacote => _$this._valordopacote;
  set valordopacote(int? valordopacote) =>
      _$this._valordopacote = valordopacote;

  bool? _pagamentoporpacote;
  bool? get pagamentoporpacote => _$this._pagamentoporpacote;
  set pagamentoporpacote(bool? pagamentoporpacote) =>
      _$this._pagamentoporpacote = pagamentoporpacote;

  String? _referencia;
  String? get referencia => _$this._referencia;
  set referencia(String? referencia) => _$this._referencia = referencia;

  bool? _criadorepeticao;
  bool? get criadorepeticao => _$this._criadorepeticao;
  set criadorepeticao(bool? criadorepeticao) =>
      _$this._criadorepeticao = criadorepeticao;

  DateTime? _iniciosessao;
  DateTime? get iniciosessao => _$this._iniciosessao;
  set iniciosessao(DateTime? iniciosessao) =>
      _$this._iniciosessao = iniciosessao;

  DateTime? _terminosessao;
  DateTime? get terminosessao => _$this._terminosessao;
  set terminosessao(DateTime? terminosessao) =>
      _$this._terminosessao = terminosessao;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SessaoRecordBuilder() {
    SessaoRecord._initializeBuilder(this);
  }

  SessaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _obs = $v.obs;
      _status = $v.status;
      _modeloatendimento = $v.modeloatendimento;
      _anotaesdeAntesdaSesso = $v.anotaesdeAntesdaSesso;
      _queixadoCliente = $v.queixadoCliente;
      _resumodaSesso = $v.resumodaSesso;
      _observao = $v.observao;
      _evoluo = $v.evoluo;
      _pago = $v.pago;
      _presencanaoconfirmada = $v.presencanaoconfirmada;
      _presencaconfirmada = $v.presencaconfirmada;
      _presencacancelada = $v.presencacancelada;
      _realizada = $v.realizada;
      _datapagamentosessao = $v.datapagamentosessao;
      _formadepgto = $v.formadepgto;
      _pacienteausente = $v.pacienteausente;
      _valorsessao = $v.valorsessao;
      _notassessaogerada = $v.notassessaogerada;
      _valorsessaoDouble = $v.valorsessaoDouble;
      _nomepaciente = $v.nomepaciente;
      _urlwhatsapp = $v.urlwhatsapp;
      _umdiaantesaviso = $v.umdiaantesaviso;
      _urlrecibo = $v.urlrecibo;
      _proxsessao = $v.proxsessao;
      _check1 = $v.check1;
      _check2 = $v.check2;
      _check3 = $v.check3;
      _check4 = $v.check4;
      _check5 = $v.check5;
      _check6 = $v.check6;
      _check7 = $v.check7;
      _userreferencia = $v.userreferencia;
      _valordopacote = $v.valordopacote;
      _pagamentoporpacote = $v.pagamentoporpacote;
      _referencia = $v.referencia;
      _criadorepeticao = $v.criadorepeticao;
      _iniciosessao = $v.iniciosessao;
      _terminosessao = $v.terminosessao;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SessaoRecord;
  }

  @override
  void update(void Function(SessaoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessaoRecord build() => _build();

  _$SessaoRecord _build() {
    final _$result = _$v ??
        new _$SessaoRecord._(
            obs: obs,
            status: status,
            modeloatendimento: modeloatendimento,
            anotaesdeAntesdaSesso: anotaesdeAntesdaSesso,
            queixadoCliente: queixadoCliente,
            resumodaSesso: resumodaSesso,
            observao: observao,
            evoluo: evoluo,
            pago: pago,
            presencanaoconfirmada: presencanaoconfirmada,
            presencaconfirmada: presencaconfirmada,
            presencacancelada: presencacancelada,
            realizada: realizada,
            datapagamentosessao: datapagamentosessao,
            formadepgto: formadepgto,
            pacienteausente: pacienteausente,
            valorsessao: valorsessao,
            notassessaogerada: notassessaogerada,
            valorsessaoDouble: valorsessaoDouble,
            nomepaciente: nomepaciente,
            urlwhatsapp: urlwhatsapp,
            umdiaantesaviso: umdiaantesaviso,
            urlrecibo: urlrecibo,
            proxsessao: proxsessao,
            check1: check1,
            check2: check2,
            check3: check3,
            check4: check4,
            check5: check5,
            check6: check6,
            check7: check7,
            userreferencia: userreferencia,
            valordopacote: valordopacote,
            pagamentoporpacote: pagamentoporpacote,
            referencia: referencia,
            criadorepeticao: criadorepeticao,
            iniciosessao: iniciosessao,
            terminosessao: terminosessao,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ran_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RanRecord> _$ranRecordSerializer = new _$RanRecordSerializer();

class _$RanRecordSerializer implements StructuredSerializer<RanRecord> {
  @override
  final Iterable<Type> types = const [RanRecord, _$RanRecord];
  @override
  final String wireName = 'RanRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RanRecord object,
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
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.queixa;
    if (value != null) {
      result
        ..add('QUEIXA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.histricododesenvolvimentoedasade;
    if (value != null) {
      result
        ..add('HISTRICODODESENVOLVIMENTOEDASADE')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.antecedentesfamiliares;
    if (value != null) {
      result
        ..add('Antecedentesfamiliares')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jeitodeserdacrianasegundoame;
    if (value != null) {
      result
        ..add('Jeitodeserdacrianasegundoame')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vidaescolar;
    if (value != null) {
      result
        ..add('VIDAESCOLAR')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comportamentodacrianaduranteaavaliao;
    if (value != null) {
      result
        ..add('COMPORTAMENTODACRIANADURANTEAAVALIAO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avaliao;
    if (value != null) {
      result
        ..add('AVALIAO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instrumentos;
    if (value != null) {
      result
        ..add('Instrumentos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ateno;
    if (value != null) {
      result
        ..add('Ateno')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.funcoesExecutivas;
    if (value != null) {
      result
        ..add('FuncoesExecutivas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.visual;
    if (value != null) {
      result
        ..add('Visual')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auditiva;
    if (value != null) {
      result
        ..add('Auditiva')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memoriadetrabalho;
    if (value != null) {
      result
        ..add('Memoriadetrabalho')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.leiturasilenciosa;
    if (value != null) {
      result
        ..add('LEITURASILENCIOSA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.leituraoral;
    if (value != null) {
      result
        ..add('LEITURAORAL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interpretaodetexto;
    if (value != null) {
      result
        ..add('INTERPRETAODETEXTO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.compreensodetexto;
    if (value != null) {
      result
        ..add('COMPREENSODETEXTO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.caLCULO;
    if (value != null) {
      result
        ..add('CaLCULO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.oBSERVAcaOPSICOMOTORA;
    if (value != null) {
      result
        ..add('OBSERVAcaOPSICOMOTORA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comportamentoemsaladeaula;
    if (value != null) {
      result
        ..add('COMPORTAMENTOEMSALADEAULA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comportamentoemcasa;
    if (value != null) {
      result
        ..add('COMPORTAMENTOEMCASA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.horaldica;
    if (value != null) {
      result
        ..add('HORALDICA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conclusao;
    if (value != null) {
      result
        ..add('CONCLUSAO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.indicacoesdetratamento;
    if (value != null) {
      result
        ..add('INDICACOESDETRATAMENTO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orientacoesescola;
    if (value != null) {
      result
        ..add('ORIENTACOESESCOLA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orientacoesaospais;
    if (value != null) {
      result
        ..add('ORIENTACOESAOSPAIS')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.escrita;
    if (value != null) {
      result
        ..add('ESCRITA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.espontanea;
    if (value != null) {
      result
        ..add('ESPONTANEA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assinatura;
    if (value != null) {
      result
        ..add('assinatura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urldownload;
    if (value != null) {
      result
        ..add('urldownload')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.geroupdf;
    if (value != null) {
      result
        ..add('geroupdf')
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
  RanRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RanRecordBuilder();

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
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'QUEIXA':
          result.queixa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'HISTRICODODESENVOLVIMENTOEDASADE':
          result.histricododesenvolvimentoedasade = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Antecedentesfamiliares':
          result.antecedentesfamiliares = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Jeitodeserdacrianasegundoame':
          result.jeitodeserdacrianasegundoame = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'VIDAESCOLAR':
          result.vidaescolar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'COMPORTAMENTODACRIANADURANTEAAVALIAO':
          result.comportamentodacrianaduranteaavaliao = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AVALIAO':
          result.avaliao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Instrumentos':
          result.instrumentos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ateno':
          result.ateno = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FuncoesExecutivas':
          result.funcoesExecutivas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Visual':
          result.visual = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Auditiva':
          result.auditiva = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Memoriadetrabalho':
          result.memoriadetrabalho = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LEITURASILENCIOSA':
          result.leiturasilenciosa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LEITURAORAL':
          result.leituraoral = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'INTERPRETAODETEXTO':
          result.interpretaodetexto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'COMPREENSODETEXTO':
          result.compreensodetexto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CaLCULO':
          result.caLCULO = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'OBSERVAcaOPSICOMOTORA':
          result.oBSERVAcaOPSICOMOTORA = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'COMPORTAMENTOEMSALADEAULA':
          result.comportamentoemsaladeaula = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'COMPORTAMENTOEMCASA':
          result.comportamentoemcasa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'HORALDICA':
          result.horaldica = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CONCLUSAO':
          result.conclusao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'INDICACOESDETRATAMENTO':
          result.indicacoesdetratamento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ORIENTACOESESCOLA':
          result.orientacoesescola = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ORIENTACOESAOSPAIS':
          result.orientacoesaospais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ESCRITA':
          result.escrita = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ESPONTANEA':
          result.espontanea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'assinatura':
          result.assinatura = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'urldownload':
          result.urldownload = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'geroupdf':
          result.geroupdf = serializers.deserialize(value,
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

class _$RanRecord extends RanRecord {
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final DateTime? data;
  @override
  final String? queixa;
  @override
  final String? histricododesenvolvimentoedasade;
  @override
  final String? antecedentesfamiliares;
  @override
  final String? jeitodeserdacrianasegundoame;
  @override
  final String? vidaescolar;
  @override
  final String? comportamentodacrianaduranteaavaliao;
  @override
  final String? avaliao;
  @override
  final String? instrumentos;
  @override
  final String? ateno;
  @override
  final String? funcoesExecutivas;
  @override
  final String? visual;
  @override
  final String? auditiva;
  @override
  final String? memoriadetrabalho;
  @override
  final String? leiturasilenciosa;
  @override
  final String? leituraoral;
  @override
  final String? interpretaodetexto;
  @override
  final String? compreensodetexto;
  @override
  final String? caLCULO;
  @override
  final String? oBSERVAcaOPSICOMOTORA;
  @override
  final String? comportamentoemsaladeaula;
  @override
  final String? comportamentoemcasa;
  @override
  final String? horaldica;
  @override
  final String? conclusao;
  @override
  final String? indicacoesdetratamento;
  @override
  final String? orientacoesescola;
  @override
  final String? orientacoesaospais;
  @override
  final String? escrita;
  @override
  final String? espontanea;
  @override
  final String? assinatura;
  @override
  final String? urldownload;
  @override
  final bool? geroupdf;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RanRecord([void Function(RanRecordBuilder)? updates]) =>
      (new RanRecordBuilder()..update(updates))._build();

  _$RanRecord._(
      {this.paciente,
      this.data,
      this.queixa,
      this.histricododesenvolvimentoedasade,
      this.antecedentesfamiliares,
      this.jeitodeserdacrianasegundoame,
      this.vidaescolar,
      this.comportamentodacrianaduranteaavaliao,
      this.avaliao,
      this.instrumentos,
      this.ateno,
      this.funcoesExecutivas,
      this.visual,
      this.auditiva,
      this.memoriadetrabalho,
      this.leiturasilenciosa,
      this.leituraoral,
      this.interpretaodetexto,
      this.compreensodetexto,
      this.caLCULO,
      this.oBSERVAcaOPSICOMOTORA,
      this.comportamentoemsaladeaula,
      this.comportamentoemcasa,
      this.horaldica,
      this.conclusao,
      this.indicacoesdetratamento,
      this.orientacoesescola,
      this.orientacoesaospais,
      this.escrita,
      this.espontanea,
      this.assinatura,
      this.urldownload,
      this.geroupdf,
      this.ffRef})
      : super._();

  @override
  RanRecord rebuild(void Function(RanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RanRecordBuilder toBuilder() => new RanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RanRecord &&
        paciente == other.paciente &&
        data == other.data &&
        queixa == other.queixa &&
        histricododesenvolvimentoedasade ==
            other.histricododesenvolvimentoedasade &&
        antecedentesfamiliares == other.antecedentesfamiliares &&
        jeitodeserdacrianasegundoame == other.jeitodeserdacrianasegundoame &&
        vidaescolar == other.vidaescolar &&
        comportamentodacrianaduranteaavaliao ==
            other.comportamentodacrianaduranteaavaliao &&
        avaliao == other.avaliao &&
        instrumentos == other.instrumentos &&
        ateno == other.ateno &&
        funcoesExecutivas == other.funcoesExecutivas &&
        visual == other.visual &&
        auditiva == other.auditiva &&
        memoriadetrabalho == other.memoriadetrabalho &&
        leiturasilenciosa == other.leiturasilenciosa &&
        leituraoral == other.leituraoral &&
        interpretaodetexto == other.interpretaodetexto &&
        compreensodetexto == other.compreensodetexto &&
        caLCULO == other.caLCULO &&
        oBSERVAcaOPSICOMOTORA == other.oBSERVAcaOPSICOMOTORA &&
        comportamentoemsaladeaula == other.comportamentoemsaladeaula &&
        comportamentoemcasa == other.comportamentoemcasa &&
        horaldica == other.horaldica &&
        conclusao == other.conclusao &&
        indicacoesdetratamento == other.indicacoesdetratamento &&
        orientacoesescola == other.orientacoesescola &&
        orientacoesaospais == other.orientacoesaospais &&
        escrita == other.escrita &&
        espontanea == other.espontanea &&
        assinatura == other.assinatura &&
        urldownload == other.urldownload &&
        geroupdf == other.geroupdf &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, queixa.hashCode);
    _$hash = $jc(_$hash, histricododesenvolvimentoedasade.hashCode);
    _$hash = $jc(_$hash, antecedentesfamiliares.hashCode);
    _$hash = $jc(_$hash, jeitodeserdacrianasegundoame.hashCode);
    _$hash = $jc(_$hash, vidaescolar.hashCode);
    _$hash = $jc(_$hash, comportamentodacrianaduranteaavaliao.hashCode);
    _$hash = $jc(_$hash, avaliao.hashCode);
    _$hash = $jc(_$hash, instrumentos.hashCode);
    _$hash = $jc(_$hash, ateno.hashCode);
    _$hash = $jc(_$hash, funcoesExecutivas.hashCode);
    _$hash = $jc(_$hash, visual.hashCode);
    _$hash = $jc(_$hash, auditiva.hashCode);
    _$hash = $jc(_$hash, memoriadetrabalho.hashCode);
    _$hash = $jc(_$hash, leiturasilenciosa.hashCode);
    _$hash = $jc(_$hash, leituraoral.hashCode);
    _$hash = $jc(_$hash, interpretaodetexto.hashCode);
    _$hash = $jc(_$hash, compreensodetexto.hashCode);
    _$hash = $jc(_$hash, caLCULO.hashCode);
    _$hash = $jc(_$hash, oBSERVAcaOPSICOMOTORA.hashCode);
    _$hash = $jc(_$hash, comportamentoemsaladeaula.hashCode);
    _$hash = $jc(_$hash, comportamentoemcasa.hashCode);
    _$hash = $jc(_$hash, horaldica.hashCode);
    _$hash = $jc(_$hash, conclusao.hashCode);
    _$hash = $jc(_$hash, indicacoesdetratamento.hashCode);
    _$hash = $jc(_$hash, orientacoesescola.hashCode);
    _$hash = $jc(_$hash, orientacoesaospais.hashCode);
    _$hash = $jc(_$hash, escrita.hashCode);
    _$hash = $jc(_$hash, espontanea.hashCode);
    _$hash = $jc(_$hash, assinatura.hashCode);
    _$hash = $jc(_$hash, urldownload.hashCode);
    _$hash = $jc(_$hash, geroupdf.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RanRecord')
          ..add('paciente', paciente)
          ..add('data', data)
          ..add('queixa', queixa)
          ..add('histricododesenvolvimentoedasade',
              histricododesenvolvimentoedasade)
          ..add('antecedentesfamiliares', antecedentesfamiliares)
          ..add('jeitodeserdacrianasegundoame', jeitodeserdacrianasegundoame)
          ..add('vidaescolar', vidaescolar)
          ..add('comportamentodacrianaduranteaavaliao',
              comportamentodacrianaduranteaavaliao)
          ..add('avaliao', avaliao)
          ..add('instrumentos', instrumentos)
          ..add('ateno', ateno)
          ..add('funcoesExecutivas', funcoesExecutivas)
          ..add('visual', visual)
          ..add('auditiva', auditiva)
          ..add('memoriadetrabalho', memoriadetrabalho)
          ..add('leiturasilenciosa', leiturasilenciosa)
          ..add('leituraoral', leituraoral)
          ..add('interpretaodetexto', interpretaodetexto)
          ..add('compreensodetexto', compreensodetexto)
          ..add('caLCULO', caLCULO)
          ..add('oBSERVAcaOPSICOMOTORA', oBSERVAcaOPSICOMOTORA)
          ..add('comportamentoemsaladeaula', comportamentoemsaladeaula)
          ..add('comportamentoemcasa', comportamentoemcasa)
          ..add('horaldica', horaldica)
          ..add('conclusao', conclusao)
          ..add('indicacoesdetratamento', indicacoesdetratamento)
          ..add('orientacoesescola', orientacoesescola)
          ..add('orientacoesaospais', orientacoesaospais)
          ..add('escrita', escrita)
          ..add('espontanea', espontanea)
          ..add('assinatura', assinatura)
          ..add('urldownload', urldownload)
          ..add('geroupdf', geroupdf)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RanRecordBuilder implements Builder<RanRecord, RanRecordBuilder> {
  _$RanRecord? _$v;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _queixa;
  String? get queixa => _$this._queixa;
  set queixa(String? queixa) => _$this._queixa = queixa;

  String? _histricododesenvolvimentoedasade;
  String? get histricododesenvolvimentoedasade =>
      _$this._histricododesenvolvimentoedasade;
  set histricododesenvolvimentoedasade(
          String? histricododesenvolvimentoedasade) =>
      _$this._histricododesenvolvimentoedasade =
          histricododesenvolvimentoedasade;

  String? _antecedentesfamiliares;
  String? get antecedentesfamiliares => _$this._antecedentesfamiliares;
  set antecedentesfamiliares(String? antecedentesfamiliares) =>
      _$this._antecedentesfamiliares = antecedentesfamiliares;

  String? _jeitodeserdacrianasegundoame;
  String? get jeitodeserdacrianasegundoame =>
      _$this._jeitodeserdacrianasegundoame;
  set jeitodeserdacrianasegundoame(String? jeitodeserdacrianasegundoame) =>
      _$this._jeitodeserdacrianasegundoame = jeitodeserdacrianasegundoame;

  String? _vidaescolar;
  String? get vidaescolar => _$this._vidaescolar;
  set vidaescolar(String? vidaescolar) => _$this._vidaescolar = vidaescolar;

  String? _comportamentodacrianaduranteaavaliao;
  String? get comportamentodacrianaduranteaavaliao =>
      _$this._comportamentodacrianaduranteaavaliao;
  set comportamentodacrianaduranteaavaliao(
          String? comportamentodacrianaduranteaavaliao) =>
      _$this._comportamentodacrianaduranteaavaliao =
          comportamentodacrianaduranteaavaliao;

  String? _avaliao;
  String? get avaliao => _$this._avaliao;
  set avaliao(String? avaliao) => _$this._avaliao = avaliao;

  String? _instrumentos;
  String? get instrumentos => _$this._instrumentos;
  set instrumentos(String? instrumentos) => _$this._instrumentos = instrumentos;

  String? _ateno;
  String? get ateno => _$this._ateno;
  set ateno(String? ateno) => _$this._ateno = ateno;

  String? _funcoesExecutivas;
  String? get funcoesExecutivas => _$this._funcoesExecutivas;
  set funcoesExecutivas(String? funcoesExecutivas) =>
      _$this._funcoesExecutivas = funcoesExecutivas;

  String? _visual;
  String? get visual => _$this._visual;
  set visual(String? visual) => _$this._visual = visual;

  String? _auditiva;
  String? get auditiva => _$this._auditiva;
  set auditiva(String? auditiva) => _$this._auditiva = auditiva;

  String? _memoriadetrabalho;
  String? get memoriadetrabalho => _$this._memoriadetrabalho;
  set memoriadetrabalho(String? memoriadetrabalho) =>
      _$this._memoriadetrabalho = memoriadetrabalho;

  String? _leiturasilenciosa;
  String? get leiturasilenciosa => _$this._leiturasilenciosa;
  set leiturasilenciosa(String? leiturasilenciosa) =>
      _$this._leiturasilenciosa = leiturasilenciosa;

  String? _leituraoral;
  String? get leituraoral => _$this._leituraoral;
  set leituraoral(String? leituraoral) => _$this._leituraoral = leituraoral;

  String? _interpretaodetexto;
  String? get interpretaodetexto => _$this._interpretaodetexto;
  set interpretaodetexto(String? interpretaodetexto) =>
      _$this._interpretaodetexto = interpretaodetexto;

  String? _compreensodetexto;
  String? get compreensodetexto => _$this._compreensodetexto;
  set compreensodetexto(String? compreensodetexto) =>
      _$this._compreensodetexto = compreensodetexto;

  String? _caLCULO;
  String? get caLCULO => _$this._caLCULO;
  set caLCULO(String? caLCULO) => _$this._caLCULO = caLCULO;

  String? _oBSERVAcaOPSICOMOTORA;
  String? get oBSERVAcaOPSICOMOTORA => _$this._oBSERVAcaOPSICOMOTORA;
  set oBSERVAcaOPSICOMOTORA(String? oBSERVAcaOPSICOMOTORA) =>
      _$this._oBSERVAcaOPSICOMOTORA = oBSERVAcaOPSICOMOTORA;

  String? _comportamentoemsaladeaula;
  String? get comportamentoemsaladeaula => _$this._comportamentoemsaladeaula;
  set comportamentoemsaladeaula(String? comportamentoemsaladeaula) =>
      _$this._comportamentoemsaladeaula = comportamentoemsaladeaula;

  String? _comportamentoemcasa;
  String? get comportamentoemcasa => _$this._comportamentoemcasa;
  set comportamentoemcasa(String? comportamentoemcasa) =>
      _$this._comportamentoemcasa = comportamentoemcasa;

  String? _horaldica;
  String? get horaldica => _$this._horaldica;
  set horaldica(String? horaldica) => _$this._horaldica = horaldica;

  String? _conclusao;
  String? get conclusao => _$this._conclusao;
  set conclusao(String? conclusao) => _$this._conclusao = conclusao;

  String? _indicacoesdetratamento;
  String? get indicacoesdetratamento => _$this._indicacoesdetratamento;
  set indicacoesdetratamento(String? indicacoesdetratamento) =>
      _$this._indicacoesdetratamento = indicacoesdetratamento;

  String? _orientacoesescola;
  String? get orientacoesescola => _$this._orientacoesescola;
  set orientacoesescola(String? orientacoesescola) =>
      _$this._orientacoesescola = orientacoesescola;

  String? _orientacoesaospais;
  String? get orientacoesaospais => _$this._orientacoesaospais;
  set orientacoesaospais(String? orientacoesaospais) =>
      _$this._orientacoesaospais = orientacoesaospais;

  String? _escrita;
  String? get escrita => _$this._escrita;
  set escrita(String? escrita) => _$this._escrita = escrita;

  String? _espontanea;
  String? get espontanea => _$this._espontanea;
  set espontanea(String? espontanea) => _$this._espontanea = espontanea;

  String? _assinatura;
  String? get assinatura => _$this._assinatura;
  set assinatura(String? assinatura) => _$this._assinatura = assinatura;

  String? _urldownload;
  String? get urldownload => _$this._urldownload;
  set urldownload(String? urldownload) => _$this._urldownload = urldownload;

  bool? _geroupdf;
  bool? get geroupdf => _$this._geroupdf;
  set geroupdf(bool? geroupdf) => _$this._geroupdf = geroupdf;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RanRecordBuilder() {
    RanRecord._initializeBuilder(this);
  }

  RanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paciente = $v.paciente;
      _data = $v.data;
      _queixa = $v.queixa;
      _histricododesenvolvimentoedasade = $v.histricododesenvolvimentoedasade;
      _antecedentesfamiliares = $v.antecedentesfamiliares;
      _jeitodeserdacrianasegundoame = $v.jeitodeserdacrianasegundoame;
      _vidaescolar = $v.vidaescolar;
      _comportamentodacrianaduranteaavaliao =
          $v.comportamentodacrianaduranteaavaliao;
      _avaliao = $v.avaliao;
      _instrumentos = $v.instrumentos;
      _ateno = $v.ateno;
      _funcoesExecutivas = $v.funcoesExecutivas;
      _visual = $v.visual;
      _auditiva = $v.auditiva;
      _memoriadetrabalho = $v.memoriadetrabalho;
      _leiturasilenciosa = $v.leiturasilenciosa;
      _leituraoral = $v.leituraoral;
      _interpretaodetexto = $v.interpretaodetexto;
      _compreensodetexto = $v.compreensodetexto;
      _caLCULO = $v.caLCULO;
      _oBSERVAcaOPSICOMOTORA = $v.oBSERVAcaOPSICOMOTORA;
      _comportamentoemsaladeaula = $v.comportamentoemsaladeaula;
      _comportamentoemcasa = $v.comportamentoemcasa;
      _horaldica = $v.horaldica;
      _conclusao = $v.conclusao;
      _indicacoesdetratamento = $v.indicacoesdetratamento;
      _orientacoesescola = $v.orientacoesescola;
      _orientacoesaospais = $v.orientacoesaospais;
      _escrita = $v.escrita;
      _espontanea = $v.espontanea;
      _assinatura = $v.assinatura;
      _urldownload = $v.urldownload;
      _geroupdf = $v.geroupdf;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RanRecord;
  }

  @override
  void update(void Function(RanRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RanRecord build() => _build();

  _$RanRecord _build() {
    final _$result = _$v ??
        new _$RanRecord._(
            paciente: paciente,
            data: data,
            queixa: queixa,
            histricododesenvolvimentoedasade: histricododesenvolvimentoedasade,
            antecedentesfamiliares: antecedentesfamiliares,
            jeitodeserdacrianasegundoame: jeitodeserdacrianasegundoame,
            vidaescolar: vidaescolar,
            comportamentodacrianaduranteaavaliao:
                comportamentodacrianaduranteaavaliao,
            avaliao: avaliao,
            instrumentos: instrumentos,
            ateno: ateno,
            funcoesExecutivas: funcoesExecutivas,
            visual: visual,
            auditiva: auditiva,
            memoriadetrabalho: memoriadetrabalho,
            leiturasilenciosa: leiturasilenciosa,
            leituraoral: leituraoral,
            interpretaodetexto: interpretaodetexto,
            compreensodetexto: compreensodetexto,
            caLCULO: caLCULO,
            oBSERVAcaOPSICOMOTORA: oBSERVAcaOPSICOMOTORA,
            comportamentoemsaladeaula: comportamentoemsaladeaula,
            comportamentoemcasa: comportamentoemcasa,
            horaldica: horaldica,
            conclusao: conclusao,
            indicacoesdetratamento: indicacoesdetratamento,
            orientacoesescola: orientacoesescola,
            orientacoesaospais: orientacoesaospais,
            escrita: escrita,
            espontanea: espontanea,
            assinatura: assinatura,
            urldownload: urldownload,
            geroupdf: geroupdf,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

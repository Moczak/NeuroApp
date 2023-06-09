// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contrato_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContratoRecord> _$contratoRecordSerializer =
    new _$ContratoRecordSerializer();

class _$ContratoRecordSerializer
    implements StructuredSerializer<ContratoRecord> {
  @override
  final Iterable<Type> types = const [ContratoRecord, _$ContratoRecord];
  @override
  final String wireName = 'ContratoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ContratoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cabecalho;
    if (value != null) {
      result
        ..add('cabecalho')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contratogerado;
    if (value != null) {
      result
        ..add('contratogerado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cprimeira;
    if (value != null) {
      result
        ..add('cprimeira')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.csegunda;
    if (value != null) {
      result
        ..add('csegunda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cterceira;
    if (value != null) {
      result
        ..add('cterceira')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cquarta;
    if (value != null) {
      result
        ..add('cquarta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logourl;
    if (value != null) {
      result
        ..add('logourl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tel;
    if (value != null) {
      result
        ..add('tel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endereco;
    if (value != null) {
      result
        ..add('endereco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datacontratostring;
    if (value != null) {
      result
        ..add('datacontratostring')
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
  ContratoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContratoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cabecalho':
          result.cabecalho = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contratogerado':
          result.contratogerado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'cprimeira':
          result.cprimeira = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'csegunda':
          result.csegunda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cterceira':
          result.cterceira = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cquarta':
          result.cquarta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logourl':
          result.logourl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endereco':
          result.endereco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'datacontratostring':
          result.datacontratostring = serializers.deserialize(value,
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

class _$ContratoRecord extends ContratoRecord {
  @override
  final String? cabecalho;
  @override
  final String? url;
  @override
  final bool? contratogerado;
  @override
  final String? cprimeira;
  @override
  final String? csegunda;
  @override
  final String? cterceira;
  @override
  final String? cquarta;
  @override
  final String? logourl;
  @override
  final String? tel;
  @override
  final String? email;
  @override
  final String? endereco;
  @override
  final String? datacontratostring;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ContratoRecord([void Function(ContratoRecordBuilder)? updates]) =>
      (new ContratoRecordBuilder()..update(updates))._build();

  _$ContratoRecord._(
      {this.cabecalho,
      this.url,
      this.contratogerado,
      this.cprimeira,
      this.csegunda,
      this.cterceira,
      this.cquarta,
      this.logourl,
      this.tel,
      this.email,
      this.endereco,
      this.datacontratostring,
      this.ffRef})
      : super._();

  @override
  ContratoRecord rebuild(void Function(ContratoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContratoRecordBuilder toBuilder() =>
      new ContratoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContratoRecord &&
        cabecalho == other.cabecalho &&
        url == other.url &&
        contratogerado == other.contratogerado &&
        cprimeira == other.cprimeira &&
        csegunda == other.csegunda &&
        cterceira == other.cterceira &&
        cquarta == other.cquarta &&
        logourl == other.logourl &&
        tel == other.tel &&
        email == other.email &&
        endereco == other.endereco &&
        datacontratostring == other.datacontratostring &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cabecalho.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, contratogerado.hashCode);
    _$hash = $jc(_$hash, cprimeira.hashCode);
    _$hash = $jc(_$hash, csegunda.hashCode);
    _$hash = $jc(_$hash, cterceira.hashCode);
    _$hash = $jc(_$hash, cquarta.hashCode);
    _$hash = $jc(_$hash, logourl.hashCode);
    _$hash = $jc(_$hash, tel.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, endereco.hashCode);
    _$hash = $jc(_$hash, datacontratostring.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContratoRecord')
          ..add('cabecalho', cabecalho)
          ..add('url', url)
          ..add('contratogerado', contratogerado)
          ..add('cprimeira', cprimeira)
          ..add('csegunda', csegunda)
          ..add('cterceira', cterceira)
          ..add('cquarta', cquarta)
          ..add('logourl', logourl)
          ..add('tel', tel)
          ..add('email', email)
          ..add('endereco', endereco)
          ..add('datacontratostring', datacontratostring)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ContratoRecordBuilder
    implements Builder<ContratoRecord, ContratoRecordBuilder> {
  _$ContratoRecord? _$v;

  String? _cabecalho;
  String? get cabecalho => _$this._cabecalho;
  set cabecalho(String? cabecalho) => _$this._cabecalho = cabecalho;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _contratogerado;
  bool? get contratogerado => _$this._contratogerado;
  set contratogerado(bool? contratogerado) =>
      _$this._contratogerado = contratogerado;

  String? _cprimeira;
  String? get cprimeira => _$this._cprimeira;
  set cprimeira(String? cprimeira) => _$this._cprimeira = cprimeira;

  String? _csegunda;
  String? get csegunda => _$this._csegunda;
  set csegunda(String? csegunda) => _$this._csegunda = csegunda;

  String? _cterceira;
  String? get cterceira => _$this._cterceira;
  set cterceira(String? cterceira) => _$this._cterceira = cterceira;

  String? _cquarta;
  String? get cquarta => _$this._cquarta;
  set cquarta(String? cquarta) => _$this._cquarta = cquarta;

  String? _logourl;
  String? get logourl => _$this._logourl;
  set logourl(String? logourl) => _$this._logourl = logourl;

  String? _tel;
  String? get tel => _$this._tel;
  set tel(String? tel) => _$this._tel = tel;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _endereco;
  String? get endereco => _$this._endereco;
  set endereco(String? endereco) => _$this._endereco = endereco;

  String? _datacontratostring;
  String? get datacontratostring => _$this._datacontratostring;
  set datacontratostring(String? datacontratostring) =>
      _$this._datacontratostring = datacontratostring;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ContratoRecordBuilder() {
    ContratoRecord._initializeBuilder(this);
  }

  ContratoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cabecalho = $v.cabecalho;
      _url = $v.url;
      _contratogerado = $v.contratogerado;
      _cprimeira = $v.cprimeira;
      _csegunda = $v.csegunda;
      _cterceira = $v.cterceira;
      _cquarta = $v.cquarta;
      _logourl = $v.logourl;
      _tel = $v.tel;
      _email = $v.email;
      _endereco = $v.endereco;
      _datacontratostring = $v.datacontratostring;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContratoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContratoRecord;
  }

  @override
  void update(void Function(ContratoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContratoRecord build() => _build();

  _$ContratoRecord _build() {
    final _$result = _$v ??
        new _$ContratoRecord._(
            cabecalho: cabecalho,
            url: url,
            contratogerado: contratogerado,
            cprimeira: cprimeira,
            csegunda: csegunda,
            cterceira: cterceira,
            cquarta: cquarta,
            logourl: logourl,
            tel: tel,
            email: email,
            endereco: endereco,
            datacontratostring: datacontratostring,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

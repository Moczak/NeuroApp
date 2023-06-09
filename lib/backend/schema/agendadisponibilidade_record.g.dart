// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agendadisponibilidade_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AgendadisponibilidadeRecord>
    _$agendadisponibilidadeRecordSerializer =
    new _$AgendadisponibilidadeRecordSerializer();

class _$AgendadisponibilidadeRecordSerializer
    implements StructuredSerializer<AgendadisponibilidadeRecord> {
  @override
  final Iterable<Type> types = const [
    AgendadisponibilidadeRecord,
    _$AgendadisponibilidadeRecord
  ];
  @override
  final String wireName = 'AgendadisponibilidadeRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AgendadisponibilidadeRecord object,
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
    value = object.horario;
    if (value != null) {
      result
        ..add('horario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.disponivel;
    if (value != null) {
      result
        ..add('disponivel')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone;
    if (value != null) {
      result
        ..add('telefone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkmeet;
    if (value != null) {
      result
        ..add('linkmeet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.realizado;
    if (value != null) {
      result
        ..add('realizado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.obs;
    if (value != null) {
      result
        ..add('obs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.agendado;
    if (value != null) {
      result
        ..add('agendado')
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
  AgendadisponibilidadeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgendadisponibilidadeRecordBuilder();

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
        case 'horario':
          result.horario = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'disponivel':
          result.disponivel = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone':
          result.telefone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'linkmeet':
          result.linkmeet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'realizado':
          result.realizado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'obs':
          result.obs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'agendado':
          result.agendado = serializers.deserialize(value,
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

class _$AgendadisponibilidadeRecord extends AgendadisponibilidadeRecord {
  @override
  final DateTime? data;
  @override
  final DateTime? horario;
  @override
  final bool? disponivel;
  @override
  final String? nome;
  @override
  final String? telefone;
  @override
  final String? linkmeet;
  @override
  final bool? realizado;
  @override
  final String? obs;
  @override
  final bool? agendado;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AgendadisponibilidadeRecord(
          [void Function(AgendadisponibilidadeRecordBuilder)? updates]) =>
      (new AgendadisponibilidadeRecordBuilder()..update(updates))._build();

  _$AgendadisponibilidadeRecord._(
      {this.data,
      this.horario,
      this.disponivel,
      this.nome,
      this.telefone,
      this.linkmeet,
      this.realizado,
      this.obs,
      this.agendado,
      this.ffRef})
      : super._();

  @override
  AgendadisponibilidadeRecord rebuild(
          void Function(AgendadisponibilidadeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgendadisponibilidadeRecordBuilder toBuilder() =>
      new AgendadisponibilidadeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgendadisponibilidadeRecord &&
        data == other.data &&
        horario == other.horario &&
        disponivel == other.disponivel &&
        nome == other.nome &&
        telefone == other.telefone &&
        linkmeet == other.linkmeet &&
        realizado == other.realizado &&
        obs == other.obs &&
        agendado == other.agendado &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, horario.hashCode);
    _$hash = $jc(_$hash, disponivel.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, telefone.hashCode);
    _$hash = $jc(_$hash, linkmeet.hashCode);
    _$hash = $jc(_$hash, realizado.hashCode);
    _$hash = $jc(_$hash, obs.hashCode);
    _$hash = $jc(_$hash, agendado.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgendadisponibilidadeRecord')
          ..add('data', data)
          ..add('horario', horario)
          ..add('disponivel', disponivel)
          ..add('nome', nome)
          ..add('telefone', telefone)
          ..add('linkmeet', linkmeet)
          ..add('realizado', realizado)
          ..add('obs', obs)
          ..add('agendado', agendado)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AgendadisponibilidadeRecordBuilder
    implements
        Builder<AgendadisponibilidadeRecord,
            AgendadisponibilidadeRecordBuilder> {
  _$AgendadisponibilidadeRecord? _$v;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DateTime? _horario;
  DateTime? get horario => _$this._horario;
  set horario(DateTime? horario) => _$this._horario = horario;

  bool? _disponivel;
  bool? get disponivel => _$this._disponivel;
  set disponivel(bool? disponivel) => _$this._disponivel = disponivel;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _telefone;
  String? get telefone => _$this._telefone;
  set telefone(String? telefone) => _$this._telefone = telefone;

  String? _linkmeet;
  String? get linkmeet => _$this._linkmeet;
  set linkmeet(String? linkmeet) => _$this._linkmeet = linkmeet;

  bool? _realizado;
  bool? get realizado => _$this._realizado;
  set realizado(bool? realizado) => _$this._realizado = realizado;

  String? _obs;
  String? get obs => _$this._obs;
  set obs(String? obs) => _$this._obs = obs;

  bool? _agendado;
  bool? get agendado => _$this._agendado;
  set agendado(bool? agendado) => _$this._agendado = agendado;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AgendadisponibilidadeRecordBuilder() {
    AgendadisponibilidadeRecord._initializeBuilder(this);
  }

  AgendadisponibilidadeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _horario = $v.horario;
      _disponivel = $v.disponivel;
      _nome = $v.nome;
      _telefone = $v.telefone;
      _linkmeet = $v.linkmeet;
      _realizado = $v.realizado;
      _obs = $v.obs;
      _agendado = $v.agendado;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgendadisponibilidadeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AgendadisponibilidadeRecord;
  }

  @override
  void update(void Function(AgendadisponibilidadeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgendadisponibilidadeRecord build() => _build();

  _$AgendadisponibilidadeRecord _build() {
    final _$result = _$v ??
        new _$AgendadisponibilidadeRecord._(
            data: data,
            horario: horario,
            disponivel: disponivel,
            nome: nome,
            telefone: telefone,
            linkmeet: linkmeet,
            realizado: realizado,
            obs: obs,
            agendado: agendado,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

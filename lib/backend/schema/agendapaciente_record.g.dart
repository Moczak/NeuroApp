// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agendapaciente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AgendapacienteRecord> _$agendapacienteRecordSerializer =
    new _$AgendapacienteRecordSerializer();

class _$AgendapacienteRecordSerializer
    implements StructuredSerializer<AgendapacienteRecord> {
  @override
  final Iterable<Type> types = const [
    AgendapacienteRecord,
    _$AgendapacienteRecord
  ];
  @override
  final String wireName = 'AgendapacienteRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AgendapacienteRecord object,
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
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.horainicial;
    if (value != null) {
      result
        ..add('horainicial')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.horafinal;
    if (value != null) {
      result
        ..add('horafinal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.realizado;
    if (value != null) {
      result
        ..add('realizado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.confirmoupresenca;
    if (value != null) {
      result
        ..add('confirmoupresenca')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.sessaoreferencia;
    if (value != null) {
      result
        ..add('sessaoreferencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  AgendapacienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgendapacienteRecordBuilder();

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
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'horainicial':
          result.horainicial = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'horafinal':
          result.horafinal = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'realizado':
          result.realizado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'confirmoupresenca':
          result.confirmoupresenca = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sessaoreferencia':
          result.sessaoreferencia = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$AgendapacienteRecord extends AgendapacienteRecord {
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final String? nome;
  @override
  final DateTime? data;
  @override
  final DateTime? horainicial;
  @override
  final DateTime? horafinal;
  @override
  final bool? realizado;
  @override
  final bool? confirmoupresenca;
  @override
  final DocumentReference<Object?>? sessaoreferencia;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AgendapacienteRecord(
          [void Function(AgendapacienteRecordBuilder)? updates]) =>
      (new AgendapacienteRecordBuilder()..update(updates))._build();

  _$AgendapacienteRecord._(
      {this.paciente,
      this.nome,
      this.data,
      this.horainicial,
      this.horafinal,
      this.realizado,
      this.confirmoupresenca,
      this.sessaoreferencia,
      this.ffRef})
      : super._();

  @override
  AgendapacienteRecord rebuild(
          void Function(AgendapacienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgendapacienteRecordBuilder toBuilder() =>
      new AgendapacienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgendapacienteRecord &&
        paciente == other.paciente &&
        nome == other.nome &&
        data == other.data &&
        horainicial == other.horainicial &&
        horafinal == other.horafinal &&
        realizado == other.realizado &&
        confirmoupresenca == other.confirmoupresenca &&
        sessaoreferencia == other.sessaoreferencia &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, horainicial.hashCode);
    _$hash = $jc(_$hash, horafinal.hashCode);
    _$hash = $jc(_$hash, realizado.hashCode);
    _$hash = $jc(_$hash, confirmoupresenca.hashCode);
    _$hash = $jc(_$hash, sessaoreferencia.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgendapacienteRecord')
          ..add('paciente', paciente)
          ..add('nome', nome)
          ..add('data', data)
          ..add('horainicial', horainicial)
          ..add('horafinal', horafinal)
          ..add('realizado', realizado)
          ..add('confirmoupresenca', confirmoupresenca)
          ..add('sessaoreferencia', sessaoreferencia)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AgendapacienteRecordBuilder
    implements Builder<AgendapacienteRecord, AgendapacienteRecordBuilder> {
  _$AgendapacienteRecord? _$v;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DateTime? _horainicial;
  DateTime? get horainicial => _$this._horainicial;
  set horainicial(DateTime? horainicial) => _$this._horainicial = horainicial;

  DateTime? _horafinal;
  DateTime? get horafinal => _$this._horafinal;
  set horafinal(DateTime? horafinal) => _$this._horafinal = horafinal;

  bool? _realizado;
  bool? get realizado => _$this._realizado;
  set realizado(bool? realizado) => _$this._realizado = realizado;

  bool? _confirmoupresenca;
  bool? get confirmoupresenca => _$this._confirmoupresenca;
  set confirmoupresenca(bool? confirmoupresenca) =>
      _$this._confirmoupresenca = confirmoupresenca;

  DocumentReference<Object?>? _sessaoreferencia;
  DocumentReference<Object?>? get sessaoreferencia => _$this._sessaoreferencia;
  set sessaoreferencia(DocumentReference<Object?>? sessaoreferencia) =>
      _$this._sessaoreferencia = sessaoreferencia;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AgendapacienteRecordBuilder() {
    AgendapacienteRecord._initializeBuilder(this);
  }

  AgendapacienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paciente = $v.paciente;
      _nome = $v.nome;
      _data = $v.data;
      _horainicial = $v.horainicial;
      _horafinal = $v.horafinal;
      _realizado = $v.realizado;
      _confirmoupresenca = $v.confirmoupresenca;
      _sessaoreferencia = $v.sessaoreferencia;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgendapacienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AgendapacienteRecord;
  }

  @override
  void update(void Function(AgendapacienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgendapacienteRecord build() => _build();

  _$AgendapacienteRecord _build() {
    final _$result = _$v ??
        new _$AgendapacienteRecord._(
            paciente: paciente,
            nome: nome,
            data: data,
            horainicial: horainicial,
            horafinal: horafinal,
            realizado: realizado,
            confirmoupresenca: confirmoupresenca,
            sessaoreferencia: sessaoreferencia,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

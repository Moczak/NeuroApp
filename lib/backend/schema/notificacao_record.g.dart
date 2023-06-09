// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notificacao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificacaoRecord> _$notificacaoRecordSerializer =
    new _$NotificacaoRecordSerializer();

class _$NotificacaoRecordSerializer
    implements StructuredSerializer<NotificacaoRecord> {
  @override
  final Iterable<Type> types = const [NotificacaoRecord, _$NotificacaoRecord];
  @override
  final String wireName = 'NotificacaoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotificacaoRecord object,
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
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.lida;
    if (value != null) {
      result
        ..add('lida')
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
    value = object.referencia;
    if (value != null) {
      result
        ..add('referencia')
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
  NotificacaoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificacaoRecordBuilder();

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
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'lida':
          result.lida = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'referencia':
          result.referencia = serializers.deserialize(value,
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

class _$NotificacaoRecord extends NotificacaoRecord {
  @override
  final String? titulo;
  @override
  final DateTime? data;
  @override
  final bool? lida;
  @override
  final String? descricao;
  @override
  final String? referencia;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificacaoRecord(
          [void Function(NotificacaoRecordBuilder)? updates]) =>
      (new NotificacaoRecordBuilder()..update(updates))._build();

  _$NotificacaoRecord._(
      {this.titulo,
      this.data,
      this.lida,
      this.descricao,
      this.referencia,
      this.ffRef})
      : super._();

  @override
  NotificacaoRecord rebuild(void Function(NotificacaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificacaoRecordBuilder toBuilder() =>
      new NotificacaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificacaoRecord &&
        titulo == other.titulo &&
        data == other.data &&
        lida == other.lida &&
        descricao == other.descricao &&
        referencia == other.referencia &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, lida.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, referencia.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificacaoRecord')
          ..add('titulo', titulo)
          ..add('data', data)
          ..add('lida', lida)
          ..add('descricao', descricao)
          ..add('referencia', referencia)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificacaoRecordBuilder
    implements Builder<NotificacaoRecord, NotificacaoRecordBuilder> {
  _$NotificacaoRecord? _$v;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  bool? _lida;
  bool? get lida => _$this._lida;
  set lida(bool? lida) => _$this._lida = lida;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  String? _referencia;
  String? get referencia => _$this._referencia;
  set referencia(String? referencia) => _$this._referencia = referencia;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificacaoRecordBuilder() {
    NotificacaoRecord._initializeBuilder(this);
  }

  NotificacaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _data = $v.data;
      _lida = $v.lida;
      _descricao = $v.descricao;
      _referencia = $v.referencia;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificacaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificacaoRecord;
  }

  @override
  void update(void Function(NotificacaoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificacaoRecord build() => _build();

  _$NotificacaoRecord _build() {
    final _$result = _$v ??
        new _$NotificacaoRecord._(
            titulo: titulo,
            data: data,
            lida: lida,
            descricao: descricao,
            referencia: referencia,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noticia_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NoticiaRecord> _$noticiaRecordSerializer =
    new _$NoticiaRecordSerializer();

class _$NoticiaRecordSerializer implements StructuredSerializer<NoticiaRecord> {
  @override
  final Iterable<Type> types = const [NoticiaRecord, _$NoticiaRecord];
  @override
  final String wireName = 'NoticiaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NoticiaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagem;
    if (value != null) {
      result
        ..add('imagem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datanativa;
    if (value != null) {
      result
        ..add('datanativa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.postOwner;
    if (value != null) {
      result
        ..add('postOwner')
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
  NoticiaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoticiaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagem':
          result.imagem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'datanativa':
          result.datanativa = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'postOwner':
          result.postOwner = serializers.deserialize(value,
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

class _$NoticiaRecord extends NoticiaRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? titulo;
  @override
  final String? descricao;
  @override
  final String? data;
  @override
  final String? imagem;
  @override
  final DateTime? datanativa;
  @override
  final bool? postOwner;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NoticiaRecord([void Function(NoticiaRecordBuilder)? updates]) =>
      (new NoticiaRecordBuilder()..update(updates))._build();

  _$NoticiaRecord._(
      {this.user,
      this.titulo,
      this.descricao,
      this.data,
      this.imagem,
      this.datanativa,
      this.postOwner,
      this.ffRef})
      : super._();

  @override
  NoticiaRecord rebuild(void Function(NoticiaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticiaRecordBuilder toBuilder() => new NoticiaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoticiaRecord &&
        user == other.user &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        data == other.data &&
        imagem == other.imagem &&
        datanativa == other.datanativa &&
        postOwner == other.postOwner &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, imagem.hashCode);
    _$hash = $jc(_$hash, datanativa.hashCode);
    _$hash = $jc(_$hash, postOwner.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoticiaRecord')
          ..add('user', user)
          ..add('titulo', titulo)
          ..add('descricao', descricao)
          ..add('data', data)
          ..add('imagem', imagem)
          ..add('datanativa', datanativa)
          ..add('postOwner', postOwner)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NoticiaRecordBuilder
    implements Builder<NoticiaRecord, NoticiaRecordBuilder> {
  _$NoticiaRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  String? _imagem;
  String? get imagem => _$this._imagem;
  set imagem(String? imagem) => _$this._imagem = imagem;

  DateTime? _datanativa;
  DateTime? get datanativa => _$this._datanativa;
  set datanativa(DateTime? datanativa) => _$this._datanativa = datanativa;

  bool? _postOwner;
  bool? get postOwner => _$this._postOwner;
  set postOwner(bool? postOwner) => _$this._postOwner = postOwner;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NoticiaRecordBuilder() {
    NoticiaRecord._initializeBuilder(this);
  }

  NoticiaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _titulo = $v.titulo;
      _descricao = $v.descricao;
      _data = $v.data;
      _imagem = $v.imagem;
      _datanativa = $v.datanativa;
      _postOwner = $v.postOwner;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoticiaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoticiaRecord;
  }

  @override
  void update(void Function(NoticiaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoticiaRecord build() => _build();

  _$NoticiaRecord _build() {
    final _$result = _$v ??
        new _$NoticiaRecord._(
            user: user,
            titulo: titulo,
            descricao: descricao,
            data: data,
            imagem: imagem,
            datanativa: datanativa,
            postOwner: postOwner,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

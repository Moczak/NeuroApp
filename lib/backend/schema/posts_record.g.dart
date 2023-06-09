// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.datapostagem;
    if (value != null) {
      result
        ..add('datapostagem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.foipostado;
    if (value != null) {
      result
        ..add('foipostado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tema;
    if (value != null) {
      result
        ..add('tema')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.diadasemana;
    if (value != null) {
      result
        ..add('diadasemana')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hashtags;
    if (value != null) {
      result
        ..add('hashtags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricaopost;
    if (value != null) {
      result
        ..add('descricaopost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomedodiadasemana;
    if (value != null) {
      result
        ..add('nomedodiadasemana')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('link')
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
  PostsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'datapostagem':
          result.datapostagem = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'foipostado':
          result.foipostado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'tema':
          result.tema = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'diadasemana':
          result.diadasemana = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hashtags':
          result.hashtags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricaopost':
          result.descricaopost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedodiadasemana':
          result.nomedodiadasemana = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
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

class _$PostsRecord extends PostsRecord {
  @override
  final DateTime? datapostagem;
  @override
  final bool? foipostado;
  @override
  final String? tema;
  @override
  final String? diadasemana;
  @override
  final String? hashtags;
  @override
  final String? descricaopost;
  @override
  final String? nomedodiadasemana;
  @override
  final String? link;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostsRecord([void Function(PostsRecordBuilder)? updates]) =>
      (new PostsRecordBuilder()..update(updates))._build();

  _$PostsRecord._(
      {this.datapostagem,
      this.foipostado,
      this.tema,
      this.diadasemana,
      this.hashtags,
      this.descricaopost,
      this.nomedodiadasemana,
      this.link,
      this.ffRef})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        datapostagem == other.datapostagem &&
        foipostado == other.foipostado &&
        tema == other.tema &&
        diadasemana == other.diadasemana &&
        hashtags == other.hashtags &&
        descricaopost == other.descricaopost &&
        nomedodiadasemana == other.nomedodiadasemana &&
        link == other.link &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, datapostagem.hashCode);
    _$hash = $jc(_$hash, foipostado.hashCode);
    _$hash = $jc(_$hash, tema.hashCode);
    _$hash = $jc(_$hash, diadasemana.hashCode);
    _$hash = $jc(_$hash, hashtags.hashCode);
    _$hash = $jc(_$hash, descricaopost.hashCode);
    _$hash = $jc(_$hash, nomedodiadasemana.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsRecord')
          ..add('datapostagem', datapostagem)
          ..add('foipostado', foipostado)
          ..add('tema', tema)
          ..add('diadasemana', diadasemana)
          ..add('hashtags', hashtags)
          ..add('descricaopost', descricaopost)
          ..add('nomedodiadasemana', nomedodiadasemana)
          ..add('link', link)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord? _$v;

  DateTime? _datapostagem;
  DateTime? get datapostagem => _$this._datapostagem;
  set datapostagem(DateTime? datapostagem) =>
      _$this._datapostagem = datapostagem;

  bool? _foipostado;
  bool? get foipostado => _$this._foipostado;
  set foipostado(bool? foipostado) => _$this._foipostado = foipostado;

  String? _tema;
  String? get tema => _$this._tema;
  set tema(String? tema) => _$this._tema = tema;

  String? _diadasemana;
  String? get diadasemana => _$this._diadasemana;
  set diadasemana(String? diadasemana) => _$this._diadasemana = diadasemana;

  String? _hashtags;
  String? get hashtags => _$this._hashtags;
  set hashtags(String? hashtags) => _$this._hashtags = hashtags;

  String? _descricaopost;
  String? get descricaopost => _$this._descricaopost;
  set descricaopost(String? descricaopost) =>
      _$this._descricaopost = descricaopost;

  String? _nomedodiadasemana;
  String? get nomedodiadasemana => _$this._nomedodiadasemana;
  set nomedodiadasemana(String? nomedodiadasemana) =>
      _$this._nomedodiadasemana = nomedodiadasemana;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _datapostagem = $v.datapostagem;
      _foipostado = $v.foipostado;
      _tema = $v.tema;
      _diadasemana = $v.diadasemana;
      _hashtags = $v.hashtags;
      _descricaopost = $v.descricaopost;
      _nomedodiadasemana = $v.nomedodiadasemana;
      _link = $v.link;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsRecord build() => _build();

  _$PostsRecord _build() {
    final _$result = _$v ??
        new _$PostsRecord._(
            datapostagem: datapostagem,
            foipostado: foipostado,
            tema: tema,
            diadasemana: diadasemana,
            hashtags: hashtags,
            descricaopost: descricaopost,
            nomedodiadasemana: nomedodiadasemana,
            link: link,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

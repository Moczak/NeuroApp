// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postagens_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostagensRecord> _$postagensRecordSerializer =
    new _$PostagensRecordSerializer();

class _$PostagensRecordSerializer
    implements StructuredSerializer<PostagensRecord> {
  @override
  final Iterable<Type> types = const [PostagensRecord, _$PostagensRecord];
  @override
  final String wireName = 'PostagensRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostagensRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postUser;
    if (value != null) {
      result
        ..add('post_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.postPhoto;
    if (value != null) {
      result
        ..add('post_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timePosted;
    if (value != null) {
      result
        ..add('time_posted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.postCaption;
    if (value != null) {
      result
        ..add('post_caption')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addimagem;
    if (value != null) {
      result
        ..add('addimagem')
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
  PostagensRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostagensRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'post_user':
          result.postUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'post_photo':
          result.postPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_posted':
          result.timePosted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'post_caption':
          result.postCaption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addimagem':
          result.addimagem = serializers.deserialize(value,
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

class _$PostagensRecord extends PostagensRecord {
  @override
  final DocumentReference<Object?>? postUser;
  @override
  final String? postPhoto;
  @override
  final DateTime? timePosted;
  @override
  final BuiltList<DocumentReference<Object?>>? likes;
  @override
  final String? postCaption;
  @override
  final bool? addimagem;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostagensRecord([void Function(PostagensRecordBuilder)? updates]) =>
      (new PostagensRecordBuilder()..update(updates))._build();

  _$PostagensRecord._(
      {this.postUser,
      this.postPhoto,
      this.timePosted,
      this.likes,
      this.postCaption,
      this.addimagem,
      this.ffRef})
      : super._();

  @override
  PostagensRecord rebuild(void Function(PostagensRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostagensRecordBuilder toBuilder() =>
      new PostagensRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostagensRecord &&
        postUser == other.postUser &&
        postPhoto == other.postPhoto &&
        timePosted == other.timePosted &&
        likes == other.likes &&
        postCaption == other.postCaption &&
        addimagem == other.addimagem &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postUser.hashCode);
    _$hash = $jc(_$hash, postPhoto.hashCode);
    _$hash = $jc(_$hash, timePosted.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, postCaption.hashCode);
    _$hash = $jc(_$hash, addimagem.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostagensRecord')
          ..add('postUser', postUser)
          ..add('postPhoto', postPhoto)
          ..add('timePosted', timePosted)
          ..add('likes', likes)
          ..add('postCaption', postCaption)
          ..add('addimagem', addimagem)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostagensRecordBuilder
    implements Builder<PostagensRecord, PostagensRecordBuilder> {
  _$PostagensRecord? _$v;

  DocumentReference<Object?>? _postUser;
  DocumentReference<Object?>? get postUser => _$this._postUser;
  set postUser(DocumentReference<Object?>? postUser) =>
      _$this._postUser = postUser;

  String? _postPhoto;
  String? get postPhoto => _$this._postPhoto;
  set postPhoto(String? postPhoto) => _$this._postPhoto = postPhoto;

  DateTime? _timePosted;
  DateTime? get timePosted => _$this._timePosted;
  set timePosted(DateTime? timePosted) => _$this._timePosted = timePosted;

  ListBuilder<DocumentReference<Object?>>? _likes;
  ListBuilder<DocumentReference<Object?>> get likes =>
      _$this._likes ??= new ListBuilder<DocumentReference<Object?>>();
  set likes(ListBuilder<DocumentReference<Object?>>? likes) =>
      _$this._likes = likes;

  String? _postCaption;
  String? get postCaption => _$this._postCaption;
  set postCaption(String? postCaption) => _$this._postCaption = postCaption;

  bool? _addimagem;
  bool? get addimagem => _$this._addimagem;
  set addimagem(bool? addimagem) => _$this._addimagem = addimagem;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostagensRecordBuilder() {
    PostagensRecord._initializeBuilder(this);
  }

  PostagensRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postUser = $v.postUser;
      _postPhoto = $v.postPhoto;
      _timePosted = $v.timePosted;
      _likes = $v.likes?.toBuilder();
      _postCaption = $v.postCaption;
      _addimagem = $v.addimagem;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostagensRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostagensRecord;
  }

  @override
  void update(void Function(PostagensRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostagensRecord build() => _build();

  _$PostagensRecord _build() {
    _$PostagensRecord _$result;
    try {
      _$result = _$v ??
          new _$PostagensRecord._(
              postUser: postUser,
              postPhoto: postPhoto,
              timePosted: timePosted,
              likes: _likes?.build(),
              postCaption: postCaption,
              addimagem: addimagem,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likes';
        _likes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostagensRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

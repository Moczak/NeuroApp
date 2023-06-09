// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comentario_post_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComentarioPostRecord> _$comentarioPostRecordSerializer =
    new _$ComentarioPostRecordSerializer();

class _$ComentarioPostRecordSerializer
    implements StructuredSerializer<ComentarioPostRecord> {
  @override
  final Iterable<Type> types = const [
    ComentarioPostRecord,
    _$ComentarioPostRecord
  ];
  @override
  final String wireName = 'ComentarioPostRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ComentarioPostRecord object,
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
    value = object.comentario;
    if (value != null) {
      result
        ..add('comentario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.post;
    if (value != null) {
      result
        ..add('post')
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
  ComentarioPostRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComentarioPostRecordBuilder();

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
        case 'comentario':
          result.comentario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'post':
          result.post = serializers.deserialize(value,
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

class _$ComentarioPostRecord extends ComentarioPostRecord {
  @override
  final DateTime? data;
  @override
  final String? comentario;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? post;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComentarioPostRecord(
          [void Function(ComentarioPostRecordBuilder)? updates]) =>
      (new ComentarioPostRecordBuilder()..update(updates))._build();

  _$ComentarioPostRecord._(
      {this.data, this.comentario, this.user, this.post, this.ffRef})
      : super._();

  @override
  ComentarioPostRecord rebuild(
          void Function(ComentarioPostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComentarioPostRecordBuilder toBuilder() =>
      new ComentarioPostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComentarioPostRecord &&
        data == other.data &&
        comentario == other.comentario &&
        user == other.user &&
        post == other.post &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, comentario.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComentarioPostRecord')
          ..add('data', data)
          ..add('comentario', comentario)
          ..add('user', user)
          ..add('post', post)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComentarioPostRecordBuilder
    implements Builder<ComentarioPostRecord, ComentarioPostRecordBuilder> {
  _$ComentarioPostRecord? _$v;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _comentario;
  String? get comentario => _$this._comentario;
  set comentario(String? comentario) => _$this._comentario = comentario;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _post;
  DocumentReference<Object?>? get post => _$this._post;
  set post(DocumentReference<Object?>? post) => _$this._post = post;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComentarioPostRecordBuilder() {
    ComentarioPostRecord._initializeBuilder(this);
  }

  ComentarioPostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _comentario = $v.comentario;
      _user = $v.user;
      _post = $v.post;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComentarioPostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComentarioPostRecord;
  }

  @override
  void update(void Function(ComentarioPostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComentarioPostRecord build() => _build();

  _$ComentarioPostRecord _build() {
    final _$result = _$v ??
        new _$ComentarioPostRecord._(
            data: data,
            comentario: comentario,
            user: user,
            post: post,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

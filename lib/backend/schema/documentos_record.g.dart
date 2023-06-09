// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentosRecord> _$documentosRecordSerializer =
    new _$DocumentosRecordSerializer();

class _$DocumentosRecordSerializer
    implements StructuredSerializer<DocumentosRecord> {
  @override
  final Iterable<Type> types = const [DocumentosRecord, _$DocumentosRecord];
  @override
  final String wireName = 'DocumentosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DocumentosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pacientereferencia;
    if (value != null) {
      result
        ..add('pacientereferencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.pdfurl;
    if (value != null) {
      result
        ..add('pdfurl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomedodocumento;
    if (value != null) {
      result
        ..add('nomedodocumento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isUpload;
    if (value != null) {
      result
        ..add('isUpload')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
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
  DocumentosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pacientereferencia':
          result.pacientereferencia = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'pdfurl':
          result.pdfurl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomedodocumento':
          result.nomedodocumento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isUpload':
          result.isUpload = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
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

class _$DocumentosRecord extends DocumentosRecord {
  @override
  final DocumentReference<Object?>? pacientereferencia;
  @override
  final String? pdfurl;
  @override
  final String? nomedodocumento;
  @override
  final bool? isUpload;
  @override
  final String? data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DocumentosRecord(
          [void Function(DocumentosRecordBuilder)? updates]) =>
      (new DocumentosRecordBuilder()..update(updates))._build();

  _$DocumentosRecord._(
      {this.pacientereferencia,
      this.pdfurl,
      this.nomedodocumento,
      this.isUpload,
      this.data,
      this.ffRef})
      : super._();

  @override
  DocumentosRecord rebuild(void Function(DocumentosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentosRecordBuilder toBuilder() =>
      new DocumentosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentosRecord &&
        pacientereferencia == other.pacientereferencia &&
        pdfurl == other.pdfurl &&
        nomedodocumento == other.nomedodocumento &&
        isUpload == other.isUpload &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pacientereferencia.hashCode);
    _$hash = $jc(_$hash, pdfurl.hashCode);
    _$hash = $jc(_$hash, nomedodocumento.hashCode);
    _$hash = $jc(_$hash, isUpload.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentosRecord')
          ..add('pacientereferencia', pacientereferencia)
          ..add('pdfurl', pdfurl)
          ..add('nomedodocumento', nomedodocumento)
          ..add('isUpload', isUpload)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DocumentosRecordBuilder
    implements Builder<DocumentosRecord, DocumentosRecordBuilder> {
  _$DocumentosRecord? _$v;

  DocumentReference<Object?>? _pacientereferencia;
  DocumentReference<Object?>? get pacientereferencia =>
      _$this._pacientereferencia;
  set pacientereferencia(DocumentReference<Object?>? pacientereferencia) =>
      _$this._pacientereferencia = pacientereferencia;

  String? _pdfurl;
  String? get pdfurl => _$this._pdfurl;
  set pdfurl(String? pdfurl) => _$this._pdfurl = pdfurl;

  String? _nomedodocumento;
  String? get nomedodocumento => _$this._nomedodocumento;
  set nomedodocumento(String? nomedodocumento) =>
      _$this._nomedodocumento = nomedodocumento;

  bool? _isUpload;
  bool? get isUpload => _$this._isUpload;
  set isUpload(bool? isUpload) => _$this._isUpload = isUpload;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DocumentosRecordBuilder() {
    DocumentosRecord._initializeBuilder(this);
  }

  DocumentosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pacientereferencia = $v.pacientereferencia;
      _pdfurl = $v.pdfurl;
      _nomedodocumento = $v.nomedodocumento;
      _isUpload = $v.isUpload;
      _data = $v.data;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentosRecord;
  }

  @override
  void update(void Function(DocumentosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentosRecord build() => _build();

  _$DocumentosRecord _build() {
    final _$result = _$v ??
        new _$DocumentosRecord._(
            pacientereferencia: pacientereferencia,
            pdfurl: pdfurl,
            nomedodocumento: nomedodocumento,
            isUpload: isUpload,
            data: data,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

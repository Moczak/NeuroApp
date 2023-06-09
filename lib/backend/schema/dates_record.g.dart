// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatesRecord> _$datesRecordSerializer = new _$DatesRecordSerializer();

class _$DatesRecordSerializer implements StructuredSerializer<DatesRecord> {
  @override
  final Iterable<Type> types = const [DatesRecord, _$DatesRecord];
  @override
  final String wireName = 'DatesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.referencia;
    if (value != null) {
      result
        ..add('referencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subject;
    if (value != null) {
      result
        ..add('subject')
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
  DatesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'referencia':
          result.referencia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
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

class _$DatesRecord extends DatesRecord {
  @override
  final DateTime? startTime;
  @override
  final String? referencia;
  @override
  final String? subject;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DatesRecord([void Function(DatesRecordBuilder)? updates]) =>
      (new DatesRecordBuilder()..update(updates))._build();

  _$DatesRecord._({this.startTime, this.referencia, this.subject, this.ffRef})
      : super._();

  @override
  DatesRecord rebuild(void Function(DatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatesRecordBuilder toBuilder() => new DatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatesRecord &&
        startTime == other.startTime &&
        referencia == other.referencia &&
        subject == other.subject &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, referencia.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatesRecord')
          ..add('startTime', startTime)
          ..add('referencia', referencia)
          ..add('subject', subject)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DatesRecordBuilder implements Builder<DatesRecord, DatesRecordBuilder> {
  _$DatesRecord? _$v;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  String? _referencia;
  String? get referencia => _$this._referencia;
  set referencia(String? referencia) => _$this._referencia = referencia;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DatesRecordBuilder() {
    DatesRecord._initializeBuilder(this);
  }

  DatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startTime = $v.startTime;
      _referencia = $v.referencia;
      _subject = $v.subject;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatesRecord;
  }

  @override
  void update(void Function(DatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatesRecord build() => _build();

  _$DatesRecord _build() {
    final _$result = _$v ??
        new _$DatesRecord._(
            startTime: startTime,
            referencia: referencia,
            subject: subject,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

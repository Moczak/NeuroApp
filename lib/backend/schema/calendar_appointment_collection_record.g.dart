// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_appointment_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CalendarAppointmentCollectionRecord>
    _$calendarAppointmentCollectionRecordSerializer =
    new _$CalendarAppointmentCollectionRecordSerializer();

class _$CalendarAppointmentCollectionRecordSerializer
    implements StructuredSerializer<CalendarAppointmentCollectionRecord> {
  @override
  final Iterable<Type> types = const [
    CalendarAppointmentCollectionRecord,
    _$CalendarAppointmentCollectionRecord
  ];
  @override
  final String wireName = 'CalendarAppointmentCollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CalendarAppointmentCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.subject;
    if (value != null) {
      result
        ..add('Subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('StartTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('EndTime')
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
  CalendarAppointmentCollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalendarAppointmentCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'StartTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'EndTime':
          result.endTime = serializers.deserialize(value,
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

class _$CalendarAppointmentCollectionRecord
    extends CalendarAppointmentCollectionRecord {
  @override
  final String? subject;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CalendarAppointmentCollectionRecord(
          [void Function(CalendarAppointmentCollectionRecordBuilder)?
              updates]) =>
      (new CalendarAppointmentCollectionRecordBuilder()..update(updates))
          ._build();

  _$CalendarAppointmentCollectionRecord._(
      {this.subject, this.startTime, this.endTime, this.ffRef})
      : super._();

  @override
  CalendarAppointmentCollectionRecord rebuild(
          void Function(CalendarAppointmentCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarAppointmentCollectionRecordBuilder toBuilder() =>
      new CalendarAppointmentCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarAppointmentCollectionRecord &&
        subject == other.subject &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalendarAppointmentCollectionRecord')
          ..add('subject', subject)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CalendarAppointmentCollectionRecordBuilder
    implements
        Builder<CalendarAppointmentCollectionRecord,
            CalendarAppointmentCollectionRecordBuilder> {
  _$CalendarAppointmentCollectionRecord? _$v;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CalendarAppointmentCollectionRecordBuilder() {
    CalendarAppointmentCollectionRecord._initializeBuilder(this);
  }

  CalendarAppointmentCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarAppointmentCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalendarAppointmentCollectionRecord;
  }

  @override
  void update(
      void Function(CalendarAppointmentCollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarAppointmentCollectionRecord build() => _build();

  _$CalendarAppointmentCollectionRecord _build() {
    final _$result = _$v ??
        new _$CalendarAppointmentCollectionRecord._(
            subject: subject,
            startTime: startTime,
            endTime: endTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

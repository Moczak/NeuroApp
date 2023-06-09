// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_chat_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MChatRecord> _$mChatRecordSerializer = new _$MChatRecordSerializer();

class _$MChatRecordSerializer implements StructuredSerializer<MChatRecord> {
  @override
  final Iterable<Type> types = const [MChatRecord, _$MChatRecord];
  @override
  final String wireName = 'MChatRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MChatRecord object,
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
    value = object.q1;
    if (value != null) {
      result
        ..add('q1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q2;
    if (value != null) {
      result
        ..add('q2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q3;
    if (value != null) {
      result
        ..add('q3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q4;
    if (value != null) {
      result
        ..add('q4')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q5;
    if (value != null) {
      result
        ..add('q5')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q6;
    if (value != null) {
      result
        ..add('q6')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q7;
    if (value != null) {
      result
        ..add('q7')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q8;
    if (value != null) {
      result
        ..add('q8')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q9;
    if (value != null) {
      result
        ..add('q9')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q10;
    if (value != null) {
      result
        ..add('q10')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q11;
    if (value != null) {
      result
        ..add('q11')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q12;
    if (value != null) {
      result
        ..add('q12')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q13;
    if (value != null) {
      result
        ..add('q13')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q14;
    if (value != null) {
      result
        ..add('q14')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q15;
    if (value != null) {
      result
        ..add('q15')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q16;
    if (value != null) {
      result
        ..add('q16')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q17;
    if (value != null) {
      result
        ..add('q17')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q18;
    if (value != null) {
      result
        ..add('q18')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q19;
    if (value != null) {
      result
        ..add('q19')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q20;
    if (value != null) {
      result
        ..add('q20')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q21;
    if (value != null) {
      result
        ..add('q21')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q22;
    if (value != null) {
      result
        ..add('q22')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.q23;
    if (value != null) {
      result
        ..add('q23')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.q1string;
    if (value != null) {
      result
        ..add('q1string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q2string;
    if (value != null) {
      result
        ..add('q2string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q3string;
    if (value != null) {
      result
        ..add('q3string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q7string;
    if (value != null) {
      result
        ..add('q7string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q4string;
    if (value != null) {
      result
        ..add('q4string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q5string;
    if (value != null) {
      result
        ..add('q5string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q6string;
    if (value != null) {
      result
        ..add('q6string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q8string;
    if (value != null) {
      result
        ..add('q8string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q9string;
    if (value != null) {
      result
        ..add('q9string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q10string;
    if (value != null) {
      result
        ..add('q10string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q11string;
    if (value != null) {
      result
        ..add('q11string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q12string;
    if (value != null) {
      result
        ..add('q12string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q13string;
    if (value != null) {
      result
        ..add('q13string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q14string;
    if (value != null) {
      result
        ..add('q14string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q15string;
    if (value != null) {
      result
        ..add('q15string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q16string;
    if (value != null) {
      result
        ..add('q16string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q17string;
    if (value != null) {
      result
        ..add('q17string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q18string;
    if (value != null) {
      result
        ..add('q18string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q19string;
    if (value != null) {
      result
        ..add('q19string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q20string;
    if (value != null) {
      result
        ..add('q20string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q21string;
    if (value != null) {
      result
        ..add('q21string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q22string;
    if (value != null) {
      result
        ..add('q22string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q23string;
    if (value != null) {
      result
        ..add('q23string')
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
  MChatRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MChatRecordBuilder();

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
        case 'q1':
          result.q1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q2':
          result.q2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q3':
          result.q3 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q4':
          result.q4 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q5':
          result.q5 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q6':
          result.q6 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q7':
          result.q7 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q8':
          result.q8 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q9':
          result.q9 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q10':
          result.q10 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q11':
          result.q11 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q12':
          result.q12 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q13':
          result.q13 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q14':
          result.q14 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q15':
          result.q15 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q16':
          result.q16 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q17':
          result.q17 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q18':
          result.q18 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q19':
          result.q19 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q20':
          result.q20 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q21':
          result.q21 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q22':
          result.q22 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'q23':
          result.q23 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'q1string':
          result.q1string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q2string':
          result.q2string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q3string':
          result.q3string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q7string':
          result.q7string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q4string':
          result.q4string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q5string':
          result.q5string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q6string':
          result.q6string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q8string':
          result.q8string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q9string':
          result.q9string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q10string':
          result.q10string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q11string':
          result.q11string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q12string':
          result.q12string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q13string':
          result.q13string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q14string':
          result.q14string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q15string':
          result.q15string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q16string':
          result.q16string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q17string':
          result.q17string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q18string':
          result.q18string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q19string':
          result.q19string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q20string':
          result.q20string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q21string':
          result.q21string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q22string':
          result.q22string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'q23string':
          result.q23string = serializers.deserialize(value,
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

class _$MChatRecord extends MChatRecord {
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final bool? q1;
  @override
  final bool? q2;
  @override
  final bool? q3;
  @override
  final bool? q4;
  @override
  final bool? q5;
  @override
  final bool? q6;
  @override
  final bool? q7;
  @override
  final bool? q8;
  @override
  final bool? q9;
  @override
  final bool? q10;
  @override
  final bool? q11;
  @override
  final bool? q12;
  @override
  final bool? q13;
  @override
  final bool? q14;
  @override
  final bool? q15;
  @override
  final bool? q16;
  @override
  final bool? q17;
  @override
  final bool? q18;
  @override
  final bool? q19;
  @override
  final bool? q20;
  @override
  final bool? q21;
  @override
  final bool? q22;
  @override
  final bool? q23;
  @override
  final DateTime? data;
  @override
  final String? q1string;
  @override
  final String? q2string;
  @override
  final String? q3string;
  @override
  final String? q7string;
  @override
  final String? q4string;
  @override
  final String? q5string;
  @override
  final String? q6string;
  @override
  final String? q8string;
  @override
  final String? q9string;
  @override
  final String? q10string;
  @override
  final String? q11string;
  @override
  final String? q12string;
  @override
  final String? q13string;
  @override
  final String? q14string;
  @override
  final String? q15string;
  @override
  final String? q16string;
  @override
  final String? q17string;
  @override
  final String? q18string;
  @override
  final String? q19string;
  @override
  final String? q20string;
  @override
  final String? q21string;
  @override
  final String? q22string;
  @override
  final String? q23string;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MChatRecord([void Function(MChatRecordBuilder)? updates]) =>
      (new MChatRecordBuilder()..update(updates))._build();

  _$MChatRecord._(
      {this.paciente,
      this.q1,
      this.q2,
      this.q3,
      this.q4,
      this.q5,
      this.q6,
      this.q7,
      this.q8,
      this.q9,
      this.q10,
      this.q11,
      this.q12,
      this.q13,
      this.q14,
      this.q15,
      this.q16,
      this.q17,
      this.q18,
      this.q19,
      this.q20,
      this.q21,
      this.q22,
      this.q23,
      this.data,
      this.q1string,
      this.q2string,
      this.q3string,
      this.q7string,
      this.q4string,
      this.q5string,
      this.q6string,
      this.q8string,
      this.q9string,
      this.q10string,
      this.q11string,
      this.q12string,
      this.q13string,
      this.q14string,
      this.q15string,
      this.q16string,
      this.q17string,
      this.q18string,
      this.q19string,
      this.q20string,
      this.q21string,
      this.q22string,
      this.q23string,
      this.ffRef})
      : super._();

  @override
  MChatRecord rebuild(void Function(MChatRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MChatRecordBuilder toBuilder() => new MChatRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MChatRecord &&
        paciente == other.paciente &&
        q1 == other.q1 &&
        q2 == other.q2 &&
        q3 == other.q3 &&
        q4 == other.q4 &&
        q5 == other.q5 &&
        q6 == other.q6 &&
        q7 == other.q7 &&
        q8 == other.q8 &&
        q9 == other.q9 &&
        q10 == other.q10 &&
        q11 == other.q11 &&
        q12 == other.q12 &&
        q13 == other.q13 &&
        q14 == other.q14 &&
        q15 == other.q15 &&
        q16 == other.q16 &&
        q17 == other.q17 &&
        q18 == other.q18 &&
        q19 == other.q19 &&
        q20 == other.q20 &&
        q21 == other.q21 &&
        q22 == other.q22 &&
        q23 == other.q23 &&
        data == other.data &&
        q1string == other.q1string &&
        q2string == other.q2string &&
        q3string == other.q3string &&
        q7string == other.q7string &&
        q4string == other.q4string &&
        q5string == other.q5string &&
        q6string == other.q6string &&
        q8string == other.q8string &&
        q9string == other.q9string &&
        q10string == other.q10string &&
        q11string == other.q11string &&
        q12string == other.q12string &&
        q13string == other.q13string &&
        q14string == other.q14string &&
        q15string == other.q15string &&
        q16string == other.q16string &&
        q17string == other.q17string &&
        q18string == other.q18string &&
        q19string == other.q19string &&
        q20string == other.q20string &&
        q21string == other.q21string &&
        q22string == other.q22string &&
        q23string == other.q23string &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, q1.hashCode);
    _$hash = $jc(_$hash, q2.hashCode);
    _$hash = $jc(_$hash, q3.hashCode);
    _$hash = $jc(_$hash, q4.hashCode);
    _$hash = $jc(_$hash, q5.hashCode);
    _$hash = $jc(_$hash, q6.hashCode);
    _$hash = $jc(_$hash, q7.hashCode);
    _$hash = $jc(_$hash, q8.hashCode);
    _$hash = $jc(_$hash, q9.hashCode);
    _$hash = $jc(_$hash, q10.hashCode);
    _$hash = $jc(_$hash, q11.hashCode);
    _$hash = $jc(_$hash, q12.hashCode);
    _$hash = $jc(_$hash, q13.hashCode);
    _$hash = $jc(_$hash, q14.hashCode);
    _$hash = $jc(_$hash, q15.hashCode);
    _$hash = $jc(_$hash, q16.hashCode);
    _$hash = $jc(_$hash, q17.hashCode);
    _$hash = $jc(_$hash, q18.hashCode);
    _$hash = $jc(_$hash, q19.hashCode);
    _$hash = $jc(_$hash, q20.hashCode);
    _$hash = $jc(_$hash, q21.hashCode);
    _$hash = $jc(_$hash, q22.hashCode);
    _$hash = $jc(_$hash, q23.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, q1string.hashCode);
    _$hash = $jc(_$hash, q2string.hashCode);
    _$hash = $jc(_$hash, q3string.hashCode);
    _$hash = $jc(_$hash, q7string.hashCode);
    _$hash = $jc(_$hash, q4string.hashCode);
    _$hash = $jc(_$hash, q5string.hashCode);
    _$hash = $jc(_$hash, q6string.hashCode);
    _$hash = $jc(_$hash, q8string.hashCode);
    _$hash = $jc(_$hash, q9string.hashCode);
    _$hash = $jc(_$hash, q10string.hashCode);
    _$hash = $jc(_$hash, q11string.hashCode);
    _$hash = $jc(_$hash, q12string.hashCode);
    _$hash = $jc(_$hash, q13string.hashCode);
    _$hash = $jc(_$hash, q14string.hashCode);
    _$hash = $jc(_$hash, q15string.hashCode);
    _$hash = $jc(_$hash, q16string.hashCode);
    _$hash = $jc(_$hash, q17string.hashCode);
    _$hash = $jc(_$hash, q18string.hashCode);
    _$hash = $jc(_$hash, q19string.hashCode);
    _$hash = $jc(_$hash, q20string.hashCode);
    _$hash = $jc(_$hash, q21string.hashCode);
    _$hash = $jc(_$hash, q22string.hashCode);
    _$hash = $jc(_$hash, q23string.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MChatRecord')
          ..add('paciente', paciente)
          ..add('q1', q1)
          ..add('q2', q2)
          ..add('q3', q3)
          ..add('q4', q4)
          ..add('q5', q5)
          ..add('q6', q6)
          ..add('q7', q7)
          ..add('q8', q8)
          ..add('q9', q9)
          ..add('q10', q10)
          ..add('q11', q11)
          ..add('q12', q12)
          ..add('q13', q13)
          ..add('q14', q14)
          ..add('q15', q15)
          ..add('q16', q16)
          ..add('q17', q17)
          ..add('q18', q18)
          ..add('q19', q19)
          ..add('q20', q20)
          ..add('q21', q21)
          ..add('q22', q22)
          ..add('q23', q23)
          ..add('data', data)
          ..add('q1string', q1string)
          ..add('q2string', q2string)
          ..add('q3string', q3string)
          ..add('q7string', q7string)
          ..add('q4string', q4string)
          ..add('q5string', q5string)
          ..add('q6string', q6string)
          ..add('q8string', q8string)
          ..add('q9string', q9string)
          ..add('q10string', q10string)
          ..add('q11string', q11string)
          ..add('q12string', q12string)
          ..add('q13string', q13string)
          ..add('q14string', q14string)
          ..add('q15string', q15string)
          ..add('q16string', q16string)
          ..add('q17string', q17string)
          ..add('q18string', q18string)
          ..add('q19string', q19string)
          ..add('q20string', q20string)
          ..add('q21string', q21string)
          ..add('q22string', q22string)
          ..add('q23string', q23string)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MChatRecordBuilder implements Builder<MChatRecord, MChatRecordBuilder> {
  _$MChatRecord? _$v;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  bool? _q1;
  bool? get q1 => _$this._q1;
  set q1(bool? q1) => _$this._q1 = q1;

  bool? _q2;
  bool? get q2 => _$this._q2;
  set q2(bool? q2) => _$this._q2 = q2;

  bool? _q3;
  bool? get q3 => _$this._q3;
  set q3(bool? q3) => _$this._q3 = q3;

  bool? _q4;
  bool? get q4 => _$this._q4;
  set q4(bool? q4) => _$this._q4 = q4;

  bool? _q5;
  bool? get q5 => _$this._q5;
  set q5(bool? q5) => _$this._q5 = q5;

  bool? _q6;
  bool? get q6 => _$this._q6;
  set q6(bool? q6) => _$this._q6 = q6;

  bool? _q7;
  bool? get q7 => _$this._q7;
  set q7(bool? q7) => _$this._q7 = q7;

  bool? _q8;
  bool? get q8 => _$this._q8;
  set q8(bool? q8) => _$this._q8 = q8;

  bool? _q9;
  bool? get q9 => _$this._q9;
  set q9(bool? q9) => _$this._q9 = q9;

  bool? _q10;
  bool? get q10 => _$this._q10;
  set q10(bool? q10) => _$this._q10 = q10;

  bool? _q11;
  bool? get q11 => _$this._q11;
  set q11(bool? q11) => _$this._q11 = q11;

  bool? _q12;
  bool? get q12 => _$this._q12;
  set q12(bool? q12) => _$this._q12 = q12;

  bool? _q13;
  bool? get q13 => _$this._q13;
  set q13(bool? q13) => _$this._q13 = q13;

  bool? _q14;
  bool? get q14 => _$this._q14;
  set q14(bool? q14) => _$this._q14 = q14;

  bool? _q15;
  bool? get q15 => _$this._q15;
  set q15(bool? q15) => _$this._q15 = q15;

  bool? _q16;
  bool? get q16 => _$this._q16;
  set q16(bool? q16) => _$this._q16 = q16;

  bool? _q17;
  bool? get q17 => _$this._q17;
  set q17(bool? q17) => _$this._q17 = q17;

  bool? _q18;
  bool? get q18 => _$this._q18;
  set q18(bool? q18) => _$this._q18 = q18;

  bool? _q19;
  bool? get q19 => _$this._q19;
  set q19(bool? q19) => _$this._q19 = q19;

  bool? _q20;
  bool? get q20 => _$this._q20;
  set q20(bool? q20) => _$this._q20 = q20;

  bool? _q21;
  bool? get q21 => _$this._q21;
  set q21(bool? q21) => _$this._q21 = q21;

  bool? _q22;
  bool? get q22 => _$this._q22;
  set q22(bool? q22) => _$this._q22 = q22;

  bool? _q23;
  bool? get q23 => _$this._q23;
  set q23(bool? q23) => _$this._q23 = q23;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _q1string;
  String? get q1string => _$this._q1string;
  set q1string(String? q1string) => _$this._q1string = q1string;

  String? _q2string;
  String? get q2string => _$this._q2string;
  set q2string(String? q2string) => _$this._q2string = q2string;

  String? _q3string;
  String? get q3string => _$this._q3string;
  set q3string(String? q3string) => _$this._q3string = q3string;

  String? _q7string;
  String? get q7string => _$this._q7string;
  set q7string(String? q7string) => _$this._q7string = q7string;

  String? _q4string;
  String? get q4string => _$this._q4string;
  set q4string(String? q4string) => _$this._q4string = q4string;

  String? _q5string;
  String? get q5string => _$this._q5string;
  set q5string(String? q5string) => _$this._q5string = q5string;

  String? _q6string;
  String? get q6string => _$this._q6string;
  set q6string(String? q6string) => _$this._q6string = q6string;

  String? _q8string;
  String? get q8string => _$this._q8string;
  set q8string(String? q8string) => _$this._q8string = q8string;

  String? _q9string;
  String? get q9string => _$this._q9string;
  set q9string(String? q9string) => _$this._q9string = q9string;

  String? _q10string;
  String? get q10string => _$this._q10string;
  set q10string(String? q10string) => _$this._q10string = q10string;

  String? _q11string;
  String? get q11string => _$this._q11string;
  set q11string(String? q11string) => _$this._q11string = q11string;

  String? _q12string;
  String? get q12string => _$this._q12string;
  set q12string(String? q12string) => _$this._q12string = q12string;

  String? _q13string;
  String? get q13string => _$this._q13string;
  set q13string(String? q13string) => _$this._q13string = q13string;

  String? _q14string;
  String? get q14string => _$this._q14string;
  set q14string(String? q14string) => _$this._q14string = q14string;

  String? _q15string;
  String? get q15string => _$this._q15string;
  set q15string(String? q15string) => _$this._q15string = q15string;

  String? _q16string;
  String? get q16string => _$this._q16string;
  set q16string(String? q16string) => _$this._q16string = q16string;

  String? _q17string;
  String? get q17string => _$this._q17string;
  set q17string(String? q17string) => _$this._q17string = q17string;

  String? _q18string;
  String? get q18string => _$this._q18string;
  set q18string(String? q18string) => _$this._q18string = q18string;

  String? _q19string;
  String? get q19string => _$this._q19string;
  set q19string(String? q19string) => _$this._q19string = q19string;

  String? _q20string;
  String? get q20string => _$this._q20string;
  set q20string(String? q20string) => _$this._q20string = q20string;

  String? _q21string;
  String? get q21string => _$this._q21string;
  set q21string(String? q21string) => _$this._q21string = q21string;

  String? _q22string;
  String? get q22string => _$this._q22string;
  set q22string(String? q22string) => _$this._q22string = q22string;

  String? _q23string;
  String? get q23string => _$this._q23string;
  set q23string(String? q23string) => _$this._q23string = q23string;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MChatRecordBuilder() {
    MChatRecord._initializeBuilder(this);
  }

  MChatRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paciente = $v.paciente;
      _q1 = $v.q1;
      _q2 = $v.q2;
      _q3 = $v.q3;
      _q4 = $v.q4;
      _q5 = $v.q5;
      _q6 = $v.q6;
      _q7 = $v.q7;
      _q8 = $v.q8;
      _q9 = $v.q9;
      _q10 = $v.q10;
      _q11 = $v.q11;
      _q12 = $v.q12;
      _q13 = $v.q13;
      _q14 = $v.q14;
      _q15 = $v.q15;
      _q16 = $v.q16;
      _q17 = $v.q17;
      _q18 = $v.q18;
      _q19 = $v.q19;
      _q20 = $v.q20;
      _q21 = $v.q21;
      _q22 = $v.q22;
      _q23 = $v.q23;
      _data = $v.data;
      _q1string = $v.q1string;
      _q2string = $v.q2string;
      _q3string = $v.q3string;
      _q7string = $v.q7string;
      _q4string = $v.q4string;
      _q5string = $v.q5string;
      _q6string = $v.q6string;
      _q8string = $v.q8string;
      _q9string = $v.q9string;
      _q10string = $v.q10string;
      _q11string = $v.q11string;
      _q12string = $v.q12string;
      _q13string = $v.q13string;
      _q14string = $v.q14string;
      _q15string = $v.q15string;
      _q16string = $v.q16string;
      _q17string = $v.q17string;
      _q18string = $v.q18string;
      _q19string = $v.q19string;
      _q20string = $v.q20string;
      _q21string = $v.q21string;
      _q22string = $v.q22string;
      _q23string = $v.q23string;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MChatRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MChatRecord;
  }

  @override
  void update(void Function(MChatRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MChatRecord build() => _build();

  _$MChatRecord _build() {
    final _$result = _$v ??
        new _$MChatRecord._(
            paciente: paciente,
            q1: q1,
            q2: q2,
            q3: q3,
            q4: q4,
            q5: q5,
            q6: q6,
            q7: q7,
            q8: q8,
            q9: q9,
            q10: q10,
            q11: q11,
            q12: q12,
            q13: q13,
            q14: q14,
            q15: q15,
            q16: q16,
            q17: q17,
            q18: q18,
            q19: q19,
            q20: q20,
            q21: q21,
            q22: q22,
            q23: q23,
            data: data,
            q1string: q1string,
            q2string: q2string,
            q3string: q3string,
            q7string: q7string,
            q4string: q4string,
            q5string: q5string,
            q6string: q6string,
            q8string: q8string,
            q9string: q9string,
            q10string: q10string,
            q11string: q11string,
            q12string: q12string,
            q13string: q13string,
            q14string: q14string,
            q15string: q15string,
            q16string: q16string,
            q17string: q17string,
            q18string: q18string,
            q19string: q19string,
            q20string: q20string,
            q21string: q21string,
            q22string: q22string,
            q23string: q23string,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

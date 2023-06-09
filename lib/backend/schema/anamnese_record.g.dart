// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anamnese_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnamneseRecord> _$anamneseRecordSerializer =
    new _$AnamneseRecordSerializer();

class _$AnamneseRecordSerializer
    implements StructuredSerializer<AnamneseRecord> {
  @override
  final Iterable<Type> types = const [AnamneseRecord, _$AnamneseRecord];
  @override
  final String wireName = 'AnamneseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnamneseRecord object,
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
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.questao1;
    if (value != null) {
      result
        ..add('questao1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao2;
    if (value != null) {
      result
        ..add('questao2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao3;
    if (value != null) {
      result
        ..add('questao3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao3quaismedicamentos;
    if (value != null) {
      result
        ..add('questao3quaismedicamentos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao4;
    if (value != null) {
      result
        ..add('questao4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao4historiadoapelido;
    if (value != null) {
      result
        ..add('questao4historiadoapelido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao6;
    if (value != null) {
      result
        ..add('questao6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao6algumacrenca;
    if (value != null) {
      result
        ..add('questao6algumacrenca')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao7;
    if (value != null) {
      result
        ..add('questao7')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao7quaisdrogas;
    if (value != null) {
      result
        ..add('questao7quaisdrogas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao8;
    if (value != null) {
      result
        ..add('questao8')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao8qualprobdevisao;
    if (value != null) {
      result
        ..add('questao8qualprobdevisao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao81;
    if (value != null) {
      result
        ..add('questao8-1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao81pqusalentescorretivas;
    if (value != null) {
      result
        ..add('questao8-1pqusalentescorretivas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao9;
    if (value != null) {
      result
        ..add('questao9')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao9qualprobauditivo;
    if (value != null) {
      result
        ..add('questao9qualprobauditivo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao91;
    if (value != null) {
      result
        ..add('questao9-1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questao91qualaparelhoauditivo;
    if (value != null) {
      result
        ..add('questao9-1qualaparelhoauditivo')
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
  AnamneseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnamneseRecordBuilder();

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
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'questao1':
          result.questao1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao2':
          result.questao2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao3':
          result.questao3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao3quaismedicamentos':
          result.questao3quaismedicamentos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao4':
          result.questao4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao4historiadoapelido':
          result.questao4historiadoapelido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao6':
          result.questao6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao6algumacrenca':
          result.questao6algumacrenca = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao7':
          result.questao7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao7quaisdrogas':
          result.questao7quaisdrogas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao8':
          result.questao8 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao8qualprobdevisao':
          result.questao8qualprobdevisao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao8-1':
          result.questao81 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao8-1pqusalentescorretivas':
          result.questao81pqusalentescorretivas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao9':
          result.questao9 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao9qualprobauditivo':
          result.questao9qualprobauditivo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao9-1':
          result.questao91 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questao9-1qualaparelhoauditivo':
          result.questao91qualaparelhoauditivo = serializers.deserialize(value,
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

class _$AnamneseRecord extends AnamneseRecord {
  @override
  final DocumentReference<Object?>? paciente;
  @override
  final DateTime? data;
  @override
  final String? questao1;
  @override
  final String? questao2;
  @override
  final String? questao3;
  @override
  final String? questao3quaismedicamentos;
  @override
  final String? questao4;
  @override
  final String? questao4historiadoapelido;
  @override
  final String? questao6;
  @override
  final String? questao6algumacrenca;
  @override
  final String? questao7;
  @override
  final String? questao7quaisdrogas;
  @override
  final String? questao8;
  @override
  final String? questao8qualprobdevisao;
  @override
  final String? questao81;
  @override
  final String? questao81pqusalentescorretivas;
  @override
  final String? questao9;
  @override
  final String? questao9qualprobauditivo;
  @override
  final String? questao91;
  @override
  final String? questao91qualaparelhoauditivo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AnamneseRecord([void Function(AnamneseRecordBuilder)? updates]) =>
      (new AnamneseRecordBuilder()..update(updates))._build();

  _$AnamneseRecord._(
      {this.paciente,
      this.data,
      this.questao1,
      this.questao2,
      this.questao3,
      this.questao3quaismedicamentos,
      this.questao4,
      this.questao4historiadoapelido,
      this.questao6,
      this.questao6algumacrenca,
      this.questao7,
      this.questao7quaisdrogas,
      this.questao8,
      this.questao8qualprobdevisao,
      this.questao81,
      this.questao81pqusalentescorretivas,
      this.questao9,
      this.questao9qualprobauditivo,
      this.questao91,
      this.questao91qualaparelhoauditivo,
      this.ffRef})
      : super._();

  @override
  AnamneseRecord rebuild(void Function(AnamneseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnamneseRecordBuilder toBuilder() =>
      new AnamneseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnamneseRecord &&
        paciente == other.paciente &&
        data == other.data &&
        questao1 == other.questao1 &&
        questao2 == other.questao2 &&
        questao3 == other.questao3 &&
        questao3quaismedicamentos == other.questao3quaismedicamentos &&
        questao4 == other.questao4 &&
        questao4historiadoapelido == other.questao4historiadoapelido &&
        questao6 == other.questao6 &&
        questao6algumacrenca == other.questao6algumacrenca &&
        questao7 == other.questao7 &&
        questao7quaisdrogas == other.questao7quaisdrogas &&
        questao8 == other.questao8 &&
        questao8qualprobdevisao == other.questao8qualprobdevisao &&
        questao81 == other.questao81 &&
        questao81pqusalentescorretivas ==
            other.questao81pqusalentescorretivas &&
        questao9 == other.questao9 &&
        questao9qualprobauditivo == other.questao9qualprobauditivo &&
        questao91 == other.questao91 &&
        questao91qualaparelhoauditivo == other.questao91qualaparelhoauditivo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paciente.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, questao1.hashCode);
    _$hash = $jc(_$hash, questao2.hashCode);
    _$hash = $jc(_$hash, questao3.hashCode);
    _$hash = $jc(_$hash, questao3quaismedicamentos.hashCode);
    _$hash = $jc(_$hash, questao4.hashCode);
    _$hash = $jc(_$hash, questao4historiadoapelido.hashCode);
    _$hash = $jc(_$hash, questao6.hashCode);
    _$hash = $jc(_$hash, questao6algumacrenca.hashCode);
    _$hash = $jc(_$hash, questao7.hashCode);
    _$hash = $jc(_$hash, questao7quaisdrogas.hashCode);
    _$hash = $jc(_$hash, questao8.hashCode);
    _$hash = $jc(_$hash, questao8qualprobdevisao.hashCode);
    _$hash = $jc(_$hash, questao81.hashCode);
    _$hash = $jc(_$hash, questao81pqusalentescorretivas.hashCode);
    _$hash = $jc(_$hash, questao9.hashCode);
    _$hash = $jc(_$hash, questao9qualprobauditivo.hashCode);
    _$hash = $jc(_$hash, questao91.hashCode);
    _$hash = $jc(_$hash, questao91qualaparelhoauditivo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnamneseRecord')
          ..add('paciente', paciente)
          ..add('data', data)
          ..add('questao1', questao1)
          ..add('questao2', questao2)
          ..add('questao3', questao3)
          ..add('questao3quaismedicamentos', questao3quaismedicamentos)
          ..add('questao4', questao4)
          ..add('questao4historiadoapelido', questao4historiadoapelido)
          ..add('questao6', questao6)
          ..add('questao6algumacrenca', questao6algumacrenca)
          ..add('questao7', questao7)
          ..add('questao7quaisdrogas', questao7quaisdrogas)
          ..add('questao8', questao8)
          ..add('questao8qualprobdevisao', questao8qualprobdevisao)
          ..add('questao81', questao81)
          ..add(
              'questao81pqusalentescorretivas', questao81pqusalentescorretivas)
          ..add('questao9', questao9)
          ..add('questao9qualprobauditivo', questao9qualprobauditivo)
          ..add('questao91', questao91)
          ..add('questao91qualaparelhoauditivo', questao91qualaparelhoauditivo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AnamneseRecordBuilder
    implements Builder<AnamneseRecord, AnamneseRecordBuilder> {
  _$AnamneseRecord? _$v;

  DocumentReference<Object?>? _paciente;
  DocumentReference<Object?>? get paciente => _$this._paciente;
  set paciente(DocumentReference<Object?>? paciente) =>
      _$this._paciente = paciente;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _questao1;
  String? get questao1 => _$this._questao1;
  set questao1(String? questao1) => _$this._questao1 = questao1;

  String? _questao2;
  String? get questao2 => _$this._questao2;
  set questao2(String? questao2) => _$this._questao2 = questao2;

  String? _questao3;
  String? get questao3 => _$this._questao3;
  set questao3(String? questao3) => _$this._questao3 = questao3;

  String? _questao3quaismedicamentos;
  String? get questao3quaismedicamentos => _$this._questao3quaismedicamentos;
  set questao3quaismedicamentos(String? questao3quaismedicamentos) =>
      _$this._questao3quaismedicamentos = questao3quaismedicamentos;

  String? _questao4;
  String? get questao4 => _$this._questao4;
  set questao4(String? questao4) => _$this._questao4 = questao4;

  String? _questao4historiadoapelido;
  String? get questao4historiadoapelido => _$this._questao4historiadoapelido;
  set questao4historiadoapelido(String? questao4historiadoapelido) =>
      _$this._questao4historiadoapelido = questao4historiadoapelido;

  String? _questao6;
  String? get questao6 => _$this._questao6;
  set questao6(String? questao6) => _$this._questao6 = questao6;

  String? _questao6algumacrenca;
  String? get questao6algumacrenca => _$this._questao6algumacrenca;
  set questao6algumacrenca(String? questao6algumacrenca) =>
      _$this._questao6algumacrenca = questao6algumacrenca;

  String? _questao7;
  String? get questao7 => _$this._questao7;
  set questao7(String? questao7) => _$this._questao7 = questao7;

  String? _questao7quaisdrogas;
  String? get questao7quaisdrogas => _$this._questao7quaisdrogas;
  set questao7quaisdrogas(String? questao7quaisdrogas) =>
      _$this._questao7quaisdrogas = questao7quaisdrogas;

  String? _questao8;
  String? get questao8 => _$this._questao8;
  set questao8(String? questao8) => _$this._questao8 = questao8;

  String? _questao8qualprobdevisao;
  String? get questao8qualprobdevisao => _$this._questao8qualprobdevisao;
  set questao8qualprobdevisao(String? questao8qualprobdevisao) =>
      _$this._questao8qualprobdevisao = questao8qualprobdevisao;

  String? _questao81;
  String? get questao81 => _$this._questao81;
  set questao81(String? questao81) => _$this._questao81 = questao81;

  String? _questao81pqusalentescorretivas;
  String? get questao81pqusalentescorretivas =>
      _$this._questao81pqusalentescorretivas;
  set questao81pqusalentescorretivas(String? questao81pqusalentescorretivas) =>
      _$this._questao81pqusalentescorretivas = questao81pqusalentescorretivas;

  String? _questao9;
  String? get questao9 => _$this._questao9;
  set questao9(String? questao9) => _$this._questao9 = questao9;

  String? _questao9qualprobauditivo;
  String? get questao9qualprobauditivo => _$this._questao9qualprobauditivo;
  set questao9qualprobauditivo(String? questao9qualprobauditivo) =>
      _$this._questao9qualprobauditivo = questao9qualprobauditivo;

  String? _questao91;
  String? get questao91 => _$this._questao91;
  set questao91(String? questao91) => _$this._questao91 = questao91;

  String? _questao91qualaparelhoauditivo;
  String? get questao91qualaparelhoauditivo =>
      _$this._questao91qualaparelhoauditivo;
  set questao91qualaparelhoauditivo(String? questao91qualaparelhoauditivo) =>
      _$this._questao91qualaparelhoauditivo = questao91qualaparelhoauditivo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AnamneseRecordBuilder() {
    AnamneseRecord._initializeBuilder(this);
  }

  AnamneseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paciente = $v.paciente;
      _data = $v.data;
      _questao1 = $v.questao1;
      _questao2 = $v.questao2;
      _questao3 = $v.questao3;
      _questao3quaismedicamentos = $v.questao3quaismedicamentos;
      _questao4 = $v.questao4;
      _questao4historiadoapelido = $v.questao4historiadoapelido;
      _questao6 = $v.questao6;
      _questao6algumacrenca = $v.questao6algumacrenca;
      _questao7 = $v.questao7;
      _questao7quaisdrogas = $v.questao7quaisdrogas;
      _questao8 = $v.questao8;
      _questao8qualprobdevisao = $v.questao8qualprobdevisao;
      _questao81 = $v.questao81;
      _questao81pqusalentescorretivas = $v.questao81pqusalentescorretivas;
      _questao9 = $v.questao9;
      _questao9qualprobauditivo = $v.questao9qualprobauditivo;
      _questao91 = $v.questao91;
      _questao91qualaparelhoauditivo = $v.questao91qualaparelhoauditivo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnamneseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnamneseRecord;
  }

  @override
  void update(void Function(AnamneseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnamneseRecord build() => _build();

  _$AnamneseRecord _build() {
    final _$result = _$v ??
        new _$AnamneseRecord._(
            paciente: paciente,
            data: data,
            questao1: questao1,
            questao2: questao2,
            questao3: questao3,
            questao3quaismedicamentos: questao3quaismedicamentos,
            questao4: questao4,
            questao4historiadoapelido: questao4historiadoapelido,
            questao6: questao6,
            questao6algumacrenca: questao6algumacrenca,
            questao7: questao7,
            questao7quaisdrogas: questao7quaisdrogas,
            questao8: questao8,
            questao8qualprobdevisao: questao8qualprobdevisao,
            questao81: questao81,
            questao81pqusalentescorretivas: questao81pqusalentescorretivas,
            questao9: questao9,
            questao9qualprobauditivo: questao9qualprobauditivo,
            questao91: questao91,
            questao91qualaparelhoauditivo: questao91qualaparelhoauditivo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

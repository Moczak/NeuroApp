import '../database.dart';

class AlunosneuroTable extends SupabaseTable<AlunosneuroRow> {
  @override
  String get tableName => 'alunosneuro';

  @override
  AlunosneuroRow createRow(Map<String, dynamic> data) => AlunosneuroRow(data);
}

class AlunosneuroRow extends SupabaseDataRow {
  AlunosneuroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlunosneuroTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get idfirebase => getField<String>('idfirebase');
  set idfirebase(String? value) => setField<String>('idfirebase', value);
}

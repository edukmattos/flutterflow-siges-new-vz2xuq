import '../database.dart';

class LogsTable extends SupabaseTable<LogsRow> {
  @override
  String get tableName => 'logs';

  @override
  LogsRow createRow(Map<String, dynamic> data) => LogsRow(data);
}

class LogsRow extends SupabaseDataRow {
  LogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdDate => getField<DateTime>('created_date')!;
  set createdDate(DateTime value) => setField<DateTime>('created_date', value);

  String? get userUuid => getField<String>('user_uuid');
  set userUuid(String? value) => setField<String>('user_uuid', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  String? get operation => getField<String>('operation');
  set operation(String? value) => setField<String>('operation', value);

  dynamic get dataOld => getField<dynamic>('data_old');
  set dataOld(dynamic value) => setField<dynamic>('data_old', value);

  dynamic get dataNew => getField<dynamic>('data_new');
  set dataNew(dynamic value) => setField<dynamic>('data_new', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}

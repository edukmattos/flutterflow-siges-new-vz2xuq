import '../database.dart';

class CfgUsersStatusesTable extends SupabaseTable<CfgUsersStatusesRow> {
  @override
  String get tableName => 'cfg_users_statuses';

  @override
  CfgUsersStatusesRow createRow(Map<String, dynamic> data) =>
      CfgUsersStatusesRow(data);
}

class CfgUsersStatusesRow extends SupabaseDataRow {
  CfgUsersStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgUsersStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

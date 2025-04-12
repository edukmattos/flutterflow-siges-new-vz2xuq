import '../database.dart';

class CfgProfilesTable extends SupabaseTable<CfgProfilesRow> {
  @override
  String get tableName => 'cfg_profiles';

  @override
  CfgProfilesRow createRow(Map<String, dynamic> data) => CfgProfilesRow(data);
}

class CfgProfilesRow extends SupabaseDataRow {
  CfgProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgProfilesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);
}

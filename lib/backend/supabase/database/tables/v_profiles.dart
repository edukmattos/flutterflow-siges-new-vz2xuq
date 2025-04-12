import '../database.dart';

class VProfilesTable extends SupabaseTable<VProfilesRow> {
  @override
  String get tableName => 'v_profiles';

  @override
  VProfilesRow createRow(Map<String, dynamic> data) => VProfilesRow(data);
}

class VProfilesRow extends SupabaseDataRow {
  VProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VProfilesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);
}

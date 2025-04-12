import '../database.dart';

class CfgActivitiesTable extends SupabaseTable<CfgActivitiesRow> {
  @override
  String get tableName => 'cfg_activities';

  @override
  CfgActivitiesRow createRow(Map<String, dynamic> data) =>
      CfgActivitiesRow(data);
}

class CfgActivitiesRow extends SupabaseDataRow {
  CfgActivitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgActivitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

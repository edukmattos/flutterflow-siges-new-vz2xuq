import '../database.dart';

class CfgAppVersionsUpdateTable extends SupabaseTable<CfgAppVersionsUpdateRow> {
  @override
  String get tableName => 'cfg_app_versions_update';

  @override
  CfgAppVersionsUpdateRow createRow(Map<String, dynamic> data) =>
      CfgAppVersionsUpdateRow(data);
}

class CfgAppVersionsUpdateRow extends SupabaseDataRow {
  CfgAppVersionsUpdateRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgAppVersionsUpdateTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get appVersion => getField<String>('app_version');
  set appVersion(String? value) => setField<String>('app_version', value);

  String? get updates => getField<String>('updates');
  set updates(String? value) => setField<String>('updates', value);
}

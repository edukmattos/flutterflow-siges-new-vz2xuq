import '../database.dart';

class CfgProfilesPermissionsTable
    extends SupabaseTable<CfgProfilesPermissionsRow> {
  @override
  String get tableName => 'cfg_profiles_permissions';

  @override
  CfgProfilesPermissionsRow createRow(Map<String, dynamic> data) =>
      CfgProfilesPermissionsRow(data);
}

class CfgProfilesPermissionsRow extends SupabaseDataRow {
  CfgProfilesPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgProfilesPermissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get profileId => getField<int>('profile_id');
  set profileId(int? value) => setField<int>('profile_id', value);

  int? get appPageId => getField<int>('app_page_id');
  set appPageId(int? value) => setField<int>('app_page_id', value);
}

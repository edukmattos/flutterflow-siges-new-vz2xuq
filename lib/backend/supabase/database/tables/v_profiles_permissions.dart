import '../database.dart';

class VProfilesPermissionsTable extends SupabaseTable<VProfilesPermissionsRow> {
  @override
  String get tableName => 'v_profiles_permissions';

  @override
  VProfilesPermissionsRow createRow(Map<String, dynamic> data) =>
      VProfilesPermissionsRow(data);
}

class VProfilesPermissionsRow extends SupabaseDataRow {
  VProfilesPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VProfilesPermissionsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get profileId => getField<int>('profile_id');
  set profileId(int? value) => setField<int>('profile_id', value);

  int? get appPageId => getField<int>('app_page_id');
  set appPageId(int? value) => setField<int>('app_page_id', value);

  String? get appPageDescription => getField<String>('app_page_description');
  set appPageDescription(String? value) =>
      setField<String>('app_page_description', value);
}

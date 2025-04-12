import '../database.dart';

class VAssetsFollowersTable extends SupabaseTable<VAssetsFollowersRow> {
  @override
  String get tableName => 'v_assets_followers';

  @override
  VAssetsFollowersRow createRow(Map<String, dynamic> data) =>
      VAssetsFollowersRow(data);
}

class VAssetsFollowersRow extends SupabaseDataRow {
  VAssetsFollowersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAssetsFollowersTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get assetId => getField<int>('asset_id');
  set assetId(int? value) => setField<int>('asset_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

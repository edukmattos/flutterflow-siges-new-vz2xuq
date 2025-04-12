import '../database.dart';

class VOrdersFollowersTable extends SupabaseTable<VOrdersFollowersRow> {
  @override
  String get tableName => 'v_orders_followers';

  @override
  VOrdersFollowersRow createRow(Map<String, dynamic> data) =>
      VOrdersFollowersRow(data);
}

class VOrdersFollowersRow extends SupabaseDataRow {
  VOrdersFollowersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersFollowersTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

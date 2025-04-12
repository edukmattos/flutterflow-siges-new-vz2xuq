import '../database.dart';

class VOrdersVisitsAssetsActivitiesTable
    extends SupabaseTable<VOrdersVisitsAssetsActivitiesRow> {
  @override
  String get tableName => 'v_orders_visits_assets_activities';

  @override
  VOrdersVisitsAssetsActivitiesRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsAssetsActivitiesRow(data);
}

class VOrdersVisitsAssetsActivitiesRow extends SupabaseDataRow {
  VOrdersVisitsAssetsActivitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsAssetsActivitiesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get activityId => getField<int>('activity_id');
  set activityId(int? value) => setField<int>('activity_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  int? get opId => getField<int>('op_id');
  set opId(int? value) => setField<int>('op_id', value);

  int? get ovaId => getField<int>('ova_id');
  set ovaId(int? value) => setField<int>('ova_id', value);

  int? get ovId => getField<int>('ov_id');
  set ovId(int? value) => setField<int>('ov_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

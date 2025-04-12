import '../database.dart';

class CfgOrdersTypesActivitiesTable
    extends SupabaseTable<CfgOrdersTypesActivitiesRow> {
  @override
  String get tableName => 'cfg_orders_types_activities';

  @override
  CfgOrdersTypesActivitiesRow createRow(Map<String, dynamic> data) =>
      CfgOrdersTypesActivitiesRow(data);
}

class CfgOrdersTypesActivitiesRow extends SupabaseDataRow {
  CfgOrdersTypesActivitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersTypesActivitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get oTypeId => getField<int>('o_type_id');
  set oTypeId(int? value) => setField<int>('o_type_id', value);

  int? get activityId => getField<int>('activity_id');
  set activityId(int? value) => setField<int>('activity_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

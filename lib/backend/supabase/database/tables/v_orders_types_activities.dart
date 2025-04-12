import '../database.dart';

class VOrdersTypesActivitiesTable
    extends SupabaseTable<VOrdersTypesActivitiesRow> {
  @override
  String get tableName => 'v_orders_types_activities';

  @override
  VOrdersTypesActivitiesRow createRow(Map<String, dynamic> data) =>
      VOrdersTypesActivitiesRow(data);
}

class VOrdersTypesActivitiesRow extends SupabaseDataRow {
  VOrdersTypesActivitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersTypesActivitiesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get oTypeId => getField<int>('o_type_id');
  set oTypeId(int? value) => setField<int>('o_type_id', value);

  int? get activityId => getField<int>('activity_id');
  set activityId(int? value) => setField<int>('activity_id', value);

  String? get activityDescription => getField<String>('activity_description');
  set activityDescription(String? value) =>
      setField<String>('activity_description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

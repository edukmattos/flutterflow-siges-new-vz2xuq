import '../database.dart';

class OrdersVisitsAssetsActivitiesTable
    extends SupabaseTable<OrdersVisitsAssetsActivitiesRow> {
  @override
  String get tableName => 'orders_visits_assets_activities';

  @override
  OrdersVisitsAssetsActivitiesRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsAssetsActivitiesRow(data);
}

class OrdersVisitsAssetsActivitiesRow extends SupabaseDataRow {
  OrdersVisitsAssetsActivitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsAssetsActivitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get activityId => getField<int>('activity_id')!;
  set activityId(int value) => setField<int>('activity_id', value);

  int get ovaId => getField<int>('ova_id')!;
  set ovaId(int value) => setField<int>('ova_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int? get ovId => getField<int>('ov_id');
  set ovId(int? value) => setField<int>('ov_id', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  int? get opId => getField<int>('op_id');
  set opId(int? value) => setField<int>('op_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

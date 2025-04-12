import '../database.dart';

class OrdersVisitsServicesTable extends SupabaseTable<OrdersVisitsServicesRow> {
  @override
  String get tableName => 'orders_visits_services';

  @override
  OrdersVisitsServicesRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsServicesRow(data);
}

class OrdersVisitsServicesRow extends SupabaseDataRow {
  OrdersVisitsServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get ovId => getField<int>('ov_id')!;
  set ovId(int value) => setField<int>('ov_id', value);

  int get serviceId => getField<int>('service_id')!;
  set serviceId(int value) => setField<int>('service_id', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  double? get valueTotal => getField<double>('value_total');
  set valueTotal(double? value) => setField<double>('value_total', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

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

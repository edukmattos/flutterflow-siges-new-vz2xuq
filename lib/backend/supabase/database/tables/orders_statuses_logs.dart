import '../database.dart';

class OrdersStatusesLogsTable extends SupabaseTable<OrdersStatusesLogsRow> {
  @override
  String get tableName => 'orders_statuses_logs';

  @override
  OrdersStatusesLogsRow createRow(Map<String, dynamic> data) =>
      OrdersStatusesLogsRow(data);
}

class OrdersStatusesLogsRow extends SupabaseDataRow {
  OrdersStatusesLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersStatusesLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  int? get orderStatusId => getField<int>('order_status_id');
  set orderStatusId(int? value) => setField<int>('order_status_id', value);

  DateTime? get orderStatusAte => getField<DateTime>('order_status_ate');
  set orderStatusAte(DateTime? value) =>
      setField<DateTime>('order_status_ate', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get createdDate => getField<DateTime>('created_date');
  set createdDate(DateTime? value) => setField<DateTime>('created_date', value);

  int? get orderParentId => getField<int>('order_parent_id');
  set orderParentId(int? value) => setField<int>('order_parent_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);
}

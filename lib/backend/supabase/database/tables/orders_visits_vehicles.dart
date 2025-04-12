import '../database.dart';

class OrdersVisitsVehiclesTable extends SupabaseTable<OrdersVisitsVehiclesRow> {
  @override
  String get tableName => 'orders_visits_vehicles';

  @override
  OrdersVisitsVehiclesRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsVehiclesRow(data);
}

class OrdersVisitsVehiclesRow extends SupabaseDataRow {
  OrdersVisitsVehiclesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsVehiclesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get ovId => getField<int>('ov_id')!;
  set ovId(int value) => setField<int>('ov_id', value);

  int get vehicleId => getField<int>('vehicle_id')!;
  set vehicleId(int value) => setField<int>('vehicle_id', value);

  int? get recorderStart => getField<int>('recorder_start');
  set recorderStart(int? value) => setField<int>('recorder_start', value);

  int? get recorderEnd => getField<int>('recorder_end');
  set recorderEnd(int? value) => setField<int>('recorder_end', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  double? get valueTotal => getField<double>('value_total');
  set valueTotal(double? value) => setField<double>('value_total', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

import '../database.dart';

class OrdersVisitsTeamsTable extends SupabaseTable<OrdersVisitsTeamsRow> {
  @override
  String get tableName => 'orders_visits_teams';

  @override
  OrdersVisitsTeamsRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsTeamsRow(data);
}

class OrdersVisitsTeamsRow extends SupabaseDataRow {
  OrdersVisitsTeamsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsTeamsTable();

  int get ovId => getField<int>('ov_id')!;
  set ovId(int value) => setField<int>('ov_id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  bool get isLeader => getField<bool>('is_leader')!;
  set isLeader(bool value) => setField<bool>('is_leader', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);
}

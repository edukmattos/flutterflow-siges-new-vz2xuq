import '../database.dart';

class OrdersVisitsExtrasFollowersTable
    extends SupabaseTable<OrdersVisitsExtrasFollowersRow> {
  @override
  String get tableName => 'orders_visits_extras_followers';

  @override
  OrdersVisitsExtrasFollowersRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsExtrasFollowersRow(data);
}

class OrdersVisitsExtrasFollowersRow extends SupabaseDataRow {
  OrdersVisitsExtrasFollowersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsExtrasFollowersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  int get oveId => getField<int>('ove_id')!;
  set oveId(int value) => setField<int>('ove_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

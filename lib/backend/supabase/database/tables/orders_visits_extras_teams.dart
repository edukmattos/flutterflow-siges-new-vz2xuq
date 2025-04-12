import '../database.dart';

class OrdersVisitsExtrasTeamsTable
    extends SupabaseTable<OrdersVisitsExtrasTeamsRow> {
  @override
  String get tableName => 'orders_visits_extras_teams';

  @override
  OrdersVisitsExtrasTeamsRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsExtrasTeamsRow(data);
}

class OrdersVisitsExtrasTeamsRow extends SupabaseDataRow {
  OrdersVisitsExtrasTeamsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsExtrasTeamsTable();

  int get oveId => getField<int>('ove_id')!;
  set oveId(int value) => setField<int>('ove_id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  bool get isLeader => getField<bool>('is_leader')!;
  set isLeader(bool value) => setField<bool>('is_leader', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get orderBy => getField<int>('order_by');
  set orderBy(int? value) => setField<int>('order_by', value);

  double? get durationHours => getField<double>('duration_hours');
  set durationHours(double? value) => setField<double>('duration_hours', value);

  DateTime? get startedAtDate => getField<DateTime>('started_at_date');
  set startedAtDate(DateTime? value) =>
      setField<DateTime>('started_at_date', value);

  PostgresTime? get startedAtHourMin =>
      getField<PostgresTime>('started_at_hour_min');
  set startedAtHourMin(PostgresTime? value) =>
      setField<PostgresTime>('started_at_hour_min', value);

  DateTime? get endedAtDate => getField<DateTime>('ended_at_date');
  set endedAtDate(DateTime? value) =>
      setField<DateTime>('ended_at_date', value);

  PostgresTime? get endedAtHourMin =>
      getField<PostgresTime>('ended_at_hour_min');
  set endedAtHourMin(PostgresTime? value) =>
      setField<PostgresTime>('ended_at_hour_min', value);
}

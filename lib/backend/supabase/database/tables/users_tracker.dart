import '../database.dart';

class UsersTrackerTable extends SupabaseTable<UsersTrackerRow> {
  @override
  String get tableName => 'users_tracker';

  @override
  UsersTrackerRow createRow(Map<String, dynamic> data) => UsersTrackerRow(data);
}

class UsersTrackerRow extends SupabaseDataRow {
  UsersTrackerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTrackerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  DateTime? get createddate => getField<DateTime>('createddate');
  set createddate(DateTime? value) => setField<DateTime>('createddate', value);

  String? get device => getField<String>('device');
  set device(String? value) => setField<String>('device', value);
}

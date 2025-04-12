import '../database.dart';

class VOrdersVisitsExtrasTeamsTable
    extends SupabaseTable<VOrdersVisitsExtrasTeamsRow> {
  @override
  String get tableName => 'v_orders_visits_extras_teams';

  @override
  VOrdersVisitsExtrasTeamsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsExtrasTeamsRow(data);
}

class VOrdersVisitsExtrasTeamsRow extends SupabaseDataRow {
  VOrdersVisitsExtrasTeamsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsExtrasTeamsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get oveId => getField<int>('ove_id');
  set oveId(int? value) => setField<int>('ove_id', value);

  bool? get isLeader => getField<bool>('is_leader');
  set isLeader(bool? value) => setField<bool>('is_leader', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get nameShort => getField<String>('name_short');
  set nameShort(String? value) => setField<String>('name_short', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);

  DateTime? get startedAt => getField<DateTime>('started_at');
  set startedAt(DateTime? value) => setField<DateTime>('started_at', value);

  DateTime? get endedAt => getField<DateTime>('ended_at');
  set endedAt(DateTime? value) => setField<DateTime>('ended_at', value);

  double? get durationHours => getField<double>('duration_hours');
  set durationHours(double? value) => setField<double>('duration_hours', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isOvInProgress => getField<bool>('is_ov_in_progress');
  set isOvInProgress(bool? value) => setField<bool>('is_ov_in_progress', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get orderBy => getField<int>('order_by');
  set orderBy(int? value) => setField<int>('order_by', value);
}

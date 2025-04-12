import '../database.dart';

class VOrdersVisitsTeamsTable extends SupabaseTable<VOrdersVisitsTeamsRow> {
  @override
  String get tableName => 'v_orders_visits_teams';

  @override
  VOrdersVisitsTeamsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsTeamsRow(data);
}

class VOrdersVisitsTeamsRow extends SupabaseDataRow {
  VOrdersVisitsTeamsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsTeamsTable();

  int? get ovId => getField<int>('ov_id');
  set ovId(int? value) => setField<int>('ov_id', value);

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

  DateTime? get ovStartedAt => getField<DateTime>('ov_started_at');
  set ovStartedAt(DateTime? value) =>
      setField<DateTime>('ov_started_at', value);

  DateTime? get ovEndedAt => getField<DateTime>('ov_ended_at');
  set ovEndedAt(DateTime? value) => setField<DateTime>('ov_ended_at', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isOvInProgress => getField<bool>('is_ov_in_progress');
  set isOvInProgress(bool? value) => setField<bool>('is_ov_in_progress', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

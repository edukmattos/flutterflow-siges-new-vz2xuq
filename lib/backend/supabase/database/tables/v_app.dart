import '../database.dart';

class VAppTable extends SupabaseTable<VAppRow> {
  @override
  String get tableName => 'v_app';

  @override
  VAppRow createRow(Map<String, dynamic> data) => VAppRow(data);
}

class VAppRow extends SupabaseDataRow {
  VAppRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAppTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get apkUrl => getField<String>('apk_url');
  set apkUrl(String? value) => setField<String>('apk_url', value);

  String? get versionApp => getField<String>('version_app');
  set versionApp(String? value) => setField<String>('version_app', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get versionAppOffline => getField<String>('version_app_offline');
  set versionAppOffline(String? value) =>
      setField<String>('version_app_offline', value);

  DateTime? get n8nAvailableLastAt =>
      getField<DateTime>('n8n_available_last_at');
  set n8nAvailableLastAt(DateTime? value) =>
      setField<DateTime>('n8n_available_last_at', value);
}

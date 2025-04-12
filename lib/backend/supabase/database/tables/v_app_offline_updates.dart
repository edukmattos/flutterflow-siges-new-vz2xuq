import '../database.dart';

class VAppOfflineUpdatesTable extends SupabaseTable<VAppOfflineUpdatesRow> {
  @override
  String get tableName => 'v_app_offline_updates';

  @override
  VAppOfflineUpdatesRow createRow(Map<String, dynamic> data) =>
      VAppOfflineUpdatesRow(data);
}

class VAppOfflineUpdatesRow extends SupabaseDataRow {
  VAppOfflineUpdatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAppOfflineUpdatesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  String? get versionOffline => getField<String>('version_offline');
  set versionOffline(String? value) =>
      setField<String>('version_offline', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}

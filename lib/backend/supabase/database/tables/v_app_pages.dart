import '../database.dart';

class VAppPagesTable extends SupabaseTable<VAppPagesRow> {
  @override
  String get tableName => 'v_app_pages';

  @override
  VAppPagesRow createRow(Map<String, dynamic> data) => VAppPagesRow(data);
}

class VAppPagesRow extends SupabaseDataRow {
  VAppPagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAppPagesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailableProvider => getField<bool>('is_available_provider');
  set isAvailableProvider(bool? value) =>
      setField<bool>('is_available_provider', value);
}

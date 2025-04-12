import '../database.dart';

class CfgAppPagesTable extends SupabaseTable<CfgAppPagesRow> {
  @override
  String get tableName => 'cfg_app_pages';

  @override
  CfgAppPagesRow createRow(Map<String, dynamic> data) => CfgAppPagesRow(data);
}

class CfgAppPagesRow extends SupabaseDataRow {
  CfgAppPagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgAppPagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailableProvider => getField<bool>('is_available_provider');
  set isAvailableProvider(bool? value) =>
      setField<bool>('is_available_provider', value);
}

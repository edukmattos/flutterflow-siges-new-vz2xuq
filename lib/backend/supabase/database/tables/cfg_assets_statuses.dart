import '../database.dart';

class CfgAssetsStatusesTable extends SupabaseTable<CfgAssetsStatusesRow> {
  @override
  String get tableName => 'cfg_assets_statuses';

  @override
  CfgAssetsStatusesRow createRow(Map<String, dynamic> data) =>
      CfgAssetsStatusesRow(data);
}

class CfgAssetsStatusesRow extends SupabaseDataRow {
  CfgAssetsStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgAssetsStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

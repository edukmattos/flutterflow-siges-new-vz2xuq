import '../database.dart';

class CfgAssetsTypesTable extends SupabaseTable<CfgAssetsTypesRow> {
  @override
  String get tableName => 'cfg_assets_types';

  @override
  CfgAssetsTypesRow createRow(Map<String, dynamic> data) =>
      CfgAssetsTypesRow(data);
}

class CfgAssetsTypesRow extends SupabaseDataRow {
  CfgAssetsTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgAssetsTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);
}

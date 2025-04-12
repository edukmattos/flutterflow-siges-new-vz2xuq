import '../database.dart';

class CfgAssetsPrioritiesTable extends SupabaseTable<CfgAssetsPrioritiesRow> {
  @override
  String get tableName => 'cfg_assets_priorities';

  @override
  CfgAssetsPrioritiesRow createRow(Map<String, dynamic> data) =>
      CfgAssetsPrioritiesRow(data);
}

class CfgAssetsPrioritiesRow extends SupabaseDataRow {
  CfgAssetsPrioritiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgAssetsPrioritiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);
}

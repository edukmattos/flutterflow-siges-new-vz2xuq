import '../database.dart';

class TechnicalsManualsAssetsTable
    extends SupabaseTable<TechnicalsManualsAssetsRow> {
  @override
  String get tableName => 'technicals_manuals_assets';

  @override
  TechnicalsManualsAssetsRow createRow(Map<String, dynamic> data) =>
      TechnicalsManualsAssetsRow(data);
}

class TechnicalsManualsAssetsRow extends SupabaseDataRow {
  TechnicalsManualsAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TechnicalsManualsAssetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get tmId => getField<int>('tm_id');
  set tmId(int? value) => setField<int>('tm_id', value);

  int? get assetId => getField<int>('asset_id');
  set assetId(int? value) => setField<int>('asset_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

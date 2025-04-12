import '../database.dart';

class VOrdersVisitsAssetsMaterialsTable
    extends SupabaseTable<VOrdersVisitsAssetsMaterialsRow> {
  @override
  String get tableName => 'v_orders_visits_assets_materials';

  @override
  VOrdersVisitsAssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsAssetsMaterialsRow(data);
}

class VOrdersVisitsAssetsMaterialsRow extends SupabaseDataRow {
  VOrdersVisitsAssetsMaterialsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsAssetsMaterialsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get ovId => getField<int>('ov_id');
  set ovId(int? value) => setField<int>('ov_id', value);

  int? get ovaId => getField<int>('ova_id');
  set ovaId(int? value) => setField<int>('ova_id', value);

  int? get assetId => getField<int>('asset_id');
  set assetId(int? value) => setField<int>('asset_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  double? get valueTotal => getField<double>('value_total');
  set valueTotal(double? value) => setField<double>('value_total', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

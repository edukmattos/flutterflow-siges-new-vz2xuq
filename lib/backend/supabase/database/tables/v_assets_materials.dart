import '../database.dart';

class VAssetsMaterialsTable extends SupabaseTable<VAssetsMaterialsRow> {
  @override
  String get tableName => 'v_assets_materials';

  @override
  VAssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      VAssetsMaterialsRow(data);
}

class VAssetsMaterialsRow extends SupabaseDataRow {
  VAssetsMaterialsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAssetsMaterialsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get assetId => getField<int>('asset_id');
  set assetId(int? value) => setField<int>('asset_id', value);

  int? get materialId => getField<int>('material_id');
  set materialId(int? value) => setField<int>('material_id', value);

  String? get materialCode => getField<String>('material_code');
  set materialCode(String? value) => setField<String>('material_code', value);

  String? get materialDescription => getField<String>('material_description');
  set materialDescription(String? value) =>
      setField<String>('material_description', value);

  String? get materialUnit => getField<String>('material_unit');
  set materialUnit(String? value) => setField<String>('material_unit', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get brandModel => getField<String>('brand_model');
  set brandModel(String? value) => setField<String>('brand_model', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  bool? get isOriginal => getField<bool>('is_original');
  set isOriginal(bool? value) => setField<bool>('is_original', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

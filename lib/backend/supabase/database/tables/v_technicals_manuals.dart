import '../database.dart';

class VTechnicalsManualsTable extends SupabaseTable<VTechnicalsManualsRow> {
  @override
  String get tableName => 'v_technicals_manuals';

  @override
  VTechnicalsManualsRow createRow(Map<String, dynamic> data) =>
      VTechnicalsManualsRow(data);
}

class VTechnicalsManualsRow extends SupabaseDataRow {
  VTechnicalsManualsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VTechnicalsManualsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get tmTypeId => getField<int>('tm_type_id');
  set tmTypeId(int? value) => setField<int>('tm_type_id', value);

  String? get tmTypeDescription => getField<String>('tm_type_description');
  set tmTypeDescription(String? value) =>
      setField<String>('tm_type_description', value);

  String? get tmDescription => getField<String>('tm_description');
  set tmDescription(String? value) => setField<String>('tm_description', value);

  String? get docFilePath => getField<String>('doc_file_path');
  set docFilePath(String? value) => setField<String>('doc_file_path', value);

  String? get docFileName => getField<String>('doc_file_name');
  set docFileName(String? value) => setField<String>('doc_file_name', value);

  int? get assetsAmount => getField<int>('assets_amount');
  set assetsAmount(int? value) => setField<int>('assets_amount', value);

  int? get assetTypeId => getField<int>('asset_type_id');
  set assetTypeId(int? value) => setField<int>('asset_type_id', value);

  String? get assetTypeDescription =>
      getField<String>('asset_type_description');
  set assetTypeDescription(String? value) =>
      setField<String>('asset_type_description', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

import '../database.dart';

class TechnicalsManualsTable extends SupabaseTable<TechnicalsManualsRow> {
  @override
  String get tableName => 'technicals_manuals';

  @override
  TechnicalsManualsRow createRow(Map<String, dynamic> data) =>
      TechnicalsManualsRow(data);
}

class TechnicalsManualsRow extends SupabaseDataRow {
  TechnicalsManualsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TechnicalsManualsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get tmTypeId => getField<int>('tm_type_id');
  set tmTypeId(int? value) => setField<int>('tm_type_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get docFilePath => getField<String>('doc_file_path');
  set docFilePath(String? value) => setField<String>('doc_file_path', value);

  String? get docFileName => getField<String>('doc_file_name');
  set docFileName(String? value) => setField<String>('doc_file_name', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int get assetsAmount => getField<int>('assets_amount')!;
  set assetsAmount(int value) => setField<int>('assets_amount', value);

  int? get assetTypeId => getField<int>('asset_type_id');
  set assetTypeId(int? value) => setField<int>('asset_type_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

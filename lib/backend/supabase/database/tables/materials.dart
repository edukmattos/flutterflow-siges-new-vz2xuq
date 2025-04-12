import '../database.dart';

class MaterialsTable extends SupabaseTable<MaterialsRow> {
  @override
  String get tableName => 'materials';

  @override
  MaterialsRow createRow(Map<String, dynamic> data) => MaterialsRow(data);
}

class MaterialsRow extends SupabaseDataRow {
  MaterialsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaterialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get searchable => getField<String>('searchable');
  set searchable(String? value) => setField<String>('searchable', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  double? get priceUnit => getField<double>('price_unit');
  set priceUnit(double? value) => setField<double>('price_unit', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);
}

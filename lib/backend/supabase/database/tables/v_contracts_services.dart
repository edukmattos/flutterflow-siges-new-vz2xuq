import '../database.dart';

class VContractsServicesTable extends SupabaseTable<VContractsServicesRow> {
  @override
  String get tableName => 'v_contracts_services';

  @override
  VContractsServicesRow createRow(Map<String, dynamic> data) =>
      VContractsServicesRow(data);
}

class VContractsServicesRow extends SupabaseDataRow {
  VContractsServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VContractsServicesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  int? get serviceId => getField<int>('service_id');
  set serviceId(int? value) => setField<int>('service_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

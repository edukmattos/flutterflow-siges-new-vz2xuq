import '../database.dart';

class ContractsServicesTable extends SupabaseTable<ContractsServicesRow> {
  @override
  String get tableName => 'contracts_services';

  @override
  ContractsServicesRow createRow(Map<String, dynamic> data) =>
      ContractsServicesRow(data);
}

class ContractsServicesRow extends SupabaseDataRow {
  ContractsServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractsServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  int? get serviceId => getField<int>('service_id');
  set serviceId(int? value) => setField<int>('service_id', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get valueTotal => getField<double>('value_total');
  set valueTotal(double? value) => setField<double>('value_total', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

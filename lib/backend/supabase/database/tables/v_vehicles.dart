import '../database.dart';

class VVehiclesTable extends SupabaseTable<VVehiclesRow> {
  @override
  String get tableName => 'v_vehicles';

  @override
  VVehiclesRow createRow(Map<String, dynamic> data) => VVehiclesRow(data);
}

class VVehiclesRow extends SupabaseDataRow {
  VVehiclesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VVehiclesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get plates => getField<String>('plates');
  set plates(String? value) => setField<String>('plates', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

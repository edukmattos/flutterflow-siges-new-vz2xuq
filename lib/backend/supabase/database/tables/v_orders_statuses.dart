import '../database.dart';

class VOrdersStatusesTable extends SupabaseTable<VOrdersStatusesRow> {
  @override
  String get tableName => 'v_orders_statuses';

  @override
  VOrdersStatusesRow createRow(Map<String, dynamic> data) =>
      VOrdersStatusesRow(data);
}

class VOrdersStatusesRow extends SupabaseDataRow {
  VOrdersStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersStatusesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);
}

import '../database.dart';

class CfgOrdersStatusesTable extends SupabaseTable<CfgOrdersStatusesRow> {
  @override
  String get tableName => 'cfg_orders_statuses';

  @override
  CfgOrdersStatusesRow createRow(Map<String, dynamic> data) =>
      CfgOrdersStatusesRow(data);
}

class CfgOrdersStatusesRow extends SupabaseDataRow {
  CfgOrdersStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

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

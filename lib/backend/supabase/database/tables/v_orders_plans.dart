import '../database.dart';

class VOrdersPlansTable extends SupabaseTable<VOrdersPlansRow> {
  @override
  String get tableName => 'v_orders_plans';

  @override
  VOrdersPlansRow createRow(Map<String, dynamic> data) => VOrdersPlansRow(data);
}

class VOrdersPlansRow extends SupabaseDataRow {
  VOrdersPlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersPlansTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);
}

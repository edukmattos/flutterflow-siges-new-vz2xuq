import '../database.dart';

class CfgOrdersPlansTable extends SupabaseTable<CfgOrdersPlansRow> {
  @override
  String get tableName => 'cfg_orders_plans';

  @override
  CfgOrdersPlansRow createRow(Map<String, dynamic> data) =>
      CfgOrdersPlansRow(data);
}

class CfgOrdersPlansRow extends SupabaseDataRow {
  CfgOrdersPlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersPlansTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

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

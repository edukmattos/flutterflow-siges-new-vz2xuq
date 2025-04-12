import '../database.dart';

class CfgOrdersSuspendedReasonsTable
    extends SupabaseTable<CfgOrdersSuspendedReasonsRow> {
  @override
  String get tableName => 'cfg_orders_suspended_reasons';

  @override
  CfgOrdersSuspendedReasonsRow createRow(Map<String, dynamic> data) =>
      CfgOrdersSuspendedReasonsRow(data);
}

class CfgOrdersSuspendedReasonsRow extends SupabaseDataRow {
  CfgOrdersSuspendedReasonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersSuspendedReasonsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

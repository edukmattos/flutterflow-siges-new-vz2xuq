import '../database.dart';

class VOrdersSuspendedReasonsTable
    extends SupabaseTable<VOrdersSuspendedReasonsRow> {
  @override
  String get tableName => 'v_orders_suspended_reasons';

  @override
  VOrdersSuspendedReasonsRow createRow(Map<String, dynamic> data) =>
      VOrdersSuspendedReasonsRow(data);
}

class VOrdersSuspendedReasonsRow extends SupabaseDataRow {
  VOrdersSuspendedReasonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersSuspendedReasonsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

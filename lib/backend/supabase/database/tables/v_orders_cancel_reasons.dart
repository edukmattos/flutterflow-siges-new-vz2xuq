import '../database.dart';

class VOrdersCancelReasonsTable extends SupabaseTable<VOrdersCancelReasonsRow> {
  @override
  String get tableName => 'v_orders_cancel_reasons';

  @override
  VOrdersCancelReasonsRow createRow(Map<String, dynamic> data) =>
      VOrdersCancelReasonsRow(data);
}

class VOrdersCancelReasonsRow extends SupabaseDataRow {
  VOrdersCancelReasonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersCancelReasonsTable();

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

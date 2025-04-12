import '../database.dart';

class CfgOrdersCancelReasonsTable
    extends SupabaseTable<CfgOrdersCancelReasonsRow> {
  @override
  String get tableName => 'cfg_orders_cancel_reasons';

  @override
  CfgOrdersCancelReasonsRow createRow(Map<String, dynamic> data) =>
      CfgOrdersCancelReasonsRow(data);
}

class CfgOrdersCancelReasonsRow extends SupabaseDataRow {
  CfgOrdersCancelReasonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersCancelReasonsTable();

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

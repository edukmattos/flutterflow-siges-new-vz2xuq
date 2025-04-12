import '../database.dart';

class VOrdersTypesTable extends SupabaseTable<VOrdersTypesRow> {
  @override
  String get tableName => 'v_orders_types';

  @override
  VOrdersTypesRow createRow(Map<String, dynamic> data) => VOrdersTypesRow(data);
}

class VOrdersTypesRow extends SupabaseDataRow {
  VOrdersTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersTypesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);
}

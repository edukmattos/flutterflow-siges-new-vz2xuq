import '../database.dart';

class CfgOrdersTypesSubsTable extends SupabaseTable<CfgOrdersTypesSubsRow> {
  @override
  String get tableName => 'cfg_orders_types_subs';

  @override
  CfgOrdersTypesSubsRow createRow(Map<String, dynamic> data) =>
      CfgOrdersTypesSubsRow(data);
}

class CfgOrdersTypesSubsRow extends SupabaseDataRow {
  CfgOrdersTypesSubsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersTypesSubsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get departmentId => getField<int>('department_id')!;
  set departmentId(int value) => setField<int>('department_id', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

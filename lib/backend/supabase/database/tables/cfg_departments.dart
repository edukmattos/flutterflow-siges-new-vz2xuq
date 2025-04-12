import '../database.dart';

class CfgDepartmentsTable extends SupabaseTable<CfgDepartmentsRow> {
  @override
  String get tableName => 'cfg_departments';

  @override
  CfgDepartmentsRow createRow(Map<String, dynamic> data) =>
      CfgDepartmentsRow(data);
}

class CfgDepartmentsRow extends SupabaseDataRow {
  CfgDepartmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgDepartmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);
}

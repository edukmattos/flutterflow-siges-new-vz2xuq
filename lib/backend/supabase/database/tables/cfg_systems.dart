import '../database.dart';

class CfgSystemsTable extends SupabaseTable<CfgSystemsRow> {
  @override
  String get tableName => 'cfg_systems';

  @override
  CfgSystemsRow createRow(Map<String, dynamic> data) => CfgSystemsRow(data);
}

class CfgSystemsRow extends SupabaseDataRow {
  CfgSystemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgSystemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get createdDate => getField<DateTime>('created_date');
  set createdDate(DateTime? value) => setField<DateTime>('created_date', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get updatedDate => getField<DateTime>('updated_date');
  set updatedDate(DateTime? value) => setField<DateTime>('updated_date', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedDate => getField<DateTime>('deleted_date');
  set deletedDate(DateTime? value) => setField<DateTime>('deleted_date', value);
}

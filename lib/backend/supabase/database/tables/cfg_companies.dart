import '../database.dart';

class CfgCompaniesTable extends SupabaseTable<CfgCompaniesRow> {
  @override
  String get tableName => 'cfg_companies';

  @override
  CfgCompaniesRow createRow(Map<String, dynamic> data) => CfgCompaniesRow(data);
}

class CfgCompaniesRow extends SupabaseDataRow {
  CfgCompaniesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgCompaniesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  String? get emailSufix => getField<String>('email_sufix');
  set emailSufix(String? value) => setField<String>('email_sufix', value);

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

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);
}

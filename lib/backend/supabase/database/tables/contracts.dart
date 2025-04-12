import '../database.dart';

class ContractsTable extends SupabaseTable<ContractsRow> {
  @override
  String get tableName => 'contracts';

  @override
  ContractsRow createRow(Map<String, dynamic> data) => ContractsRow(data);
}

class ContractsRow extends SupabaseDataRow {
  ContractsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get clientCompanyId => getField<int>('client_company_id');
  set clientCompanyId(int? value) => setField<int>('client_company_id', value);

  int? get clientDepartmentId => getField<int>('client_department_id');
  set clientDepartmentId(int? value) =>
      setField<int>('client_department_id', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  int? get providerDepartmentId => getField<int>('provider_department_id');
  set providerDepartmentId(int? value) =>
      setField<int>('provider_department_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

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

  bool? get isDev => getField<bool>('is_dev');
  set isDev(bool? value) => setField<bool>('is_dev', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);
}

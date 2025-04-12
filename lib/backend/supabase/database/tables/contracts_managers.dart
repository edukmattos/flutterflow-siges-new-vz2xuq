import '../database.dart';

class ContractsManagersTable extends SupabaseTable<ContractsManagersRow> {
  @override
  String get tableName => 'contracts_managers';

  @override
  ContractsManagersRow createRow(Map<String, dynamic> data) =>
      ContractsManagersRow(data);
}

class ContractsManagersRow extends SupabaseDataRow {
  ContractsManagersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractsManagersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  int? get managerId => getField<int>('manager_id');
  set managerId(int? value) => setField<int>('manager_id', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}

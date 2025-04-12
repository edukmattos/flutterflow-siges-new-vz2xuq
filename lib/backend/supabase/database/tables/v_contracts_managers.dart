import '../database.dart';

class VContractsManagersTable extends SupabaseTable<VContractsManagersRow> {
  @override
  String get tableName => 'v_contracts_managers';

  @override
  VContractsManagersRow createRow(Map<String, dynamic> data) =>
      VContractsManagersRow(data);
}

class VContractsManagersRow extends SupabaseDataRow {
  VContractsManagersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VContractsManagersTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  int? get managerId => getField<int>('manager_id');
  set managerId(int? value) => setField<int>('manager_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  String? get nameFull => getField<String>('name_full');
  set nameFull(String? value) => setField<String>('name_full', value);

  String? get nameShort => getField<String>('name_short');
  set nameShort(String? value) => setField<String>('name_short', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get managerImgFilePath => getField<String>('manager_img_file_path');
  set managerImgFilePath(String? value) =>
      setField<String>('manager_img_file_path', value);

  String? get managerImgFileName => getField<String>('manager_img_file_name');
  set managerImgFileName(String? value) =>
      setField<String>('manager_img_file_name', value);

  bool? get isAdminSuper => getField<bool>('is_admin_super');
  set isAdminSuper(bool? value) => setField<bool>('is_admin_super', value);

  String? get teamCode => getField<String>('team_code');
  set teamCode(String? value) => setField<String>('team_code', value);
}

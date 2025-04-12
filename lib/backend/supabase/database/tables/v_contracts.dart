import '../database.dart';

class VContractsTable extends SupabaseTable<VContractsRow> {
  @override
  String get tableName => 'v_contracts';

  @override
  VContractsRow createRow(Map<String, dynamic> data) => VContractsRow(data);
}

class VContractsRow extends SupabaseDataRow {
  VContractsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VContractsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get clientCompanyId => getField<int>('client_company_id');
  set clientCompanyId(int? value) => setField<int>('client_company_id', value);

  String? get clientCompanyDescription =>
      getField<String>('client_company_description');
  set clientCompanyDescription(String? value) =>
      setField<String>('client_company_description', value);

  int? get clientDepartmentId => getField<int>('client_department_id');
  set clientDepartmentId(int? value) =>
      setField<int>('client_department_id', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  String? get providerCompanyDescription =>
      getField<String>('provider_company_description');
  set providerCompanyDescription(String? value) =>
      setField<String>('provider_company_description', value);

  String? get providerCompanyCode => getField<String>('provider_company_code');
  set providerCompanyCode(String? value) =>
      setField<String>('provider_company_code', value);

  String? get providerCompanyImgFileName =>
      getField<String>('provider_company_img_file_name');
  set providerCompanyImgFileName(String? value) =>
      setField<String>('provider_company_img_file_name', value);

  String? get providerCompanyImgFilePath =>
      getField<String>('provider_company_img_file_path');
  set providerCompanyImgFilePath(String? value) =>
      setField<String>('provider_company_img_file_path', value);

  int? get providerDepartmentId => getField<int>('provider_department_id');
  set providerDepartmentId(int? value) =>
      setField<int>('provider_department_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  String? get statusCode => getField<String>('status_code');
  set statusCode(String? value) => setField<String>('status_code', value);

  String? get statusDescription => getField<String>('status_description');
  set statusDescription(String? value) =>
      setField<String>('status_description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);
}

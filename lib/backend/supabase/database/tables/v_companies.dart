import '../database.dart';

class VCompaniesTable extends SupabaseTable<VCompaniesRow> {
  @override
  String get tableName => 'v_companies';

  @override
  VCompaniesRow createRow(Map<String, dynamic> data) => VCompaniesRow(data);
}

class VCompaniesRow extends SupabaseDataRow {
  VCompaniesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VCompaniesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

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
}

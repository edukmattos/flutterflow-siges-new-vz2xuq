import '../database.dart';

class VSystemsParentTable extends SupabaseTable<VSystemsParentRow> {
  @override
  String get tableName => 'v_systems_parent';

  @override
  VSystemsParentRow createRow(Map<String, dynamic> data) =>
      VSystemsParentRow(data);
}

class VSystemsParentRow extends SupabaseDataRow {
  VSystemsParentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VSystemsParentTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

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
}

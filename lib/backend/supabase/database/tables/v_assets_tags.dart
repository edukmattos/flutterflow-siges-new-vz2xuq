import '../database.dart';

class VAssetsTagsTable extends SupabaseTable<VAssetsTagsRow> {
  @override
  String get tableName => 'v_assets_tags';

  @override
  VAssetsTagsRow createRow(Map<String, dynamic> data) => VAssetsTagsRow(data);
}

class VAssetsTagsRow extends SupabaseDataRow {
  VAssetsTagsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAssetsTagsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);
}

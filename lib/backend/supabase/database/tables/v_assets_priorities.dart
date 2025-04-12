import '../database.dart';

class VAssetsPrioritiesTable extends SupabaseTable<VAssetsPrioritiesRow> {
  @override
  String get tableName => 'v_assets_priorities';

  @override
  VAssetsPrioritiesRow createRow(Map<String, dynamic> data) =>
      VAssetsPrioritiesRow(data);
}

class VAssetsPrioritiesRow extends SupabaseDataRow {
  VAssetsPrioritiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAssetsPrioritiesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);
}

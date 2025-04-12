import '../database.dart';

class VAssetsCouplingsModelsTable
    extends SupabaseTable<VAssetsCouplingsModelsRow> {
  @override
  String get tableName => 'v_assets_couplings_models';

  @override
  VAssetsCouplingsModelsRow createRow(Map<String, dynamic> data) =>
      VAssetsCouplingsModelsRow(data);
}

class VAssetsCouplingsModelsRow extends SupabaseDataRow {
  VAssetsCouplingsModelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAssetsCouplingsModelsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

import '../database.dart';

class AssetsMaterialsTable extends SupabaseTable<AssetsMaterialsRow> {
  @override
  String get tableName => 'assets_materials';

  @override
  AssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      AssetsMaterialsRow(data);
}

class AssetsMaterialsRow extends SupabaseDataRow {
  AssetsMaterialsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssetsMaterialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get assetId => getField<int>('asset_id');
  set assetId(int? value) => setField<int>('asset_id', value);

  int? get materialId => getField<int>('material_id');
  set materialId(int? value) => setField<int>('material_id', value);

  bool? get isOriginal => getField<bool>('is_original');
  set isOriginal(bool? value) => setField<bool>('is_original', value);

  String? get brandModel => getField<String>('brand_model');
  set brandModel(String? value) => setField<String>('brand_model', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get serial => getField<String>('serial');
  set serial(String? value) => setField<String>('serial', value);

  DateTime? get dateIn => getField<DateTime>('date_in');
  set dateIn(DateTime? value) => setField<DateTime>('date_in', value);

  DateTime? get dateOut => getField<DateTime>('date_out');
  set dateOut(DateTime? value) => setField<DateTime>('date_out', value);

  int? get recorderIn => getField<int>('recorder_in');
  set recorderIn(int? value) => setField<int>('recorder_in', value);

  int? get recorderOut => getField<int>('recorder_out');
  set recorderOut(int? value) => setField<int>('recorder_out', value);

  int? get orderVisitAssetId => getField<int>('order_visit_asset_id');
  set orderVisitAssetId(int? value) =>
      setField<int>('order_visit_asset_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get orderParentId => getField<int>('order_parent_id');
  set orderParentId(int? value) => setField<int>('order_parent_id', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  int? get orderVisitId => getField<int>('order_visit_id');
  set orderVisitId(int? value) => setField<int>('order_visit_id', value);

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

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

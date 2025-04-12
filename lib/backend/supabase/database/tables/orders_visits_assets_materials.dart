import '../database.dart';

class OrdersVisitsAssetsMaterialsTable
    extends SupabaseTable<OrdersVisitsAssetsMaterialsRow> {
  @override
  String get tableName => 'orders_visits_assets_materials';

  @override
  OrdersVisitsAssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsAssetsMaterialsRow(data);
}

class OrdersVisitsAssetsMaterialsRow extends SupabaseDataRow {
  OrdersVisitsAssetsMaterialsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsAssetsMaterialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get ovId => getField<int>('ov_id')!;
  set ovId(int value) => setField<int>('ov_id', value);

  int get assetId => getField<int>('asset_id')!;
  set assetId(int value) => setField<int>('asset_id', value);

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  double? get valueTotal => getField<double>('value_total');
  set valueTotal(double? value) => setField<double>('value_total', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

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

  int? get ovaId => getField<int>('ova_id');
  set ovaId(int? value) => setField<int>('ova_id', value);
}

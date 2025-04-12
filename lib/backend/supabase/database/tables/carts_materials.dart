import '../database.dart';

class CartsMaterialsTable extends SupabaseTable<CartsMaterialsRow> {
  @override
  String get tableName => 'carts_materials';

  @override
  CartsMaterialsRow createRow(Map<String, dynamic> data) =>
      CartsMaterialsRow(data);
}

class CartsMaterialsRow extends SupabaseDataRow {
  CartsMaterialsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartsMaterialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get materialId => getField<int>('material_id');
  set materialId(int? value) => setField<int>('material_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get cartId => getField<int>('cart_id');
  set cartId(int? value) => setField<int>('cart_id', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get ovaId => getField<int>('ova_id');
  set ovaId(int? value) => setField<int>('ova_id', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

import '../database.dart';

class VOrdersObjectsTable extends SupabaseTable<VOrdersObjectsRow> {
  @override
  String get tableName => 'v_orders_objects';

  @override
  VOrdersObjectsRow createRow(Map<String, dynamic> data) =>
      VOrdersObjectsRow(data);
}

class VOrdersObjectsRow extends SupabaseDataRow {
  VOrdersObjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersObjectsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

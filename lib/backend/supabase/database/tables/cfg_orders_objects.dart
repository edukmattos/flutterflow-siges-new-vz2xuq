import '../database.dart';

class CfgOrdersObjectsTable extends SupabaseTable<CfgOrdersObjectsRow> {
  @override
  String get tableName => 'cfg_orders_objects';

  @override
  CfgOrdersObjectsRow createRow(Map<String, dynamic> data) =>
      CfgOrdersObjectsRow(data);
}

class CfgOrdersObjectsRow extends SupabaseDataRow {
  CfgOrdersObjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersObjectsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

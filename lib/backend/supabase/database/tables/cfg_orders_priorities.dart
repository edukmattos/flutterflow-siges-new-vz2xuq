import '../database.dart';

class CfgOrdersPrioritiesTable extends SupabaseTable<CfgOrdersPrioritiesRow> {
  @override
  String get tableName => 'cfg_orders_priorities';

  @override
  CfgOrdersPrioritiesRow createRow(Map<String, dynamic> data) =>
      CfgOrdersPrioritiesRow(data);
}

class CfgOrdersPrioritiesRow extends SupabaseDataRow {
  CfgOrdersPrioritiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersPrioritiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

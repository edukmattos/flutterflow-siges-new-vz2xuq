import '../database.dart';

class CfgOrdersVisitsProcessingTable
    extends SupabaseTable<CfgOrdersVisitsProcessingRow> {
  @override
  String get tableName => 'cfg_orders_visits_processing';

  @override
  CfgOrdersVisitsProcessingRow createRow(Map<String, dynamic> data) =>
      CfgOrdersVisitsProcessingRow(data);
}

class CfgOrdersVisitsProcessingRow extends SupabaseDataRow {
  CfgOrdersVisitsProcessingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersVisitsProcessingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

import '../database.dart';

class CfgOrdersVisitsStatusesTable
    extends SupabaseTable<CfgOrdersVisitsStatusesRow> {
  @override
  String get tableName => 'cfg_orders_visits_statuses';

  @override
  CfgOrdersVisitsStatusesRow createRow(Map<String, dynamic> data) =>
      CfgOrdersVisitsStatusesRow(data);
}

class CfgOrdersVisitsStatusesRow extends SupabaseDataRow {
  CfgOrdersVisitsStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersVisitsStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

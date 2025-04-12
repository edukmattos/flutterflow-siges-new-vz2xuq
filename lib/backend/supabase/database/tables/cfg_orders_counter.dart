import '../database.dart';

class CfgOrdersCounterTable extends SupabaseTable<CfgOrdersCounterRow> {
  @override
  String get tableName => 'cfg_orders_counter';

  @override
  CfgOrdersCounterRow createRow(Map<String, dynamic> data) =>
      CfgOrdersCounterRow(data);
}

class CfgOrdersCounterRow extends SupabaseDataRow {
  CfgOrdersCounterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersCounterTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  int? get counter => getField<int>('counter');
  set counter(int? value) => setField<int>('counter', value);

  bool? get isDev => getField<bool>('is_dev');
  set isDev(bool? value) => setField<bool>('is_dev', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);
}

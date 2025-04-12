import '../database.dart';

class CfgContractsStatusesTable extends SupabaseTable<CfgContractsStatusesRow> {
  @override
  String get tableName => 'cfg_contracts_statuses';

  @override
  CfgContractsStatusesRow createRow(Map<String, dynamic> data) =>
      CfgContractsStatusesRow(data);
}

class CfgContractsStatusesRow extends SupabaseDataRow {
  CfgContractsStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgContractsStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

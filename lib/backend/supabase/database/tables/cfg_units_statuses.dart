import '../database.dart';

class CfgUnitsStatusesTable extends SupabaseTable<CfgUnitsStatusesRow> {
  @override
  String get tableName => 'cfg_units_statuses';

  @override
  CfgUnitsStatusesRow createRow(Map<String, dynamic> data) =>
      CfgUnitsStatusesRow(data);
}

class CfgUnitsStatusesRow extends SupabaseDataRow {
  CfgUnitsStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgUnitsStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

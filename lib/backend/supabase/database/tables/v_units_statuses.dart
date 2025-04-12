import '../database.dart';

class VUnitsStatusesTable extends SupabaseTable<VUnitsStatusesRow> {
  @override
  String get tableName => 'v_units_statuses';

  @override
  VUnitsStatusesRow createRow(Map<String, dynamic> data) =>
      VUnitsStatusesRow(data);
}

class VUnitsStatusesRow extends SupabaseDataRow {
  VUnitsStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VUnitsStatusesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

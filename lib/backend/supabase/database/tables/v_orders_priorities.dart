import '../database.dart';

class VOrdersPrioritiesTable extends SupabaseTable<VOrdersPrioritiesRow> {
  @override
  String get tableName => 'v_orders_priorities';

  @override
  VOrdersPrioritiesRow createRow(Map<String, dynamic> data) =>
      VOrdersPrioritiesRow(data);
}

class VOrdersPrioritiesRow extends SupabaseDataRow {
  VOrdersPrioritiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersPrioritiesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

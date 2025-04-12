import '../database.dart';

class VOrdersCausesReasonsTable extends SupabaseTable<VOrdersCausesReasonsRow> {
  @override
  String get tableName => 'v_orders_causes_reasons';

  @override
  VOrdersCausesReasonsRow createRow(Map<String, dynamic> data) =>
      VOrdersCausesReasonsRow(data);
}

class VOrdersCausesReasonsRow extends SupabaseDataRow {
  VOrdersCausesReasonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersCausesReasonsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailabe => getField<bool>('is_availabe');
  set isAvailabe(bool? value) => setField<bool>('is_availabe', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

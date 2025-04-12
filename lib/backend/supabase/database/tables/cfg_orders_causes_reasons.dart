import '../database.dart';

class CfgOrdersCausesReasonsTable
    extends SupabaseTable<CfgOrdersCausesReasonsRow> {
  @override
  String get tableName => 'cfg_orders_causes_reasons';

  @override
  CfgOrdersCausesReasonsRow createRow(Map<String, dynamic> data) =>
      CfgOrdersCausesReasonsRow(data);
}

class CfgOrdersCausesReasonsRow extends SupabaseDataRow {
  CfgOrdersCausesReasonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgOrdersCausesReasonsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailabe => getField<bool>('is_availabe');
  set isAvailabe(bool? value) => setField<bool>('is_availabe', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

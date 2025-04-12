import '../database.dart';

class VUnitsTypesTable extends SupabaseTable<VUnitsTypesRow> {
  @override
  String get tableName => 'v_units_types';

  @override
  VUnitsTypesRow createRow(Map<String, dynamic> data) => VUnitsTypesRow(data);
}

class VUnitsTypesRow extends SupabaseDataRow {
  VUnitsTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VUnitsTypesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

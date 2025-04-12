import '../database.dart';

class CfgUnitsTypesTable extends SupabaseTable<CfgUnitsTypesRow> {
  @override
  String get tableName => 'cfg_units_types';

  @override
  CfgUnitsTypesRow createRow(Map<String, dynamic> data) =>
      CfgUnitsTypesRow(data);
}

class CfgUnitsTypesRow extends SupabaseDataRow {
  CfgUnitsTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgUnitsTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

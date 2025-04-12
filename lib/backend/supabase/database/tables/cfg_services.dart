import '../database.dart';

class CfgServicesTable extends SupabaseTable<CfgServicesRow> {
  @override
  String get tableName => 'cfg_services';

  @override
  CfgServicesRow createRow(Map<String, dynamic> data) => CfgServicesRow(data);
}

class CfgServicesRow extends SupabaseDataRow {
  CfgServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CfgServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);
}

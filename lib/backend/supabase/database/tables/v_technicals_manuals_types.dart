import '../database.dart';

class VTechnicalsManualsTypesTable
    extends SupabaseTable<VTechnicalsManualsTypesRow> {
  @override
  String get tableName => 'v_technicals_manuals_types';

  @override
  VTechnicalsManualsTypesRow createRow(Map<String, dynamic> data) =>
      VTechnicalsManualsTypesRow(data);
}

class VTechnicalsManualsTypesRow extends SupabaseDataRow {
  VTechnicalsManualsTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VTechnicalsManualsTypesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

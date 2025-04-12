import '../database.dart';

class TechnicalsManualsTypesTable
    extends SupabaseTable<TechnicalsManualsTypesRow> {
  @override
  String get tableName => 'technicals_manuals_types';

  @override
  TechnicalsManualsTypesRow createRow(Map<String, dynamic> data) =>
      TechnicalsManualsTypesRow(data);
}

class TechnicalsManualsTypesRow extends SupabaseDataRow {
  TechnicalsManualsTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TechnicalsManualsTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  double? get createdUserId => getField<double>('created_user_id');
  set createdUserId(double? value) =>
      setField<double>('created_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

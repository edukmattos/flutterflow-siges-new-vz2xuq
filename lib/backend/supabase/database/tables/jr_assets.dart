import '../database.dart';

class JrAssetsTable extends SupabaseTable<JrAssetsRow> {
  @override
  String get tableName => 'jr_assets';

  @override
  JrAssetsRow createRow(Map<String, dynamic> data) => JrAssetsRow(data);
}

class JrAssetsRow extends SupabaseDataRow {
  JrAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => JrAssetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get tagDescription => getField<String>('tag_description');
  set tagDescription(String? value) =>
      setField<String>('tag_description', value);

  String? get tagSubDescription => getField<String>('tag_sub_description');
  set tagSubDescription(String? value) =>
      setField<String>('tag_sub_description', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get unitDescription => getField<String>('unit_description');
  set unitDescription(String? value) =>
      setField<String>('unit_description', value);

  String? get statusCode => getField<String>('status_code');
  set statusCode(String? value) => setField<String>('status_code', value);

  String? get statusDescription => getField<String>('status_description');
  set statusDescription(String? value) =>
      setField<String>('status_description', value);

  DateTime? get statusAt => getField<DateTime>('status_at');
  set statusAt(DateTime? value) => setField<DateTime>('status_at', value);

  String? get typeDescription => getField<String>('type_description');
  set typeDescription(String? value) =>
      setField<String>('type_description', value);

  String? get priorityCode => getField<String>('priority_code');
  set priorityCode(String? value) => setField<String>('priority_code', value);

  String? get priorityDescription => getField<String>('priority_description');
  set priorityDescription(String? value) =>
      setField<String>('priority_description', value);

  String? get userUuid => getField<String>('user_uuid');
  set userUuid(String? value) => setField<String>('user_uuid', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}

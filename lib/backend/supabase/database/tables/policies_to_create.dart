import '../database.dart';

class PoliciesToCreateTable extends SupabaseTable<PoliciesToCreateRow> {
  @override
  String get tableName => '_policies_to_create';

  @override
  PoliciesToCreateRow createRow(Map<String, dynamic> data) =>
      PoliciesToCreateRow(data);
}

class PoliciesToCreateRow extends SupabaseDataRow {
  PoliciesToCreateRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PoliciesToCreateTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get policy => getField<String>('policy');
  set policy(String? value) => setField<String>('policy', value);
}

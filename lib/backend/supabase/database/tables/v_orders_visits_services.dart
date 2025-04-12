import '../database.dart';

class VOrdersVisitsServicesTable
    extends SupabaseTable<VOrdersVisitsServicesRow> {
  @override
  String get tableName => 'v_orders_visits_services';

  @override
  VOrdersVisitsServicesRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsServicesRow(data);
}

class VOrdersVisitsServicesRow extends SupabaseDataRow {
  VOrdersVisitsServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsServicesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get ovId => getField<int>('ov_id');
  set ovId(int? value) => setField<int>('ov_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  double? get valueTotal => getField<double>('value_total');
  set valueTotal(double? value) => setField<double>('value_total', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

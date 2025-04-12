import '../database.dart';

class VOrdersVisitsVehiclesTable
    extends SupabaseTable<VOrdersVisitsVehiclesRow> {
  @override
  String get tableName => 'v_orders_visits_vehicles';

  @override
  VOrdersVisitsVehiclesRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsVehiclesRow(data);
}

class VOrdersVisitsVehiclesRow extends SupabaseDataRow {
  VOrdersVisitsVehiclesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsVehiclesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get ovId => getField<int>('ov_id');
  set ovId(int? value) => setField<int>('ov_id', value);

  int? get vehicleId => getField<int>('vehicle_id');
  set vehicleId(int? value) => setField<int>('vehicle_id', value);

  String? get vehicleDescription => getField<String>('vehicle_description');
  set vehicleDescription(String? value) =>
      setField<String>('vehicle_description', value);

  String? get vehiclePlates => getField<String>('vehicle_plates');
  set vehiclePlates(String? value) => setField<String>('vehicle_plates', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  int? get recorderStart => getField<int>('recorder_start');
  set recorderStart(int? value) => setField<int>('recorder_start', value);

  int? get recorderEnd => getField<int>('recorder_end');
  set recorderEnd(int? value) => setField<int>('recorder_end', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  double? get valueUnit => getField<double>('value_unit');
  set valueUnit(double? value) => setField<double>('value_unit', value);

  double? get valueTotal => getField<double>('value_total');
  set valueTotal(double? value) => setField<double>('value_total', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

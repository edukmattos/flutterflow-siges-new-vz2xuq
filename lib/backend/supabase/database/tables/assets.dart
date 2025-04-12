import '../database.dart';

class AssetsTable extends SupabaseTable<AssetsRow> {
  @override
  String get tableName => 'assets';

  @override
  AssetsRow createRow(Map<String, dynamic> data) => AssetsRow(data);
}

class AssetsRow extends SupabaseDataRow {
  AssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  int? get tagId => getField<int>('tag_id');
  set tagId(int? value) => setField<int>('tag_id', value);

  int? get tagSubId => getField<int>('tag_sub_id');
  set tagSubId(int? value) => setField<int>('tag_sub_id', value);

  DateTime? get statusAt => getField<DateTime>('status_at');
  set statusAt(DateTime? value) => setField<DateTime>('status_at', value);

  int? get typeId => getField<int>('type_id');
  set typeId(int? value) => setField<int>('type_id', value);

  String? get searchable => getField<String>('searchable');
  set searchable(String? value) => setField<String>('searchable', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get serial => getField<String>('serial');
  set serial(String? value) => setField<String>('serial', value);

  double? get power => getField<double>('power');
  set power(double? value) => setField<double>('power', value);

  String? get powerUnit => getField<String>('power_unit');
  set powerUnit(String? value) => setField<String>('power_unit', value);

  String? get voltage => getField<String>('voltage');
  set voltage(String? value) => setField<String>('voltage', value);

  String? get amperage => getField<String>('amperage');
  set amperage(String? value) => setField<String>('amperage', value);

  int? get poles => getField<int>('poles');
  set poles(int? value) => setField<int>('poles', value);

  String? get voltageUnit => getField<String>('voltage_unit');
  set voltageUnit(String? value) => setField<String>('voltage_unit', value);

  String? get amperageUnit => getField<String>('amperage_unit');
  set amperageUnit(String? value) => setField<String>('amperage_unit', value);

  String? get polesUnit => getField<String>('poles_unit');
  set polesUnit(String? value) => setField<String>('poles_unit', value);

  int? get rotation => getField<int>('rotation');
  set rotation(int? value) => setField<int>('rotation', value);

  String? get rotationUnit => getField<String>('rotation_unit');
  set rotationUnit(String? value) => setField<String>('rotation_unit', value);

  double? get serviceFactor => getField<double>('service_factor');
  set serviceFactor(double? value) => setField<double>('service_factor', value);

  double? get pressureMax => getField<double>('pressure_max');
  set pressureMax(double? value) => setField<double>('pressure_max', value);

  double? get pressureMin => getField<double>('pressure_min');
  set pressureMin(double? value) => setField<double>('pressure_min', value);

  double? get pressureOperation => getField<double>('pressure_operation');
  set pressureOperation(double? value) =>
      setField<double>('pressure_operation', value);

  String? get pressureUnit => getField<String>('pressure_unit');
  set pressureUnit(String? value) => setField<String>('pressure_unit', value);

  double? get flowRateMax => getField<double>('flow_rate_max');
  set flowRateMax(double? value) => setField<double>('flow_rate_max', value);

  double? get flowRateMin => getField<double>('flow_rate_min');
  set flowRateMin(double? value) => setField<double>('flow_rate_min', value);

  double? get flowRateOperation => getField<double>('flow_rate_operation');
  set flowRateOperation(double? value) =>
      setField<double>('flow_rate_operation', value);

  String? get flowRateUnit => getField<String>('flow_rate_unit');
  set flowRateUnit(String? value) => setField<String>('flow_rate_unit', value);

  double? get rotorDiameter => getField<double>('rotor_diameter');
  set rotorDiameter(double? value) => setField<double>('rotor_diameter', value);

  String? get rotorDiameterUnit => getField<String>('rotor_diameter_unit');
  set rotorDiameterUnit(String? value) =>
      setField<String>('rotor_diameter_unit', value);

  int? get priorityId => getField<int>('priority_id');
  set priorityId(int? value) => setField<int>('priority_id', value);

  int? get materialId => getField<int>('material_id');
  set materialId(int? value) => setField<int>('material_id', value);

  String? get materialCode => getField<String>('material_code');
  set materialCode(String? value) => setField<String>('material_code', value);

  DateTime? get acquisitionAt => getField<DateTime>('acquisition_at');
  set acquisitionAt(DateTime? value) =>
      setField<DateTime>('acquisition_at', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  String? get weightUnit => getField<String>('weight_unit');
  set weightUnit(String? value) => setField<String>('weight_unit', value);

  int get createdUserId => getField<int>('created_user_id')!;
  set createdUserId(int value) => setField<int>('created_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  int? get couplingModelId => getField<int>('coupling_model_id');
  set couplingModelId(int? value) => setField<int>('coupling_model_id', value);

  double? get acquisitionValue => getField<double>('acquisition_value');
  set acquisitionValue(double? value) =>
      setField<double>('acquisition_value', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);
}

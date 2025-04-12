import '../database.dart';

class VUnitsTable extends SupabaseTable<VUnitsRow> {
  @override
  String get tableName => 'v_units';

  @override
  VUnitsRow createRow(Map<String, dynamic> data) => VUnitsRow(data);
}

class VUnitsRow extends SupabaseDataRow {
  VUnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VUnitsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get companyCode => getField<String>('company_code');
  set companyCode(String? value) => setField<String>('company_code', value);

  String? get companyDescription => getField<String>('company_description');
  set companyDescription(String? value) =>
      setField<String>('company_description', value);

  int? get systemParentId => getField<int>('system_parent_id');
  set systemParentId(int? value) => setField<int>('system_parent_id', value);

  String? get systemParentCode => getField<String>('system_parent_code');
  set systemParentCode(String? value) =>
      setField<String>('system_parent_code', value);

  String? get systemParentDescription =>
      getField<String>('system_parent_description');
  set systemParentDescription(String? value) =>
      setField<String>('system_parent_description', value);

  int? get systemId => getField<int>('system_id');
  set systemId(int? value) => setField<int>('system_id', value);

  String? get systemChildCode => getField<String>('system_child_code');
  set systemChildCode(String? value) =>
      setField<String>('system_child_code', value);

  String? get systemChildDescription =>
      getField<String>('system_child_description');
  set systemChildDescription(String? value) =>
      setField<String>('system_child_description', value);

  int? get unitTypeParentId => getField<int>('unit_type_parent_id');
  set unitTypeParentId(int? value) =>
      setField<int>('unit_type_parent_id', value);

  String? get unitTypeParentCode => getField<String>('unit_type_parent_code');
  set unitTypeParentCode(String? value) =>
      setField<String>('unit_type_parent_code', value);

  String? get unitTypeParentDescription =>
      getField<String>('unit_type_parent_description');
  set unitTypeParentDescription(String? value) =>
      setField<String>('unit_type_parent_description', value);

  int? get unitTypeId => getField<int>('unit_type_id');
  set unitTypeId(int? value) => setField<int>('unit_type_id', value);

  String? get unitTypeChildCode => getField<String>('unit_type_child_code');
  set unitTypeChildCode(String? value) =>
      setField<String>('unit_type_child_code', value);

  String? get unitTypeChildDescription =>
      getField<String>('unit_type_child_description');
  set unitTypeChildDescription(String? value) =>
      setField<String>('unit_type_child_description', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  String? get statusDescription => getField<String>('status_description');
  set statusDescription(String? value) =>
      setField<String>('status_description', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get descriptionFull => getField<String>('description_full');
  set descriptionFull(String? value) =>
      setField<String>('description_full', value);

  String? get streetName => getField<String>('street_name');
  set streetName(String? value) => setField<String>('street_name', value);

  int? get streetNumber => getField<int>('street_number');
  set streetNumber(int? value) => setField<int>('street_number', value);

  String? get streetComplement => getField<String>('street_complement');
  set streetComplement(String? value) =>
      setField<String>('street_complement', value);

  String? get addressFull => getField<String>('address_full');
  set addressFull(String? value) => setField<String>('address_full', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}

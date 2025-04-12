import '../database.dart';

class UnitsTable extends SupabaseTable<UnitsRow> {
  @override
  String get tableName => 'units';

  @override
  UnitsRow createRow(Map<String, dynamic> data) => UnitsRow(data);
}

class UnitsRow extends SupabaseDataRow {
  UnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get systemParentId => getField<int>('system_parent_id');
  set systemParentId(int? value) => setField<int>('system_parent_id', value);

  int? get systemId => getField<int>('system_id');
  set systemId(int? value) => setField<int>('system_id', value);

  int? get unitTypeParentId => getField<int>('unit_type_parent_id');
  set unitTypeParentId(int? value) =>
      setField<int>('unit_type_parent_id', value);

  int? get unitTypeId => getField<int>('unit_type_id');
  set unitTypeId(int? value) => setField<int>('unit_type_id', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

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

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  String? get codeSufix => getField<String>('code_sufix');
  set codeSufix(String? value) => setField<String>('code_sufix', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);
}

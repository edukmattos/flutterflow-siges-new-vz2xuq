import '../database.dart';

class VOrdersOpenTable extends SupabaseTable<VOrdersOpenRow> {
  @override
  String get tableName => 'v_orders_open';

  @override
  VOrdersOpenRow createRow(Map<String, dynamic> data) => VOrdersOpenRow(data);
}

class VOrdersOpenRow extends SupabaseDataRow {
  VOrdersOpenRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersOpenTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get companyDescription => getField<String>('company_description');
  set companyDescription(String? value) =>
      setField<String>('company_description', value);

  String? get companyImgFilePath => getField<String>('company_img_file_path');
  set companyImgFilePath(String? value) =>
      setField<String>('company_img_file_path', value);

  String? get companyImgFileName => getField<String>('company_img_file_name');
  set companyImgFileName(String? value) =>
      setField<String>('company_img_file_name', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  String? get contractDescription => getField<String>('contract_description');
  set contractDescription(String? value) =>
      setField<String>('contract_description', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  String? get providerCompanyDescription =>
      getField<String>('provider_company_description');
  set providerCompanyDescription(String? value) =>
      setField<String>('provider_company_description', value);

  String? get providerCompanyImgFilePath =>
      getField<String>('provider_company_img_file_path');
  set providerCompanyImgFilePath(String? value) =>
      setField<String>('provider_company_img_file_path', value);

  String? get providerCompanyImgFileName =>
      getField<String>('provider_company_img_file_name');
  set providerCompanyImgFileName(String? value) =>
      setField<String>('provider_company_img_file_name', value);

  int? get providerDepartmentId => getField<int>('provider_department_id');
  set providerDepartmentId(int? value) =>
      setField<int>('provider_department_id', value);

  String? get orderMask => getField<String>('order_mask');
  set orderMask(String? value) => setField<String>('order_mask', value);

  int? get typeId => getField<int>('type_id');
  set typeId(int? value) => setField<int>('type_id', value);

  String? get typeCode => getField<String>('type_code');
  set typeCode(String? value) => setField<String>('type_code', value);

  String? get typeDescription => getField<String>('type_description');
  set typeDescription(String? value) =>
      setField<String>('type_description', value);

  int? get typeSubId => getField<int>('type_sub_id');
  set typeSubId(int? value) => setField<int>('type_sub_id', value);

  String? get typeSubCode => getField<String>('type_sub_code');
  set typeSubCode(String? value) => setField<String>('type_sub_code', value);

  String? get typeSubDescription => getField<String>('type_sub_description');
  set typeSubDescription(String? value) =>
      setField<String>('type_sub_description', value);

  String? get requestedServices => getField<String>('requested_services');
  set requestedServices(String? value) =>
      setField<String>('requested_services', value);

  int? get objectId => getField<int>('object_id');
  set objectId(int? value) => setField<int>('object_id', value);

  String? get objectCode => getField<String>('object_code');
  set objectCode(String? value) => setField<String>('object_code', value);

  String? get objectDescription => getField<String>('object_description');
  set objectDescription(String? value) =>
      setField<String>('object_description', value);

  int? get systemParentId => getField<int>('system_parent_id');
  set systemParentId(int? value) => setField<int>('system_parent_id', value);

  String? get systemParentDescription =>
      getField<String>('system_parent_description');
  set systemParentDescription(String? value) =>
      setField<String>('system_parent_description', value);

  String? get systemParentCode => getField<String>('system_parent_code');
  set systemParentCode(String? value) =>
      setField<String>('system_parent_code', value);

  int? get systemId => getField<int>('system_id');
  set systemId(int? value) => setField<int>('system_id', value);

  String? get systemDescription => getField<String>('system_description');
  set systemDescription(String? value) =>
      setField<String>('system_description', value);

  String? get systemCode => getField<String>('system_code');
  set systemCode(String? value) => setField<String>('system_code', value);

  int? get unitTypeParentId => getField<int>('unit_type_parent_id');
  set unitTypeParentId(int? value) =>
      setField<int>('unit_type_parent_id', value);

  String? get unitTypeParentDescription =>
      getField<String>('unit_type_parent_description');
  set unitTypeParentDescription(String? value) =>
      setField<String>('unit_type_parent_description', value);

  String? get unitTypeParentCode => getField<String>('unit_type_parent_code');
  set unitTypeParentCode(String? value) =>
      setField<String>('unit_type_parent_code', value);

  int? get unitTypeId => getField<int>('unit_type_id');
  set unitTypeId(int? value) => setField<int>('unit_type_id', value);

  String? get unitTypeDescription => getField<String>('unit_type_description');
  set unitTypeDescription(String? value) =>
      setField<String>('unit_type_description', value);

  String? get unitTypeCode => getField<String>('unit_type_code');
  set unitTypeCode(String? value) => setField<String>('unit_type_code', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  String? get unitDescription => getField<String>('unit_description');
  set unitDescription(String? value) =>
      setField<String>('unit_description', value);

  String? get unitAddress => getField<String>('unit_address');
  set unitAddress(String? value) => setField<String>('unit_address', value);

  double? get unitLatitude => getField<double>('unit_latitude');
  set unitLatitude(double? value) => setField<double>('unit_latitude', value);

  double? get unitLongitude => getField<double>('unit_longitude');
  set unitLongitude(double? value) => setField<double>('unit_longitude', value);

  String? get requesterName => getField<String>('requester_name');
  set requesterName(String? value) => setField<String>('requester_name', value);

  String? get requesterPhone => getField<String>('requester_phone');
  set requesterPhone(String? value) =>
      setField<String>('requester_phone', value);

  int? get requesterTeamId => getField<int>('requester_team_id');
  set requesterTeamId(int? value) => setField<int>('requester_team_id', value);

  String? get requesterTeamCode => getField<String>('requester_team_code');
  set requesterTeamCode(String? value) =>
      setField<String>('requester_team_code', value);

  DateTime? get requestedAt => getField<DateTime>('requested_at');
  set requestedAt(DateTime? value) => setField<DateTime>('requested_at', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  String? get statusCode => getField<String>('status_code');
  set statusCode(String? value) => setField<String>('status_code', value);

  String? get statusDescription => getField<String>('status_description');
  set statusDescription(String? value) =>
      setField<String>('status_description', value);

  DateTime? get statusAt => getField<DateTime>('status_at');
  set statusAt(DateTime? value) => setField<DateTime>('status_at', value);

  int? get priorityId => getField<int>('priority_id');
  set priorityId(int? value) => setField<int>('priority_id', value);

  String? get priorityCode => getField<String>('priority_code');
  set priorityCode(String? value) => setField<String>('priority_code', value);

  String? get priorityDescription => getField<String>('priority_description');
  set priorityDescription(String? value) =>
      setField<String>('priority_description', value);

  int? get teamLeaderId => getField<int>('team_leader_id');
  set teamLeaderId(int? value) => setField<int>('team_leader_id', value);

  String? get teamLeaderNameShort => getField<String>('team_leader_name_short');
  set teamLeaderNameShort(String? value) =>
      setField<String>('team_leader_name_short', value);

  String? get teamLeaderEmail => getField<String>('team_leader_email');
  set teamLeaderEmail(String? value) =>
      setField<String>('team_leader_email', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  String? get teamCode => getField<String>('team_code');
  set teamCode(String? value) => setField<String>('team_code', value);

  String? get teamDescription => getField<String>('team_description');
  set teamDescription(String? value) =>
      setField<String>('team_description', value);

  int? get assetTagId => getField<int>('asset_tag_id');
  set assetTagId(int? value) => setField<int>('asset_tag_id', value);

  String? get assetTagDescription => getField<String>('asset_tag_description');
  set assetTagDescription(String? value) =>
      setField<String>('asset_tag_description', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  int? get counterParent => getField<int>('counter_parent');
  set counterParent(int? value) => setField<int>('counter_parent', value);

  int? get counterChild => getField<int>('counter_child');
  set counterChild(int? value) => setField<int>('counter_child', value);

  int? get causeReasonId => getField<int>('cause_reason_id');
  set causeReasonId(int? value) => setField<int>('cause_reason_id', value);

  String? get causeReasonDescription =>
      getField<String>('cause_reason_description');
  set causeReasonDescription(String? value) =>
      setField<String>('cause_reason_description', value);

  int? get suspendedReasonId => getField<int>('suspended_reason_id');
  set suspendedReasonId(int? value) =>
      setField<int>('suspended_reason_id', value);

  String? get suspendedReasonDescription =>
      getField<String>('suspended_reason_description');
  set suspendedReasonDescription(String? value) =>
      setField<String>('suspended_reason_description', value);

  int? get cancelReasonId => getField<int>('cancel_reason_id');
  set cancelReasonId(int? value) => setField<int>('cancel_reason_id', value);

  String? get cancelReasonDescription =>
      getField<String>('cancel_reason_description');
  set cancelReasonDescription(String? value) =>
      setField<String>('cancel_reason_description', value);

  int? get canceledTeamId => getField<int>('canceled_team_id');
  set canceledTeamId(int? value) => setField<int>('canceled_team_id', value);

  String? get canceledTeamCode => getField<String>('canceled_team_code');
  set canceledTeamCode(String? value) =>
      setField<String>('canceled_team_code', value);

  String? get canceledUserNameShort =>
      getField<String>('canceled_user_name_short');
  set canceledUserNameShort(String? value) =>
      setField<String>('canceled_user_name_short', value);

  int? get planId => getField<int>('plan_id');
  set planId(int? value) => setField<int>('plan_id', value);

  String? get planDescription => getField<String>('plan_description');
  set planDescription(String? value) =>
      setField<String>('plan_description', value);

  String? get planCode => getField<String>('plan_code');
  set planCode(String? value) => setField<String>('plan_code', value);

  double? get servicesValue => getField<double>('services_value');
  set servicesValue(double? value) => setField<double>('services_value', value);

  double? get materialsValue => getField<double>('materials_value');
  set materialsValue(double? value) =>
      setField<double>('materials_value', value);

  double? get vehiclesValue => getField<double>('vehicles_value');
  set vehiclesValue(double? value) => setField<double>('vehicles_value', value);

  double? get totalValue => getField<double>('total_value');
  set totalValue(double? value) => setField<double>('total_value', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  int? get ovCounter => getField<int>('ov_counter');
  set ovCounter(int? value) => setField<int>('ov_counter', value);

  double? get progress => getField<double>('progress');
  set progress(double? value) => setField<double>('progress', value);
}

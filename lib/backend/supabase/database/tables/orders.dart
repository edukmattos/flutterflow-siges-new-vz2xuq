import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get planId => getField<int>('plan_id');
  set planId(int? value) => setField<int>('plan_id', value);

  int? get objectId => getField<int>('object_id');
  set objectId(int? value) => setField<int>('object_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  int? get typeId => getField<int>('type_id');
  set typeId(int? value) => setField<int>('type_id', value);

  int? get typeSubId => getField<int>('type_sub_id');
  set typeSubId(int? value) => setField<int>('type_sub_id', value);

  int? get teamLeaderId => getField<int>('team_leader_id');
  set teamLeaderId(int? value) => setField<int>('team_leader_id', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  DateTime? get statusAt => getField<DateTime>('status_at');
  set statusAt(DateTime? value) => setField<DateTime>('status_at', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  int? get systemParentId => getField<int>('system_parent_id');
  set systemParentId(int? value) => setField<int>('system_parent_id', value);

  int? get systemId => getField<int>('system_id');
  set systemId(int? value) => setField<int>('system_id', value);

  int? get unitTypeParentId => getField<int>('unit_type_parent_id');
  set unitTypeParentId(int? value) =>
      setField<int>('unit_type_parent_id', value);

  int? get unitTypeId => getField<int>('unit_type_id');
  set unitTypeId(int? value) => setField<int>('unit_type_id', value);

  String? get requesterName => getField<String>('requester_name');
  set requesterName(String? value) => setField<String>('requester_name', value);

  int? get requesterTeamId => getField<int>('requester_team_id');
  set requesterTeamId(int? value) => setField<int>('requester_team_id', value);

  String? get requesterPhone => getField<String>('requester_phone');
  set requesterPhone(String? value) =>
      setField<String>('requester_phone', value);

  DateTime? get requestedAt => getField<DateTime>('requested_at');
  set requestedAt(DateTime? value) => setField<DateTime>('requested_at', value);

  String? get requestedServices => getField<String>('requested_services');
  set requestedServices(String? value) =>
      setField<String>('requested_services', value);

  int? get counterParent => getField<int>('counter_parent');
  set counterParent(int? value) => setField<int>('counter_parent', value);

  int? get counterChild => getField<int>('counter_child');
  set counterChild(int? value) => setField<int>('counter_child', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  String? get orderMask => getField<String>('order_mask');
  set orderMask(String? value) => setField<String>('order_mask', value);

  int? get priorityId => getField<int>('priority_id');
  set priorityId(int? value) => setField<int>('priority_id', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  double? get unitLatitude => getField<double>('unit_latitude');
  set unitLatitude(double? value) => setField<double>('unit_latitude', value);

  double? get unitLongitude => getField<double>('unit_longitude');
  set unitLongitude(double? value) => setField<double>('unit_longitude', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  int? get assetTagId => getField<int>('asset_tag_id');
  set assetTagId(int? value) => setField<int>('asset_tag_id', value);

  double? get materialsValue => getField<double>('materials_value');
  set materialsValue(double? value) =>
      setField<double>('materials_value', value);

  double? get servicesValue => getField<double>('services_value');
  set servicesValue(double? value) => setField<double>('services_value', value);

  double? get vehiclesValue => getField<double>('vehicles_value');
  set vehiclesValue(double? value) => setField<double>('vehicles_value', value);

  double? get totalValue => getField<double>('total_value');
  set totalValue(double? value) => setField<double>('total_value', value);

  int? get causeReasonId => getField<int>('cause_reason_id');
  set causeReasonId(int? value) => setField<int>('cause_reason_id', value);

  int? get suspendedReasonId => getField<int>('suspended_reason_id');
  set suspendedReasonId(int? value) =>
      setField<int>('suspended_reason_id', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

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

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get notificationsAmount => getField<int>('notifications_amount');
  set notificationsAmount(int? value) =>
      setField<int>('notifications_amount', value);

  int? get providerDepartmentId => getField<int>('provider_department_id');
  set providerDepartmentId(int? value) =>
      setField<int>('provider_department_id', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get ovCounter => getField<int>('ov_counter');
  set ovCounter(int? value) => setField<int>('ov_counter', value);

  double? get progress => getField<double>('progress');
  set progress(double? value) => setField<double>('progress', value);

  String? get xSsId => getField<String>('x_ss_id');
  set xSsId(String? value) => setField<String>('x_ss_id', value);

  String? get xSsMaeId => getField<String>('x_ss_mae_id');
  set xSsMaeId(String? value) => setField<String>('x_ss_mae_id', value);

  int? get canceledUserId => getField<int>('canceled_user_id');
  set canceledUserId(int? value) => setField<int>('canceled_user_id', value);

  DateTime? get canceledAt => getField<DateTime>('canceled_at');
  set canceledAt(DateTime? value) => setField<DateTime>('canceled_at', value);

  int? get cancelReasonId => getField<int>('cancel_reason_id');
  set cancelReasonId(int? value) => setField<int>('cancel_reason_id', value);

  int? get canceledTeamId => getField<int>('canceled_team_id');
  set canceledTeamId(int? value) => setField<int>('canceled_team_id', value);
}

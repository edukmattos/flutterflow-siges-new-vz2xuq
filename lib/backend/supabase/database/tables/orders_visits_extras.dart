import '../database.dart';

class OrdersVisitsExtrasTable extends SupabaseTable<OrdersVisitsExtrasRow> {
  @override
  String get tableName => 'orders_visits_extras';

  @override
  OrdersVisitsExtrasRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsExtrasRow(data);
}

class OrdersVisitsExtrasRow extends SupabaseDataRow {
  OrdersVisitsExtrasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsExtrasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get oMask => getField<String>('o_mask');
  set oMask(String? value) => setField<String>('o_mask', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  int? get approvedUserId => getField<int>('approved_user_id');
  set approvedUserId(int? value) => setField<int>('approved_user_id', value);

  DateTime? get approvedAt => getField<DateTime>('approved_at');
  set approvedAt(DateTime? value) => setField<DateTime>('approved_at', value);

  int? get disapprovedUserId => getField<int>('disapproved_user_id');
  set disapprovedUserId(int? value) =>
      setField<int>('disapproved_user_id', value);

  DateTime? get disapprovedAt => getField<DateTime>('disapproved_at');
  set disapprovedAt(DateTime? value) =>
      setField<DateTime>('disapproved_at', value);

  DateTime? get startedAt => getField<DateTime>('started_at');
  set startedAt(DateTime? value) => setField<DateTime>('started_at', value);

  DateTime? get endedAt => getField<DateTime>('ended_at');
  set endedAt(DateTime? value) => setField<DateTime>('ended_at', value);

  int? get processingId => getField<int>('processing_id');
  set processingId(int? value) => setField<int>('processing_id', value);

  DateTime? get reportedAt => getField<DateTime>('reported_at');
  set reportedAt(DateTime? value) => setField<DateTime>('reported_at', value);

  int? get reportedUserId => getField<int>('reported_user_id');
  set reportedUserId(int? value) => setField<int>('reported_user_id', value);

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

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  double? get durationHours => getField<double>('duration_hours');
  set durationHours(double? value) => setField<double>('duration_hours', value);

  String? get disapprovedComments => getField<String>('disapproved_comments');
  set disapprovedComments(String? value) =>
      setField<String>('disapproved_comments', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  bool? get isArchived => getField<bool>('is_archived');
  set isArchived(bool? value) => setField<bool>('is_archived', value);

  String? get teamNamesShort => getField<String>('team_names_short');
  set teamNamesShort(String? value) =>
      setField<String>('team_names_short', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  int? get oTypeId => getField<int>('o_type_id');
  set oTypeId(int? value) => setField<int>('o_type_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  int? get revisedUserId => getField<int>('revised_user_id');
  set revisedUserId(int? value) => setField<int>('revised_user_id', value);

  DateTime? get revisedAt => getField<DateTime>('revised_at');
  set revisedAt(DateTime? value) => setField<DateTime>('revised_at', value);

  String? get requestedServices => getField<String>('requested_services');
  set requestedServices(String? value) =>
      setField<String>('requested_services', value);

  int? get assetTagId => getField<int>('asset_tag_id');
  set assetTagId(int? value) => setField<int>('asset_tag_id', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  int? get providerDepartmentId => getField<int>('provider_department_id');
  set providerDepartmentId(int? value) =>
      setField<int>('provider_department_id', value);

  int? get priorityId => getField<int>('priority_id');
  set priorityId(int? value) => setField<int>('priority_id', value);

  int? get teamLeaderId => getField<int>('team_leader_id');
  set teamLeaderId(int? value) => setField<int>('team_leader_id', value);

  int? get teamAmount => getField<int>('team_amount');
  set teamAmount(int? value) => setField<int>('team_amount', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  int? get archivedUserId => getField<int>('archived_user_id');
  set archivedUserId(int? value) => setField<int>('archived_user_id', value);

  DateTime? get archivedAt => getField<DateTime>('archived_at');
  set archivedAt(DateTime? value) => setField<DateTime>('archived_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  int? get systemParentId => getField<int>('system_parent_id');
  set systemParentId(int? value) => setField<int>('system_parent_id', value);

  int? get systemId => getField<int>('system_id');
  set systemId(int? value) => setField<int>('system_id', value);

  int? get unitTypeParentId => getField<int>('unit_type_parent_id');
  set unitTypeParentId(int? value) =>
      setField<int>('unit_type_parent_id', value);

  int? get unitTypeId => getField<int>('unit_type_id');
  set unitTypeId(int? value) => setField<int>('unit_type_id', value);

  int? get oTypeSubId => getField<int>('o_type_sub_id');
  set oTypeSubId(int? value) => setField<int>('o_type_sub_id', value);

  int? get oCauseReasonId => getField<int>('o_cause_reason_id');
  set oCauseReasonId(int? value) => setField<int>('o_cause_reason_id', value);

  DateTime? get startedAtDate => getField<DateTime>('started_at_date');
  set startedAtDate(DateTime? value) =>
      setField<DateTime>('started_at_date', value);

  PostgresTime? get startedAtHourMin =>
      getField<PostgresTime>('started_at_hour_min');
  set startedAtHourMin(PostgresTime? value) =>
      setField<PostgresTime>('started_at_hour_min', value);

  DateTime? get endedAtDate => getField<DateTime>('ended_at_date');
  set endedAtDate(DateTime? value) =>
      setField<DateTime>('ended_at_date', value);

  PostgresTime? get endedAtHourMin =>
      getField<PostgresTime>('ended_at_hour_min');
  set endedAtHourMin(PostgresTime? value) =>
      setField<PostgresTime>('ended_at_hour_min', value);

  bool? get isBlocked => getField<bool>('is_blocked');
  set isBlocked(bool? value) => setField<bool>('is_blocked', value);

  int? get unblockedUserId => getField<int>('unblocked_user_id');
  set unblockedUserId(int? value) => setField<int>('unblocked_user_id', value);

  DateTime? get unblockedAt => getField<DateTime>('unblocked_at');
  set unblockedAt(DateTime? value) => setField<DateTime>('unblocked_at', value);

  int? get unarchivedUserId => getField<int>('unarchived_user_id');
  set unarchivedUserId(int? value) =>
      setField<int>('unarchived_user_id', value);

  DateTime? get unarchivedAt => getField<DateTime>('unarchived_at');
  set unarchivedAt(DateTime? value) =>
      setField<DateTime>('unarchived_at', value);
}

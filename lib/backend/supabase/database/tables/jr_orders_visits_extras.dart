import '../database.dart';

class JrOrdersVisitsExtrasTable extends SupabaseTable<JrOrdersVisitsExtrasRow> {
  @override
  String get tableName => 'jr_orders_visits_extras';

  @override
  JrOrdersVisitsExtrasRow createRow(Map<String, dynamic> data) =>
      JrOrdersVisitsExtrasRow(data);
}

class JrOrdersVisitsExtrasRow extends SupabaseDataRow {
  JrOrdersVisitsExtrasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => JrOrdersVisitsExtrasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get oveId => getField<int>('ove_id');
  set oveId(int? value) => setField<int>('ove_id', value);

  String? get approvedUserNameShort =>
      getField<String>('approved_user_name_short');
  set approvedUserNameShort(String? value) =>
      setField<String>('approved_user_name_short', value);

  DateTime? get approvedAt => getField<DateTime>('approved_at');
  set approvedAt(DateTime? value) => setField<DateTime>('approved_at', value);

  String? get disapprovedUserNameShort =>
      getField<String>('disapproved_user_name_short');
  set disapprovedUserNameShort(String? value) =>
      setField<String>('disapproved_user_name_short', value);

  DateTime? get disapprovedAt => getField<DateTime>('disapproved_at');
  set disapprovedAt(DateTime? value) =>
      setField<DateTime>('disapproved_at', value);

  DateTime? get startedAt => getField<DateTime>('started_at');
  set startedAt(DateTime? value) => setField<DateTime>('started_at', value);

  DateTime? get endedAt => getField<DateTime>('ended_at');
  set endedAt(DateTime? value) => setField<DateTime>('ended_at', value);

  String? get processingDescription =>
      getField<String>('processing_description');
  set processingDescription(String? value) =>
      setField<String>('processing_description', value);

  DateTime? get reportedAt => getField<DateTime>('reported_at');
  set reportedAt(DateTime? value) => setField<DateTime>('reported_at', value);

  String? get reportedUserNameShort =>
      getField<String>('reported_user_name_short');
  set reportedUserNameShort(String? value) =>
      setField<String>('reported_user_name_short', value);

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

  String? get unitDescription => getField<String>('unit_description');
  set unitDescription(String? value) =>
      setField<String>('unit_description', value);

  String? get oTypeCode => getField<String>('o_type_code');
  set oTypeCode(String? value) => setField<String>('o_type_code', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get revisedUserNameShort =>
      getField<String>('revised_user_name_short');
  set revisedUserNameShort(String? value) =>
      setField<String>('revised_user_name_short', value);

  DateTime? get revisedAt => getField<DateTime>('revised_at');
  set revisedAt(DateTime? value) => setField<DateTime>('revised_at', value);

  String? get requestedServices => getField<String>('requested_services');
  set requestedServices(String? value) =>
      setField<String>('requested_services', value);

  String? get assetTagDescription => getField<String>('asset_tag_description');
  set assetTagDescription(String? value) =>
      setField<String>('asset_tag_description', value);

  int? get providerCompanyId => getField<int>('provider_company_id');
  set providerCompanyId(int? value) =>
      setField<int>('provider_company_id', value);

  int? get providerDepartmentId => getField<int>('provider_department_id');
  set providerDepartmentId(int? value) =>
      setField<int>('provider_department_id', value);

  String? get priorityCode => getField<String>('priority_code');
  set priorityCode(String? value) => setField<String>('priority_code', value);

  int? get teamLeaderId => getField<int>('team_leader_id');
  set teamLeaderId(int? value) => setField<int>('team_leader_id', value);

  int? get teamAmount => getField<int>('team_amount');
  set teamAmount(int? value) => setField<int>('team_amount', value);

  String? get teamDescription => getField<String>('team_description');
  set teamDescription(String? value) =>
      setField<String>('team_description', value);

  String? get archivedUserNameShort =>
      getField<String>('archived_user_name_short');
  set archivedUserNameShort(String? value) =>
      setField<String>('archived_user_name_short', value);

  DateTime? get archivedAt => getField<DateTime>('archived_at');
  set archivedAt(DateTime? value) => setField<DateTime>('archived_at', value);

  String? get oTypeSubCode => getField<String>('o_type_sub_code');
  set oTypeSubCode(String? value) => setField<String>('o_type_sub_code', value);

  String? get oCauseReasonDescription =>
      getField<String>('o_cause_reason_description');
  set oCauseReasonDescription(String? value) =>
      setField<String>('o_cause_reason_description', value);

  String? get userUuid => getField<String>('user_uuid');
  set userUuid(String? value) => setField<String>('user_uuid', value);

  String? get oMask => getField<String>('o_mask');
  set oMask(String? value) => setField<String>('o_mask', value);
}

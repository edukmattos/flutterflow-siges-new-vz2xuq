import '../database.dart';

class VOrdersVisitsExtrasNoFiledTable
    extends SupabaseTable<VOrdersVisitsExtrasNoFiledRow> {
  @override
  String get tableName => 'v_orders_visits_extras_no_filed';

  @override
  VOrdersVisitsExtrasNoFiledRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsExtrasNoFiledRow(data);
}

class VOrdersVisitsExtrasNoFiledRow extends SupabaseDataRow {
  VOrdersVisitsExtrasNoFiledRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsExtrasNoFiledTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get oMask => getField<String>('o_mask');
  set oMask(String? value) => setField<String>('o_mask', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  String? get unitDescription => getField<String>('unit_description');
  set unitDescription(String? value) =>
      setField<String>('unit_description', value);

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

  int? get oTypeId => getField<int>('o_type_id');
  set oTypeId(int? value) => setField<int>('o_type_id', value);

  String? get oTypeCode => getField<String>('o_type_code');
  set oTypeCode(String? value) => setField<String>('o_type_code', value);

  String? get oTypeDescription => getField<String>('o_type_description');
  set oTypeDescription(String? value) =>
      setField<String>('o_type_description', value);

  int? get oTypeSubId => getField<int>('o_type_sub_id');
  set oTypeSubId(int? value) => setField<int>('o_type_sub_id', value);

  String? get oTypeSubCode => getField<String>('o_type_sub_code');
  set oTypeSubCode(String? value) => setField<String>('o_type_sub_code', value);

  String? get oTypeSubDescription => getField<String>('o_type_sub_description');
  set oTypeSubDescription(String? value) =>
      setField<String>('o_type_sub_description', value);

  String? get requestedServices => getField<String>('requested_services');
  set requestedServices(String? value) =>
      setField<String>('requested_services', value);

  int? get assetTagId => getField<int>('asset_tag_id');
  set assetTagId(int? value) => setField<int>('asset_tag_id', value);

  String? get assetTagDescription => getField<String>('asset_tag_description');
  set assetTagDescription(String? value) =>
      setField<String>('asset_tag_description', value);

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

  int? get priorityId => getField<int>('priority_id');
  set priorityId(int? value) => setField<int>('priority_id', value);

  String? get priorityCode => getField<String>('priority_code');
  set priorityCode(String? value) => setField<String>('priority_code', value);

  String? get priorityDescription => getField<String>('priority_description');
  set priorityDescription(String? value) =>
      setField<String>('priority_description', value);

  DateTime? get startedAt => getField<DateTime>('started_at');
  set startedAt(DateTime? value) => setField<DateTime>('started_at', value);

  DateTime? get startedAtDate => getField<DateTime>('started_at_date');
  set startedAtDate(DateTime? value) =>
      setField<DateTime>('started_at_date', value);

  PostgresTime? get startedAtHourMin =>
      getField<PostgresTime>('started_at_hour_min');
  set startedAtHourMin(PostgresTime? value) =>
      setField<PostgresTime>('started_at_hour_min', value);

  DateTime? get endedAt => getField<DateTime>('ended_at');
  set endedAt(DateTime? value) => setField<DateTime>('ended_at', value);

  DateTime? get endedAtDate => getField<DateTime>('ended_at_date');
  set endedAtDate(DateTime? value) =>
      setField<DateTime>('ended_at_date', value);

  PostgresTime? get endedAtHourMin =>
      getField<PostgresTime>('ended_at_hour_min');
  set endedAtHourMin(PostgresTime? value) =>
      setField<PostgresTime>('ended_at_hour_min', value);

  double? get durationHours => getField<double>('duration_hours');
  set durationHours(double? value) => setField<double>('duration_hours', value);

  int? get processingId => getField<int>('processing_id');
  set processingId(int? value) => setField<int>('processing_id', value);

  String? get processingDescription =>
      getField<String>('processing_description');
  set processingDescription(String? value) =>
      setField<String>('processing_description', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  bool? get isFiled => getField<bool>('is_filed');
  set isFiled(bool? value) => setField<bool>('is_filed', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  String? get createdUserNameShort =>
      getField<String>('created_user_name_short');
  set createdUserNameShort(String? value) =>
      setField<String>('created_user_name_short', value);

  int? get oCauseReasonId => getField<int>('o_cause_reason_id');
  set oCauseReasonId(int? value) => setField<int>('o_cause_reason_id', value);

  String? get oCauseReasonDescription =>
      getField<String>('o_cause_reason_description');
  set oCauseReasonDescription(String? value) =>
      setField<String>('o_cause_reason_description', value);

  DateTime? get reportedAt => getField<DateTime>('reported_at');
  set reportedAt(DateTime? value) => setField<DateTime>('reported_at', value);

  int? get reportedUserId => getField<int>('reported_user_id');
  set reportedUserId(int? value) => setField<int>('reported_user_id', value);

  String? get reportedUserNameShort =>
      getField<String>('reported_user_name_short');
  set reportedUserNameShort(String? value) =>
      setField<String>('reported_user_name_short', value);

  bool? get isBlocked => getField<bool>('is_blocked');
  set isBlocked(bool? value) => setField<bool>('is_blocked', value);

  DateTime? get unblockedAt => getField<DateTime>('unblocked_at');
  set unblockedAt(DateTime? value) => setField<DateTime>('unblocked_at', value);

  int? get unblockedUserId => getField<int>('unblocked_user_id');
  set unblockedUserId(int? value) => setField<int>('unblocked_user_id', value);

  String? get unblockedUserNameShort =>
      getField<String>('unblocked_user_name_short');
  set unblockedUserNameShort(String? value) =>
      setField<String>('unblocked_user_name_short', value);

  DateTime? get revisedAt => getField<DateTime>('revised_at');
  set revisedAt(DateTime? value) => setField<DateTime>('revised_at', value);

  int? get revisedUserId => getField<int>('revised_user_id');
  set revisedUserId(int? value) => setField<int>('revised_user_id', value);

  String? get revisedUserNameShort =>
      getField<String>('revised_user_name_short');
  set revisedUserNameShort(String? value) =>
      setField<String>('revised_user_name_short', value);

  int? get disapprovedUserId => getField<int>('disapproved_user_id');
  set disapprovedUserId(int? value) =>
      setField<int>('disapproved_user_id', value);

  DateTime? get disapprovedAt => getField<DateTime>('disapproved_at');
  set disapprovedAt(DateTime? value) =>
      setField<DateTime>('disapproved_at', value);

  String? get disapprovedUserNameShort =>
      getField<String>('disapproved_user_name_short');
  set disapprovedUserNameShort(String? value) =>
      setField<String>('disapproved_user_name_short', value);

  String? get disapprovedComments => getField<String>('disapproved_comments');
  set disapprovedComments(String? value) =>
      setField<String>('disapproved_comments', value);

  DateTime? get approvedAt => getField<DateTime>('approved_at');
  set approvedAt(DateTime? value) => setField<DateTime>('approved_at', value);

  int? get approvedUserId => getField<int>('approved_user_id');
  set approvedUserId(int? value) => setField<int>('approved_user_id', value);

  String? get approvedUserNameShort =>
      getField<String>('approved_user_name_short');
  set approvedUserNameShort(String? value) =>
      setField<String>('approved_user_name_short', value);

  DateTime? get filedAt => getField<DateTime>('filed_at');
  set filedAt(DateTime? value) => setField<DateTime>('filed_at', value);

  int? get filedUserId => getField<int>('filed_user_id');
  set filedUserId(int? value) => setField<int>('filed_user_id', value);

  String? get filedUserNameShort => getField<String>('filed_user_name_short');
  set filedUserNameShort(String? value) =>
      setField<String>('filed_user_name_short', value);

  DateTime? get unarchivedAt => getField<DateTime>('unarchived_at');
  set unarchivedAt(DateTime? value) =>
      setField<DateTime>('unarchived_at', value);

  int? get unarchivedUserId => getField<int>('unarchived_user_id');
  set unarchivedUserId(int? value) =>
      setField<int>('unarchived_user_id', value);

  String? get unarchivedUserNameShort =>
      getField<String>('unarchived_user_name_short');
  set unarchivedUserNameShort(String? value) =>
      setField<String>('unarchived_user_name_short', value);

  int? get teamLeaderId => getField<int>('team_leader_id');
  set teamLeaderId(int? value) => setField<int>('team_leader_id', value);

  String? get teamLeaderUserNameShort =>
      getField<String>('team_leader_user_name_short');
  set teamLeaderUserNameShort(String? value) =>
      setField<String>('team_leader_user_name_short', value);

  String? get teamLeaderUserImgFilePath =>
      getField<String>('team_leader_user_img_file_path');
  set teamLeaderUserImgFilePath(String? value) =>
      setField<String>('team_leader_user_img_file_path', value);

  String? get teamLeaderUserImgFileName =>
      getField<String>('team_leader_user_img_file_name');
  set teamLeaderUserImgFileName(String? value) =>
      setField<String>('team_leader_user_img_file_name', value);

  int? get teamAmount => getField<int>('team_amount');
  set teamAmount(int? value) => setField<int>('team_amount', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  String? get teamDescription => getField<String>('team_description');
  set teamDescription(String? value) =>
      setField<String>('team_description', value);

  String? get teamNamesShort => getField<String>('team_names_short');
  set teamNamesShort(String? value) =>
      setField<String>('team_names_short', value);
}

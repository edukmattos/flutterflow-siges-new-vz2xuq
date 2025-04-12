import '../database.dart';

class VOrdersVisitsTable extends SupabaseTable<VOrdersVisitsRow> {
  @override
  String get tableName => 'v_orders_visits';

  @override
  VOrdersVisitsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsRow(data);
}

class VOrdersVisitsRow extends SupabaseDataRow {
  VOrdersVisitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  String? get ovMask => getField<String>('ov_mask');
  set ovMask(String? value) => setField<String>('ov_mask', value);

  String? get oMask => getField<String>('o_mask');
  set oMask(String? value) => setField<String>('o_mask', value);

  int? get oUnitId => getField<int>('o_unit_id');
  set oUnitId(int? value) => setField<int>('o_unit_id', value);

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

  String? get oUnitDescription => getField<String>('o_unit_description');
  set oUnitDescription(String? value) =>
      setField<String>('o_unit_description', value);

  String? get oUnitAddress => getField<String>('o_unit_address');
  set oUnitAddress(String? value) => setField<String>('o_unit_address', value);

  int? get oUnitTypeParentId => getField<int>('o_unit_type_parent_id');
  set oUnitTypeParentId(int? value) =>
      setField<int>('o_unit_type_parent_id', value);

  DateTime? get oRequestedAt => getField<DateTime>('o_requested_at');
  set oRequestedAt(DateTime? value) =>
      setField<DateTime>('o_requested_at', value);

  String? get oRequestedServices => getField<String>('o_requested_services');
  set oRequestedServices(String? value) =>
      setField<String>('o_requested_services', value);

  String? get oRequesterName => getField<String>('o_requester_name');
  set oRequesterName(String? value) =>
      setField<String>('o_requester_name', value);

  String? get oRequesterPhone => getField<String>('o_requester_phone');
  set oRequesterPhone(String? value) =>
      setField<String>('o_requester_phone', value);

  String? get oRequesterTeamCode => getField<String>('o_requester_team_code');
  set oRequesterTeamCode(String? value) =>
      setField<String>('o_requester_team_code', value);

  int? get oStatusId => getField<int>('o_status_id');
  set oStatusId(int? value) => setField<int>('o_status_id', value);

  String? get oStatusDescription => getField<String>('o_status_description');
  set oStatusDescription(String? value) =>
      setField<String>('o_status_description', value);

  int? get opId => getField<int>('op_id');
  set opId(int? value) => setField<int>('op_id', value);

  int? get oSystemParentId => getField<int>('o_system_parent_id');
  set oSystemParentId(int? value) => setField<int>('o_system_parent_id', value);

  int? get oSystemId => getField<int>('o_system_id');
  set oSystemId(int? value) => setField<int>('o_system_id', value);

  int? get oObjectId => getField<int>('o_object_id');
  set oObjectId(int? value) => setField<int>('o_object_id', value);

  String? get oObjectCode => getField<String>('o_object_code');
  set oObjectCode(String? value) => setField<String>('o_object_code', value);

  String? get oObjectDescription => getField<String>('o_object_description');
  set oObjectDescription(String? value) =>
      setField<String>('o_object_description', value);

  int? get oPlanId => getField<int>('o_plan_id');
  set oPlanId(int? value) => setField<int>('o_plan_id', value);

  String? get oPlanCode => getField<String>('o_plan_code');
  set oPlanCode(String? value) => setField<String>('o_plan_code', value);

  String? get oPlanDescription => getField<String>('o_plan_description');
  set oPlanDescription(String? value) =>
      setField<String>('o_plan_description', value);

  int? get oAssetTagId => getField<int>('o_asset_tag_id');
  set oAssetTagId(int? value) => setField<int>('o_asset_tag_id', value);

  String? get oAssetTagDescription =>
      getField<String>('o_asset_tag_description');
  set oAssetTagDescription(String? value) =>
      setField<String>('o_asset_tag_description', value);

  int? get oContractId => getField<int>('o_contract_id');
  set oContractId(int? value) => setField<int>('o_contract_id', value);

  String? get oContractDescription =>
      getField<String>('o_contract_description');
  set oContractDescription(String? value) =>
      setField<String>('o_contract_description', value);

  int? get oProviderCompanyId => getField<int>('o_provider_company_id');
  set oProviderCompanyId(int? value) =>
      setField<int>('o_provider_company_id', value);

  String? get oProviderCompanyDescription =>
      getField<String>('o_provider_company_description');
  set oProviderCompanyDescription(String? value) =>
      setField<String>('o_provider_company_description', value);

  String? get oProviderCompanyImgFilePath =>
      getField<String>('o_provider_company_img_file_path');
  set oProviderCompanyImgFilePath(String? value) =>
      setField<String>('o_provider_company_img_file_path', value);

  String? get oProviderCompanyImgFileName =>
      getField<String>('o_provider_company_img_file_name');
  set oProviderCompanyImgFileName(String? value) =>
      setField<String>('o_provider_company_img_file_name', value);

  int? get oPriorityId => getField<int>('o_priority_id');
  set oPriorityId(int? value) => setField<int>('o_priority_id', value);

  String? get oPriorityCode => getField<String>('o_priority_code');
  set oPriorityCode(String? value) =>
      setField<String>('o_priority_code', value);

  String? get oPriorityDescription =>
      getField<String>('o_priority_description');
  set oPriorityDescription(String? value) =>
      setField<String>('o_priority_description', value);

  int? get oCauseReasonId => getField<int>('o_cause_reason_id');
  set oCauseReasonId(int? value) => setField<int>('o_cause_reason_id', value);

  String? get oCauseReasonDescription =>
      getField<String>('o_cause_reason_description');
  set oCauseReasonDescription(String? value) =>
      setField<String>('o_cause_reason_description', value);

  double? get servicesValue => getField<double>('services_value');
  set servicesValue(double? value) => setField<double>('services_value', value);

  double? get materialsValue => getField<double>('materials_value');
  set materialsValue(double? value) =>
      setField<double>('materials_value', value);

  double? get vehiclesValue => getField<double>('vehicles_value');
  set vehiclesValue(double? value) => setField<double>('vehicles_value', value);

  double? get totalValue => getField<double>('total_value');
  set totalValue(double? value) => setField<double>('total_value', value);

  DateTime? get ovStartedAt => getField<DateTime>('ov_started_at');
  set ovStartedAt(DateTime? value) =>
      setField<DateTime>('ov_started_at', value);

  DateTime? get ovEndedAt => getField<DateTime>('ov_ended_at');
  set ovEndedAt(DateTime? value) => setField<DateTime>('ov_ended_at', value);

  double? get ovDurationHours => getField<double>('ov_duration_hours');
  set ovDurationHours(double? value) =>
      setField<double>('ov_duration_hours', value);

  int? get ovStatusId => getField<int>('ov_status_id');
  set ovStatusId(int? value) => setField<int>('ov_status_id', value);

  String? get ovStatusDescription => getField<String>('ov_status_description');
  set ovStatusDescription(String? value) =>
      setField<String>('ov_status_description', value);

  int? get ovProcessingId => getField<int>('ov_processing_id');
  set ovProcessingId(int? value) => setField<int>('ov_processing_id', value);

  String? get ovProcessingDescription =>
      getField<String>('ov_processing_description');
  set ovProcessingDescription(String? value) =>
      setField<String>('ov_processing_description', value);

  int? get oTeamId => getField<int>('o_team_id');
  set oTeamId(int? value) => setField<int>('o_team_id', value);

  String? get oTeamLeaderNameShort =>
      getField<String>('o_team_leader_name_short');
  set oTeamLeaderNameShort(String? value) =>
      setField<String>('o_team_leader_name_short', value);

  String? get oTeamCode => getField<String>('o_team_code');
  set oTeamCode(String? value) => setField<String>('o_team_code', value);

  int? get ovTeamLeaderId => getField<int>('ov_team_leader_id');
  set ovTeamLeaderId(int? value) => setField<int>('ov_team_leader_id', value);

  String? get ovTeamLeaderNameShort =>
      getField<String>('ov_team_leader_name_short');
  set ovTeamLeaderNameShort(String? value) =>
      setField<String>('ov_team_leader_name_short', value);

  bool? get isCanceled => getField<bool>('is_canceled');
  set isCanceled(bool? value) => setField<bool>('is_canceled', value);

  String? get ovComments => getField<String>('ov_comments');
  set ovComments(String? value) => setField<String>('ov_comments', value);

  double? get ovServicesValue => getField<double>('ov_services_value');
  set ovServicesValue(double? value) =>
      setField<double>('ov_services_value', value);

  double? get ovMaterialsValue => getField<double>('ov_materials_value');
  set ovMaterialsValue(double? value) =>
      setField<double>('ov_materials_value', value);

  double? get ovVehiclesValue => getField<double>('ov_vehicles_value');
  set ovVehiclesValue(double? value) =>
      setField<double>('ov_vehicles_value', value);

  double? get ovTotalValue => getField<double>('ov_total_value');
  set ovTotalValue(double? value) => setField<double>('ov_total_value', value);

  bool? get ovIsFiled => getField<bool>('ov_is_filed');
  set ovIsFiled(bool? value) => setField<bool>('ov_is_filed', value);

  int? get ovAssetsAmount => getField<int>('ov_assets_amount');
  set ovAssetsAmount(int? value) => setField<int>('ov_assets_amount', value);

  int? get ovAssetsDraftAmount => getField<int>('ov_assets_draft_amount');
  set ovAssetsDraftAmount(int? value) =>
      setField<int>('ov_assets_draft_amount', value);

  int? get ovAssetsReportedAmount => getField<int>('ov_assets_reported_amount');
  set ovAssetsReportedAmount(int? value) =>
      setField<int>('ov_assets_reported_amount', value);

  int? get ovAssetsDisapprovedAmount =>
      getField<int>('ov_assets_disapproved_amount');
  set ovAssetsDisapprovedAmount(int? value) =>
      setField<int>('ov_assets_disapproved_amount', value);

  int? get ovAssetsApprovedAmount => getField<int>('ov_assets_approved_amount');
  set ovAssetsApprovedAmount(int? value) =>
      setField<int>('ov_assets_approved_amount', value);

  int? get ovTeamAmount => getField<int>('ov_team_amount');
  set ovTeamAmount(int? value) => setField<int>('ov_team_amount', value);

  String? get ovTeamNamesShort => getField<String>('ov_team_names_short');
  set ovTeamNamesShort(String? value) =>
      setField<String>('ov_team_names_short', value);

  String? get ovRptFilePath => getField<String>('ov_rpt_file_path');
  set ovRptFilePath(String? value) =>
      setField<String>('ov_rpt_file_path', value);

  String? get ovRptFileName => getField<String>('ov_rpt_file_name');
  set ovRptFileName(String? value) =>
      setField<String>('ov_rpt_file_name', value);

  String? get ovImgFilePath => getField<String>('ov_img_file_path');
  set ovImgFilePath(String? value) =>
      setField<String>('ov_img_file_path', value);

  String? get ovImgFileName => getField<String>('ov_img_file_name');
  set ovImgFileName(String? value) =>
      setField<String>('ov_img_file_name', value);

  String? get ovPdfFilePath => getField<String>('ov_pdf_file_path');
  set ovPdfFilePath(String? value) =>
      setField<String>('ov_pdf_file_path', value);

  String? get ovPdfFileName => getField<String>('ov_pdf_file_name');
  set ovPdfFileName(String? value) =>
      setField<String>('ov_pdf_file_name', value);

  int? get ovOStatusId => getField<int>('ov_o_status_id');
  set ovOStatusId(int? value) => setField<int>('ov_o_status_id', value);

  String? get ovOStatusDescription =>
      getField<String>('ov_o_status_description');
  set ovOStatusDescription(String? value) =>
      setField<String>('ov_o_status_description', value);

  int? get ovOSuspendedReasonId => getField<int>('ov_o_suspended_reason_id');
  set ovOSuspendedReasonId(int? value) =>
      setField<int>('ov_o_suspended_reason_id', value);

  String? get ovOSuspendedReasonDescription =>
      getField<String>('ov_o_suspended_reason_description');
  set ovOSuspendedReasonDescription(String? value) =>
      setField<String>('ov_o_suspended_reason_description', value);

  double? get ovOProgress => getField<double>('ov_o_progress');
  set ovOProgress(double? value) => setField<double>('ov_o_progress', value);

  DateTime? get ovReportedAt => getField<DateTime>('ov_reported_at');
  set ovReportedAt(DateTime? value) =>
      setField<DateTime>('ov_reported_at', value);

  String? get ovReportedUserNameShort =>
      getField<String>('ov_reported_user_name_short');
  set ovReportedUserNameShort(String? value) =>
      setField<String>('ov_reported_user_name_short', value);

  DateTime? get ovRevisedAt => getField<DateTime>('ov_revised_at');
  set ovRevisedAt(DateTime? value) =>
      setField<DateTime>('ov_revised_at', value);

  String? get ovRevisedUserNameShort =>
      getField<String>('ov_revised_user_name_short');
  set ovRevisedUserNameShort(String? value) =>
      setField<String>('ov_revised_user_name_short', value);

  DateTime? get ovDisapprovedAt => getField<DateTime>('ov_disapproved_at');
  set ovDisapprovedAt(DateTime? value) =>
      setField<DateTime>('ov_disapproved_at', value);

  String? get ovDisapprovedUserNameShort =>
      getField<String>('ov_disapproved_user_name_short');
  set ovDisapprovedUserNameShort(String? value) =>
      setField<String>('ov_disapproved_user_name_short', value);

  DateTime? get ovApprovedAt => getField<DateTime>('ov_approved_at');
  set ovApprovedAt(DateTime? value) =>
      setField<DateTime>('ov_approved_at', value);

  String? get ovApprovedUserNameShort =>
      getField<String>('ov_approved_user_name_short');
  set ovApprovedUserNameShort(String? value) =>
      setField<String>('ov_approved_user_name_short', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  bool? get isExtra => getField<bool>('is_extra');
  set isExtra(bool? value) => setField<bool>('is_extra', value);
}

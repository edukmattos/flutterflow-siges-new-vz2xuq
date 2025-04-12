import '../database.dart';

class OrdersVisitsTable extends SupabaseTable<OrdersVisitsRow> {
  @override
  String get tableName => 'orders_visits';

  @override
  OrdersVisitsRow createRow(Map<String, dynamic> data) => OrdersVisitsRow(data);
}

class OrdersVisitsRow extends SupabaseDataRow {
  OrdersVisitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get ovMask => getField<String>('ov_mask');
  set ovMask(String? value) => setField<String>('ov_mask', value);

  int? get visitCounter => getField<int>('visit_counter');
  set visitCounter(int? value) => setField<int>('visit_counter', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  int? get ovApprovedUserId => getField<int>('ov_approved_user_id');
  set ovApprovedUserId(int? value) =>
      setField<int>('ov_approved_user_id', value);

  DateTime? get ovApprovedAt => getField<DateTime>('ov_approved_at');
  set ovApprovedAt(DateTime? value) =>
      setField<DateTime>('ov_approved_at', value);

  int? get ovDisapprovedUserId => getField<int>('ov_disapproved_user_id');
  set ovDisapprovedUserId(int? value) =>
      setField<int>('ov_disapproved_user_id', value);

  DateTime? get ovDisapprovedAt => getField<DateTime>('ov_disapproved_at');
  set ovDisapprovedAt(DateTime? value) =>
      setField<DateTime>('ov_disapproved_at', value);

  DateTime? get ovStartedAt => getField<DateTime>('ov_started_at');
  set ovStartedAt(DateTime? value) =>
      setField<DateTime>('ov_started_at', value);

  DateTime? get ovEndedAt => getField<DateTime>('ov_ended_at');
  set ovEndedAt(DateTime? value) => setField<DateTime>('ov_ended_at', value);

  int? get ovProcessingId => getField<int>('ov_processing_id');
  set ovProcessingId(int? value) => setField<int>('ov_processing_id', value);

  int? get ovStatusId => getField<int>('ov_status_id');
  set ovStatusId(int? value) => setField<int>('ov_status_id', value);

  DateTime? get ovReportedAt => getField<DateTime>('ov_reported_at');
  set ovReportedAt(DateTime? value) =>
      setField<DateTime>('ov_reported_at', value);

  int? get ovReportedUserId => getField<int>('ov_reported_user_id');
  set ovReportedUserId(int? value) =>
      setField<int>('ov_reported_user_id', value);

  int? get ovTeamLeaderId => getField<int>('ov_team_leader_id');
  set ovTeamLeaderId(int? value) => setField<int>('ov_team_leader_id', value);

  int? get ovAssetsAmount => getField<int>('ov_assets_amount');
  set ovAssetsAmount(int? value) => setField<int>('ov_assets_amount', value);

  int? get ovAssetsApprovedAmount => getField<int>('ov_assets_approved_amount');
  set ovAssetsApprovedAmount(int? value) =>
      setField<int>('ov_assets_approved_amount', value);

  int? get ovAssetsDisapprovedAmount =>
      getField<int>('ov_assets_disapproved_amount');
  set ovAssetsDisapprovedAmount(int? value) =>
      setField<int>('ov_assets_disapproved_amount', value);

  int? get ovAssetsReportedAmount => getField<int>('ov_assets_reported_amount');
  set ovAssetsReportedAmount(int? value) =>
      setField<int>('ov_assets_reported_amount', value);

  double? get ovMaterialsValue => getField<double>('ov_materials_value');
  set ovMaterialsValue(double? value) =>
      setField<double>('ov_materials_value', value);

  double? get ovServicesValue => getField<double>('ov_services_value');
  set ovServicesValue(double? value) =>
      setField<double>('ov_services_value', value);

  double? get ovVehiclesValue => getField<double>('ov_vehicles_value');
  set ovVehiclesValue(double? value) =>
      setField<double>('ov_vehicles_value', value);

  int? get ovCreatedUserId => getField<int>('ov_created_user_id');
  set ovCreatedUserId(int? value) => setField<int>('ov_created_user_id', value);

  DateTime? get ovCreatedAt => getField<DateTime>('ov_created_at');
  set ovCreatedAt(DateTime? value) =>
      setField<DateTime>('ov_created_at', value);

  int? get ovUpdatedUserId => getField<int>('ov_updated_user_id');
  set ovUpdatedUserId(int? value) => setField<int>('ov_updated_user_id', value);

  DateTime? get ovUpdatedAt => getField<DateTime>('ov_updated_at');
  set ovUpdatedAt(DateTime? value) =>
      setField<DateTime>('ov_updated_at', value);

  int? get ovDeletedUserId => getField<int>('ov_deleted_user_id');
  set ovDeletedUserId(int? value) => setField<int>('ov_deleted_user_id', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  double? get ovDurationHours => getField<double>('ov_duration_hours');
  set ovDurationHours(double? value) =>
      setField<double>('ov_duration_hours', value);

  String? get ovDisapprovedComments =>
      getField<String>('ov_disapproved_comments');
  set ovDisapprovedComments(String? value) =>
      setField<String>('ov_disapproved_comments', value);

  int? get ovAssetsDraftAmount => getField<int>('ov_assets_draft_amount');
  set ovAssetsDraftAmount(int? value) =>
      setField<int>('ov_assets_draft_amount', value);

  bool? get isCanceled => getField<bool>('is_canceled');
  set isCanceled(bool? value) => setField<bool>('is_canceled', value);

  String? get ovComments => getField<String>('ov_comments');
  set ovComments(String? value) => setField<String>('ov_comments', value);

  int? get oCancelReasonId => getField<int>('o_cancel_reason_id');
  set oCancelReasonId(int? value) => setField<int>('o_cancel_reason_id', value);

  double? get ovCreatedLatitude => getField<double>('ov_created_latitude');
  set ovCreatedLatitude(double? value) =>
      setField<double>('ov_created_latitude', value);

  double? get ovCreatedLongitude => getField<double>('ov_created_longitude');
  set ovCreatedLongitude(double? value) =>
      setField<double>('ov_created_longitude', value);

  double? get ovTotalValue => getField<double>('ov_total_value');
  set ovTotalValue(double? value) => setField<double>('ov_total_value', value);

  bool? get ovIsFiled => getField<bool>('ov_is_filed');
  set ovIsFiled(bool? value) => setField<bool>('ov_is_filed', value);

  int? get ovTeamAmount => getField<int>('ov_team_amount');
  set ovTeamAmount(int? value) => setField<int>('ov_team_amount', value);

  int? get ovAssetsRevisedAmount => getField<int>('ov_assets_revised_amount');
  set ovAssetsRevisedAmount(int? value) =>
      setField<int>('ov_assets_revised_amount', value);

  int? get ovRevisedUserId => getField<int>('ov_revised_user_id');
  set ovRevisedUserId(int? value) => setField<int>('ov_revised_user_id', value);

  DateTime? get ovRevisedAt => getField<DateTime>('ov_revised_at');
  set ovRevisedAt(DateTime? value) =>
      setField<DateTime>('ov_revised_at', value);

  String? get ovTeamNamesShort => getField<String>('ov_team_names_short');
  set ovTeamNamesShort(String? value) =>
      setField<String>('ov_team_names_short', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  String? get ovRptFilePath => getField<String>('ov_rpt_file_path');
  set ovRptFilePath(String? value) =>
      setField<String>('ov_rpt_file_path', value);

  String? get ovRptFileName => getField<String>('ov_rpt_file_name');
  set ovRptFileName(String? value) =>
      setField<String>('ov_rpt_file_name', value);

  int? get ovOSuspendedReasonId => getField<int>('ov_o_suspended_reason_id');
  set ovOSuspendedReasonId(int? value) =>
      setField<int>('ov_o_suspended_reason_id', value);

  int? get ovOStatusId => getField<int>('ov_o_status_id');
  set ovOStatusId(int? value) => setField<int>('ov_o_status_id', value);

  double? get ovOProgress => getField<double>('ov_o_progress');
  set ovOProgress(double? value) => setField<double>('ov_o_progress', value);

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

  String? get xCreatedUserLogon => getField<String>('x_created_user_logon');
  set xCreatedUserLogon(String? value) =>
      setField<String>('x_created_user_logon', value);

  int? get xCreatedUserId => getField<int>('x_created_user_id');
  set xCreatedUserId(int? value) => setField<int>('x_created_user_id', value);

  int? get xIntervId => getField<int>('x_interv_id');
  set xIntervId(int? value) => setField<int>('x_interv_id', value);

  bool? get isExtra => getField<bool>('is_extra');
  set isExtra(bool? value) => setField<bool>('is_extra', value);
}

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitStruct extends BaseStruct {
  DtOrderVisitStruct({
    int? id,
    String? ovMask,
    int? oId,
    String? oMask,
    int? oUnitId,
    String? oUnitDescription,
    String? oRequestedServices,
    String? oTypeCode,
    String? oTypeSubCode,
    int? oStatusId,
    String? oStatusDescription,
    int? opId,
    int? ovStatusId,
    String? ovStartedAt,
    DateTime? ovStartedDatetime,
    String? ovEndedAt,
    DateTime? ovEndedDatetime,
    double? ovDurationHours,
    String? ovStatusDescription,
    int? ovProcessingId,
    String? ovProcessingDescription,
    int? oTeamId,
    int? ovTeamLeaderId,
    String? ovTeamLeaderNameShort,
    int? ovTeamAmount,
    bool? isCanceled,
    String? ovComments,
    bool? ovIsFiled,
    int? ovAssetsAmount,
    int? ovAssetsDraftAmount,
    int? ovAssetsReportedAmount,
    int? ovAssetsDisapprovedAmount,
    int? ovAssetsApprovedAmount,
    String? versionMode,
    String? oAssetTagDescription,
    String? oObjectCode,
    String? oPlanCode,
    String? oContractDescription,
    int? oPriorityId,
    String? oPriorityCode,
    String? oPriorityDescription,
    int? oSystemParentId,
    int? oSystemId,
    int? oUnitTypeParentId,
    int? oUnitTypeId,
    int? oTypeId,
    int? oTypeSubId,
    String? oCauseReasonDescription,
    int? oCauseReasonId,
    double? ovServicesValue,
    double? ovMaterialsValue,
    double? ovVehiclesValue,
    double? ovTotalValue,
    String? ovRptFilePath,
    String? ovRptFileName,
    int? ovOStatusId,
    String? ovOStatusDescription,
    int? ovOSuspendedReasonId,
    String? ovOSuspendedReasonDescription,
    double? ovOProgress,
    String? ovImgFilePath,
    String? ovImgFileName,
    String? ovPdfFilePath,
    String? ovPdfFileName,
    String? oRequestedAt,
    DateTime? oRequestedDatetime,
    String? oRequesterName,
    String? oRequesterPhone,
    int? oRequesterTeamId,
    String? oRequesterTeamCode,
    String? ovReportedAt,
    DateTime? ovReportedDatetime,
    int? ovReportedUserId,
    String? ovReportedUserNameShort,
    String? ovRevisedAt,
    DateTime? ovRevisedDatetime,
    int? ovRevisedUserId,
    String? ovRevisedUserNameShort,
    String? ovDisapprovedAt,
    DateTime? ovDisapprovedDatetime,
    int? ovDisapprovedUserId,
    String? ovDisapprovedUserNameShort,
    String? ovApprovedAt,
    DateTime? ovApprovedDatetime,
    int? ovApprovedUserId,
    String? ovApprovedUserNameShort,
    bool? isExtra,
  })  : _id = id,
        _ovMask = ovMask,
        _oId = oId,
        _oMask = oMask,
        _oUnitId = oUnitId,
        _oUnitDescription = oUnitDescription,
        _oRequestedServices = oRequestedServices,
        _oTypeCode = oTypeCode,
        _oTypeSubCode = oTypeSubCode,
        _oStatusId = oStatusId,
        _oStatusDescription = oStatusDescription,
        _opId = opId,
        _ovStatusId = ovStatusId,
        _ovStartedAt = ovStartedAt,
        _ovStartedDatetime = ovStartedDatetime,
        _ovEndedAt = ovEndedAt,
        _ovEndedDatetime = ovEndedDatetime,
        _ovDurationHours = ovDurationHours,
        _ovStatusDescription = ovStatusDescription,
        _ovProcessingId = ovProcessingId,
        _ovProcessingDescription = ovProcessingDescription,
        _oTeamId = oTeamId,
        _ovTeamLeaderId = ovTeamLeaderId,
        _ovTeamLeaderNameShort = ovTeamLeaderNameShort,
        _ovTeamAmount = ovTeamAmount,
        _isCanceled = isCanceled,
        _ovComments = ovComments,
        _ovIsFiled = ovIsFiled,
        _ovAssetsAmount = ovAssetsAmount,
        _ovAssetsDraftAmount = ovAssetsDraftAmount,
        _ovAssetsReportedAmount = ovAssetsReportedAmount,
        _ovAssetsDisapprovedAmount = ovAssetsDisapprovedAmount,
        _ovAssetsApprovedAmount = ovAssetsApprovedAmount,
        _versionMode = versionMode,
        _oAssetTagDescription = oAssetTagDescription,
        _oObjectCode = oObjectCode,
        _oPlanCode = oPlanCode,
        _oContractDescription = oContractDescription,
        _oPriorityId = oPriorityId,
        _oPriorityCode = oPriorityCode,
        _oPriorityDescription = oPriorityDescription,
        _oSystemParentId = oSystemParentId,
        _oSystemId = oSystemId,
        _oUnitTypeParentId = oUnitTypeParentId,
        _oUnitTypeId = oUnitTypeId,
        _oTypeId = oTypeId,
        _oTypeSubId = oTypeSubId,
        _oCauseReasonDescription = oCauseReasonDescription,
        _oCauseReasonId = oCauseReasonId,
        _ovServicesValue = ovServicesValue,
        _ovMaterialsValue = ovMaterialsValue,
        _ovVehiclesValue = ovVehiclesValue,
        _ovTotalValue = ovTotalValue,
        _ovRptFilePath = ovRptFilePath,
        _ovRptFileName = ovRptFileName,
        _ovOStatusId = ovOStatusId,
        _ovOStatusDescription = ovOStatusDescription,
        _ovOSuspendedReasonId = ovOSuspendedReasonId,
        _ovOSuspendedReasonDescription = ovOSuspendedReasonDescription,
        _ovOProgress = ovOProgress,
        _ovImgFilePath = ovImgFilePath,
        _ovImgFileName = ovImgFileName,
        _ovPdfFilePath = ovPdfFilePath,
        _ovPdfFileName = ovPdfFileName,
        _oRequestedAt = oRequestedAt,
        _oRequestedDatetime = oRequestedDatetime,
        _oRequesterName = oRequesterName,
        _oRequesterPhone = oRequesterPhone,
        _oRequesterTeamId = oRequesterTeamId,
        _oRequesterTeamCode = oRequesterTeamCode,
        _ovReportedAt = ovReportedAt,
        _ovReportedDatetime = ovReportedDatetime,
        _ovReportedUserId = ovReportedUserId,
        _ovReportedUserNameShort = ovReportedUserNameShort,
        _ovRevisedAt = ovRevisedAt,
        _ovRevisedDatetime = ovRevisedDatetime,
        _ovRevisedUserId = ovRevisedUserId,
        _ovRevisedUserNameShort = ovRevisedUserNameShort,
        _ovDisapprovedAt = ovDisapprovedAt,
        _ovDisapprovedDatetime = ovDisapprovedDatetime,
        _ovDisapprovedUserId = ovDisapprovedUserId,
        _ovDisapprovedUserNameShort = ovDisapprovedUserNameShort,
        _ovApprovedAt = ovApprovedAt,
        _ovApprovedDatetime = ovApprovedDatetime,
        _ovApprovedUserId = ovApprovedUserId,
        _ovApprovedUserNameShort = ovApprovedUserNameShort,
        _isExtra = isExtra;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "ov_mask" field.
  String? _ovMask;
  String get ovMask => _ovMask ?? '';
  set ovMask(String? val) => _ovMask = val;

  bool hasOvMask() => _ovMask != null;

  // "o_id" field.
  int? _oId;
  int get oId => _oId ?? 0;
  set oId(int? val) => _oId = val;

  void incrementOId(int amount) => oId = oId + amount;

  bool hasOId() => _oId != null;

  // "o_mask" field.
  String? _oMask;
  String get oMask => _oMask ?? '';
  set oMask(String? val) => _oMask = val;

  bool hasOMask() => _oMask != null;

  // "o_unit_id" field.
  int? _oUnitId;
  int get oUnitId => _oUnitId ?? 0;
  set oUnitId(int? val) => _oUnitId = val;

  void incrementOUnitId(int amount) => oUnitId = oUnitId + amount;

  bool hasOUnitId() => _oUnitId != null;

  // "o_unit_description" field.
  String? _oUnitDescription;
  String get oUnitDescription => _oUnitDescription ?? '';
  set oUnitDescription(String? val) => _oUnitDescription = val;

  bool hasOUnitDescription() => _oUnitDescription != null;

  // "o_requested_services" field.
  String? _oRequestedServices;
  String get oRequestedServices => _oRequestedServices ?? '';
  set oRequestedServices(String? val) => _oRequestedServices = val;

  bool hasORequestedServices() => _oRequestedServices != null;

  // "o_type_code" field.
  String? _oTypeCode;
  String get oTypeCode => _oTypeCode ?? '';
  set oTypeCode(String? val) => _oTypeCode = val;

  bool hasOTypeCode() => _oTypeCode != null;

  // "o_type_sub_code" field.
  String? _oTypeSubCode;
  String get oTypeSubCode => _oTypeSubCode ?? '';
  set oTypeSubCode(String? val) => _oTypeSubCode = val;

  bool hasOTypeSubCode() => _oTypeSubCode != null;

  // "o_status_id" field.
  int? _oStatusId;
  int get oStatusId => _oStatusId ?? 0;
  set oStatusId(int? val) => _oStatusId = val;

  void incrementOStatusId(int amount) => oStatusId = oStatusId + amount;

  bool hasOStatusId() => _oStatusId != null;

  // "o_status_description" field.
  String? _oStatusDescription;
  String get oStatusDescription => _oStatusDescription ?? '';
  set oStatusDescription(String? val) => _oStatusDescription = val;

  bool hasOStatusDescription() => _oStatusDescription != null;

  // "op_id" field.
  int? _opId;
  int get opId => _opId ?? 0;
  set opId(int? val) => _opId = val;

  void incrementOpId(int amount) => opId = opId + amount;

  bool hasOpId() => _opId != null;

  // "ov_status_id" field.
  int? _ovStatusId;
  int get ovStatusId => _ovStatusId ?? 0;
  set ovStatusId(int? val) => _ovStatusId = val;

  void incrementOvStatusId(int amount) => ovStatusId = ovStatusId + amount;

  bool hasOvStatusId() => _ovStatusId != null;

  // "ov_started_at" field.
  String? _ovStartedAt;
  String get ovStartedAt => _ovStartedAt ?? '';
  set ovStartedAt(String? val) => _ovStartedAt = val;

  bool hasOvStartedAt() => _ovStartedAt != null;

  // "ov_started_datetime" field.
  DateTime? _ovStartedDatetime;
  DateTime? get ovStartedDatetime => _ovStartedDatetime;
  set ovStartedDatetime(DateTime? val) => _ovStartedDatetime = val;

  bool hasOvStartedDatetime() => _ovStartedDatetime != null;

  // "ov_ended_at" field.
  String? _ovEndedAt;
  String get ovEndedAt => _ovEndedAt ?? '';
  set ovEndedAt(String? val) => _ovEndedAt = val;

  bool hasOvEndedAt() => _ovEndedAt != null;

  // "ov_ended_datetime" field.
  DateTime? _ovEndedDatetime;
  DateTime? get ovEndedDatetime => _ovEndedDatetime;
  set ovEndedDatetime(DateTime? val) => _ovEndedDatetime = val;

  bool hasOvEndedDatetime() => _ovEndedDatetime != null;

  // "ov_duration_hours" field.
  double? _ovDurationHours;
  double get ovDurationHours => _ovDurationHours ?? 0.0;
  set ovDurationHours(double? val) => _ovDurationHours = val;

  void incrementOvDurationHours(double amount) =>
      ovDurationHours = ovDurationHours + amount;

  bool hasOvDurationHours() => _ovDurationHours != null;

  // "ov_status_description" field.
  String? _ovStatusDescription;
  String get ovStatusDescription => _ovStatusDescription ?? '';
  set ovStatusDescription(String? val) => _ovStatusDescription = val;

  bool hasOvStatusDescription() => _ovStatusDescription != null;

  // "ov_processing_id" field.
  int? _ovProcessingId;
  int get ovProcessingId => _ovProcessingId ?? 0;
  set ovProcessingId(int? val) => _ovProcessingId = val;

  void incrementOvProcessingId(int amount) =>
      ovProcessingId = ovProcessingId + amount;

  bool hasOvProcessingId() => _ovProcessingId != null;

  // "ov_processing_description" field.
  String? _ovProcessingDescription;
  String get ovProcessingDescription => _ovProcessingDescription ?? '';
  set ovProcessingDescription(String? val) => _ovProcessingDescription = val;

  bool hasOvProcessingDescription() => _ovProcessingDescription != null;

  // "o_team_id" field.
  int? _oTeamId;
  int get oTeamId => _oTeamId ?? 0;
  set oTeamId(int? val) => _oTeamId = val;

  void incrementOTeamId(int amount) => oTeamId = oTeamId + amount;

  bool hasOTeamId() => _oTeamId != null;

  // "ov_team_leader_id" field.
  int? _ovTeamLeaderId;
  int get ovTeamLeaderId => _ovTeamLeaderId ?? 0;
  set ovTeamLeaderId(int? val) => _ovTeamLeaderId = val;

  void incrementOvTeamLeaderId(int amount) =>
      ovTeamLeaderId = ovTeamLeaderId + amount;

  bool hasOvTeamLeaderId() => _ovTeamLeaderId != null;

  // "ov_team_leader_name_short" field.
  String? _ovTeamLeaderNameShort;
  String get ovTeamLeaderNameShort => _ovTeamLeaderNameShort ?? '';
  set ovTeamLeaderNameShort(String? val) => _ovTeamLeaderNameShort = val;

  bool hasOvTeamLeaderNameShort() => _ovTeamLeaderNameShort != null;

  // "ov_team_amount" field.
  int? _ovTeamAmount;
  int get ovTeamAmount => _ovTeamAmount ?? 0;
  set ovTeamAmount(int? val) => _ovTeamAmount = val;

  void incrementOvTeamAmount(int amount) =>
      ovTeamAmount = ovTeamAmount + amount;

  bool hasOvTeamAmount() => _ovTeamAmount != null;

  // "is_canceled" field.
  bool? _isCanceled;
  bool get isCanceled => _isCanceled ?? false;
  set isCanceled(bool? val) => _isCanceled = val;

  bool hasIsCanceled() => _isCanceled != null;

  // "ov_comments" field.
  String? _ovComments;
  String get ovComments => _ovComments ?? '';
  set ovComments(String? val) => _ovComments = val;

  bool hasOvComments() => _ovComments != null;

  // "ov_is_filed" field.
  bool? _ovIsFiled;
  bool get ovIsFiled => _ovIsFiled ?? false;
  set ovIsFiled(bool? val) => _ovIsFiled = val;

  bool hasOvIsFiled() => _ovIsFiled != null;

  // "ov_assets_amount" field.
  int? _ovAssetsAmount;
  int get ovAssetsAmount => _ovAssetsAmount ?? 0;
  set ovAssetsAmount(int? val) => _ovAssetsAmount = val;

  void incrementOvAssetsAmount(int amount) =>
      ovAssetsAmount = ovAssetsAmount + amount;

  bool hasOvAssetsAmount() => _ovAssetsAmount != null;

  // "ov_assets_draft_amount" field.
  int? _ovAssetsDraftAmount;
  int get ovAssetsDraftAmount => _ovAssetsDraftAmount ?? 0;
  set ovAssetsDraftAmount(int? val) => _ovAssetsDraftAmount = val;

  void incrementOvAssetsDraftAmount(int amount) =>
      ovAssetsDraftAmount = ovAssetsDraftAmount + amount;

  bool hasOvAssetsDraftAmount() => _ovAssetsDraftAmount != null;

  // "ov_assets_reported_amount" field.
  int? _ovAssetsReportedAmount;
  int get ovAssetsReportedAmount => _ovAssetsReportedAmount ?? 0;
  set ovAssetsReportedAmount(int? val) => _ovAssetsReportedAmount = val;

  void incrementOvAssetsReportedAmount(int amount) =>
      ovAssetsReportedAmount = ovAssetsReportedAmount + amount;

  bool hasOvAssetsReportedAmount() => _ovAssetsReportedAmount != null;

  // "ov_assets_disapproved_amount" field.
  int? _ovAssetsDisapprovedAmount;
  int get ovAssetsDisapprovedAmount => _ovAssetsDisapprovedAmount ?? 0;
  set ovAssetsDisapprovedAmount(int? val) => _ovAssetsDisapprovedAmount = val;

  void incrementOvAssetsDisapprovedAmount(int amount) =>
      ovAssetsDisapprovedAmount = ovAssetsDisapprovedAmount + amount;

  bool hasOvAssetsDisapprovedAmount() => _ovAssetsDisapprovedAmount != null;

  // "ov_assets_approved_amount" field.
  int? _ovAssetsApprovedAmount;
  int get ovAssetsApprovedAmount => _ovAssetsApprovedAmount ?? 0;
  set ovAssetsApprovedAmount(int? val) => _ovAssetsApprovedAmount = val;

  void incrementOvAssetsApprovedAmount(int amount) =>
      ovAssetsApprovedAmount = ovAssetsApprovedAmount + amount;

  bool hasOvAssetsApprovedAmount() => _ovAssetsApprovedAmount != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  // "o_asset_tag_description" field.
  String? _oAssetTagDescription;
  String get oAssetTagDescription => _oAssetTagDescription ?? '';
  set oAssetTagDescription(String? val) => _oAssetTagDescription = val;

  bool hasOAssetTagDescription() => _oAssetTagDescription != null;

  // "o_object_code" field.
  String? _oObjectCode;
  String get oObjectCode => _oObjectCode ?? '';
  set oObjectCode(String? val) => _oObjectCode = val;

  bool hasOObjectCode() => _oObjectCode != null;

  // "o_plan_code" field.
  String? _oPlanCode;
  String get oPlanCode => _oPlanCode ?? '';
  set oPlanCode(String? val) => _oPlanCode = val;

  bool hasOPlanCode() => _oPlanCode != null;

  // "o_contract_description" field.
  String? _oContractDescription;
  String get oContractDescription => _oContractDescription ?? '';
  set oContractDescription(String? val) => _oContractDescription = val;

  bool hasOContractDescription() => _oContractDescription != null;

  // "o_priority_id" field.
  int? _oPriorityId;
  int get oPriorityId => _oPriorityId ?? 0;
  set oPriorityId(int? val) => _oPriorityId = val;

  void incrementOPriorityId(int amount) => oPriorityId = oPriorityId + amount;

  bool hasOPriorityId() => _oPriorityId != null;

  // "o_priority_code" field.
  String? _oPriorityCode;
  String get oPriorityCode => _oPriorityCode ?? '';
  set oPriorityCode(String? val) => _oPriorityCode = val;

  bool hasOPriorityCode() => _oPriorityCode != null;

  // "o_priority_description" field.
  String? _oPriorityDescription;
  String get oPriorityDescription => _oPriorityDescription ?? '';
  set oPriorityDescription(String? val) => _oPriorityDescription = val;

  bool hasOPriorityDescription() => _oPriorityDescription != null;

  // "o_system_parent_id" field.
  int? _oSystemParentId;
  int get oSystemParentId => _oSystemParentId ?? 0;
  set oSystemParentId(int? val) => _oSystemParentId = val;

  void incrementOSystemParentId(int amount) =>
      oSystemParentId = oSystemParentId + amount;

  bool hasOSystemParentId() => _oSystemParentId != null;

  // "o_system_id" field.
  int? _oSystemId;
  int get oSystemId => _oSystemId ?? 0;
  set oSystemId(int? val) => _oSystemId = val;

  void incrementOSystemId(int amount) => oSystemId = oSystemId + amount;

  bool hasOSystemId() => _oSystemId != null;

  // "o_unit_type_parent_id" field.
  int? _oUnitTypeParentId;
  int get oUnitTypeParentId => _oUnitTypeParentId ?? 0;
  set oUnitTypeParentId(int? val) => _oUnitTypeParentId = val;

  void incrementOUnitTypeParentId(int amount) =>
      oUnitTypeParentId = oUnitTypeParentId + amount;

  bool hasOUnitTypeParentId() => _oUnitTypeParentId != null;

  // "o_unit_type_id" field.
  int? _oUnitTypeId;
  int get oUnitTypeId => _oUnitTypeId ?? 0;
  set oUnitTypeId(int? val) => _oUnitTypeId = val;

  void incrementOUnitTypeId(int amount) => oUnitTypeId = oUnitTypeId + amount;

  bool hasOUnitTypeId() => _oUnitTypeId != null;

  // "o_type_id" field.
  int? _oTypeId;
  int get oTypeId => _oTypeId ?? 0;
  set oTypeId(int? val) => _oTypeId = val;

  void incrementOTypeId(int amount) => oTypeId = oTypeId + amount;

  bool hasOTypeId() => _oTypeId != null;

  // "o_type_sub_id" field.
  int? _oTypeSubId;
  int get oTypeSubId => _oTypeSubId ?? 0;
  set oTypeSubId(int? val) => _oTypeSubId = val;

  void incrementOTypeSubId(int amount) => oTypeSubId = oTypeSubId + amount;

  bool hasOTypeSubId() => _oTypeSubId != null;

  // "o_cause_reason_description" field.
  String? _oCauseReasonDescription;
  String get oCauseReasonDescription => _oCauseReasonDescription ?? '';
  set oCauseReasonDescription(String? val) => _oCauseReasonDescription = val;

  bool hasOCauseReasonDescription() => _oCauseReasonDescription != null;

  // "o_cause_reason_id" field.
  int? _oCauseReasonId;
  int get oCauseReasonId => _oCauseReasonId ?? 0;
  set oCauseReasonId(int? val) => _oCauseReasonId = val;

  void incrementOCauseReasonId(int amount) =>
      oCauseReasonId = oCauseReasonId + amount;

  bool hasOCauseReasonId() => _oCauseReasonId != null;

  // "ov_services_value" field.
  double? _ovServicesValue;
  double get ovServicesValue => _ovServicesValue ?? 0.0;
  set ovServicesValue(double? val) => _ovServicesValue = val;

  void incrementOvServicesValue(double amount) =>
      ovServicesValue = ovServicesValue + amount;

  bool hasOvServicesValue() => _ovServicesValue != null;

  // "ov_materials_value" field.
  double? _ovMaterialsValue;
  double get ovMaterialsValue => _ovMaterialsValue ?? 0.0;
  set ovMaterialsValue(double? val) => _ovMaterialsValue = val;

  void incrementOvMaterialsValue(double amount) =>
      ovMaterialsValue = ovMaterialsValue + amount;

  bool hasOvMaterialsValue() => _ovMaterialsValue != null;

  // "ov_vehicles_value" field.
  double? _ovVehiclesValue;
  double get ovVehiclesValue => _ovVehiclesValue ?? 0.0;
  set ovVehiclesValue(double? val) => _ovVehiclesValue = val;

  void incrementOvVehiclesValue(double amount) =>
      ovVehiclesValue = ovVehiclesValue + amount;

  bool hasOvVehiclesValue() => _ovVehiclesValue != null;

  // "ov_total_value" field.
  double? _ovTotalValue;
  double get ovTotalValue => _ovTotalValue ?? 0.0;
  set ovTotalValue(double? val) => _ovTotalValue = val;

  void incrementOvTotalValue(double amount) =>
      ovTotalValue = ovTotalValue + amount;

  bool hasOvTotalValue() => _ovTotalValue != null;

  // "ov_rpt_file_path" field.
  String? _ovRptFilePath;
  String get ovRptFilePath => _ovRptFilePath ?? '';
  set ovRptFilePath(String? val) => _ovRptFilePath = val;

  bool hasOvRptFilePath() => _ovRptFilePath != null;

  // "ov_rpt_file_name" field.
  String? _ovRptFileName;
  String get ovRptFileName => _ovRptFileName ?? '';
  set ovRptFileName(String? val) => _ovRptFileName = val;

  bool hasOvRptFileName() => _ovRptFileName != null;

  // "ov_o_status_id" field.
  int? _ovOStatusId;
  int get ovOStatusId => _ovOStatusId ?? 0;
  set ovOStatusId(int? val) => _ovOStatusId = val;

  void incrementOvOStatusId(int amount) => ovOStatusId = ovOStatusId + amount;

  bool hasOvOStatusId() => _ovOStatusId != null;

  // "ov_o_status_description" field.
  String? _ovOStatusDescription;
  String get ovOStatusDescription => _ovOStatusDescription ?? '';
  set ovOStatusDescription(String? val) => _ovOStatusDescription = val;

  bool hasOvOStatusDescription() => _ovOStatusDescription != null;

  // "ov_o_suspended_reason_id" field.
  int? _ovOSuspendedReasonId;
  int get ovOSuspendedReasonId => _ovOSuspendedReasonId ?? 0;
  set ovOSuspendedReasonId(int? val) => _ovOSuspendedReasonId = val;

  void incrementOvOSuspendedReasonId(int amount) =>
      ovOSuspendedReasonId = ovOSuspendedReasonId + amount;

  bool hasOvOSuspendedReasonId() => _ovOSuspendedReasonId != null;

  // "ov_o_suspended_reason_description" field.
  String? _ovOSuspendedReasonDescription;
  String get ovOSuspendedReasonDescription =>
      _ovOSuspendedReasonDescription ?? '';
  set ovOSuspendedReasonDescription(String? val) =>
      _ovOSuspendedReasonDescription = val;

  bool hasOvOSuspendedReasonDescription() =>
      _ovOSuspendedReasonDescription != null;

  // "ov_o_progress" field.
  double? _ovOProgress;
  double get ovOProgress => _ovOProgress ?? 0.0;
  set ovOProgress(double? val) => _ovOProgress = val;

  void incrementOvOProgress(double amount) =>
      ovOProgress = ovOProgress + amount;

  bool hasOvOProgress() => _ovOProgress != null;

  // "ov_img_file_path" field.
  String? _ovImgFilePath;
  String get ovImgFilePath => _ovImgFilePath ?? '';
  set ovImgFilePath(String? val) => _ovImgFilePath = val;

  bool hasOvImgFilePath() => _ovImgFilePath != null;

  // "ov_img_file_name" field.
  String? _ovImgFileName;
  String get ovImgFileName => _ovImgFileName ?? '';
  set ovImgFileName(String? val) => _ovImgFileName = val;

  bool hasOvImgFileName() => _ovImgFileName != null;

  // "ov_pdf_file_path" field.
  String? _ovPdfFilePath;
  String get ovPdfFilePath => _ovPdfFilePath ?? '';
  set ovPdfFilePath(String? val) => _ovPdfFilePath = val;

  bool hasOvPdfFilePath() => _ovPdfFilePath != null;

  // "ov_pdf_file_name" field.
  String? _ovPdfFileName;
  String get ovPdfFileName => _ovPdfFileName ?? '';
  set ovPdfFileName(String? val) => _ovPdfFileName = val;

  bool hasOvPdfFileName() => _ovPdfFileName != null;

  // "o_requested_at" field.
  String? _oRequestedAt;
  String get oRequestedAt => _oRequestedAt ?? '';
  set oRequestedAt(String? val) => _oRequestedAt = val;

  bool hasORequestedAt() => _oRequestedAt != null;

  // "o_requested_datetime" field.
  DateTime? _oRequestedDatetime;
  DateTime? get oRequestedDatetime => _oRequestedDatetime;
  set oRequestedDatetime(DateTime? val) => _oRequestedDatetime = val;

  bool hasORequestedDatetime() => _oRequestedDatetime != null;

  // "o_requester_name" field.
  String? _oRequesterName;
  String get oRequesterName => _oRequesterName ?? '';
  set oRequesterName(String? val) => _oRequesterName = val;

  bool hasORequesterName() => _oRequesterName != null;

  // "o_requester_phone" field.
  String? _oRequesterPhone;
  String get oRequesterPhone => _oRequesterPhone ?? '';
  set oRequesterPhone(String? val) => _oRequesterPhone = val;

  bool hasORequesterPhone() => _oRequesterPhone != null;

  // "o_requester_team_id" field.
  int? _oRequesterTeamId;
  int get oRequesterTeamId => _oRequesterTeamId ?? 0;
  set oRequesterTeamId(int? val) => _oRequesterTeamId = val;

  void incrementORequesterTeamId(int amount) =>
      oRequesterTeamId = oRequesterTeamId + amount;

  bool hasORequesterTeamId() => _oRequesterTeamId != null;

  // "o_requester_team_code" field.
  String? _oRequesterTeamCode;
  String get oRequesterTeamCode => _oRequesterTeamCode ?? '';
  set oRequesterTeamCode(String? val) => _oRequesterTeamCode = val;

  bool hasORequesterTeamCode() => _oRequesterTeamCode != null;

  // "ov_reported_at" field.
  String? _ovReportedAt;
  String get ovReportedAt => _ovReportedAt ?? '';
  set ovReportedAt(String? val) => _ovReportedAt = val;

  bool hasOvReportedAt() => _ovReportedAt != null;

  // "ov_reported_datetime" field.
  DateTime? _ovReportedDatetime;
  DateTime? get ovReportedDatetime => _ovReportedDatetime;
  set ovReportedDatetime(DateTime? val) => _ovReportedDatetime = val;

  bool hasOvReportedDatetime() => _ovReportedDatetime != null;

  // "ov_reported_user_id" field.
  int? _ovReportedUserId;
  int get ovReportedUserId => _ovReportedUserId ?? 0;
  set ovReportedUserId(int? val) => _ovReportedUserId = val;

  void incrementOvReportedUserId(int amount) =>
      ovReportedUserId = ovReportedUserId + amount;

  bool hasOvReportedUserId() => _ovReportedUserId != null;

  // "ov_reported_user_name_short" field.
  String? _ovReportedUserNameShort;
  String get ovReportedUserNameShort => _ovReportedUserNameShort ?? '';
  set ovReportedUserNameShort(String? val) => _ovReportedUserNameShort = val;

  bool hasOvReportedUserNameShort() => _ovReportedUserNameShort != null;

  // "ov_revised_at" field.
  String? _ovRevisedAt;
  String get ovRevisedAt => _ovRevisedAt ?? '';
  set ovRevisedAt(String? val) => _ovRevisedAt = val;

  bool hasOvRevisedAt() => _ovRevisedAt != null;

  // "ov_revised_datetime" field.
  DateTime? _ovRevisedDatetime;
  DateTime? get ovRevisedDatetime => _ovRevisedDatetime;
  set ovRevisedDatetime(DateTime? val) => _ovRevisedDatetime = val;

  bool hasOvRevisedDatetime() => _ovRevisedDatetime != null;

  // "ov_revised_user_id" field.
  int? _ovRevisedUserId;
  int get ovRevisedUserId => _ovRevisedUserId ?? 0;
  set ovRevisedUserId(int? val) => _ovRevisedUserId = val;

  void incrementOvRevisedUserId(int amount) =>
      ovRevisedUserId = ovRevisedUserId + amount;

  bool hasOvRevisedUserId() => _ovRevisedUserId != null;

  // "ov_revised_user_name_short" field.
  String? _ovRevisedUserNameShort;
  String get ovRevisedUserNameShort => _ovRevisedUserNameShort ?? '';
  set ovRevisedUserNameShort(String? val) => _ovRevisedUserNameShort = val;

  bool hasOvRevisedUserNameShort() => _ovRevisedUserNameShort != null;

  // "ov_disapproved_at" field.
  String? _ovDisapprovedAt;
  String get ovDisapprovedAt => _ovDisapprovedAt ?? '';
  set ovDisapprovedAt(String? val) => _ovDisapprovedAt = val;

  bool hasOvDisapprovedAt() => _ovDisapprovedAt != null;

  // "ov_disapproved_datetime" field.
  DateTime? _ovDisapprovedDatetime;
  DateTime? get ovDisapprovedDatetime => _ovDisapprovedDatetime;
  set ovDisapprovedDatetime(DateTime? val) => _ovDisapprovedDatetime = val;

  bool hasOvDisapprovedDatetime() => _ovDisapprovedDatetime != null;

  // "ov_disapproved_user_id" field.
  int? _ovDisapprovedUserId;
  int get ovDisapprovedUserId => _ovDisapprovedUserId ?? 0;
  set ovDisapprovedUserId(int? val) => _ovDisapprovedUserId = val;

  void incrementOvDisapprovedUserId(int amount) =>
      ovDisapprovedUserId = ovDisapprovedUserId + amount;

  bool hasOvDisapprovedUserId() => _ovDisapprovedUserId != null;

  // "ov_disapproved_user_name_short" field.
  String? _ovDisapprovedUserNameShort;
  String get ovDisapprovedUserNameShort => _ovDisapprovedUserNameShort ?? '';
  set ovDisapprovedUserNameShort(String? val) =>
      _ovDisapprovedUserNameShort = val;

  bool hasOvDisapprovedUserNameShort() => _ovDisapprovedUserNameShort != null;

  // "ov_approved_at" field.
  String? _ovApprovedAt;
  String get ovApprovedAt => _ovApprovedAt ?? '';
  set ovApprovedAt(String? val) => _ovApprovedAt = val;

  bool hasOvApprovedAt() => _ovApprovedAt != null;

  // "ov_approved_datetime" field.
  DateTime? _ovApprovedDatetime;
  DateTime? get ovApprovedDatetime => _ovApprovedDatetime;
  set ovApprovedDatetime(DateTime? val) => _ovApprovedDatetime = val;

  bool hasOvApprovedDatetime() => _ovApprovedDatetime != null;

  // "ov_approved_user_id" field.
  int? _ovApprovedUserId;
  int get ovApprovedUserId => _ovApprovedUserId ?? 0;
  set ovApprovedUserId(int? val) => _ovApprovedUserId = val;

  void incrementOvApprovedUserId(int amount) =>
      ovApprovedUserId = ovApprovedUserId + amount;

  bool hasOvApprovedUserId() => _ovApprovedUserId != null;

  // "ov_approved_user_name_short" field.
  String? _ovApprovedUserNameShort;
  String get ovApprovedUserNameShort => _ovApprovedUserNameShort ?? '';
  set ovApprovedUserNameShort(String? val) => _ovApprovedUserNameShort = val;

  bool hasOvApprovedUserNameShort() => _ovApprovedUserNameShort != null;

  // "is_extra" field.
  bool? _isExtra;
  bool get isExtra => _isExtra ?? false;
  set isExtra(bool? val) => _isExtra = val;

  bool hasIsExtra() => _isExtra != null;

  static DtOrderVisitStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitStruct(
        id: castToType<int>(data['id']),
        ovMask: data['ov_mask'] as String?,
        oId: castToType<int>(data['o_id']),
        oMask: data['o_mask'] as String?,
        oUnitId: castToType<int>(data['o_unit_id']),
        oUnitDescription: data['o_unit_description'] as String?,
        oRequestedServices: data['o_requested_services'] as String?,
        oTypeCode: data['o_type_code'] as String?,
        oTypeSubCode: data['o_type_sub_code'] as String?,
        oStatusId: castToType<int>(data['o_status_id']),
        oStatusDescription: data['o_status_description'] as String?,
        opId: castToType<int>(data['op_id']),
        ovStatusId: castToType<int>(data['ov_status_id']),
        ovStartedAt: data['ov_started_at'] as String?,
        ovStartedDatetime: data['ov_started_datetime'] as DateTime?,
        ovEndedAt: data['ov_ended_at'] as String?,
        ovEndedDatetime: data['ov_ended_datetime'] as DateTime?,
        ovDurationHours: castToType<double>(data['ov_duration_hours']),
        ovStatusDescription: data['ov_status_description'] as String?,
        ovProcessingId: castToType<int>(data['ov_processing_id']),
        ovProcessingDescription: data['ov_processing_description'] as String?,
        oTeamId: castToType<int>(data['o_team_id']),
        ovTeamLeaderId: castToType<int>(data['ov_team_leader_id']),
        ovTeamLeaderNameShort: data['ov_team_leader_name_short'] as String?,
        ovTeamAmount: castToType<int>(data['ov_team_amount']),
        isCanceled: data['is_canceled'] as bool?,
        ovComments: data['ov_comments'] as String?,
        ovIsFiled: data['ov_is_filed'] as bool?,
        ovAssetsAmount: castToType<int>(data['ov_assets_amount']),
        ovAssetsDraftAmount: castToType<int>(data['ov_assets_draft_amount']),
        ovAssetsReportedAmount:
            castToType<int>(data['ov_assets_reported_amount']),
        ovAssetsDisapprovedAmount:
            castToType<int>(data['ov_assets_disapproved_amount']),
        ovAssetsApprovedAmount:
            castToType<int>(data['ov_assets_approved_amount']),
        versionMode: data['version_mode'] as String?,
        oAssetTagDescription: data['o_asset_tag_description'] as String?,
        oObjectCode: data['o_object_code'] as String?,
        oPlanCode: data['o_plan_code'] as String?,
        oContractDescription: data['o_contract_description'] as String?,
        oPriorityId: castToType<int>(data['o_priority_id']),
        oPriorityCode: data['o_priority_code'] as String?,
        oPriorityDescription: data['o_priority_description'] as String?,
        oSystemParentId: castToType<int>(data['o_system_parent_id']),
        oSystemId: castToType<int>(data['o_system_id']),
        oUnitTypeParentId: castToType<int>(data['o_unit_type_parent_id']),
        oUnitTypeId: castToType<int>(data['o_unit_type_id']),
        oTypeId: castToType<int>(data['o_type_id']),
        oTypeSubId: castToType<int>(data['o_type_sub_id']),
        oCauseReasonDescription: data['o_cause_reason_description'] as String?,
        oCauseReasonId: castToType<int>(data['o_cause_reason_id']),
        ovServicesValue: castToType<double>(data['ov_services_value']),
        ovMaterialsValue: castToType<double>(data['ov_materials_value']),
        ovVehiclesValue: castToType<double>(data['ov_vehicles_value']),
        ovTotalValue: castToType<double>(data['ov_total_value']),
        ovRptFilePath: data['ov_rpt_file_path'] as String?,
        ovRptFileName: data['ov_rpt_file_name'] as String?,
        ovOStatusId: castToType<int>(data['ov_o_status_id']),
        ovOStatusDescription: data['ov_o_status_description'] as String?,
        ovOSuspendedReasonId: castToType<int>(data['ov_o_suspended_reason_id']),
        ovOSuspendedReasonDescription:
            data['ov_o_suspended_reason_description'] as String?,
        ovOProgress: castToType<double>(data['ov_o_progress']),
        ovImgFilePath: data['ov_img_file_path'] as String?,
        ovImgFileName: data['ov_img_file_name'] as String?,
        ovPdfFilePath: data['ov_pdf_file_path'] as String?,
        ovPdfFileName: data['ov_pdf_file_name'] as String?,
        oRequestedAt: data['o_requested_at'] as String?,
        oRequestedDatetime: data['o_requested_datetime'] as DateTime?,
        oRequesterName: data['o_requester_name'] as String?,
        oRequesterPhone: data['o_requester_phone'] as String?,
        oRequesterTeamId: castToType<int>(data['o_requester_team_id']),
        oRequesterTeamCode: data['o_requester_team_code'] as String?,
        ovReportedAt: data['ov_reported_at'] as String?,
        ovReportedDatetime: data['ov_reported_datetime'] as DateTime?,
        ovReportedUserId: castToType<int>(data['ov_reported_user_id']),
        ovReportedUserNameShort: data['ov_reported_user_name_short'] as String?,
        ovRevisedAt: data['ov_revised_at'] as String?,
        ovRevisedDatetime: data['ov_revised_datetime'] as DateTime?,
        ovRevisedUserId: castToType<int>(data['ov_revised_user_id']),
        ovRevisedUserNameShort: data['ov_revised_user_name_short'] as String?,
        ovDisapprovedAt: data['ov_disapproved_at'] as String?,
        ovDisapprovedDatetime: data['ov_disapproved_datetime'] as DateTime?,
        ovDisapprovedUserId: castToType<int>(data['ov_disapproved_user_id']),
        ovDisapprovedUserNameShort:
            data['ov_disapproved_user_name_short'] as String?,
        ovApprovedAt: data['ov_approved_at'] as String?,
        ovApprovedDatetime: data['ov_approved_datetime'] as DateTime?,
        ovApprovedUserId: castToType<int>(data['ov_approved_user_id']),
        ovApprovedUserNameShort: data['ov_approved_user_name_short'] as String?,
        isExtra: data['is_extra'] as bool?,
      );

  static DtOrderVisitStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'ov_mask': _ovMask,
        'o_id': _oId,
        'o_mask': _oMask,
        'o_unit_id': _oUnitId,
        'o_unit_description': _oUnitDescription,
        'o_requested_services': _oRequestedServices,
        'o_type_code': _oTypeCode,
        'o_type_sub_code': _oTypeSubCode,
        'o_status_id': _oStatusId,
        'o_status_description': _oStatusDescription,
        'op_id': _opId,
        'ov_status_id': _ovStatusId,
        'ov_started_at': _ovStartedAt,
        'ov_started_datetime': _ovStartedDatetime,
        'ov_ended_at': _ovEndedAt,
        'ov_ended_datetime': _ovEndedDatetime,
        'ov_duration_hours': _ovDurationHours,
        'ov_status_description': _ovStatusDescription,
        'ov_processing_id': _ovProcessingId,
        'ov_processing_description': _ovProcessingDescription,
        'o_team_id': _oTeamId,
        'ov_team_leader_id': _ovTeamLeaderId,
        'ov_team_leader_name_short': _ovTeamLeaderNameShort,
        'ov_team_amount': _ovTeamAmount,
        'is_canceled': _isCanceled,
        'ov_comments': _ovComments,
        'ov_is_filed': _ovIsFiled,
        'ov_assets_amount': _ovAssetsAmount,
        'ov_assets_draft_amount': _ovAssetsDraftAmount,
        'ov_assets_reported_amount': _ovAssetsReportedAmount,
        'ov_assets_disapproved_amount': _ovAssetsDisapprovedAmount,
        'ov_assets_approved_amount': _ovAssetsApprovedAmount,
        'version_mode': _versionMode,
        'o_asset_tag_description': _oAssetTagDescription,
        'o_object_code': _oObjectCode,
        'o_plan_code': _oPlanCode,
        'o_contract_description': _oContractDescription,
        'o_priority_id': _oPriorityId,
        'o_priority_code': _oPriorityCode,
        'o_priority_description': _oPriorityDescription,
        'o_system_parent_id': _oSystemParentId,
        'o_system_id': _oSystemId,
        'o_unit_type_parent_id': _oUnitTypeParentId,
        'o_unit_type_id': _oUnitTypeId,
        'o_type_id': _oTypeId,
        'o_type_sub_id': _oTypeSubId,
        'o_cause_reason_description': _oCauseReasonDescription,
        'o_cause_reason_id': _oCauseReasonId,
        'ov_services_value': _ovServicesValue,
        'ov_materials_value': _ovMaterialsValue,
        'ov_vehicles_value': _ovVehiclesValue,
        'ov_total_value': _ovTotalValue,
        'ov_rpt_file_path': _ovRptFilePath,
        'ov_rpt_file_name': _ovRptFileName,
        'ov_o_status_id': _ovOStatusId,
        'ov_o_status_description': _ovOStatusDescription,
        'ov_o_suspended_reason_id': _ovOSuspendedReasonId,
        'ov_o_suspended_reason_description': _ovOSuspendedReasonDescription,
        'ov_o_progress': _ovOProgress,
        'ov_img_file_path': _ovImgFilePath,
        'ov_img_file_name': _ovImgFileName,
        'ov_pdf_file_path': _ovPdfFilePath,
        'ov_pdf_file_name': _ovPdfFileName,
        'o_requested_at': _oRequestedAt,
        'o_requested_datetime': _oRequestedDatetime,
        'o_requester_name': _oRequesterName,
        'o_requester_phone': _oRequesterPhone,
        'o_requester_team_id': _oRequesterTeamId,
        'o_requester_team_code': _oRequesterTeamCode,
        'ov_reported_at': _ovReportedAt,
        'ov_reported_datetime': _ovReportedDatetime,
        'ov_reported_user_id': _ovReportedUserId,
        'ov_reported_user_name_short': _ovReportedUserNameShort,
        'ov_revised_at': _ovRevisedAt,
        'ov_revised_datetime': _ovRevisedDatetime,
        'ov_revised_user_id': _ovRevisedUserId,
        'ov_revised_user_name_short': _ovRevisedUserNameShort,
        'ov_disapproved_at': _ovDisapprovedAt,
        'ov_disapproved_datetime': _ovDisapprovedDatetime,
        'ov_disapproved_user_id': _ovDisapprovedUserId,
        'ov_disapproved_user_name_short': _ovDisapprovedUserNameShort,
        'ov_approved_at': _ovApprovedAt,
        'ov_approved_datetime': _ovApprovedDatetime,
        'ov_approved_user_id': _ovApprovedUserId,
        'ov_approved_user_name_short': _ovApprovedUserNameShort,
        'is_extra': _isExtra,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'ov_mask': serializeParam(
          _ovMask,
          ParamType.String,
        ),
        'o_id': serializeParam(
          _oId,
          ParamType.int,
        ),
        'o_mask': serializeParam(
          _oMask,
          ParamType.String,
        ),
        'o_unit_id': serializeParam(
          _oUnitId,
          ParamType.int,
        ),
        'o_unit_description': serializeParam(
          _oUnitDescription,
          ParamType.String,
        ),
        'o_requested_services': serializeParam(
          _oRequestedServices,
          ParamType.String,
        ),
        'o_type_code': serializeParam(
          _oTypeCode,
          ParamType.String,
        ),
        'o_type_sub_code': serializeParam(
          _oTypeSubCode,
          ParamType.String,
        ),
        'o_status_id': serializeParam(
          _oStatusId,
          ParamType.int,
        ),
        'o_status_description': serializeParam(
          _oStatusDescription,
          ParamType.String,
        ),
        'op_id': serializeParam(
          _opId,
          ParamType.int,
        ),
        'ov_status_id': serializeParam(
          _ovStatusId,
          ParamType.int,
        ),
        'ov_started_at': serializeParam(
          _ovStartedAt,
          ParamType.String,
        ),
        'ov_started_datetime': serializeParam(
          _ovStartedDatetime,
          ParamType.DateTime,
        ),
        'ov_ended_at': serializeParam(
          _ovEndedAt,
          ParamType.String,
        ),
        'ov_ended_datetime': serializeParam(
          _ovEndedDatetime,
          ParamType.DateTime,
        ),
        'ov_duration_hours': serializeParam(
          _ovDurationHours,
          ParamType.double,
        ),
        'ov_status_description': serializeParam(
          _ovStatusDescription,
          ParamType.String,
        ),
        'ov_processing_id': serializeParam(
          _ovProcessingId,
          ParamType.int,
        ),
        'ov_processing_description': serializeParam(
          _ovProcessingDescription,
          ParamType.String,
        ),
        'o_team_id': serializeParam(
          _oTeamId,
          ParamType.int,
        ),
        'ov_team_leader_id': serializeParam(
          _ovTeamLeaderId,
          ParamType.int,
        ),
        'ov_team_leader_name_short': serializeParam(
          _ovTeamLeaderNameShort,
          ParamType.String,
        ),
        'ov_team_amount': serializeParam(
          _ovTeamAmount,
          ParamType.int,
        ),
        'is_canceled': serializeParam(
          _isCanceled,
          ParamType.bool,
        ),
        'ov_comments': serializeParam(
          _ovComments,
          ParamType.String,
        ),
        'ov_is_filed': serializeParam(
          _ovIsFiled,
          ParamType.bool,
        ),
        'ov_assets_amount': serializeParam(
          _ovAssetsAmount,
          ParamType.int,
        ),
        'ov_assets_draft_amount': serializeParam(
          _ovAssetsDraftAmount,
          ParamType.int,
        ),
        'ov_assets_reported_amount': serializeParam(
          _ovAssetsReportedAmount,
          ParamType.int,
        ),
        'ov_assets_disapproved_amount': serializeParam(
          _ovAssetsDisapprovedAmount,
          ParamType.int,
        ),
        'ov_assets_approved_amount': serializeParam(
          _ovAssetsApprovedAmount,
          ParamType.int,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
        'o_asset_tag_description': serializeParam(
          _oAssetTagDescription,
          ParamType.String,
        ),
        'o_object_code': serializeParam(
          _oObjectCode,
          ParamType.String,
        ),
        'o_plan_code': serializeParam(
          _oPlanCode,
          ParamType.String,
        ),
        'o_contract_description': serializeParam(
          _oContractDescription,
          ParamType.String,
        ),
        'o_priority_id': serializeParam(
          _oPriorityId,
          ParamType.int,
        ),
        'o_priority_code': serializeParam(
          _oPriorityCode,
          ParamType.String,
        ),
        'o_priority_description': serializeParam(
          _oPriorityDescription,
          ParamType.String,
        ),
        'o_system_parent_id': serializeParam(
          _oSystemParentId,
          ParamType.int,
        ),
        'o_system_id': serializeParam(
          _oSystemId,
          ParamType.int,
        ),
        'o_unit_type_parent_id': serializeParam(
          _oUnitTypeParentId,
          ParamType.int,
        ),
        'o_unit_type_id': serializeParam(
          _oUnitTypeId,
          ParamType.int,
        ),
        'o_type_id': serializeParam(
          _oTypeId,
          ParamType.int,
        ),
        'o_type_sub_id': serializeParam(
          _oTypeSubId,
          ParamType.int,
        ),
        'o_cause_reason_description': serializeParam(
          _oCauseReasonDescription,
          ParamType.String,
        ),
        'o_cause_reason_id': serializeParam(
          _oCauseReasonId,
          ParamType.int,
        ),
        'ov_services_value': serializeParam(
          _ovServicesValue,
          ParamType.double,
        ),
        'ov_materials_value': serializeParam(
          _ovMaterialsValue,
          ParamType.double,
        ),
        'ov_vehicles_value': serializeParam(
          _ovVehiclesValue,
          ParamType.double,
        ),
        'ov_total_value': serializeParam(
          _ovTotalValue,
          ParamType.double,
        ),
        'ov_rpt_file_path': serializeParam(
          _ovRptFilePath,
          ParamType.String,
        ),
        'ov_rpt_file_name': serializeParam(
          _ovRptFileName,
          ParamType.String,
        ),
        'ov_o_status_id': serializeParam(
          _ovOStatusId,
          ParamType.int,
        ),
        'ov_o_status_description': serializeParam(
          _ovOStatusDescription,
          ParamType.String,
        ),
        'ov_o_suspended_reason_id': serializeParam(
          _ovOSuspendedReasonId,
          ParamType.int,
        ),
        'ov_o_suspended_reason_description': serializeParam(
          _ovOSuspendedReasonDescription,
          ParamType.String,
        ),
        'ov_o_progress': serializeParam(
          _ovOProgress,
          ParamType.double,
        ),
        'ov_img_file_path': serializeParam(
          _ovImgFilePath,
          ParamType.String,
        ),
        'ov_img_file_name': serializeParam(
          _ovImgFileName,
          ParamType.String,
        ),
        'ov_pdf_file_path': serializeParam(
          _ovPdfFilePath,
          ParamType.String,
        ),
        'ov_pdf_file_name': serializeParam(
          _ovPdfFileName,
          ParamType.String,
        ),
        'o_requested_at': serializeParam(
          _oRequestedAt,
          ParamType.String,
        ),
        'o_requested_datetime': serializeParam(
          _oRequestedDatetime,
          ParamType.DateTime,
        ),
        'o_requester_name': serializeParam(
          _oRequesterName,
          ParamType.String,
        ),
        'o_requester_phone': serializeParam(
          _oRequesterPhone,
          ParamType.String,
        ),
        'o_requester_team_id': serializeParam(
          _oRequesterTeamId,
          ParamType.int,
        ),
        'o_requester_team_code': serializeParam(
          _oRequesterTeamCode,
          ParamType.String,
        ),
        'ov_reported_at': serializeParam(
          _ovReportedAt,
          ParamType.String,
        ),
        'ov_reported_datetime': serializeParam(
          _ovReportedDatetime,
          ParamType.DateTime,
        ),
        'ov_reported_user_id': serializeParam(
          _ovReportedUserId,
          ParamType.int,
        ),
        'ov_reported_user_name_short': serializeParam(
          _ovReportedUserNameShort,
          ParamType.String,
        ),
        'ov_revised_at': serializeParam(
          _ovRevisedAt,
          ParamType.String,
        ),
        'ov_revised_datetime': serializeParam(
          _ovRevisedDatetime,
          ParamType.DateTime,
        ),
        'ov_revised_user_id': serializeParam(
          _ovRevisedUserId,
          ParamType.int,
        ),
        'ov_revised_user_name_short': serializeParam(
          _ovRevisedUserNameShort,
          ParamType.String,
        ),
        'ov_disapproved_at': serializeParam(
          _ovDisapprovedAt,
          ParamType.String,
        ),
        'ov_disapproved_datetime': serializeParam(
          _ovDisapprovedDatetime,
          ParamType.DateTime,
        ),
        'ov_disapproved_user_id': serializeParam(
          _ovDisapprovedUserId,
          ParamType.int,
        ),
        'ov_disapproved_user_name_short': serializeParam(
          _ovDisapprovedUserNameShort,
          ParamType.String,
        ),
        'ov_approved_at': serializeParam(
          _ovApprovedAt,
          ParamType.String,
        ),
        'ov_approved_datetime': serializeParam(
          _ovApprovedDatetime,
          ParamType.DateTime,
        ),
        'ov_approved_user_id': serializeParam(
          _ovApprovedUserId,
          ParamType.int,
        ),
        'ov_approved_user_name_short': serializeParam(
          _ovApprovedUserNameShort,
          ParamType.String,
        ),
        'is_extra': serializeParam(
          _isExtra,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtOrderVisitStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderVisitStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        ovMask: deserializeParam(
          data['ov_mask'],
          ParamType.String,
          false,
        ),
        oId: deserializeParam(
          data['o_id'],
          ParamType.int,
          false,
        ),
        oMask: deserializeParam(
          data['o_mask'],
          ParamType.String,
          false,
        ),
        oUnitId: deserializeParam(
          data['o_unit_id'],
          ParamType.int,
          false,
        ),
        oUnitDescription: deserializeParam(
          data['o_unit_description'],
          ParamType.String,
          false,
        ),
        oRequestedServices: deserializeParam(
          data['o_requested_services'],
          ParamType.String,
          false,
        ),
        oTypeCode: deserializeParam(
          data['o_type_code'],
          ParamType.String,
          false,
        ),
        oTypeSubCode: deserializeParam(
          data['o_type_sub_code'],
          ParamType.String,
          false,
        ),
        oStatusId: deserializeParam(
          data['o_status_id'],
          ParamType.int,
          false,
        ),
        oStatusDescription: deserializeParam(
          data['o_status_description'],
          ParamType.String,
          false,
        ),
        opId: deserializeParam(
          data['op_id'],
          ParamType.int,
          false,
        ),
        ovStatusId: deserializeParam(
          data['ov_status_id'],
          ParamType.int,
          false,
        ),
        ovStartedAt: deserializeParam(
          data['ov_started_at'],
          ParamType.String,
          false,
        ),
        ovStartedDatetime: deserializeParam(
          data['ov_started_datetime'],
          ParamType.DateTime,
          false,
        ),
        ovEndedAt: deserializeParam(
          data['ov_ended_at'],
          ParamType.String,
          false,
        ),
        ovEndedDatetime: deserializeParam(
          data['ov_ended_datetime'],
          ParamType.DateTime,
          false,
        ),
        ovDurationHours: deserializeParam(
          data['ov_duration_hours'],
          ParamType.double,
          false,
        ),
        ovStatusDescription: deserializeParam(
          data['ov_status_description'],
          ParamType.String,
          false,
        ),
        ovProcessingId: deserializeParam(
          data['ov_processing_id'],
          ParamType.int,
          false,
        ),
        ovProcessingDescription: deserializeParam(
          data['ov_processing_description'],
          ParamType.String,
          false,
        ),
        oTeamId: deserializeParam(
          data['o_team_id'],
          ParamType.int,
          false,
        ),
        ovTeamLeaderId: deserializeParam(
          data['ov_team_leader_id'],
          ParamType.int,
          false,
        ),
        ovTeamLeaderNameShort: deserializeParam(
          data['ov_team_leader_name_short'],
          ParamType.String,
          false,
        ),
        ovTeamAmount: deserializeParam(
          data['ov_team_amount'],
          ParamType.int,
          false,
        ),
        isCanceled: deserializeParam(
          data['is_canceled'],
          ParamType.bool,
          false,
        ),
        ovComments: deserializeParam(
          data['ov_comments'],
          ParamType.String,
          false,
        ),
        ovIsFiled: deserializeParam(
          data['ov_is_filed'],
          ParamType.bool,
          false,
        ),
        ovAssetsAmount: deserializeParam(
          data['ov_assets_amount'],
          ParamType.int,
          false,
        ),
        ovAssetsDraftAmount: deserializeParam(
          data['ov_assets_draft_amount'],
          ParamType.int,
          false,
        ),
        ovAssetsReportedAmount: deserializeParam(
          data['ov_assets_reported_amount'],
          ParamType.int,
          false,
        ),
        ovAssetsDisapprovedAmount: deserializeParam(
          data['ov_assets_disapproved_amount'],
          ParamType.int,
          false,
        ),
        ovAssetsApprovedAmount: deserializeParam(
          data['ov_assets_approved_amount'],
          ParamType.int,
          false,
        ),
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
        oAssetTagDescription: deserializeParam(
          data['o_asset_tag_description'],
          ParamType.String,
          false,
        ),
        oObjectCode: deserializeParam(
          data['o_object_code'],
          ParamType.String,
          false,
        ),
        oPlanCode: deserializeParam(
          data['o_plan_code'],
          ParamType.String,
          false,
        ),
        oContractDescription: deserializeParam(
          data['o_contract_description'],
          ParamType.String,
          false,
        ),
        oPriorityId: deserializeParam(
          data['o_priority_id'],
          ParamType.int,
          false,
        ),
        oPriorityCode: deserializeParam(
          data['o_priority_code'],
          ParamType.String,
          false,
        ),
        oPriorityDescription: deserializeParam(
          data['o_priority_description'],
          ParamType.String,
          false,
        ),
        oSystemParentId: deserializeParam(
          data['o_system_parent_id'],
          ParamType.int,
          false,
        ),
        oSystemId: deserializeParam(
          data['o_system_id'],
          ParamType.int,
          false,
        ),
        oUnitTypeParentId: deserializeParam(
          data['o_unit_type_parent_id'],
          ParamType.int,
          false,
        ),
        oUnitTypeId: deserializeParam(
          data['o_unit_type_id'],
          ParamType.int,
          false,
        ),
        oTypeId: deserializeParam(
          data['o_type_id'],
          ParamType.int,
          false,
        ),
        oTypeSubId: deserializeParam(
          data['o_type_sub_id'],
          ParamType.int,
          false,
        ),
        oCauseReasonDescription: deserializeParam(
          data['o_cause_reason_description'],
          ParamType.String,
          false,
        ),
        oCauseReasonId: deserializeParam(
          data['o_cause_reason_id'],
          ParamType.int,
          false,
        ),
        ovServicesValue: deserializeParam(
          data['ov_services_value'],
          ParamType.double,
          false,
        ),
        ovMaterialsValue: deserializeParam(
          data['ov_materials_value'],
          ParamType.double,
          false,
        ),
        ovVehiclesValue: deserializeParam(
          data['ov_vehicles_value'],
          ParamType.double,
          false,
        ),
        ovTotalValue: deserializeParam(
          data['ov_total_value'],
          ParamType.double,
          false,
        ),
        ovRptFilePath: deserializeParam(
          data['ov_rpt_file_path'],
          ParamType.String,
          false,
        ),
        ovRptFileName: deserializeParam(
          data['ov_rpt_file_name'],
          ParamType.String,
          false,
        ),
        ovOStatusId: deserializeParam(
          data['ov_o_status_id'],
          ParamType.int,
          false,
        ),
        ovOStatusDescription: deserializeParam(
          data['ov_o_status_description'],
          ParamType.String,
          false,
        ),
        ovOSuspendedReasonId: deserializeParam(
          data['ov_o_suspended_reason_id'],
          ParamType.int,
          false,
        ),
        ovOSuspendedReasonDescription: deserializeParam(
          data['ov_o_suspended_reason_description'],
          ParamType.String,
          false,
        ),
        ovOProgress: deserializeParam(
          data['ov_o_progress'],
          ParamType.double,
          false,
        ),
        ovImgFilePath: deserializeParam(
          data['ov_img_file_path'],
          ParamType.String,
          false,
        ),
        ovImgFileName: deserializeParam(
          data['ov_img_file_name'],
          ParamType.String,
          false,
        ),
        ovPdfFilePath: deserializeParam(
          data['ov_pdf_file_path'],
          ParamType.String,
          false,
        ),
        ovPdfFileName: deserializeParam(
          data['ov_pdf_file_name'],
          ParamType.String,
          false,
        ),
        oRequestedAt: deserializeParam(
          data['o_requested_at'],
          ParamType.String,
          false,
        ),
        oRequestedDatetime: deserializeParam(
          data['o_requested_datetime'],
          ParamType.DateTime,
          false,
        ),
        oRequesterName: deserializeParam(
          data['o_requester_name'],
          ParamType.String,
          false,
        ),
        oRequesterPhone: deserializeParam(
          data['o_requester_phone'],
          ParamType.String,
          false,
        ),
        oRequesterTeamId: deserializeParam(
          data['o_requester_team_id'],
          ParamType.int,
          false,
        ),
        oRequesterTeamCode: deserializeParam(
          data['o_requester_team_code'],
          ParamType.String,
          false,
        ),
        ovReportedAt: deserializeParam(
          data['ov_reported_at'],
          ParamType.String,
          false,
        ),
        ovReportedDatetime: deserializeParam(
          data['ov_reported_datetime'],
          ParamType.DateTime,
          false,
        ),
        ovReportedUserId: deserializeParam(
          data['ov_reported_user_id'],
          ParamType.int,
          false,
        ),
        ovReportedUserNameShort: deserializeParam(
          data['ov_reported_user_name_short'],
          ParamType.String,
          false,
        ),
        ovRevisedAt: deserializeParam(
          data['ov_revised_at'],
          ParamType.String,
          false,
        ),
        ovRevisedDatetime: deserializeParam(
          data['ov_revised_datetime'],
          ParamType.DateTime,
          false,
        ),
        ovRevisedUserId: deserializeParam(
          data['ov_revised_user_id'],
          ParamType.int,
          false,
        ),
        ovRevisedUserNameShort: deserializeParam(
          data['ov_revised_user_name_short'],
          ParamType.String,
          false,
        ),
        ovDisapprovedAt: deserializeParam(
          data['ov_disapproved_at'],
          ParamType.String,
          false,
        ),
        ovDisapprovedDatetime: deserializeParam(
          data['ov_disapproved_datetime'],
          ParamType.DateTime,
          false,
        ),
        ovDisapprovedUserId: deserializeParam(
          data['ov_disapproved_user_id'],
          ParamType.int,
          false,
        ),
        ovDisapprovedUserNameShort: deserializeParam(
          data['ov_disapproved_user_name_short'],
          ParamType.String,
          false,
        ),
        ovApprovedAt: deserializeParam(
          data['ov_approved_at'],
          ParamType.String,
          false,
        ),
        ovApprovedDatetime: deserializeParam(
          data['ov_approved_datetime'],
          ParamType.DateTime,
          false,
        ),
        ovApprovedUserId: deserializeParam(
          data['ov_approved_user_id'],
          ParamType.int,
          false,
        ),
        ovApprovedUserNameShort: deserializeParam(
          data['ov_approved_user_name_short'],
          ParamType.String,
          false,
        ),
        isExtra: deserializeParam(
          data['is_extra'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitStruct &&
        id == other.id &&
        ovMask == other.ovMask &&
        oId == other.oId &&
        oMask == other.oMask &&
        oUnitId == other.oUnitId &&
        oUnitDescription == other.oUnitDescription &&
        oRequestedServices == other.oRequestedServices &&
        oTypeCode == other.oTypeCode &&
        oTypeSubCode == other.oTypeSubCode &&
        oStatusId == other.oStatusId &&
        oStatusDescription == other.oStatusDescription &&
        opId == other.opId &&
        ovStatusId == other.ovStatusId &&
        ovStartedAt == other.ovStartedAt &&
        ovStartedDatetime == other.ovStartedDatetime &&
        ovEndedAt == other.ovEndedAt &&
        ovEndedDatetime == other.ovEndedDatetime &&
        ovDurationHours == other.ovDurationHours &&
        ovStatusDescription == other.ovStatusDescription &&
        ovProcessingId == other.ovProcessingId &&
        ovProcessingDescription == other.ovProcessingDescription &&
        oTeamId == other.oTeamId &&
        ovTeamLeaderId == other.ovTeamLeaderId &&
        ovTeamLeaderNameShort == other.ovTeamLeaderNameShort &&
        ovTeamAmount == other.ovTeamAmount &&
        isCanceled == other.isCanceled &&
        ovComments == other.ovComments &&
        ovIsFiled == other.ovIsFiled &&
        ovAssetsAmount == other.ovAssetsAmount &&
        ovAssetsDraftAmount == other.ovAssetsDraftAmount &&
        ovAssetsReportedAmount == other.ovAssetsReportedAmount &&
        ovAssetsDisapprovedAmount == other.ovAssetsDisapprovedAmount &&
        ovAssetsApprovedAmount == other.ovAssetsApprovedAmount &&
        versionMode == other.versionMode &&
        oAssetTagDescription == other.oAssetTagDescription &&
        oObjectCode == other.oObjectCode &&
        oPlanCode == other.oPlanCode &&
        oContractDescription == other.oContractDescription &&
        oPriorityId == other.oPriorityId &&
        oPriorityCode == other.oPriorityCode &&
        oPriorityDescription == other.oPriorityDescription &&
        oSystemParentId == other.oSystemParentId &&
        oSystemId == other.oSystemId &&
        oUnitTypeParentId == other.oUnitTypeParentId &&
        oUnitTypeId == other.oUnitTypeId &&
        oTypeId == other.oTypeId &&
        oTypeSubId == other.oTypeSubId &&
        oCauseReasonDescription == other.oCauseReasonDescription &&
        oCauseReasonId == other.oCauseReasonId &&
        ovServicesValue == other.ovServicesValue &&
        ovMaterialsValue == other.ovMaterialsValue &&
        ovVehiclesValue == other.ovVehiclesValue &&
        ovTotalValue == other.ovTotalValue &&
        ovRptFilePath == other.ovRptFilePath &&
        ovRptFileName == other.ovRptFileName &&
        ovOStatusId == other.ovOStatusId &&
        ovOStatusDescription == other.ovOStatusDescription &&
        ovOSuspendedReasonId == other.ovOSuspendedReasonId &&
        ovOSuspendedReasonDescription == other.ovOSuspendedReasonDescription &&
        ovOProgress == other.ovOProgress &&
        ovImgFilePath == other.ovImgFilePath &&
        ovImgFileName == other.ovImgFileName &&
        ovPdfFilePath == other.ovPdfFilePath &&
        ovPdfFileName == other.ovPdfFileName &&
        oRequestedAt == other.oRequestedAt &&
        oRequestedDatetime == other.oRequestedDatetime &&
        oRequesterName == other.oRequesterName &&
        oRequesterPhone == other.oRequesterPhone &&
        oRequesterTeamId == other.oRequesterTeamId &&
        oRequesterTeamCode == other.oRequesterTeamCode &&
        ovReportedAt == other.ovReportedAt &&
        ovReportedDatetime == other.ovReportedDatetime &&
        ovReportedUserId == other.ovReportedUserId &&
        ovReportedUserNameShort == other.ovReportedUserNameShort &&
        ovRevisedAt == other.ovRevisedAt &&
        ovRevisedDatetime == other.ovRevisedDatetime &&
        ovRevisedUserId == other.ovRevisedUserId &&
        ovRevisedUserNameShort == other.ovRevisedUserNameShort &&
        ovDisapprovedAt == other.ovDisapprovedAt &&
        ovDisapprovedDatetime == other.ovDisapprovedDatetime &&
        ovDisapprovedUserId == other.ovDisapprovedUserId &&
        ovDisapprovedUserNameShort == other.ovDisapprovedUserNameShort &&
        ovApprovedAt == other.ovApprovedAt &&
        ovApprovedDatetime == other.ovApprovedDatetime &&
        ovApprovedUserId == other.ovApprovedUserId &&
        ovApprovedUserNameShort == other.ovApprovedUserNameShort &&
        isExtra == other.isExtra;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        ovMask,
        oId,
        oMask,
        oUnitId,
        oUnitDescription,
        oRequestedServices,
        oTypeCode,
        oTypeSubCode,
        oStatusId,
        oStatusDescription,
        opId,
        ovStatusId,
        ovStartedAt,
        ovStartedDatetime,
        ovEndedAt,
        ovEndedDatetime,
        ovDurationHours,
        ovStatusDescription,
        ovProcessingId,
        ovProcessingDescription,
        oTeamId,
        ovTeamLeaderId,
        ovTeamLeaderNameShort,
        ovTeamAmount,
        isCanceled,
        ovComments,
        ovIsFiled,
        ovAssetsAmount,
        ovAssetsDraftAmount,
        ovAssetsReportedAmount,
        ovAssetsDisapprovedAmount,
        ovAssetsApprovedAmount,
        versionMode,
        oAssetTagDescription,
        oObjectCode,
        oPlanCode,
        oContractDescription,
        oPriorityId,
        oPriorityCode,
        oPriorityDescription,
        oSystemParentId,
        oSystemId,
        oUnitTypeParentId,
        oUnitTypeId,
        oTypeId,
        oTypeSubId,
        oCauseReasonDescription,
        oCauseReasonId,
        ovServicesValue,
        ovMaterialsValue,
        ovVehiclesValue,
        ovTotalValue,
        ovRptFilePath,
        ovRptFileName,
        ovOStatusId,
        ovOStatusDescription,
        ovOSuspendedReasonId,
        ovOSuspendedReasonDescription,
        ovOProgress,
        ovImgFilePath,
        ovImgFileName,
        ovPdfFilePath,
        ovPdfFileName,
        oRequestedAt,
        oRequestedDatetime,
        oRequesterName,
        oRequesterPhone,
        oRequesterTeamId,
        oRequesterTeamCode,
        ovReportedAt,
        ovReportedDatetime,
        ovReportedUserId,
        ovReportedUserNameShort,
        ovRevisedAt,
        ovRevisedDatetime,
        ovRevisedUserId,
        ovRevisedUserNameShort,
        ovDisapprovedAt,
        ovDisapprovedDatetime,
        ovDisapprovedUserId,
        ovDisapprovedUserNameShort,
        ovApprovedAt,
        ovApprovedDatetime,
        ovApprovedUserId,
        ovApprovedUserNameShort,
        isExtra
      ]);
}

DtOrderVisitStruct createDtOrderVisitStruct({
  int? id,
  String? ovMask,
  int? oId,
  String? oMask,
  int? oUnitId,
  String? oUnitDescription,
  String? oRequestedServices,
  String? oTypeCode,
  String? oTypeSubCode,
  int? oStatusId,
  String? oStatusDescription,
  int? opId,
  int? ovStatusId,
  String? ovStartedAt,
  DateTime? ovStartedDatetime,
  String? ovEndedAt,
  DateTime? ovEndedDatetime,
  double? ovDurationHours,
  String? ovStatusDescription,
  int? ovProcessingId,
  String? ovProcessingDescription,
  int? oTeamId,
  int? ovTeamLeaderId,
  String? ovTeamLeaderNameShort,
  int? ovTeamAmount,
  bool? isCanceled,
  String? ovComments,
  bool? ovIsFiled,
  int? ovAssetsAmount,
  int? ovAssetsDraftAmount,
  int? ovAssetsReportedAmount,
  int? ovAssetsDisapprovedAmount,
  int? ovAssetsApprovedAmount,
  String? versionMode,
  String? oAssetTagDescription,
  String? oObjectCode,
  String? oPlanCode,
  String? oContractDescription,
  int? oPriorityId,
  String? oPriorityCode,
  String? oPriorityDescription,
  int? oSystemParentId,
  int? oSystemId,
  int? oUnitTypeParentId,
  int? oUnitTypeId,
  int? oTypeId,
  int? oTypeSubId,
  String? oCauseReasonDescription,
  int? oCauseReasonId,
  double? ovServicesValue,
  double? ovMaterialsValue,
  double? ovVehiclesValue,
  double? ovTotalValue,
  String? ovRptFilePath,
  String? ovRptFileName,
  int? ovOStatusId,
  String? ovOStatusDescription,
  int? ovOSuspendedReasonId,
  String? ovOSuspendedReasonDescription,
  double? ovOProgress,
  String? ovImgFilePath,
  String? ovImgFileName,
  String? ovPdfFilePath,
  String? ovPdfFileName,
  String? oRequestedAt,
  DateTime? oRequestedDatetime,
  String? oRequesterName,
  String? oRequesterPhone,
  int? oRequesterTeamId,
  String? oRequesterTeamCode,
  String? ovReportedAt,
  DateTime? ovReportedDatetime,
  int? ovReportedUserId,
  String? ovReportedUserNameShort,
  String? ovRevisedAt,
  DateTime? ovRevisedDatetime,
  int? ovRevisedUserId,
  String? ovRevisedUserNameShort,
  String? ovDisapprovedAt,
  DateTime? ovDisapprovedDatetime,
  int? ovDisapprovedUserId,
  String? ovDisapprovedUserNameShort,
  String? ovApprovedAt,
  DateTime? ovApprovedDatetime,
  int? ovApprovedUserId,
  String? ovApprovedUserNameShort,
  bool? isExtra,
}) =>
    DtOrderVisitStruct(
      id: id,
      ovMask: ovMask,
      oId: oId,
      oMask: oMask,
      oUnitId: oUnitId,
      oUnitDescription: oUnitDescription,
      oRequestedServices: oRequestedServices,
      oTypeCode: oTypeCode,
      oTypeSubCode: oTypeSubCode,
      oStatusId: oStatusId,
      oStatusDescription: oStatusDescription,
      opId: opId,
      ovStatusId: ovStatusId,
      ovStartedAt: ovStartedAt,
      ovStartedDatetime: ovStartedDatetime,
      ovEndedAt: ovEndedAt,
      ovEndedDatetime: ovEndedDatetime,
      ovDurationHours: ovDurationHours,
      ovStatusDescription: ovStatusDescription,
      ovProcessingId: ovProcessingId,
      ovProcessingDescription: ovProcessingDescription,
      oTeamId: oTeamId,
      ovTeamLeaderId: ovTeamLeaderId,
      ovTeamLeaderNameShort: ovTeamLeaderNameShort,
      ovTeamAmount: ovTeamAmount,
      isCanceled: isCanceled,
      ovComments: ovComments,
      ovIsFiled: ovIsFiled,
      ovAssetsAmount: ovAssetsAmount,
      ovAssetsDraftAmount: ovAssetsDraftAmount,
      ovAssetsReportedAmount: ovAssetsReportedAmount,
      ovAssetsDisapprovedAmount: ovAssetsDisapprovedAmount,
      ovAssetsApprovedAmount: ovAssetsApprovedAmount,
      versionMode: versionMode,
      oAssetTagDescription: oAssetTagDescription,
      oObjectCode: oObjectCode,
      oPlanCode: oPlanCode,
      oContractDescription: oContractDescription,
      oPriorityId: oPriorityId,
      oPriorityCode: oPriorityCode,
      oPriorityDescription: oPriorityDescription,
      oSystemParentId: oSystemParentId,
      oSystemId: oSystemId,
      oUnitTypeParentId: oUnitTypeParentId,
      oUnitTypeId: oUnitTypeId,
      oTypeId: oTypeId,
      oTypeSubId: oTypeSubId,
      oCauseReasonDescription: oCauseReasonDescription,
      oCauseReasonId: oCauseReasonId,
      ovServicesValue: ovServicesValue,
      ovMaterialsValue: ovMaterialsValue,
      ovVehiclesValue: ovVehiclesValue,
      ovTotalValue: ovTotalValue,
      ovRptFilePath: ovRptFilePath,
      ovRptFileName: ovRptFileName,
      ovOStatusId: ovOStatusId,
      ovOStatusDescription: ovOStatusDescription,
      ovOSuspendedReasonId: ovOSuspendedReasonId,
      ovOSuspendedReasonDescription: ovOSuspendedReasonDescription,
      ovOProgress: ovOProgress,
      ovImgFilePath: ovImgFilePath,
      ovImgFileName: ovImgFileName,
      ovPdfFilePath: ovPdfFilePath,
      ovPdfFileName: ovPdfFileName,
      oRequestedAt: oRequestedAt,
      oRequestedDatetime: oRequestedDatetime,
      oRequesterName: oRequesterName,
      oRequesterPhone: oRequesterPhone,
      oRequesterTeamId: oRequesterTeamId,
      oRequesterTeamCode: oRequesterTeamCode,
      ovReportedAt: ovReportedAt,
      ovReportedDatetime: ovReportedDatetime,
      ovReportedUserId: ovReportedUserId,
      ovReportedUserNameShort: ovReportedUserNameShort,
      ovRevisedAt: ovRevisedAt,
      ovRevisedDatetime: ovRevisedDatetime,
      ovRevisedUserId: ovRevisedUserId,
      ovRevisedUserNameShort: ovRevisedUserNameShort,
      ovDisapprovedAt: ovDisapprovedAt,
      ovDisapprovedDatetime: ovDisapprovedDatetime,
      ovDisapprovedUserId: ovDisapprovedUserId,
      ovDisapprovedUserNameShort: ovDisapprovedUserNameShort,
      ovApprovedAt: ovApprovedAt,
      ovApprovedDatetime: ovApprovedDatetime,
      ovApprovedUserId: ovApprovedUserId,
      ovApprovedUserNameShort: ovApprovedUserNameShort,
      isExtra: isExtra,
    );

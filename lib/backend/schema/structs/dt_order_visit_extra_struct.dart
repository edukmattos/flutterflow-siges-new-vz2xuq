// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitExtraStruct extends BaseStruct {
  DtOrderVisitExtraStruct({
    int? id,
    String? oMask,
    int? unitId,
    String? unitDescription,
    int? oTypeId,
    String? oTypeCode,
    String? oTypeDescription,
    int? oTypeSubId,
    String? oTypeSubCode,
    String? oTypeSubDescription,
    String? requestedServices,
    int? assetTagId,
    String? assetTagDescription,
    int? providerCompanyId,
    String? providerCompanyDescription,
    String? providerCompanyImgFilePath,
    String? providerCompanyImgFileName,
    int? priorityId,
    String? priorityCode,
    String? priorityDescription,
    String? startedAt,
    DateTime? startedDatetime,
    String? endedAt,
    DateTime? endedDatetime,
    double? durationHours,
    int? processingId,
    String? processingDescription,
    String? comments,
    bool? isArchived,
    String? reportedAt,
    DateTime? reportedDatetime,
    int? reportedUserId,
    String? reportedUserNameShort,
    String? revisedAt,
    DateTime? revisedDatetime,
    int? revisedUserId,
    String? revisedUserNameShort,
    String? disapprovedAt,
    DateTime? disapprovedDatetime,
    int? disapprovedUserId,
    String? disapprovedUserNameShort,
    String? disapprovedComments,
    String? approvedAt,
    DateTime? approvedDatetime,
    int? approvedUserId,
    String? approvedUserNameShort,
    String? archivedAt,
    int? archivedUserId,
    String? archivedUserNameShort,
    int? teamLeaderId,
    String? teamLeaderUserNameShort,
    String? teamLeaderUserImgFilePath,
    String? teamLeaderUserImgFileName,
    int? teamAmount,
    int? teamId,
    String? teamDescription,
    String? teamNamesShort,
    String? createdAt,
    DateTime? createdDatetime,
    int? createdUserId,
    String? createdUserNameShort,
    int? systemParentId,
    int? systemId,
    int? unitTypeParentId,
    int? unitTypeId,
    int? oCauseReasonId,
    String? oCauseReasonDescription,
    bool? isBlocked,
    String? unblockedAt,
    DateTime? unblockedDatetime,
    int? unblockedUserId,
    String? unblockedUserNameShort,
    String? unarchivedAt,
    DateTime? unarchivedDatetime,
    int? unarchivedUserId,
    String? unarchivedUserNameShort,
  })  : _id = id,
        _oMask = oMask,
        _unitId = unitId,
        _unitDescription = unitDescription,
        _oTypeId = oTypeId,
        _oTypeCode = oTypeCode,
        _oTypeDescription = oTypeDescription,
        _oTypeSubId = oTypeSubId,
        _oTypeSubCode = oTypeSubCode,
        _oTypeSubDescription = oTypeSubDescription,
        _requestedServices = requestedServices,
        _assetTagId = assetTagId,
        _assetTagDescription = assetTagDescription,
        _providerCompanyId = providerCompanyId,
        _providerCompanyDescription = providerCompanyDescription,
        _providerCompanyImgFilePath = providerCompanyImgFilePath,
        _providerCompanyImgFileName = providerCompanyImgFileName,
        _priorityId = priorityId,
        _priorityCode = priorityCode,
        _priorityDescription = priorityDescription,
        _startedAt = startedAt,
        _startedDatetime = startedDatetime,
        _endedAt = endedAt,
        _endedDatetime = endedDatetime,
        _durationHours = durationHours,
        _processingId = processingId,
        _processingDescription = processingDescription,
        _comments = comments,
        _isArchived = isArchived,
        _reportedAt = reportedAt,
        _reportedDatetime = reportedDatetime,
        _reportedUserId = reportedUserId,
        _reportedUserNameShort = reportedUserNameShort,
        _revisedAt = revisedAt,
        _revisedDatetime = revisedDatetime,
        _revisedUserId = revisedUserId,
        _revisedUserNameShort = revisedUserNameShort,
        _disapprovedAt = disapprovedAt,
        _disapprovedDatetime = disapprovedDatetime,
        _disapprovedUserId = disapprovedUserId,
        _disapprovedUserNameShort = disapprovedUserNameShort,
        _disapprovedComments = disapprovedComments,
        _approvedAt = approvedAt,
        _approvedDatetime = approvedDatetime,
        _approvedUserId = approvedUserId,
        _approvedUserNameShort = approvedUserNameShort,
        _archivedAt = archivedAt,
        _archivedUserId = archivedUserId,
        _archivedUserNameShort = archivedUserNameShort,
        _teamLeaderId = teamLeaderId,
        _teamLeaderUserNameShort = teamLeaderUserNameShort,
        _teamLeaderUserImgFilePath = teamLeaderUserImgFilePath,
        _teamLeaderUserImgFileName = teamLeaderUserImgFileName,
        _teamAmount = teamAmount,
        _teamId = teamId,
        _teamDescription = teamDescription,
        _teamNamesShort = teamNamesShort,
        _createdAt = createdAt,
        _createdDatetime = createdDatetime,
        _createdUserId = createdUserId,
        _createdUserNameShort = createdUserNameShort,
        _systemParentId = systemParentId,
        _systemId = systemId,
        _unitTypeParentId = unitTypeParentId,
        _unitTypeId = unitTypeId,
        _oCauseReasonId = oCauseReasonId,
        _oCauseReasonDescription = oCauseReasonDescription,
        _isBlocked = isBlocked,
        _unblockedAt = unblockedAt,
        _unblockedDatetime = unblockedDatetime,
        _unblockedUserId = unblockedUserId,
        _unblockedUserNameShort = unblockedUserNameShort,
        _unarchivedAt = unarchivedAt,
        _unarchivedDatetime = unarchivedDatetime,
        _unarchivedUserId = unarchivedUserId,
        _unarchivedUserNameShort = unarchivedUserNameShort;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "o_mask" field.
  String? _oMask;
  String get oMask => _oMask ?? '';
  set oMask(String? val) => _oMask = val;

  bool hasOMask() => _oMask != null;

  // "unit_id" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  set unitId(int? val) => _unitId = val;

  void incrementUnitId(int amount) => unitId = unitId + amount;

  bool hasUnitId() => _unitId != null;

  // "unit_description" field.
  String? _unitDescription;
  String get unitDescription => _unitDescription ?? '';
  set unitDescription(String? val) => _unitDescription = val;

  bool hasUnitDescription() => _unitDescription != null;

  // "o_type_id" field.
  int? _oTypeId;
  int get oTypeId => _oTypeId ?? 0;
  set oTypeId(int? val) => _oTypeId = val;

  void incrementOTypeId(int amount) => oTypeId = oTypeId + amount;

  bool hasOTypeId() => _oTypeId != null;

  // "o_type_code" field.
  String? _oTypeCode;
  String get oTypeCode => _oTypeCode ?? '';
  set oTypeCode(String? val) => _oTypeCode = val;

  bool hasOTypeCode() => _oTypeCode != null;

  // "o_type_description" field.
  String? _oTypeDescription;
  String get oTypeDescription => _oTypeDescription ?? '';
  set oTypeDescription(String? val) => _oTypeDescription = val;

  bool hasOTypeDescription() => _oTypeDescription != null;

  // "o_type_sub_id" field.
  int? _oTypeSubId;
  int get oTypeSubId => _oTypeSubId ?? 0;
  set oTypeSubId(int? val) => _oTypeSubId = val;

  void incrementOTypeSubId(int amount) => oTypeSubId = oTypeSubId + amount;

  bool hasOTypeSubId() => _oTypeSubId != null;

  // "o_type_sub_code" field.
  String? _oTypeSubCode;
  String get oTypeSubCode => _oTypeSubCode ?? '';
  set oTypeSubCode(String? val) => _oTypeSubCode = val;

  bool hasOTypeSubCode() => _oTypeSubCode != null;

  // "o_type_sub_description" field.
  String? _oTypeSubDescription;
  String get oTypeSubDescription => _oTypeSubDescription ?? '';
  set oTypeSubDescription(String? val) => _oTypeSubDescription = val;

  bool hasOTypeSubDescription() => _oTypeSubDescription != null;

  // "requested_services" field.
  String? _requestedServices;
  String get requestedServices => _requestedServices ?? '';
  set requestedServices(String? val) => _requestedServices = val;

  bool hasRequestedServices() => _requestedServices != null;

  // "asset_tag_id" field.
  int? _assetTagId;
  int get assetTagId => _assetTagId ?? 0;
  set assetTagId(int? val) => _assetTagId = val;

  void incrementAssetTagId(int amount) => assetTagId = assetTagId + amount;

  bool hasAssetTagId() => _assetTagId != null;

  // "asset_tag_description" field.
  String? _assetTagDescription;
  String get assetTagDescription => _assetTagDescription ?? '';
  set assetTagDescription(String? val) => _assetTagDescription = val;

  bool hasAssetTagDescription() => _assetTagDescription != null;

  // "provider_company_id" field.
  int? _providerCompanyId;
  int get providerCompanyId => _providerCompanyId ?? 0;
  set providerCompanyId(int? val) => _providerCompanyId = val;

  void incrementProviderCompanyId(int amount) =>
      providerCompanyId = providerCompanyId + amount;

  bool hasProviderCompanyId() => _providerCompanyId != null;

  // "provider_company_description" field.
  String? _providerCompanyDescription;
  String get providerCompanyDescription => _providerCompanyDescription ?? '';
  set providerCompanyDescription(String? val) =>
      _providerCompanyDescription = val;

  bool hasProviderCompanyDescription() => _providerCompanyDescription != null;

  // "provider_company_img_file_path" field.
  String? _providerCompanyImgFilePath;
  String get providerCompanyImgFilePath => _providerCompanyImgFilePath ?? '';
  set providerCompanyImgFilePath(String? val) =>
      _providerCompanyImgFilePath = val;

  bool hasProviderCompanyImgFilePath() => _providerCompanyImgFilePath != null;

  // "provider_company_img_file_name" field.
  String? _providerCompanyImgFileName;
  String get providerCompanyImgFileName => _providerCompanyImgFileName ?? '';
  set providerCompanyImgFileName(String? val) =>
      _providerCompanyImgFileName = val;

  bool hasProviderCompanyImgFileName() => _providerCompanyImgFileName != null;

  // "priority_id" field.
  int? _priorityId;
  int get priorityId => _priorityId ?? 0;
  set priorityId(int? val) => _priorityId = val;

  void incrementPriorityId(int amount) => priorityId = priorityId + amount;

  bool hasPriorityId() => _priorityId != null;

  // "priority_code" field.
  String? _priorityCode;
  String get priorityCode => _priorityCode ?? '';
  set priorityCode(String? val) => _priorityCode = val;

  bool hasPriorityCode() => _priorityCode != null;

  // "priority_description" field.
  String? _priorityDescription;
  String get priorityDescription => _priorityDescription ?? '';
  set priorityDescription(String? val) => _priorityDescription = val;

  bool hasPriorityDescription() => _priorityDescription != null;

  // "started_at" field.
  String? _startedAt;
  String get startedAt => _startedAt ?? '';
  set startedAt(String? val) => _startedAt = val;

  bool hasStartedAt() => _startedAt != null;

  // "started_datetime" field.
  DateTime? _startedDatetime;
  DateTime? get startedDatetime => _startedDatetime;
  set startedDatetime(DateTime? val) => _startedDatetime = val;

  bool hasStartedDatetime() => _startedDatetime != null;

  // "ended_at" field.
  String? _endedAt;
  String get endedAt => _endedAt ?? '';
  set endedAt(String? val) => _endedAt = val;

  bool hasEndedAt() => _endedAt != null;

  // "ended_datetime" field.
  DateTime? _endedDatetime;
  DateTime? get endedDatetime => _endedDatetime;
  set endedDatetime(DateTime? val) => _endedDatetime = val;

  bool hasEndedDatetime() => _endedDatetime != null;

  // "duration_hours" field.
  double? _durationHours;
  double get durationHours => _durationHours ?? 0.0;
  set durationHours(double? val) => _durationHours = val;

  void incrementDurationHours(double amount) =>
      durationHours = durationHours + amount;

  bool hasDurationHours() => _durationHours != null;

  // "processing_id" field.
  int? _processingId;
  int get processingId => _processingId ?? 0;
  set processingId(int? val) => _processingId = val;

  void incrementProcessingId(int amount) =>
      processingId = processingId + amount;

  bool hasProcessingId() => _processingId != null;

  // "processing_description" field.
  String? _processingDescription;
  String get processingDescription => _processingDescription ?? '';
  set processingDescription(String? val) => _processingDescription = val;

  bool hasProcessingDescription() => _processingDescription != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  set comments(String? val) => _comments = val;

  bool hasComments() => _comments != null;

  // "is_archived" field.
  bool? _isArchived;
  bool get isArchived => _isArchived ?? false;
  set isArchived(bool? val) => _isArchived = val;

  bool hasIsArchived() => _isArchived != null;

  // "reported_at" field.
  String? _reportedAt;
  String get reportedAt => _reportedAt ?? '';
  set reportedAt(String? val) => _reportedAt = val;

  bool hasReportedAt() => _reportedAt != null;

  // "reported_datetime" field.
  DateTime? _reportedDatetime;
  DateTime? get reportedDatetime => _reportedDatetime;
  set reportedDatetime(DateTime? val) => _reportedDatetime = val;

  bool hasReportedDatetime() => _reportedDatetime != null;

  // "reported_user_id" field.
  int? _reportedUserId;
  int get reportedUserId => _reportedUserId ?? 0;
  set reportedUserId(int? val) => _reportedUserId = val;

  void incrementReportedUserId(int amount) =>
      reportedUserId = reportedUserId + amount;

  bool hasReportedUserId() => _reportedUserId != null;

  // "reported_user_name_short" field.
  String? _reportedUserNameShort;
  String get reportedUserNameShort => _reportedUserNameShort ?? '';
  set reportedUserNameShort(String? val) => _reportedUserNameShort = val;

  bool hasReportedUserNameShort() => _reportedUserNameShort != null;

  // "revised_at" field.
  String? _revisedAt;
  String get revisedAt => _revisedAt ?? '';
  set revisedAt(String? val) => _revisedAt = val;

  bool hasRevisedAt() => _revisedAt != null;

  // "revised_datetime" field.
  DateTime? _revisedDatetime;
  DateTime? get revisedDatetime => _revisedDatetime;
  set revisedDatetime(DateTime? val) => _revisedDatetime = val;

  bool hasRevisedDatetime() => _revisedDatetime != null;

  // "revised_user_id" field.
  int? _revisedUserId;
  int get revisedUserId => _revisedUserId ?? 0;
  set revisedUserId(int? val) => _revisedUserId = val;

  void incrementRevisedUserId(int amount) =>
      revisedUserId = revisedUserId + amount;

  bool hasRevisedUserId() => _revisedUserId != null;

  // "revised_user_name_short" field.
  String? _revisedUserNameShort;
  String get revisedUserNameShort => _revisedUserNameShort ?? '';
  set revisedUserNameShort(String? val) => _revisedUserNameShort = val;

  bool hasRevisedUserNameShort() => _revisedUserNameShort != null;

  // "disapproved_at" field.
  String? _disapprovedAt;
  String get disapprovedAt => _disapprovedAt ?? '';
  set disapprovedAt(String? val) => _disapprovedAt = val;

  bool hasDisapprovedAt() => _disapprovedAt != null;

  // "disapproved_datetime" field.
  DateTime? _disapprovedDatetime;
  DateTime? get disapprovedDatetime => _disapprovedDatetime;
  set disapprovedDatetime(DateTime? val) => _disapprovedDatetime = val;

  bool hasDisapprovedDatetime() => _disapprovedDatetime != null;

  // "disapproved_user_id" field.
  int? _disapprovedUserId;
  int get disapprovedUserId => _disapprovedUserId ?? 0;
  set disapprovedUserId(int? val) => _disapprovedUserId = val;

  void incrementDisapprovedUserId(int amount) =>
      disapprovedUserId = disapprovedUserId + amount;

  bool hasDisapprovedUserId() => _disapprovedUserId != null;

  // "disapproved_user_name_short" field.
  String? _disapprovedUserNameShort;
  String get disapprovedUserNameShort => _disapprovedUserNameShort ?? '';
  set disapprovedUserNameShort(String? val) => _disapprovedUserNameShort = val;

  bool hasDisapprovedUserNameShort() => _disapprovedUserNameShort != null;

  // "disapproved_comments" field.
  String? _disapprovedComments;
  String get disapprovedComments => _disapprovedComments ?? '';
  set disapprovedComments(String? val) => _disapprovedComments = val;

  bool hasDisapprovedComments() => _disapprovedComments != null;

  // "approved_at" field.
  String? _approvedAt;
  String get approvedAt => _approvedAt ?? '';
  set approvedAt(String? val) => _approvedAt = val;

  bool hasApprovedAt() => _approvedAt != null;

  // "approved_datetime" field.
  DateTime? _approvedDatetime;
  DateTime? get approvedDatetime => _approvedDatetime;
  set approvedDatetime(DateTime? val) => _approvedDatetime = val;

  bool hasApprovedDatetime() => _approvedDatetime != null;

  // "approved_user_id" field.
  int? _approvedUserId;
  int get approvedUserId => _approvedUserId ?? 0;
  set approvedUserId(int? val) => _approvedUserId = val;

  void incrementApprovedUserId(int amount) =>
      approvedUserId = approvedUserId + amount;

  bool hasApprovedUserId() => _approvedUserId != null;

  // "approved_user_name_short" field.
  String? _approvedUserNameShort;
  String get approvedUserNameShort => _approvedUserNameShort ?? '';
  set approvedUserNameShort(String? val) => _approvedUserNameShort = val;

  bool hasApprovedUserNameShort() => _approvedUserNameShort != null;

  // "archived_at" field.
  String? _archivedAt;
  String get archivedAt => _archivedAt ?? '';
  set archivedAt(String? val) => _archivedAt = val;

  bool hasArchivedAt() => _archivedAt != null;

  // "archived_user_id" field.
  int? _archivedUserId;
  int get archivedUserId => _archivedUserId ?? 0;
  set archivedUserId(int? val) => _archivedUserId = val;

  void incrementArchivedUserId(int amount) =>
      archivedUserId = archivedUserId + amount;

  bool hasArchivedUserId() => _archivedUserId != null;

  // "archived_user_name_short" field.
  String? _archivedUserNameShort;
  String get archivedUserNameShort => _archivedUserNameShort ?? '';
  set archivedUserNameShort(String? val) => _archivedUserNameShort = val;

  bool hasArchivedUserNameShort() => _archivedUserNameShort != null;

  // "team_leader_id" field.
  int? _teamLeaderId;
  int get teamLeaderId => _teamLeaderId ?? 0;
  set teamLeaderId(int? val) => _teamLeaderId = val;

  void incrementTeamLeaderId(int amount) =>
      teamLeaderId = teamLeaderId + amount;

  bool hasTeamLeaderId() => _teamLeaderId != null;

  // "team_leader_user_name_short" field.
  String? _teamLeaderUserNameShort;
  String get teamLeaderUserNameShort => _teamLeaderUserNameShort ?? '';
  set teamLeaderUserNameShort(String? val) => _teamLeaderUserNameShort = val;

  bool hasTeamLeaderUserNameShort() => _teamLeaderUserNameShort != null;

  // "team_leader_user_img_file_path" field.
  String? _teamLeaderUserImgFilePath;
  String get teamLeaderUserImgFilePath => _teamLeaderUserImgFilePath ?? '';
  set teamLeaderUserImgFilePath(String? val) =>
      _teamLeaderUserImgFilePath = val;

  bool hasTeamLeaderUserImgFilePath() => _teamLeaderUserImgFilePath != null;

  // "team_leader_user_img_file_name" field.
  String? _teamLeaderUserImgFileName;
  String get teamLeaderUserImgFileName => _teamLeaderUserImgFileName ?? '';
  set teamLeaderUserImgFileName(String? val) =>
      _teamLeaderUserImgFileName = val;

  bool hasTeamLeaderUserImgFileName() => _teamLeaderUserImgFileName != null;

  // "team_amount" field.
  int? _teamAmount;
  int get teamAmount => _teamAmount ?? 0;
  set teamAmount(int? val) => _teamAmount = val;

  void incrementTeamAmount(int amount) => teamAmount = teamAmount + amount;

  bool hasTeamAmount() => _teamAmount != null;

  // "team_id" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;

  void incrementTeamId(int amount) => teamId = teamId + amount;

  bool hasTeamId() => _teamId != null;

  // "team_description" field.
  String? _teamDescription;
  String get teamDescription => _teamDescription ?? '';
  set teamDescription(String? val) => _teamDescription = val;

  bool hasTeamDescription() => _teamDescription != null;

  // "team_names_short" field.
  String? _teamNamesShort;
  String get teamNamesShort => _teamNamesShort ?? '';
  set teamNamesShort(String? val) => _teamNamesShort = val;

  bool hasTeamNamesShort() => _teamNamesShort != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "created_datetime" field.
  DateTime? _createdDatetime;
  DateTime? get createdDatetime => _createdDatetime;
  set createdDatetime(DateTime? val) => _createdDatetime = val;

  bool hasCreatedDatetime() => _createdDatetime != null;

  // "created_user_id" field.
  int? _createdUserId;
  int get createdUserId => _createdUserId ?? 0;
  set createdUserId(int? val) => _createdUserId = val;

  void incrementCreatedUserId(int amount) =>
      createdUserId = createdUserId + amount;

  bool hasCreatedUserId() => _createdUserId != null;

  // "created_user_name_short" field.
  String? _createdUserNameShort;
  String get createdUserNameShort => _createdUserNameShort ?? '';
  set createdUserNameShort(String? val) => _createdUserNameShort = val;

  bool hasCreatedUserNameShort() => _createdUserNameShort != null;

  // "system_parent_id" field.
  int? _systemParentId;
  int get systemParentId => _systemParentId ?? 0;
  set systemParentId(int? val) => _systemParentId = val;

  void incrementSystemParentId(int amount) =>
      systemParentId = systemParentId + amount;

  bool hasSystemParentId() => _systemParentId != null;

  // "system_id" field.
  int? _systemId;
  int get systemId => _systemId ?? 0;
  set systemId(int? val) => _systemId = val;

  void incrementSystemId(int amount) => systemId = systemId + amount;

  bool hasSystemId() => _systemId != null;

  // "unit_type_parent_id" field.
  int? _unitTypeParentId;
  int get unitTypeParentId => _unitTypeParentId ?? 0;
  set unitTypeParentId(int? val) => _unitTypeParentId = val;

  void incrementUnitTypeParentId(int amount) =>
      unitTypeParentId = unitTypeParentId + amount;

  bool hasUnitTypeParentId() => _unitTypeParentId != null;

  // "unit_type_id" field.
  int? _unitTypeId;
  int get unitTypeId => _unitTypeId ?? 0;
  set unitTypeId(int? val) => _unitTypeId = val;

  void incrementUnitTypeId(int amount) => unitTypeId = unitTypeId + amount;

  bool hasUnitTypeId() => _unitTypeId != null;

  // "o_cause_reason_id" field.
  int? _oCauseReasonId;
  int get oCauseReasonId => _oCauseReasonId ?? 0;
  set oCauseReasonId(int? val) => _oCauseReasonId = val;

  void incrementOCauseReasonId(int amount) =>
      oCauseReasonId = oCauseReasonId + amount;

  bool hasOCauseReasonId() => _oCauseReasonId != null;

  // "o_cause_reason_description" field.
  String? _oCauseReasonDescription;
  String get oCauseReasonDescription => _oCauseReasonDescription ?? '';
  set oCauseReasonDescription(String? val) => _oCauseReasonDescription = val;

  bool hasOCauseReasonDescription() => _oCauseReasonDescription != null;

  // "is_blocked" field.
  bool? _isBlocked;
  bool get isBlocked => _isBlocked ?? false;
  set isBlocked(bool? val) => _isBlocked = val;

  bool hasIsBlocked() => _isBlocked != null;

  // "unblocked_at" field.
  String? _unblockedAt;
  String get unblockedAt => _unblockedAt ?? '';
  set unblockedAt(String? val) => _unblockedAt = val;

  bool hasUnblockedAt() => _unblockedAt != null;

  // "unblocked_datetime" field.
  DateTime? _unblockedDatetime;
  DateTime? get unblockedDatetime => _unblockedDatetime;
  set unblockedDatetime(DateTime? val) => _unblockedDatetime = val;

  bool hasUnblockedDatetime() => _unblockedDatetime != null;

  // "unblocked_user_id" field.
  int? _unblockedUserId;
  int get unblockedUserId => _unblockedUserId ?? 0;
  set unblockedUserId(int? val) => _unblockedUserId = val;

  void incrementUnblockedUserId(int amount) =>
      unblockedUserId = unblockedUserId + amount;

  bool hasUnblockedUserId() => _unblockedUserId != null;

  // "unblocked_user_name_short" field.
  String? _unblockedUserNameShort;
  String get unblockedUserNameShort => _unblockedUserNameShort ?? '';
  set unblockedUserNameShort(String? val) => _unblockedUserNameShort = val;

  bool hasUnblockedUserNameShort() => _unblockedUserNameShort != null;

  // "unarchived_at" field.
  String? _unarchivedAt;
  String get unarchivedAt => _unarchivedAt ?? '';
  set unarchivedAt(String? val) => _unarchivedAt = val;

  bool hasUnarchivedAt() => _unarchivedAt != null;

  // "unarchived_datetime" field.
  DateTime? _unarchivedDatetime;
  DateTime? get unarchivedDatetime => _unarchivedDatetime;
  set unarchivedDatetime(DateTime? val) => _unarchivedDatetime = val;

  bool hasUnarchivedDatetime() => _unarchivedDatetime != null;

  // "unarchived_user_id" field.
  int? _unarchivedUserId;
  int get unarchivedUserId => _unarchivedUserId ?? 0;
  set unarchivedUserId(int? val) => _unarchivedUserId = val;

  void incrementUnarchivedUserId(int amount) =>
      unarchivedUserId = unarchivedUserId + amount;

  bool hasUnarchivedUserId() => _unarchivedUserId != null;

  // "unarchived_user_name_short" field.
  String? _unarchivedUserNameShort;
  String get unarchivedUserNameShort => _unarchivedUserNameShort ?? '';
  set unarchivedUserNameShort(String? val) => _unarchivedUserNameShort = val;

  bool hasUnarchivedUserNameShort() => _unarchivedUserNameShort != null;

  static DtOrderVisitExtraStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitExtraStruct(
        id: castToType<int>(data['id']),
        oMask: data['o_mask'] as String?,
        unitId: castToType<int>(data['unit_id']),
        unitDescription: data['unit_description'] as String?,
        oTypeId: castToType<int>(data['o_type_id']),
        oTypeCode: data['o_type_code'] as String?,
        oTypeDescription: data['o_type_description'] as String?,
        oTypeSubId: castToType<int>(data['o_type_sub_id']),
        oTypeSubCode: data['o_type_sub_code'] as String?,
        oTypeSubDescription: data['o_type_sub_description'] as String?,
        requestedServices: data['requested_services'] as String?,
        assetTagId: castToType<int>(data['asset_tag_id']),
        assetTagDescription: data['asset_tag_description'] as String?,
        providerCompanyId: castToType<int>(data['provider_company_id']),
        providerCompanyDescription:
            data['provider_company_description'] as String?,
        providerCompanyImgFilePath:
            data['provider_company_img_file_path'] as String?,
        providerCompanyImgFileName:
            data['provider_company_img_file_name'] as String?,
        priorityId: castToType<int>(data['priority_id']),
        priorityCode: data['priority_code'] as String?,
        priorityDescription: data['priority_description'] as String?,
        startedAt: data['started_at'] as String?,
        startedDatetime: data['started_datetime'] as DateTime?,
        endedAt: data['ended_at'] as String?,
        endedDatetime: data['ended_datetime'] as DateTime?,
        durationHours: castToType<double>(data['duration_hours']),
        processingId: castToType<int>(data['processing_id']),
        processingDescription: data['processing_description'] as String?,
        comments: data['comments'] as String?,
        isArchived: data['is_archived'] as bool?,
        reportedAt: data['reported_at'] as String?,
        reportedDatetime: data['reported_datetime'] as DateTime?,
        reportedUserId: castToType<int>(data['reported_user_id']),
        reportedUserNameShort: data['reported_user_name_short'] as String?,
        revisedAt: data['revised_at'] as String?,
        revisedDatetime: data['revised_datetime'] as DateTime?,
        revisedUserId: castToType<int>(data['revised_user_id']),
        revisedUserNameShort: data['revised_user_name_short'] as String?,
        disapprovedAt: data['disapproved_at'] as String?,
        disapprovedDatetime: data['disapproved_datetime'] as DateTime?,
        disapprovedUserId: castToType<int>(data['disapproved_user_id']),
        disapprovedUserNameShort:
            data['disapproved_user_name_short'] as String?,
        disapprovedComments: data['disapproved_comments'] as String?,
        approvedAt: data['approved_at'] as String?,
        approvedDatetime: data['approved_datetime'] as DateTime?,
        approvedUserId: castToType<int>(data['approved_user_id']),
        approvedUserNameShort: data['approved_user_name_short'] as String?,
        archivedAt: data['archived_at'] as String?,
        archivedUserId: castToType<int>(data['archived_user_id']),
        archivedUserNameShort: data['archived_user_name_short'] as String?,
        teamLeaderId: castToType<int>(data['team_leader_id']),
        teamLeaderUserNameShort: data['team_leader_user_name_short'] as String?,
        teamLeaderUserImgFilePath:
            data['team_leader_user_img_file_path'] as String?,
        teamLeaderUserImgFileName:
            data['team_leader_user_img_file_name'] as String?,
        teamAmount: castToType<int>(data['team_amount']),
        teamId: castToType<int>(data['team_id']),
        teamDescription: data['team_description'] as String?,
        teamNamesShort: data['team_names_short'] as String?,
        createdAt: data['created_at'] as String?,
        createdDatetime: data['created_datetime'] as DateTime?,
        createdUserId: castToType<int>(data['created_user_id']),
        createdUserNameShort: data['created_user_name_short'] as String?,
        systemParentId: castToType<int>(data['system_parent_id']),
        systemId: castToType<int>(data['system_id']),
        unitTypeParentId: castToType<int>(data['unit_type_parent_id']),
        unitTypeId: castToType<int>(data['unit_type_id']),
        oCauseReasonId: castToType<int>(data['o_cause_reason_id']),
        oCauseReasonDescription: data['o_cause_reason_description'] as String?,
        isBlocked: data['is_blocked'] as bool?,
        unblockedAt: data['unblocked_at'] as String?,
        unblockedDatetime: data['unblocked_datetime'] as DateTime?,
        unblockedUserId: castToType<int>(data['unblocked_user_id']),
        unblockedUserNameShort: data['unblocked_user_name_short'] as String?,
        unarchivedAt: data['unarchived_at'] as String?,
        unarchivedDatetime: data['unarchived_datetime'] as DateTime?,
        unarchivedUserId: castToType<int>(data['unarchived_user_id']),
        unarchivedUserNameShort: data['unarchived_user_name_short'] as String?,
      );

  static DtOrderVisitExtraStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitExtraStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'o_mask': _oMask,
        'unit_id': _unitId,
        'unit_description': _unitDescription,
        'o_type_id': _oTypeId,
        'o_type_code': _oTypeCode,
        'o_type_description': _oTypeDescription,
        'o_type_sub_id': _oTypeSubId,
        'o_type_sub_code': _oTypeSubCode,
        'o_type_sub_description': _oTypeSubDescription,
        'requested_services': _requestedServices,
        'asset_tag_id': _assetTagId,
        'asset_tag_description': _assetTagDescription,
        'provider_company_id': _providerCompanyId,
        'provider_company_description': _providerCompanyDescription,
        'provider_company_img_file_path': _providerCompanyImgFilePath,
        'provider_company_img_file_name': _providerCompanyImgFileName,
        'priority_id': _priorityId,
        'priority_code': _priorityCode,
        'priority_description': _priorityDescription,
        'started_at': _startedAt,
        'started_datetime': _startedDatetime,
        'ended_at': _endedAt,
        'ended_datetime': _endedDatetime,
        'duration_hours': _durationHours,
        'processing_id': _processingId,
        'processing_description': _processingDescription,
        'comments': _comments,
        'is_archived': _isArchived,
        'reported_at': _reportedAt,
        'reported_datetime': _reportedDatetime,
        'reported_user_id': _reportedUserId,
        'reported_user_name_short': _reportedUserNameShort,
        'revised_at': _revisedAt,
        'revised_datetime': _revisedDatetime,
        'revised_user_id': _revisedUserId,
        'revised_user_name_short': _revisedUserNameShort,
        'disapproved_at': _disapprovedAt,
        'disapproved_datetime': _disapprovedDatetime,
        'disapproved_user_id': _disapprovedUserId,
        'disapproved_user_name_short': _disapprovedUserNameShort,
        'disapproved_comments': _disapprovedComments,
        'approved_at': _approvedAt,
        'approved_datetime': _approvedDatetime,
        'approved_user_id': _approvedUserId,
        'approved_user_name_short': _approvedUserNameShort,
        'archived_at': _archivedAt,
        'archived_user_id': _archivedUserId,
        'archived_user_name_short': _archivedUserNameShort,
        'team_leader_id': _teamLeaderId,
        'team_leader_user_name_short': _teamLeaderUserNameShort,
        'team_leader_user_img_file_path': _teamLeaderUserImgFilePath,
        'team_leader_user_img_file_name': _teamLeaderUserImgFileName,
        'team_amount': _teamAmount,
        'team_id': _teamId,
        'team_description': _teamDescription,
        'team_names_short': _teamNamesShort,
        'created_at': _createdAt,
        'created_datetime': _createdDatetime,
        'created_user_id': _createdUserId,
        'created_user_name_short': _createdUserNameShort,
        'system_parent_id': _systemParentId,
        'system_id': _systemId,
        'unit_type_parent_id': _unitTypeParentId,
        'unit_type_id': _unitTypeId,
        'o_cause_reason_id': _oCauseReasonId,
        'o_cause_reason_description': _oCauseReasonDescription,
        'is_blocked': _isBlocked,
        'unblocked_at': _unblockedAt,
        'unblocked_datetime': _unblockedDatetime,
        'unblocked_user_id': _unblockedUserId,
        'unblocked_user_name_short': _unblockedUserNameShort,
        'unarchived_at': _unarchivedAt,
        'unarchived_datetime': _unarchivedDatetime,
        'unarchived_user_id': _unarchivedUserId,
        'unarchived_user_name_short': _unarchivedUserNameShort,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'o_mask': serializeParam(
          _oMask,
          ParamType.String,
        ),
        'unit_id': serializeParam(
          _unitId,
          ParamType.int,
        ),
        'unit_description': serializeParam(
          _unitDescription,
          ParamType.String,
        ),
        'o_type_id': serializeParam(
          _oTypeId,
          ParamType.int,
        ),
        'o_type_code': serializeParam(
          _oTypeCode,
          ParamType.String,
        ),
        'o_type_description': serializeParam(
          _oTypeDescription,
          ParamType.String,
        ),
        'o_type_sub_id': serializeParam(
          _oTypeSubId,
          ParamType.int,
        ),
        'o_type_sub_code': serializeParam(
          _oTypeSubCode,
          ParamType.String,
        ),
        'o_type_sub_description': serializeParam(
          _oTypeSubDescription,
          ParamType.String,
        ),
        'requested_services': serializeParam(
          _requestedServices,
          ParamType.String,
        ),
        'asset_tag_id': serializeParam(
          _assetTagId,
          ParamType.int,
        ),
        'asset_tag_description': serializeParam(
          _assetTagDescription,
          ParamType.String,
        ),
        'provider_company_id': serializeParam(
          _providerCompanyId,
          ParamType.int,
        ),
        'provider_company_description': serializeParam(
          _providerCompanyDescription,
          ParamType.String,
        ),
        'provider_company_img_file_path': serializeParam(
          _providerCompanyImgFilePath,
          ParamType.String,
        ),
        'provider_company_img_file_name': serializeParam(
          _providerCompanyImgFileName,
          ParamType.String,
        ),
        'priority_id': serializeParam(
          _priorityId,
          ParamType.int,
        ),
        'priority_code': serializeParam(
          _priorityCode,
          ParamType.String,
        ),
        'priority_description': serializeParam(
          _priorityDescription,
          ParamType.String,
        ),
        'started_at': serializeParam(
          _startedAt,
          ParamType.String,
        ),
        'started_datetime': serializeParam(
          _startedDatetime,
          ParamType.DateTime,
        ),
        'ended_at': serializeParam(
          _endedAt,
          ParamType.String,
        ),
        'ended_datetime': serializeParam(
          _endedDatetime,
          ParamType.DateTime,
        ),
        'duration_hours': serializeParam(
          _durationHours,
          ParamType.double,
        ),
        'processing_id': serializeParam(
          _processingId,
          ParamType.int,
        ),
        'processing_description': serializeParam(
          _processingDescription,
          ParamType.String,
        ),
        'comments': serializeParam(
          _comments,
          ParamType.String,
        ),
        'is_archived': serializeParam(
          _isArchived,
          ParamType.bool,
        ),
        'reported_at': serializeParam(
          _reportedAt,
          ParamType.String,
        ),
        'reported_datetime': serializeParam(
          _reportedDatetime,
          ParamType.DateTime,
        ),
        'reported_user_id': serializeParam(
          _reportedUserId,
          ParamType.int,
        ),
        'reported_user_name_short': serializeParam(
          _reportedUserNameShort,
          ParamType.String,
        ),
        'revised_at': serializeParam(
          _revisedAt,
          ParamType.String,
        ),
        'revised_datetime': serializeParam(
          _revisedDatetime,
          ParamType.DateTime,
        ),
        'revised_user_id': serializeParam(
          _revisedUserId,
          ParamType.int,
        ),
        'revised_user_name_short': serializeParam(
          _revisedUserNameShort,
          ParamType.String,
        ),
        'disapproved_at': serializeParam(
          _disapprovedAt,
          ParamType.String,
        ),
        'disapproved_datetime': serializeParam(
          _disapprovedDatetime,
          ParamType.DateTime,
        ),
        'disapproved_user_id': serializeParam(
          _disapprovedUserId,
          ParamType.int,
        ),
        'disapproved_user_name_short': serializeParam(
          _disapprovedUserNameShort,
          ParamType.String,
        ),
        'disapproved_comments': serializeParam(
          _disapprovedComments,
          ParamType.String,
        ),
        'approved_at': serializeParam(
          _approvedAt,
          ParamType.String,
        ),
        'approved_datetime': serializeParam(
          _approvedDatetime,
          ParamType.DateTime,
        ),
        'approved_user_id': serializeParam(
          _approvedUserId,
          ParamType.int,
        ),
        'approved_user_name_short': serializeParam(
          _approvedUserNameShort,
          ParamType.String,
        ),
        'archived_at': serializeParam(
          _archivedAt,
          ParamType.String,
        ),
        'archived_user_id': serializeParam(
          _archivedUserId,
          ParamType.int,
        ),
        'archived_user_name_short': serializeParam(
          _archivedUserNameShort,
          ParamType.String,
        ),
        'team_leader_id': serializeParam(
          _teamLeaderId,
          ParamType.int,
        ),
        'team_leader_user_name_short': serializeParam(
          _teamLeaderUserNameShort,
          ParamType.String,
        ),
        'team_leader_user_img_file_path': serializeParam(
          _teamLeaderUserImgFilePath,
          ParamType.String,
        ),
        'team_leader_user_img_file_name': serializeParam(
          _teamLeaderUserImgFileName,
          ParamType.String,
        ),
        'team_amount': serializeParam(
          _teamAmount,
          ParamType.int,
        ),
        'team_id': serializeParam(
          _teamId,
          ParamType.int,
        ),
        'team_description': serializeParam(
          _teamDescription,
          ParamType.String,
        ),
        'team_names_short': serializeParam(
          _teamNamesShort,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'created_datetime': serializeParam(
          _createdDatetime,
          ParamType.DateTime,
        ),
        'created_user_id': serializeParam(
          _createdUserId,
          ParamType.int,
        ),
        'created_user_name_short': serializeParam(
          _createdUserNameShort,
          ParamType.String,
        ),
        'system_parent_id': serializeParam(
          _systemParentId,
          ParamType.int,
        ),
        'system_id': serializeParam(
          _systemId,
          ParamType.int,
        ),
        'unit_type_parent_id': serializeParam(
          _unitTypeParentId,
          ParamType.int,
        ),
        'unit_type_id': serializeParam(
          _unitTypeId,
          ParamType.int,
        ),
        'o_cause_reason_id': serializeParam(
          _oCauseReasonId,
          ParamType.int,
        ),
        'o_cause_reason_description': serializeParam(
          _oCauseReasonDescription,
          ParamType.String,
        ),
        'is_blocked': serializeParam(
          _isBlocked,
          ParamType.bool,
        ),
        'unblocked_at': serializeParam(
          _unblockedAt,
          ParamType.String,
        ),
        'unblocked_datetime': serializeParam(
          _unblockedDatetime,
          ParamType.DateTime,
        ),
        'unblocked_user_id': serializeParam(
          _unblockedUserId,
          ParamType.int,
        ),
        'unblocked_user_name_short': serializeParam(
          _unblockedUserNameShort,
          ParamType.String,
        ),
        'unarchived_at': serializeParam(
          _unarchivedAt,
          ParamType.String,
        ),
        'unarchived_datetime': serializeParam(
          _unarchivedDatetime,
          ParamType.DateTime,
        ),
        'unarchived_user_id': serializeParam(
          _unarchivedUserId,
          ParamType.int,
        ),
        'unarchived_user_name_short': serializeParam(
          _unarchivedUserNameShort,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitExtraStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitExtraStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        oMask: deserializeParam(
          data['o_mask'],
          ParamType.String,
          false,
        ),
        unitId: deserializeParam(
          data['unit_id'],
          ParamType.int,
          false,
        ),
        unitDescription: deserializeParam(
          data['unit_description'],
          ParamType.String,
          false,
        ),
        oTypeId: deserializeParam(
          data['o_type_id'],
          ParamType.int,
          false,
        ),
        oTypeCode: deserializeParam(
          data['o_type_code'],
          ParamType.String,
          false,
        ),
        oTypeDescription: deserializeParam(
          data['o_type_description'],
          ParamType.String,
          false,
        ),
        oTypeSubId: deserializeParam(
          data['o_type_sub_id'],
          ParamType.int,
          false,
        ),
        oTypeSubCode: deserializeParam(
          data['o_type_sub_code'],
          ParamType.String,
          false,
        ),
        oTypeSubDescription: deserializeParam(
          data['o_type_sub_description'],
          ParamType.String,
          false,
        ),
        requestedServices: deserializeParam(
          data['requested_services'],
          ParamType.String,
          false,
        ),
        assetTagId: deserializeParam(
          data['asset_tag_id'],
          ParamType.int,
          false,
        ),
        assetTagDescription: deserializeParam(
          data['asset_tag_description'],
          ParamType.String,
          false,
        ),
        providerCompanyId: deserializeParam(
          data['provider_company_id'],
          ParamType.int,
          false,
        ),
        providerCompanyDescription: deserializeParam(
          data['provider_company_description'],
          ParamType.String,
          false,
        ),
        providerCompanyImgFilePath: deserializeParam(
          data['provider_company_img_file_path'],
          ParamType.String,
          false,
        ),
        providerCompanyImgFileName: deserializeParam(
          data['provider_company_img_file_name'],
          ParamType.String,
          false,
        ),
        priorityId: deserializeParam(
          data['priority_id'],
          ParamType.int,
          false,
        ),
        priorityCode: deserializeParam(
          data['priority_code'],
          ParamType.String,
          false,
        ),
        priorityDescription: deserializeParam(
          data['priority_description'],
          ParamType.String,
          false,
        ),
        startedAt: deserializeParam(
          data['started_at'],
          ParamType.String,
          false,
        ),
        startedDatetime: deserializeParam(
          data['started_datetime'],
          ParamType.DateTime,
          false,
        ),
        endedAt: deserializeParam(
          data['ended_at'],
          ParamType.String,
          false,
        ),
        endedDatetime: deserializeParam(
          data['ended_datetime'],
          ParamType.DateTime,
          false,
        ),
        durationHours: deserializeParam(
          data['duration_hours'],
          ParamType.double,
          false,
        ),
        processingId: deserializeParam(
          data['processing_id'],
          ParamType.int,
          false,
        ),
        processingDescription: deserializeParam(
          data['processing_description'],
          ParamType.String,
          false,
        ),
        comments: deserializeParam(
          data['comments'],
          ParamType.String,
          false,
        ),
        isArchived: deserializeParam(
          data['is_archived'],
          ParamType.bool,
          false,
        ),
        reportedAt: deserializeParam(
          data['reported_at'],
          ParamType.String,
          false,
        ),
        reportedDatetime: deserializeParam(
          data['reported_datetime'],
          ParamType.DateTime,
          false,
        ),
        reportedUserId: deserializeParam(
          data['reported_user_id'],
          ParamType.int,
          false,
        ),
        reportedUserNameShort: deserializeParam(
          data['reported_user_name_short'],
          ParamType.String,
          false,
        ),
        revisedAt: deserializeParam(
          data['revised_at'],
          ParamType.String,
          false,
        ),
        revisedDatetime: deserializeParam(
          data['revised_datetime'],
          ParamType.DateTime,
          false,
        ),
        revisedUserId: deserializeParam(
          data['revised_user_id'],
          ParamType.int,
          false,
        ),
        revisedUserNameShort: deserializeParam(
          data['revised_user_name_short'],
          ParamType.String,
          false,
        ),
        disapprovedAt: deserializeParam(
          data['disapproved_at'],
          ParamType.String,
          false,
        ),
        disapprovedDatetime: deserializeParam(
          data['disapproved_datetime'],
          ParamType.DateTime,
          false,
        ),
        disapprovedUserId: deserializeParam(
          data['disapproved_user_id'],
          ParamType.int,
          false,
        ),
        disapprovedUserNameShort: deserializeParam(
          data['disapproved_user_name_short'],
          ParamType.String,
          false,
        ),
        disapprovedComments: deserializeParam(
          data['disapproved_comments'],
          ParamType.String,
          false,
        ),
        approvedAt: deserializeParam(
          data['approved_at'],
          ParamType.String,
          false,
        ),
        approvedDatetime: deserializeParam(
          data['approved_datetime'],
          ParamType.DateTime,
          false,
        ),
        approvedUserId: deserializeParam(
          data['approved_user_id'],
          ParamType.int,
          false,
        ),
        approvedUserNameShort: deserializeParam(
          data['approved_user_name_short'],
          ParamType.String,
          false,
        ),
        archivedAt: deserializeParam(
          data['archived_at'],
          ParamType.String,
          false,
        ),
        archivedUserId: deserializeParam(
          data['archived_user_id'],
          ParamType.int,
          false,
        ),
        archivedUserNameShort: deserializeParam(
          data['archived_user_name_short'],
          ParamType.String,
          false,
        ),
        teamLeaderId: deserializeParam(
          data['team_leader_id'],
          ParamType.int,
          false,
        ),
        teamLeaderUserNameShort: deserializeParam(
          data['team_leader_user_name_short'],
          ParamType.String,
          false,
        ),
        teamLeaderUserImgFilePath: deserializeParam(
          data['team_leader_user_img_file_path'],
          ParamType.String,
          false,
        ),
        teamLeaderUserImgFileName: deserializeParam(
          data['team_leader_user_img_file_name'],
          ParamType.String,
          false,
        ),
        teamAmount: deserializeParam(
          data['team_amount'],
          ParamType.int,
          false,
        ),
        teamId: deserializeParam(
          data['team_id'],
          ParamType.int,
          false,
        ),
        teamDescription: deserializeParam(
          data['team_description'],
          ParamType.String,
          false,
        ),
        teamNamesShort: deserializeParam(
          data['team_names_short'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        createdDatetime: deserializeParam(
          data['created_datetime'],
          ParamType.DateTime,
          false,
        ),
        createdUserId: deserializeParam(
          data['created_user_id'],
          ParamType.int,
          false,
        ),
        createdUserNameShort: deserializeParam(
          data['created_user_name_short'],
          ParamType.String,
          false,
        ),
        systemParentId: deserializeParam(
          data['system_parent_id'],
          ParamType.int,
          false,
        ),
        systemId: deserializeParam(
          data['system_id'],
          ParamType.int,
          false,
        ),
        unitTypeParentId: deserializeParam(
          data['unit_type_parent_id'],
          ParamType.int,
          false,
        ),
        unitTypeId: deserializeParam(
          data['unit_type_id'],
          ParamType.int,
          false,
        ),
        oCauseReasonId: deserializeParam(
          data['o_cause_reason_id'],
          ParamType.int,
          false,
        ),
        oCauseReasonDescription: deserializeParam(
          data['o_cause_reason_description'],
          ParamType.String,
          false,
        ),
        isBlocked: deserializeParam(
          data['is_blocked'],
          ParamType.bool,
          false,
        ),
        unblockedAt: deserializeParam(
          data['unblocked_at'],
          ParamType.String,
          false,
        ),
        unblockedDatetime: deserializeParam(
          data['unblocked_datetime'],
          ParamType.DateTime,
          false,
        ),
        unblockedUserId: deserializeParam(
          data['unblocked_user_id'],
          ParamType.int,
          false,
        ),
        unblockedUserNameShort: deserializeParam(
          data['unblocked_user_name_short'],
          ParamType.String,
          false,
        ),
        unarchivedAt: deserializeParam(
          data['unarchived_at'],
          ParamType.String,
          false,
        ),
        unarchivedDatetime: deserializeParam(
          data['unarchived_datetime'],
          ParamType.DateTime,
          false,
        ),
        unarchivedUserId: deserializeParam(
          data['unarchived_user_id'],
          ParamType.int,
          false,
        ),
        unarchivedUserNameShort: deserializeParam(
          data['unarchived_user_name_short'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitExtraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitExtraStruct &&
        id == other.id &&
        oMask == other.oMask &&
        unitId == other.unitId &&
        unitDescription == other.unitDescription &&
        oTypeId == other.oTypeId &&
        oTypeCode == other.oTypeCode &&
        oTypeDescription == other.oTypeDescription &&
        oTypeSubId == other.oTypeSubId &&
        oTypeSubCode == other.oTypeSubCode &&
        oTypeSubDescription == other.oTypeSubDescription &&
        requestedServices == other.requestedServices &&
        assetTagId == other.assetTagId &&
        assetTagDescription == other.assetTagDescription &&
        providerCompanyId == other.providerCompanyId &&
        providerCompanyDescription == other.providerCompanyDescription &&
        providerCompanyImgFilePath == other.providerCompanyImgFilePath &&
        providerCompanyImgFileName == other.providerCompanyImgFileName &&
        priorityId == other.priorityId &&
        priorityCode == other.priorityCode &&
        priorityDescription == other.priorityDescription &&
        startedAt == other.startedAt &&
        startedDatetime == other.startedDatetime &&
        endedAt == other.endedAt &&
        endedDatetime == other.endedDatetime &&
        durationHours == other.durationHours &&
        processingId == other.processingId &&
        processingDescription == other.processingDescription &&
        comments == other.comments &&
        isArchived == other.isArchived &&
        reportedAt == other.reportedAt &&
        reportedDatetime == other.reportedDatetime &&
        reportedUserId == other.reportedUserId &&
        reportedUserNameShort == other.reportedUserNameShort &&
        revisedAt == other.revisedAt &&
        revisedDatetime == other.revisedDatetime &&
        revisedUserId == other.revisedUserId &&
        revisedUserNameShort == other.revisedUserNameShort &&
        disapprovedAt == other.disapprovedAt &&
        disapprovedDatetime == other.disapprovedDatetime &&
        disapprovedUserId == other.disapprovedUserId &&
        disapprovedUserNameShort == other.disapprovedUserNameShort &&
        disapprovedComments == other.disapprovedComments &&
        approvedAt == other.approvedAt &&
        approvedDatetime == other.approvedDatetime &&
        approvedUserId == other.approvedUserId &&
        approvedUserNameShort == other.approvedUserNameShort &&
        archivedAt == other.archivedAt &&
        archivedUserId == other.archivedUserId &&
        archivedUserNameShort == other.archivedUserNameShort &&
        teamLeaderId == other.teamLeaderId &&
        teamLeaderUserNameShort == other.teamLeaderUserNameShort &&
        teamLeaderUserImgFilePath == other.teamLeaderUserImgFilePath &&
        teamLeaderUserImgFileName == other.teamLeaderUserImgFileName &&
        teamAmount == other.teamAmount &&
        teamId == other.teamId &&
        teamDescription == other.teamDescription &&
        teamNamesShort == other.teamNamesShort &&
        createdAt == other.createdAt &&
        createdDatetime == other.createdDatetime &&
        createdUserId == other.createdUserId &&
        createdUserNameShort == other.createdUserNameShort &&
        systemParentId == other.systemParentId &&
        systemId == other.systemId &&
        unitTypeParentId == other.unitTypeParentId &&
        unitTypeId == other.unitTypeId &&
        oCauseReasonId == other.oCauseReasonId &&
        oCauseReasonDescription == other.oCauseReasonDescription &&
        isBlocked == other.isBlocked &&
        unblockedAt == other.unblockedAt &&
        unblockedDatetime == other.unblockedDatetime &&
        unblockedUserId == other.unblockedUserId &&
        unblockedUserNameShort == other.unblockedUserNameShort &&
        unarchivedAt == other.unarchivedAt &&
        unarchivedDatetime == other.unarchivedDatetime &&
        unarchivedUserId == other.unarchivedUserId &&
        unarchivedUserNameShort == other.unarchivedUserNameShort;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        oMask,
        unitId,
        unitDescription,
        oTypeId,
        oTypeCode,
        oTypeDescription,
        oTypeSubId,
        oTypeSubCode,
        oTypeSubDescription,
        requestedServices,
        assetTagId,
        assetTagDescription,
        providerCompanyId,
        providerCompanyDescription,
        providerCompanyImgFilePath,
        providerCompanyImgFileName,
        priorityId,
        priorityCode,
        priorityDescription,
        startedAt,
        startedDatetime,
        endedAt,
        endedDatetime,
        durationHours,
        processingId,
        processingDescription,
        comments,
        isArchived,
        reportedAt,
        reportedDatetime,
        reportedUserId,
        reportedUserNameShort,
        revisedAt,
        revisedDatetime,
        revisedUserId,
        revisedUserNameShort,
        disapprovedAt,
        disapprovedDatetime,
        disapprovedUserId,
        disapprovedUserNameShort,
        disapprovedComments,
        approvedAt,
        approvedDatetime,
        approvedUserId,
        approvedUserNameShort,
        archivedAt,
        archivedUserId,
        archivedUserNameShort,
        teamLeaderId,
        teamLeaderUserNameShort,
        teamLeaderUserImgFilePath,
        teamLeaderUserImgFileName,
        teamAmount,
        teamId,
        teamDescription,
        teamNamesShort,
        createdAt,
        createdDatetime,
        createdUserId,
        createdUserNameShort,
        systemParentId,
        systemId,
        unitTypeParentId,
        unitTypeId,
        oCauseReasonId,
        oCauseReasonDescription,
        isBlocked,
        unblockedAt,
        unblockedDatetime,
        unblockedUserId,
        unblockedUserNameShort,
        unarchivedAt,
        unarchivedDatetime,
        unarchivedUserId,
        unarchivedUserNameShort
      ]);
}

DtOrderVisitExtraStruct createDtOrderVisitExtraStruct({
  int? id,
  String? oMask,
  int? unitId,
  String? unitDescription,
  int? oTypeId,
  String? oTypeCode,
  String? oTypeDescription,
  int? oTypeSubId,
  String? oTypeSubCode,
  String? oTypeSubDescription,
  String? requestedServices,
  int? assetTagId,
  String? assetTagDescription,
  int? providerCompanyId,
  String? providerCompanyDescription,
  String? providerCompanyImgFilePath,
  String? providerCompanyImgFileName,
  int? priorityId,
  String? priorityCode,
  String? priorityDescription,
  String? startedAt,
  DateTime? startedDatetime,
  String? endedAt,
  DateTime? endedDatetime,
  double? durationHours,
  int? processingId,
  String? processingDescription,
  String? comments,
  bool? isArchived,
  String? reportedAt,
  DateTime? reportedDatetime,
  int? reportedUserId,
  String? reportedUserNameShort,
  String? revisedAt,
  DateTime? revisedDatetime,
  int? revisedUserId,
  String? revisedUserNameShort,
  String? disapprovedAt,
  DateTime? disapprovedDatetime,
  int? disapprovedUserId,
  String? disapprovedUserNameShort,
  String? disapprovedComments,
  String? approvedAt,
  DateTime? approvedDatetime,
  int? approvedUserId,
  String? approvedUserNameShort,
  String? archivedAt,
  int? archivedUserId,
  String? archivedUserNameShort,
  int? teamLeaderId,
  String? teamLeaderUserNameShort,
  String? teamLeaderUserImgFilePath,
  String? teamLeaderUserImgFileName,
  int? teamAmount,
  int? teamId,
  String? teamDescription,
  String? teamNamesShort,
  String? createdAt,
  DateTime? createdDatetime,
  int? createdUserId,
  String? createdUserNameShort,
  int? systemParentId,
  int? systemId,
  int? unitTypeParentId,
  int? unitTypeId,
  int? oCauseReasonId,
  String? oCauseReasonDescription,
  bool? isBlocked,
  String? unblockedAt,
  DateTime? unblockedDatetime,
  int? unblockedUserId,
  String? unblockedUserNameShort,
  String? unarchivedAt,
  DateTime? unarchivedDatetime,
  int? unarchivedUserId,
  String? unarchivedUserNameShort,
}) =>
    DtOrderVisitExtraStruct(
      id: id,
      oMask: oMask,
      unitId: unitId,
      unitDescription: unitDescription,
      oTypeId: oTypeId,
      oTypeCode: oTypeCode,
      oTypeDescription: oTypeDescription,
      oTypeSubId: oTypeSubId,
      oTypeSubCode: oTypeSubCode,
      oTypeSubDescription: oTypeSubDescription,
      requestedServices: requestedServices,
      assetTagId: assetTagId,
      assetTagDescription: assetTagDescription,
      providerCompanyId: providerCompanyId,
      providerCompanyDescription: providerCompanyDescription,
      providerCompanyImgFilePath: providerCompanyImgFilePath,
      providerCompanyImgFileName: providerCompanyImgFileName,
      priorityId: priorityId,
      priorityCode: priorityCode,
      priorityDescription: priorityDescription,
      startedAt: startedAt,
      startedDatetime: startedDatetime,
      endedAt: endedAt,
      endedDatetime: endedDatetime,
      durationHours: durationHours,
      processingId: processingId,
      processingDescription: processingDescription,
      comments: comments,
      isArchived: isArchived,
      reportedAt: reportedAt,
      reportedDatetime: reportedDatetime,
      reportedUserId: reportedUserId,
      reportedUserNameShort: reportedUserNameShort,
      revisedAt: revisedAt,
      revisedDatetime: revisedDatetime,
      revisedUserId: revisedUserId,
      revisedUserNameShort: revisedUserNameShort,
      disapprovedAt: disapprovedAt,
      disapprovedDatetime: disapprovedDatetime,
      disapprovedUserId: disapprovedUserId,
      disapprovedUserNameShort: disapprovedUserNameShort,
      disapprovedComments: disapprovedComments,
      approvedAt: approvedAt,
      approvedDatetime: approvedDatetime,
      approvedUserId: approvedUserId,
      approvedUserNameShort: approvedUserNameShort,
      archivedAt: archivedAt,
      archivedUserId: archivedUserId,
      archivedUserNameShort: archivedUserNameShort,
      teamLeaderId: teamLeaderId,
      teamLeaderUserNameShort: teamLeaderUserNameShort,
      teamLeaderUserImgFilePath: teamLeaderUserImgFilePath,
      teamLeaderUserImgFileName: teamLeaderUserImgFileName,
      teamAmount: teamAmount,
      teamId: teamId,
      teamDescription: teamDescription,
      teamNamesShort: teamNamesShort,
      createdAt: createdAt,
      createdDatetime: createdDatetime,
      createdUserId: createdUserId,
      createdUserNameShort: createdUserNameShort,
      systemParentId: systemParentId,
      systemId: systemId,
      unitTypeParentId: unitTypeParentId,
      unitTypeId: unitTypeId,
      oCauseReasonId: oCauseReasonId,
      oCauseReasonDescription: oCauseReasonDescription,
      isBlocked: isBlocked,
      unblockedAt: unblockedAt,
      unblockedDatetime: unblockedDatetime,
      unblockedUserId: unblockedUserId,
      unblockedUserNameShort: unblockedUserNameShort,
      unarchivedAt: unarchivedAt,
      unarchivedDatetime: unarchivedDatetime,
      unarchivedUserId: unarchivedUserId,
      unarchivedUserNameShort: unarchivedUserNameShort,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitAssetStruct extends BaseStruct {
  DtOrderVisitAssetStruct({
    int? id,
    int? opId,
    int? oId,
    String? orderMask,
    int? oTypeId,
    String? oTypeCode,
    String? oTypeSubCode,
    String? oTeamCode,
    String? oTeamLeaderNameShort,
    int? ovId,
    String? ovStartedAt,
    DateTime? ovStartedDatetime,
    String? ovEndedAt,
    DateTime? ovEndedDatetime,
    int? assetId,
    String? code,
    String? description,
    bool? isMoved,
    int? beforeUnitId,
    String? beforeUnitCode,
    String? beforeUnitDescription,
    int? beforeTagId,
    String? beforeTagDescription,
    int? beforeTagSubId,
    String? beforeTagSubDescription,
    int? beforeStatusId,
    String? beforeStatusDescription,
    String? beforeStatusCode,
    String? beforeStatusAt,
    DateTime? beforeStatusDatetime,
    String? beforeComments,
    String? beforeImgFilePath,
    String? beforeImgFileName,
    int? beforeRecorder,
    int? beforePriorityId,
    int? afterUnitId,
    String? afterUnitCode,
    String? afterUnitDescription,
    int? afterTagId,
    String? afterTagDescription,
    int? afterTagSubId,
    String? afterTagSubDescription,
    int? afterStatusId,
    String? afterStatusDescription,
    String? afterStatusCode,
    String? afterStatusAt,
    DateTime? afterStatusDatetime,
    String? afterComments,
    String? afterImgFilePath,
    String? afterImgFileName,
    int? afterRecorder,
    int? afterPriorityId,
    int? processingId,
    String? processingDescription,
    String? movedComments,
    int? reportedUserId,
    String? reportedUserNameShort,
    String? reportedAt,
    int? disapprovedUserId,
    String? disapprovedUserNameShort,
    String? disapprovedAt,
    String? disapprovedNotes,
    int? approvedUserId,
    String? approvedUserNameShort,
    String? approvedAt,
    String? activitiesSearchable,
    String? versionMode,
    int? cartMaterialsAmount,
    double? servicesValue,
    double? materialsValue,
    double? vehiclesValue,
    double? totalValue,
    String? oCompanyImgFilePath,
    String? oCompanyImgFileName,
  })  : _id = id,
        _opId = opId,
        _oId = oId,
        _orderMask = orderMask,
        _oTypeId = oTypeId,
        _oTypeCode = oTypeCode,
        _oTypeSubCode = oTypeSubCode,
        _oTeamCode = oTeamCode,
        _oTeamLeaderNameShort = oTeamLeaderNameShort,
        _ovId = ovId,
        _ovStartedAt = ovStartedAt,
        _ovStartedDatetime = ovStartedDatetime,
        _ovEndedAt = ovEndedAt,
        _ovEndedDatetime = ovEndedDatetime,
        _assetId = assetId,
        _code = code,
        _description = description,
        _isMoved = isMoved,
        _beforeUnitId = beforeUnitId,
        _beforeUnitCode = beforeUnitCode,
        _beforeUnitDescription = beforeUnitDescription,
        _beforeTagId = beforeTagId,
        _beforeTagDescription = beforeTagDescription,
        _beforeTagSubId = beforeTagSubId,
        _beforeTagSubDescription = beforeTagSubDescription,
        _beforeStatusId = beforeStatusId,
        _beforeStatusDescription = beforeStatusDescription,
        _beforeStatusCode = beforeStatusCode,
        _beforeStatusAt = beforeStatusAt,
        _beforeStatusDatetime = beforeStatusDatetime,
        _beforeComments = beforeComments,
        _beforeImgFilePath = beforeImgFilePath,
        _beforeImgFileName = beforeImgFileName,
        _beforeRecorder = beforeRecorder,
        _beforePriorityId = beforePriorityId,
        _afterUnitId = afterUnitId,
        _afterUnitCode = afterUnitCode,
        _afterUnitDescription = afterUnitDescription,
        _afterTagId = afterTagId,
        _afterTagDescription = afterTagDescription,
        _afterTagSubId = afterTagSubId,
        _afterTagSubDescription = afterTagSubDescription,
        _afterStatusId = afterStatusId,
        _afterStatusDescription = afterStatusDescription,
        _afterStatusCode = afterStatusCode,
        _afterStatusAt = afterStatusAt,
        _afterStatusDatetime = afterStatusDatetime,
        _afterComments = afterComments,
        _afterImgFilePath = afterImgFilePath,
        _afterImgFileName = afterImgFileName,
        _afterRecorder = afterRecorder,
        _afterPriorityId = afterPriorityId,
        _processingId = processingId,
        _processingDescription = processingDescription,
        _movedComments = movedComments,
        _reportedUserId = reportedUserId,
        _reportedUserNameShort = reportedUserNameShort,
        _reportedAt = reportedAt,
        _disapprovedUserId = disapprovedUserId,
        _disapprovedUserNameShort = disapprovedUserNameShort,
        _disapprovedAt = disapprovedAt,
        _disapprovedNotes = disapprovedNotes,
        _approvedUserId = approvedUserId,
        _approvedUserNameShort = approvedUserNameShort,
        _approvedAt = approvedAt,
        _activitiesSearchable = activitiesSearchable,
        _versionMode = versionMode,
        _cartMaterialsAmount = cartMaterialsAmount,
        _servicesValue = servicesValue,
        _materialsValue = materialsValue,
        _vehiclesValue = vehiclesValue,
        _totalValue = totalValue,
        _oCompanyImgFilePath = oCompanyImgFilePath,
        _oCompanyImgFileName = oCompanyImgFileName;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "op_id" field.
  int? _opId;
  int get opId => _opId ?? 0;
  set opId(int? val) => _opId = val;

  void incrementOpId(int amount) => opId = opId + amount;

  bool hasOpId() => _opId != null;

  // "o_id" field.
  int? _oId;
  int get oId => _oId ?? 0;
  set oId(int? val) => _oId = val;

  void incrementOId(int amount) => oId = oId + amount;

  bool hasOId() => _oId != null;

  // "order_mask" field.
  String? _orderMask;
  String get orderMask => _orderMask ?? '';
  set orderMask(String? val) => _orderMask = val;

  bool hasOrderMask() => _orderMask != null;

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

  // "o_type_sub_code" field.
  String? _oTypeSubCode;
  String get oTypeSubCode => _oTypeSubCode ?? '';
  set oTypeSubCode(String? val) => _oTypeSubCode = val;

  bool hasOTypeSubCode() => _oTypeSubCode != null;

  // "o_team_code" field.
  String? _oTeamCode;
  String get oTeamCode => _oTeamCode ?? '';
  set oTeamCode(String? val) => _oTeamCode = val;

  bool hasOTeamCode() => _oTeamCode != null;

  // "o_team_leader_name_short" field.
  String? _oTeamLeaderNameShort;
  String get oTeamLeaderNameShort => _oTeamLeaderNameShort ?? '';
  set oTeamLeaderNameShort(String? val) => _oTeamLeaderNameShort = val;

  bool hasOTeamLeaderNameShort() => _oTeamLeaderNameShort != null;

  // "ov_id" field.
  int? _ovId;
  int get ovId => _ovId ?? 0;
  set ovId(int? val) => _ovId = val;

  void incrementOvId(int amount) => ovId = ovId + amount;

  bool hasOvId() => _ovId != null;

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

  // "asset_id" field.
  int? _assetId;
  int get assetId => _assetId ?? 0;
  set assetId(int? val) => _assetId = val;

  void incrementAssetId(int amount) => assetId = assetId + amount;

  bool hasAssetId() => _assetId != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "is_moved" field.
  bool? _isMoved;
  bool get isMoved => _isMoved ?? false;
  set isMoved(bool? val) => _isMoved = val;

  bool hasIsMoved() => _isMoved != null;

  // "before_unit_id" field.
  int? _beforeUnitId;
  int get beforeUnitId => _beforeUnitId ?? 0;
  set beforeUnitId(int? val) => _beforeUnitId = val;

  void incrementBeforeUnitId(int amount) =>
      beforeUnitId = beforeUnitId + amount;

  bool hasBeforeUnitId() => _beforeUnitId != null;

  // "before_unit_code" field.
  String? _beforeUnitCode;
  String get beforeUnitCode => _beforeUnitCode ?? '';
  set beforeUnitCode(String? val) => _beforeUnitCode = val;

  bool hasBeforeUnitCode() => _beforeUnitCode != null;

  // "before_unit_description" field.
  String? _beforeUnitDescription;
  String get beforeUnitDescription => _beforeUnitDescription ?? '';
  set beforeUnitDescription(String? val) => _beforeUnitDescription = val;

  bool hasBeforeUnitDescription() => _beforeUnitDescription != null;

  // "before_tag_id" field.
  int? _beforeTagId;
  int get beforeTagId => _beforeTagId ?? 0;
  set beforeTagId(int? val) => _beforeTagId = val;

  void incrementBeforeTagId(int amount) => beforeTagId = beforeTagId + amount;

  bool hasBeforeTagId() => _beforeTagId != null;

  // "before_tag_description" field.
  String? _beforeTagDescription;
  String get beforeTagDescription => _beforeTagDescription ?? '';
  set beforeTagDescription(String? val) => _beforeTagDescription = val;

  bool hasBeforeTagDescription() => _beforeTagDescription != null;

  // "before_tag_sub_id" field.
  int? _beforeTagSubId;
  int get beforeTagSubId => _beforeTagSubId ?? 0;
  set beforeTagSubId(int? val) => _beforeTagSubId = val;

  void incrementBeforeTagSubId(int amount) =>
      beforeTagSubId = beforeTagSubId + amount;

  bool hasBeforeTagSubId() => _beforeTagSubId != null;

  // "before_tag_sub_description" field.
  String? _beforeTagSubDescription;
  String get beforeTagSubDescription => _beforeTagSubDescription ?? '';
  set beforeTagSubDescription(String? val) => _beforeTagSubDescription = val;

  bool hasBeforeTagSubDescription() => _beforeTagSubDescription != null;

  // "before_status_id" field.
  int? _beforeStatusId;
  int get beforeStatusId => _beforeStatusId ?? 0;
  set beforeStatusId(int? val) => _beforeStatusId = val;

  void incrementBeforeStatusId(int amount) =>
      beforeStatusId = beforeStatusId + amount;

  bool hasBeforeStatusId() => _beforeStatusId != null;

  // "before_status_description" field.
  String? _beforeStatusDescription;
  String get beforeStatusDescription => _beforeStatusDescription ?? '';
  set beforeStatusDescription(String? val) => _beforeStatusDescription = val;

  bool hasBeforeStatusDescription() => _beforeStatusDescription != null;

  // "before_status_code" field.
  String? _beforeStatusCode;
  String get beforeStatusCode => _beforeStatusCode ?? '';
  set beforeStatusCode(String? val) => _beforeStatusCode = val;

  bool hasBeforeStatusCode() => _beforeStatusCode != null;

  // "before_status_at" field.
  String? _beforeStatusAt;
  String get beforeStatusAt => _beforeStatusAt ?? '';
  set beforeStatusAt(String? val) => _beforeStatusAt = val;

  bool hasBeforeStatusAt() => _beforeStatusAt != null;

  // "before_status_datetime" field.
  DateTime? _beforeStatusDatetime;
  DateTime? get beforeStatusDatetime => _beforeStatusDatetime;
  set beforeStatusDatetime(DateTime? val) => _beforeStatusDatetime = val;

  bool hasBeforeStatusDatetime() => _beforeStatusDatetime != null;

  // "before_comments" field.
  String? _beforeComments;
  String get beforeComments => _beforeComments ?? '';
  set beforeComments(String? val) => _beforeComments = val;

  bool hasBeforeComments() => _beforeComments != null;

  // "before_img_file_path" field.
  String? _beforeImgFilePath;
  String get beforeImgFilePath => _beforeImgFilePath ?? '';
  set beforeImgFilePath(String? val) => _beforeImgFilePath = val;

  bool hasBeforeImgFilePath() => _beforeImgFilePath != null;

  // "before_img_file_name" field.
  String? _beforeImgFileName;
  String get beforeImgFileName => _beforeImgFileName ?? '';
  set beforeImgFileName(String? val) => _beforeImgFileName = val;

  bool hasBeforeImgFileName() => _beforeImgFileName != null;

  // "before_recorder" field.
  int? _beforeRecorder;
  int get beforeRecorder => _beforeRecorder ?? 0;
  set beforeRecorder(int? val) => _beforeRecorder = val;

  void incrementBeforeRecorder(int amount) =>
      beforeRecorder = beforeRecorder + amount;

  bool hasBeforeRecorder() => _beforeRecorder != null;

  // "before_priority_id" field.
  int? _beforePriorityId;
  int get beforePriorityId => _beforePriorityId ?? 0;
  set beforePriorityId(int? val) => _beforePriorityId = val;

  void incrementBeforePriorityId(int amount) =>
      beforePriorityId = beforePriorityId + amount;

  bool hasBeforePriorityId() => _beforePriorityId != null;

  // "after_unit_id" field.
  int? _afterUnitId;
  int get afterUnitId => _afterUnitId ?? 0;
  set afterUnitId(int? val) => _afterUnitId = val;

  void incrementAfterUnitId(int amount) => afterUnitId = afterUnitId + amount;

  bool hasAfterUnitId() => _afterUnitId != null;

  // "after_unit_code" field.
  String? _afterUnitCode;
  String get afterUnitCode => _afterUnitCode ?? '';
  set afterUnitCode(String? val) => _afterUnitCode = val;

  bool hasAfterUnitCode() => _afterUnitCode != null;

  // "after_unit_description" field.
  String? _afterUnitDescription;
  String get afterUnitDescription => _afterUnitDescription ?? '';
  set afterUnitDescription(String? val) => _afterUnitDescription = val;

  bool hasAfterUnitDescription() => _afterUnitDescription != null;

  // "after_tag_id" field.
  int? _afterTagId;
  int get afterTagId => _afterTagId ?? 0;
  set afterTagId(int? val) => _afterTagId = val;

  void incrementAfterTagId(int amount) => afterTagId = afterTagId + amount;

  bool hasAfterTagId() => _afterTagId != null;

  // "after_tag_description" field.
  String? _afterTagDescription;
  String get afterTagDescription => _afterTagDescription ?? '';
  set afterTagDescription(String? val) => _afterTagDescription = val;

  bool hasAfterTagDescription() => _afterTagDescription != null;

  // "after_tag_sub_id" field.
  int? _afterTagSubId;
  int get afterTagSubId => _afterTagSubId ?? 0;
  set afterTagSubId(int? val) => _afterTagSubId = val;

  void incrementAfterTagSubId(int amount) =>
      afterTagSubId = afterTagSubId + amount;

  bool hasAfterTagSubId() => _afterTagSubId != null;

  // "after_tag_sub_description" field.
  String? _afterTagSubDescription;
  String get afterTagSubDescription => _afterTagSubDescription ?? '';
  set afterTagSubDescription(String? val) => _afterTagSubDescription = val;

  bool hasAfterTagSubDescription() => _afterTagSubDescription != null;

  // "after_status_id" field.
  int? _afterStatusId;
  int get afterStatusId => _afterStatusId ?? 0;
  set afterStatusId(int? val) => _afterStatusId = val;

  void incrementAfterStatusId(int amount) =>
      afterStatusId = afterStatusId + amount;

  bool hasAfterStatusId() => _afterStatusId != null;

  // "after_status_description" field.
  String? _afterStatusDescription;
  String get afterStatusDescription => _afterStatusDescription ?? '';
  set afterStatusDescription(String? val) => _afterStatusDescription = val;

  bool hasAfterStatusDescription() => _afterStatusDescription != null;

  // "after_status_code" field.
  String? _afterStatusCode;
  String get afterStatusCode => _afterStatusCode ?? '';
  set afterStatusCode(String? val) => _afterStatusCode = val;

  bool hasAfterStatusCode() => _afterStatusCode != null;

  // "after_status_at" field.
  String? _afterStatusAt;
  String get afterStatusAt => _afterStatusAt ?? '';
  set afterStatusAt(String? val) => _afterStatusAt = val;

  bool hasAfterStatusAt() => _afterStatusAt != null;

  // "after_status_datetime" field.
  DateTime? _afterStatusDatetime;
  DateTime? get afterStatusDatetime => _afterStatusDatetime;
  set afterStatusDatetime(DateTime? val) => _afterStatusDatetime = val;

  bool hasAfterStatusDatetime() => _afterStatusDatetime != null;

  // "after_comments" field.
  String? _afterComments;
  String get afterComments => _afterComments ?? '';
  set afterComments(String? val) => _afterComments = val;

  bool hasAfterComments() => _afterComments != null;

  // "after_img_file_path" field.
  String? _afterImgFilePath;
  String get afterImgFilePath => _afterImgFilePath ?? '';
  set afterImgFilePath(String? val) => _afterImgFilePath = val;

  bool hasAfterImgFilePath() => _afterImgFilePath != null;

  // "after_img_file_name" field.
  String? _afterImgFileName;
  String get afterImgFileName => _afterImgFileName ?? '';
  set afterImgFileName(String? val) => _afterImgFileName = val;

  bool hasAfterImgFileName() => _afterImgFileName != null;

  // "after_recorder" field.
  int? _afterRecorder;
  int get afterRecorder => _afterRecorder ?? 0;
  set afterRecorder(int? val) => _afterRecorder = val;

  void incrementAfterRecorder(int amount) =>
      afterRecorder = afterRecorder + amount;

  bool hasAfterRecorder() => _afterRecorder != null;

  // "after_priority_id" field.
  int? _afterPriorityId;
  int get afterPriorityId => _afterPriorityId ?? 0;
  set afterPriorityId(int? val) => _afterPriorityId = val;

  void incrementAfterPriorityId(int amount) =>
      afterPriorityId = afterPriorityId + amount;

  bool hasAfterPriorityId() => _afterPriorityId != null;

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

  // "moved_comments" field.
  String? _movedComments;
  String get movedComments => _movedComments ?? '';
  set movedComments(String? val) => _movedComments = val;

  bool hasMovedComments() => _movedComments != null;

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

  // "reported_at" field.
  String? _reportedAt;
  String get reportedAt => _reportedAt ?? '';
  set reportedAt(String? val) => _reportedAt = val;

  bool hasReportedAt() => _reportedAt != null;

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

  // "disapproved_at" field.
  String? _disapprovedAt;
  String get disapprovedAt => _disapprovedAt ?? '';
  set disapprovedAt(String? val) => _disapprovedAt = val;

  bool hasDisapprovedAt() => _disapprovedAt != null;

  // "disapproved_notes" field.
  String? _disapprovedNotes;
  String get disapprovedNotes => _disapprovedNotes ?? '';
  set disapprovedNotes(String? val) => _disapprovedNotes = val;

  bool hasDisapprovedNotes() => _disapprovedNotes != null;

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

  // "approved_at" field.
  String? _approvedAt;
  String get approvedAt => _approvedAt ?? '';
  set approvedAt(String? val) => _approvedAt = val;

  bool hasApprovedAt() => _approvedAt != null;

  // "activities_searchable" field.
  String? _activitiesSearchable;
  String get activitiesSearchable => _activitiesSearchable ?? '';
  set activitiesSearchable(String? val) => _activitiesSearchable = val;

  bool hasActivitiesSearchable() => _activitiesSearchable != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  // "cart_materials_amount" field.
  int? _cartMaterialsAmount;
  int get cartMaterialsAmount => _cartMaterialsAmount ?? 0;
  set cartMaterialsAmount(int? val) => _cartMaterialsAmount = val;

  void incrementCartMaterialsAmount(int amount) =>
      cartMaterialsAmount = cartMaterialsAmount + amount;

  bool hasCartMaterialsAmount() => _cartMaterialsAmount != null;

  // "services_value" field.
  double? _servicesValue;
  double get servicesValue => _servicesValue ?? 0.0;
  set servicesValue(double? val) => _servicesValue = val;

  void incrementServicesValue(double amount) =>
      servicesValue = servicesValue + amount;

  bool hasServicesValue() => _servicesValue != null;

  // "materials_value" field.
  double? _materialsValue;
  double get materialsValue => _materialsValue ?? 0.0;
  set materialsValue(double? val) => _materialsValue = val;

  void incrementMaterialsValue(double amount) =>
      materialsValue = materialsValue + amount;

  bool hasMaterialsValue() => _materialsValue != null;

  // "vehicles_value" field.
  double? _vehiclesValue;
  double get vehiclesValue => _vehiclesValue ?? 0.0;
  set vehiclesValue(double? val) => _vehiclesValue = val;

  void incrementVehiclesValue(double amount) =>
      vehiclesValue = vehiclesValue + amount;

  bool hasVehiclesValue() => _vehiclesValue != null;

  // "total_value" field.
  double? _totalValue;
  double get totalValue => _totalValue ?? 0.0;
  set totalValue(double? val) => _totalValue = val;

  void incrementTotalValue(double amount) => totalValue = totalValue + amount;

  bool hasTotalValue() => _totalValue != null;

  // "o_company_img_file_path" field.
  String? _oCompanyImgFilePath;
  String get oCompanyImgFilePath => _oCompanyImgFilePath ?? '';
  set oCompanyImgFilePath(String? val) => _oCompanyImgFilePath = val;

  bool hasOCompanyImgFilePath() => _oCompanyImgFilePath != null;

  // "o_company_img_file_name" field.
  String? _oCompanyImgFileName;
  String get oCompanyImgFileName => _oCompanyImgFileName ?? '';
  set oCompanyImgFileName(String? val) => _oCompanyImgFileName = val;

  bool hasOCompanyImgFileName() => _oCompanyImgFileName != null;

  static DtOrderVisitAssetStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitAssetStruct(
        id: castToType<int>(data['id']),
        opId: castToType<int>(data['op_id']),
        oId: castToType<int>(data['o_id']),
        orderMask: data['order_mask'] as String?,
        oTypeId: castToType<int>(data['o_type_id']),
        oTypeCode: data['o_type_code'] as String?,
        oTypeSubCode: data['o_type_sub_code'] as String?,
        oTeamCode: data['o_team_code'] as String?,
        oTeamLeaderNameShort: data['o_team_leader_name_short'] as String?,
        ovId: castToType<int>(data['ov_id']),
        ovStartedAt: data['ov_started_at'] as String?,
        ovStartedDatetime: data['ov_started_datetime'] as DateTime?,
        ovEndedAt: data['ov_ended_at'] as String?,
        ovEndedDatetime: data['ov_ended_datetime'] as DateTime?,
        assetId: castToType<int>(data['asset_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isMoved: data['is_moved'] as bool?,
        beforeUnitId: castToType<int>(data['before_unit_id']),
        beforeUnitCode: data['before_unit_code'] as String?,
        beforeUnitDescription: data['before_unit_description'] as String?,
        beforeTagId: castToType<int>(data['before_tag_id']),
        beforeTagDescription: data['before_tag_description'] as String?,
        beforeTagSubId: castToType<int>(data['before_tag_sub_id']),
        beforeTagSubDescription: data['before_tag_sub_description'] as String?,
        beforeStatusId: castToType<int>(data['before_status_id']),
        beforeStatusDescription: data['before_status_description'] as String?,
        beforeStatusCode: data['before_status_code'] as String?,
        beforeStatusAt: data['before_status_at'] as String?,
        beforeStatusDatetime: data['before_status_datetime'] as DateTime?,
        beforeComments: data['before_comments'] as String?,
        beforeImgFilePath: data['before_img_file_path'] as String?,
        beforeImgFileName: data['before_img_file_name'] as String?,
        beforeRecorder: castToType<int>(data['before_recorder']),
        beforePriorityId: castToType<int>(data['before_priority_id']),
        afterUnitId: castToType<int>(data['after_unit_id']),
        afterUnitCode: data['after_unit_code'] as String?,
        afterUnitDescription: data['after_unit_description'] as String?,
        afterTagId: castToType<int>(data['after_tag_id']),
        afterTagDescription: data['after_tag_description'] as String?,
        afterTagSubId: castToType<int>(data['after_tag_sub_id']),
        afterTagSubDescription: data['after_tag_sub_description'] as String?,
        afterStatusId: castToType<int>(data['after_status_id']),
        afterStatusDescription: data['after_status_description'] as String?,
        afterStatusCode: data['after_status_code'] as String?,
        afterStatusAt: data['after_status_at'] as String?,
        afterStatusDatetime: data['after_status_datetime'] as DateTime?,
        afterComments: data['after_comments'] as String?,
        afterImgFilePath: data['after_img_file_path'] as String?,
        afterImgFileName: data['after_img_file_name'] as String?,
        afterRecorder: castToType<int>(data['after_recorder']),
        afterPriorityId: castToType<int>(data['after_priority_id']),
        processingId: castToType<int>(data['processing_id']),
        processingDescription: data['processing_description'] as String?,
        movedComments: data['moved_comments'] as String?,
        reportedUserId: castToType<int>(data['reported_user_id']),
        reportedUserNameShort: data['reported_user_name_short'] as String?,
        reportedAt: data['reported_at'] as String?,
        disapprovedUserId: castToType<int>(data['disapproved_user_id']),
        disapprovedUserNameShort:
            data['disapproved_user_name_short'] as String?,
        disapprovedAt: data['disapproved_at'] as String?,
        disapprovedNotes: data['disapproved_notes'] as String?,
        approvedUserId: castToType<int>(data['approved_user_id']),
        approvedUserNameShort: data['approved_user_name_short'] as String?,
        approvedAt: data['approved_at'] as String?,
        activitiesSearchable: data['activities_searchable'] as String?,
        versionMode: data['version_mode'] as String?,
        cartMaterialsAmount: castToType<int>(data['cart_materials_amount']),
        servicesValue: castToType<double>(data['services_value']),
        materialsValue: castToType<double>(data['materials_value']),
        vehiclesValue: castToType<double>(data['vehicles_value']),
        totalValue: castToType<double>(data['total_value']),
        oCompanyImgFilePath: data['o_company_img_file_path'] as String?,
        oCompanyImgFileName: data['o_company_img_file_name'] as String?,
      );

  static DtOrderVisitAssetStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitAssetStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'op_id': _opId,
        'o_id': _oId,
        'order_mask': _orderMask,
        'o_type_id': _oTypeId,
        'o_type_code': _oTypeCode,
        'o_type_sub_code': _oTypeSubCode,
        'o_team_code': _oTeamCode,
        'o_team_leader_name_short': _oTeamLeaderNameShort,
        'ov_id': _ovId,
        'ov_started_at': _ovStartedAt,
        'ov_started_datetime': _ovStartedDatetime,
        'ov_ended_at': _ovEndedAt,
        'ov_ended_datetime': _ovEndedDatetime,
        'asset_id': _assetId,
        'code': _code,
        'description': _description,
        'is_moved': _isMoved,
        'before_unit_id': _beforeUnitId,
        'before_unit_code': _beforeUnitCode,
        'before_unit_description': _beforeUnitDescription,
        'before_tag_id': _beforeTagId,
        'before_tag_description': _beforeTagDescription,
        'before_tag_sub_id': _beforeTagSubId,
        'before_tag_sub_description': _beforeTagSubDescription,
        'before_status_id': _beforeStatusId,
        'before_status_description': _beforeStatusDescription,
        'before_status_code': _beforeStatusCode,
        'before_status_at': _beforeStatusAt,
        'before_status_datetime': _beforeStatusDatetime,
        'before_comments': _beforeComments,
        'before_img_file_path': _beforeImgFilePath,
        'before_img_file_name': _beforeImgFileName,
        'before_recorder': _beforeRecorder,
        'before_priority_id': _beforePriorityId,
        'after_unit_id': _afterUnitId,
        'after_unit_code': _afterUnitCode,
        'after_unit_description': _afterUnitDescription,
        'after_tag_id': _afterTagId,
        'after_tag_description': _afterTagDescription,
        'after_tag_sub_id': _afterTagSubId,
        'after_tag_sub_description': _afterTagSubDescription,
        'after_status_id': _afterStatusId,
        'after_status_description': _afterStatusDescription,
        'after_status_code': _afterStatusCode,
        'after_status_at': _afterStatusAt,
        'after_status_datetime': _afterStatusDatetime,
        'after_comments': _afterComments,
        'after_img_file_path': _afterImgFilePath,
        'after_img_file_name': _afterImgFileName,
        'after_recorder': _afterRecorder,
        'after_priority_id': _afterPriorityId,
        'processing_id': _processingId,
        'processing_description': _processingDescription,
        'moved_comments': _movedComments,
        'reported_user_id': _reportedUserId,
        'reported_user_name_short': _reportedUserNameShort,
        'reported_at': _reportedAt,
        'disapproved_user_id': _disapprovedUserId,
        'disapproved_user_name_short': _disapprovedUserNameShort,
        'disapproved_at': _disapprovedAt,
        'disapproved_notes': _disapprovedNotes,
        'approved_user_id': _approvedUserId,
        'approved_user_name_short': _approvedUserNameShort,
        'approved_at': _approvedAt,
        'activities_searchable': _activitiesSearchable,
        'version_mode': _versionMode,
        'cart_materials_amount': _cartMaterialsAmount,
        'services_value': _servicesValue,
        'materials_value': _materialsValue,
        'vehicles_value': _vehiclesValue,
        'total_value': _totalValue,
        'o_company_img_file_path': _oCompanyImgFilePath,
        'o_company_img_file_name': _oCompanyImgFileName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'op_id': serializeParam(
          _opId,
          ParamType.int,
        ),
        'o_id': serializeParam(
          _oId,
          ParamType.int,
        ),
        'order_mask': serializeParam(
          _orderMask,
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
        'o_type_sub_code': serializeParam(
          _oTypeSubCode,
          ParamType.String,
        ),
        'o_team_code': serializeParam(
          _oTeamCode,
          ParamType.String,
        ),
        'o_team_leader_name_short': serializeParam(
          _oTeamLeaderNameShort,
          ParamType.String,
        ),
        'ov_id': serializeParam(
          _ovId,
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
        'asset_id': serializeParam(
          _assetId,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'is_moved': serializeParam(
          _isMoved,
          ParamType.bool,
        ),
        'before_unit_id': serializeParam(
          _beforeUnitId,
          ParamType.int,
        ),
        'before_unit_code': serializeParam(
          _beforeUnitCode,
          ParamType.String,
        ),
        'before_unit_description': serializeParam(
          _beforeUnitDescription,
          ParamType.String,
        ),
        'before_tag_id': serializeParam(
          _beforeTagId,
          ParamType.int,
        ),
        'before_tag_description': serializeParam(
          _beforeTagDescription,
          ParamType.String,
        ),
        'before_tag_sub_id': serializeParam(
          _beforeTagSubId,
          ParamType.int,
        ),
        'before_tag_sub_description': serializeParam(
          _beforeTagSubDescription,
          ParamType.String,
        ),
        'before_status_id': serializeParam(
          _beforeStatusId,
          ParamType.int,
        ),
        'before_status_description': serializeParam(
          _beforeStatusDescription,
          ParamType.String,
        ),
        'before_status_code': serializeParam(
          _beforeStatusCode,
          ParamType.String,
        ),
        'before_status_at': serializeParam(
          _beforeStatusAt,
          ParamType.String,
        ),
        'before_status_datetime': serializeParam(
          _beforeStatusDatetime,
          ParamType.DateTime,
        ),
        'before_comments': serializeParam(
          _beforeComments,
          ParamType.String,
        ),
        'before_img_file_path': serializeParam(
          _beforeImgFilePath,
          ParamType.String,
        ),
        'before_img_file_name': serializeParam(
          _beforeImgFileName,
          ParamType.String,
        ),
        'before_recorder': serializeParam(
          _beforeRecorder,
          ParamType.int,
        ),
        'before_priority_id': serializeParam(
          _beforePriorityId,
          ParamType.int,
        ),
        'after_unit_id': serializeParam(
          _afterUnitId,
          ParamType.int,
        ),
        'after_unit_code': serializeParam(
          _afterUnitCode,
          ParamType.String,
        ),
        'after_unit_description': serializeParam(
          _afterUnitDescription,
          ParamType.String,
        ),
        'after_tag_id': serializeParam(
          _afterTagId,
          ParamType.int,
        ),
        'after_tag_description': serializeParam(
          _afterTagDescription,
          ParamType.String,
        ),
        'after_tag_sub_id': serializeParam(
          _afterTagSubId,
          ParamType.int,
        ),
        'after_tag_sub_description': serializeParam(
          _afterTagSubDescription,
          ParamType.String,
        ),
        'after_status_id': serializeParam(
          _afterStatusId,
          ParamType.int,
        ),
        'after_status_description': serializeParam(
          _afterStatusDescription,
          ParamType.String,
        ),
        'after_status_code': serializeParam(
          _afterStatusCode,
          ParamType.String,
        ),
        'after_status_at': serializeParam(
          _afterStatusAt,
          ParamType.String,
        ),
        'after_status_datetime': serializeParam(
          _afterStatusDatetime,
          ParamType.DateTime,
        ),
        'after_comments': serializeParam(
          _afterComments,
          ParamType.String,
        ),
        'after_img_file_path': serializeParam(
          _afterImgFilePath,
          ParamType.String,
        ),
        'after_img_file_name': serializeParam(
          _afterImgFileName,
          ParamType.String,
        ),
        'after_recorder': serializeParam(
          _afterRecorder,
          ParamType.int,
        ),
        'after_priority_id': serializeParam(
          _afterPriorityId,
          ParamType.int,
        ),
        'processing_id': serializeParam(
          _processingId,
          ParamType.int,
        ),
        'processing_description': serializeParam(
          _processingDescription,
          ParamType.String,
        ),
        'moved_comments': serializeParam(
          _movedComments,
          ParamType.String,
        ),
        'reported_user_id': serializeParam(
          _reportedUserId,
          ParamType.int,
        ),
        'reported_user_name_short': serializeParam(
          _reportedUserNameShort,
          ParamType.String,
        ),
        'reported_at': serializeParam(
          _reportedAt,
          ParamType.String,
        ),
        'disapproved_user_id': serializeParam(
          _disapprovedUserId,
          ParamType.int,
        ),
        'disapproved_user_name_short': serializeParam(
          _disapprovedUserNameShort,
          ParamType.String,
        ),
        'disapproved_at': serializeParam(
          _disapprovedAt,
          ParamType.String,
        ),
        'disapproved_notes': serializeParam(
          _disapprovedNotes,
          ParamType.String,
        ),
        'approved_user_id': serializeParam(
          _approvedUserId,
          ParamType.int,
        ),
        'approved_user_name_short': serializeParam(
          _approvedUserNameShort,
          ParamType.String,
        ),
        'approved_at': serializeParam(
          _approvedAt,
          ParamType.String,
        ),
        'activities_searchable': serializeParam(
          _activitiesSearchable,
          ParamType.String,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
        'cart_materials_amount': serializeParam(
          _cartMaterialsAmount,
          ParamType.int,
        ),
        'services_value': serializeParam(
          _servicesValue,
          ParamType.double,
        ),
        'materials_value': serializeParam(
          _materialsValue,
          ParamType.double,
        ),
        'vehicles_value': serializeParam(
          _vehiclesValue,
          ParamType.double,
        ),
        'total_value': serializeParam(
          _totalValue,
          ParamType.double,
        ),
        'o_company_img_file_path': serializeParam(
          _oCompanyImgFilePath,
          ParamType.String,
        ),
        'o_company_img_file_name': serializeParam(
          _oCompanyImgFileName,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitAssetStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitAssetStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        opId: deserializeParam(
          data['op_id'],
          ParamType.int,
          false,
        ),
        oId: deserializeParam(
          data['o_id'],
          ParamType.int,
          false,
        ),
        orderMask: deserializeParam(
          data['order_mask'],
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
        oTypeSubCode: deserializeParam(
          data['o_type_sub_code'],
          ParamType.String,
          false,
        ),
        oTeamCode: deserializeParam(
          data['o_team_code'],
          ParamType.String,
          false,
        ),
        oTeamLeaderNameShort: deserializeParam(
          data['o_team_leader_name_short'],
          ParamType.String,
          false,
        ),
        ovId: deserializeParam(
          data['ov_id'],
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
        assetId: deserializeParam(
          data['asset_id'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isMoved: deserializeParam(
          data['is_moved'],
          ParamType.bool,
          false,
        ),
        beforeUnitId: deserializeParam(
          data['before_unit_id'],
          ParamType.int,
          false,
        ),
        beforeUnitCode: deserializeParam(
          data['before_unit_code'],
          ParamType.String,
          false,
        ),
        beforeUnitDescription: deserializeParam(
          data['before_unit_description'],
          ParamType.String,
          false,
        ),
        beforeTagId: deserializeParam(
          data['before_tag_id'],
          ParamType.int,
          false,
        ),
        beforeTagDescription: deserializeParam(
          data['before_tag_description'],
          ParamType.String,
          false,
        ),
        beforeTagSubId: deserializeParam(
          data['before_tag_sub_id'],
          ParamType.int,
          false,
        ),
        beforeTagSubDescription: deserializeParam(
          data['before_tag_sub_description'],
          ParamType.String,
          false,
        ),
        beforeStatusId: deserializeParam(
          data['before_status_id'],
          ParamType.int,
          false,
        ),
        beforeStatusDescription: deserializeParam(
          data['before_status_description'],
          ParamType.String,
          false,
        ),
        beforeStatusCode: deserializeParam(
          data['before_status_code'],
          ParamType.String,
          false,
        ),
        beforeStatusAt: deserializeParam(
          data['before_status_at'],
          ParamType.String,
          false,
        ),
        beforeStatusDatetime: deserializeParam(
          data['before_status_datetime'],
          ParamType.DateTime,
          false,
        ),
        beforeComments: deserializeParam(
          data['before_comments'],
          ParamType.String,
          false,
        ),
        beforeImgFilePath: deserializeParam(
          data['before_img_file_path'],
          ParamType.String,
          false,
        ),
        beforeImgFileName: deserializeParam(
          data['before_img_file_name'],
          ParamType.String,
          false,
        ),
        beforeRecorder: deserializeParam(
          data['before_recorder'],
          ParamType.int,
          false,
        ),
        beforePriorityId: deserializeParam(
          data['before_priority_id'],
          ParamType.int,
          false,
        ),
        afterUnitId: deserializeParam(
          data['after_unit_id'],
          ParamType.int,
          false,
        ),
        afterUnitCode: deserializeParam(
          data['after_unit_code'],
          ParamType.String,
          false,
        ),
        afterUnitDescription: deserializeParam(
          data['after_unit_description'],
          ParamType.String,
          false,
        ),
        afterTagId: deserializeParam(
          data['after_tag_id'],
          ParamType.int,
          false,
        ),
        afterTagDescription: deserializeParam(
          data['after_tag_description'],
          ParamType.String,
          false,
        ),
        afterTagSubId: deserializeParam(
          data['after_tag_sub_id'],
          ParamType.int,
          false,
        ),
        afterTagSubDescription: deserializeParam(
          data['after_tag_sub_description'],
          ParamType.String,
          false,
        ),
        afterStatusId: deserializeParam(
          data['after_status_id'],
          ParamType.int,
          false,
        ),
        afterStatusDescription: deserializeParam(
          data['after_status_description'],
          ParamType.String,
          false,
        ),
        afterStatusCode: deserializeParam(
          data['after_status_code'],
          ParamType.String,
          false,
        ),
        afterStatusAt: deserializeParam(
          data['after_status_at'],
          ParamType.String,
          false,
        ),
        afterStatusDatetime: deserializeParam(
          data['after_status_datetime'],
          ParamType.DateTime,
          false,
        ),
        afterComments: deserializeParam(
          data['after_comments'],
          ParamType.String,
          false,
        ),
        afterImgFilePath: deserializeParam(
          data['after_img_file_path'],
          ParamType.String,
          false,
        ),
        afterImgFileName: deserializeParam(
          data['after_img_file_name'],
          ParamType.String,
          false,
        ),
        afterRecorder: deserializeParam(
          data['after_recorder'],
          ParamType.int,
          false,
        ),
        afterPriorityId: deserializeParam(
          data['after_priority_id'],
          ParamType.int,
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
        movedComments: deserializeParam(
          data['moved_comments'],
          ParamType.String,
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
        reportedAt: deserializeParam(
          data['reported_at'],
          ParamType.String,
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
        disapprovedAt: deserializeParam(
          data['disapproved_at'],
          ParamType.String,
          false,
        ),
        disapprovedNotes: deserializeParam(
          data['disapproved_notes'],
          ParamType.String,
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
        approvedAt: deserializeParam(
          data['approved_at'],
          ParamType.String,
          false,
        ),
        activitiesSearchable: deserializeParam(
          data['activities_searchable'],
          ParamType.String,
          false,
        ),
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
        cartMaterialsAmount: deserializeParam(
          data['cart_materials_amount'],
          ParamType.int,
          false,
        ),
        servicesValue: deserializeParam(
          data['services_value'],
          ParamType.double,
          false,
        ),
        materialsValue: deserializeParam(
          data['materials_value'],
          ParamType.double,
          false,
        ),
        vehiclesValue: deserializeParam(
          data['vehicles_value'],
          ParamType.double,
          false,
        ),
        totalValue: deserializeParam(
          data['total_value'],
          ParamType.double,
          false,
        ),
        oCompanyImgFilePath: deserializeParam(
          data['o_company_img_file_path'],
          ParamType.String,
          false,
        ),
        oCompanyImgFileName: deserializeParam(
          data['o_company_img_file_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitAssetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitAssetStruct &&
        id == other.id &&
        opId == other.opId &&
        oId == other.oId &&
        orderMask == other.orderMask &&
        oTypeId == other.oTypeId &&
        oTypeCode == other.oTypeCode &&
        oTypeSubCode == other.oTypeSubCode &&
        oTeamCode == other.oTeamCode &&
        oTeamLeaderNameShort == other.oTeamLeaderNameShort &&
        ovId == other.ovId &&
        ovStartedAt == other.ovStartedAt &&
        ovStartedDatetime == other.ovStartedDatetime &&
        ovEndedAt == other.ovEndedAt &&
        ovEndedDatetime == other.ovEndedDatetime &&
        assetId == other.assetId &&
        code == other.code &&
        description == other.description &&
        isMoved == other.isMoved &&
        beforeUnitId == other.beforeUnitId &&
        beforeUnitCode == other.beforeUnitCode &&
        beforeUnitDescription == other.beforeUnitDescription &&
        beforeTagId == other.beforeTagId &&
        beforeTagDescription == other.beforeTagDescription &&
        beforeTagSubId == other.beforeTagSubId &&
        beforeTagSubDescription == other.beforeTagSubDescription &&
        beforeStatusId == other.beforeStatusId &&
        beforeStatusDescription == other.beforeStatusDescription &&
        beforeStatusCode == other.beforeStatusCode &&
        beforeStatusAt == other.beforeStatusAt &&
        beforeStatusDatetime == other.beforeStatusDatetime &&
        beforeComments == other.beforeComments &&
        beforeImgFilePath == other.beforeImgFilePath &&
        beforeImgFileName == other.beforeImgFileName &&
        beforeRecorder == other.beforeRecorder &&
        beforePriorityId == other.beforePriorityId &&
        afterUnitId == other.afterUnitId &&
        afterUnitCode == other.afterUnitCode &&
        afterUnitDescription == other.afterUnitDescription &&
        afterTagId == other.afterTagId &&
        afterTagDescription == other.afterTagDescription &&
        afterTagSubId == other.afterTagSubId &&
        afterTagSubDescription == other.afterTagSubDescription &&
        afterStatusId == other.afterStatusId &&
        afterStatusDescription == other.afterStatusDescription &&
        afterStatusCode == other.afterStatusCode &&
        afterStatusAt == other.afterStatusAt &&
        afterStatusDatetime == other.afterStatusDatetime &&
        afterComments == other.afterComments &&
        afterImgFilePath == other.afterImgFilePath &&
        afterImgFileName == other.afterImgFileName &&
        afterRecorder == other.afterRecorder &&
        afterPriorityId == other.afterPriorityId &&
        processingId == other.processingId &&
        processingDescription == other.processingDescription &&
        movedComments == other.movedComments &&
        reportedUserId == other.reportedUserId &&
        reportedUserNameShort == other.reportedUserNameShort &&
        reportedAt == other.reportedAt &&
        disapprovedUserId == other.disapprovedUserId &&
        disapprovedUserNameShort == other.disapprovedUserNameShort &&
        disapprovedAt == other.disapprovedAt &&
        disapprovedNotes == other.disapprovedNotes &&
        approvedUserId == other.approvedUserId &&
        approvedUserNameShort == other.approvedUserNameShort &&
        approvedAt == other.approvedAt &&
        activitiesSearchable == other.activitiesSearchable &&
        versionMode == other.versionMode &&
        cartMaterialsAmount == other.cartMaterialsAmount &&
        servicesValue == other.servicesValue &&
        materialsValue == other.materialsValue &&
        vehiclesValue == other.vehiclesValue &&
        totalValue == other.totalValue &&
        oCompanyImgFilePath == other.oCompanyImgFilePath &&
        oCompanyImgFileName == other.oCompanyImgFileName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        opId,
        oId,
        orderMask,
        oTypeId,
        oTypeCode,
        oTypeSubCode,
        oTeamCode,
        oTeamLeaderNameShort,
        ovId,
        ovStartedAt,
        ovStartedDatetime,
        ovEndedAt,
        ovEndedDatetime,
        assetId,
        code,
        description,
        isMoved,
        beforeUnitId,
        beforeUnitCode,
        beforeUnitDescription,
        beforeTagId,
        beforeTagDescription,
        beforeTagSubId,
        beforeTagSubDescription,
        beforeStatusId,
        beforeStatusDescription,
        beforeStatusCode,
        beforeStatusAt,
        beforeStatusDatetime,
        beforeComments,
        beforeImgFilePath,
        beforeImgFileName,
        beforeRecorder,
        beforePriorityId,
        afterUnitId,
        afterUnitCode,
        afterUnitDescription,
        afterTagId,
        afterTagDescription,
        afterTagSubId,
        afterTagSubDescription,
        afterStatusId,
        afterStatusDescription,
        afterStatusCode,
        afterStatusAt,
        afterStatusDatetime,
        afterComments,
        afterImgFilePath,
        afterImgFileName,
        afterRecorder,
        afterPriorityId,
        processingId,
        processingDescription,
        movedComments,
        reportedUserId,
        reportedUserNameShort,
        reportedAt,
        disapprovedUserId,
        disapprovedUserNameShort,
        disapprovedAt,
        disapprovedNotes,
        approvedUserId,
        approvedUserNameShort,
        approvedAt,
        activitiesSearchable,
        versionMode,
        cartMaterialsAmount,
        servicesValue,
        materialsValue,
        vehiclesValue,
        totalValue,
        oCompanyImgFilePath,
        oCompanyImgFileName
      ]);
}

DtOrderVisitAssetStruct createDtOrderVisitAssetStruct({
  int? id,
  int? opId,
  int? oId,
  String? orderMask,
  int? oTypeId,
  String? oTypeCode,
  String? oTypeSubCode,
  String? oTeamCode,
  String? oTeamLeaderNameShort,
  int? ovId,
  String? ovStartedAt,
  DateTime? ovStartedDatetime,
  String? ovEndedAt,
  DateTime? ovEndedDatetime,
  int? assetId,
  String? code,
  String? description,
  bool? isMoved,
  int? beforeUnitId,
  String? beforeUnitCode,
  String? beforeUnitDescription,
  int? beforeTagId,
  String? beforeTagDescription,
  int? beforeTagSubId,
  String? beforeTagSubDescription,
  int? beforeStatusId,
  String? beforeStatusDescription,
  String? beforeStatusCode,
  String? beforeStatusAt,
  DateTime? beforeStatusDatetime,
  String? beforeComments,
  String? beforeImgFilePath,
  String? beforeImgFileName,
  int? beforeRecorder,
  int? beforePriorityId,
  int? afterUnitId,
  String? afterUnitCode,
  String? afterUnitDescription,
  int? afterTagId,
  String? afterTagDescription,
  int? afterTagSubId,
  String? afterTagSubDescription,
  int? afterStatusId,
  String? afterStatusDescription,
  String? afterStatusCode,
  String? afterStatusAt,
  DateTime? afterStatusDatetime,
  String? afterComments,
  String? afterImgFilePath,
  String? afterImgFileName,
  int? afterRecorder,
  int? afterPriorityId,
  int? processingId,
  String? processingDescription,
  String? movedComments,
  int? reportedUserId,
  String? reportedUserNameShort,
  String? reportedAt,
  int? disapprovedUserId,
  String? disapprovedUserNameShort,
  String? disapprovedAt,
  String? disapprovedNotes,
  int? approvedUserId,
  String? approvedUserNameShort,
  String? approvedAt,
  String? activitiesSearchable,
  String? versionMode,
  int? cartMaterialsAmount,
  double? servicesValue,
  double? materialsValue,
  double? vehiclesValue,
  double? totalValue,
  String? oCompanyImgFilePath,
  String? oCompanyImgFileName,
}) =>
    DtOrderVisitAssetStruct(
      id: id,
      opId: opId,
      oId: oId,
      orderMask: orderMask,
      oTypeId: oTypeId,
      oTypeCode: oTypeCode,
      oTypeSubCode: oTypeSubCode,
      oTeamCode: oTeamCode,
      oTeamLeaderNameShort: oTeamLeaderNameShort,
      ovId: ovId,
      ovStartedAt: ovStartedAt,
      ovStartedDatetime: ovStartedDatetime,
      ovEndedAt: ovEndedAt,
      ovEndedDatetime: ovEndedDatetime,
      assetId: assetId,
      code: code,
      description: description,
      isMoved: isMoved,
      beforeUnitId: beforeUnitId,
      beforeUnitCode: beforeUnitCode,
      beforeUnitDescription: beforeUnitDescription,
      beforeTagId: beforeTagId,
      beforeTagDescription: beforeTagDescription,
      beforeTagSubId: beforeTagSubId,
      beforeTagSubDescription: beforeTagSubDescription,
      beforeStatusId: beforeStatusId,
      beforeStatusDescription: beforeStatusDescription,
      beforeStatusCode: beforeStatusCode,
      beforeStatusAt: beforeStatusAt,
      beforeStatusDatetime: beforeStatusDatetime,
      beforeComments: beforeComments,
      beforeImgFilePath: beforeImgFilePath,
      beforeImgFileName: beforeImgFileName,
      beforeRecorder: beforeRecorder,
      beforePriorityId: beforePriorityId,
      afterUnitId: afterUnitId,
      afterUnitCode: afterUnitCode,
      afterUnitDescription: afterUnitDescription,
      afterTagId: afterTagId,
      afterTagDescription: afterTagDescription,
      afterTagSubId: afterTagSubId,
      afterTagSubDescription: afterTagSubDescription,
      afterStatusId: afterStatusId,
      afterStatusDescription: afterStatusDescription,
      afterStatusCode: afterStatusCode,
      afterStatusAt: afterStatusAt,
      afterStatusDatetime: afterStatusDatetime,
      afterComments: afterComments,
      afterImgFilePath: afterImgFilePath,
      afterImgFileName: afterImgFileName,
      afterRecorder: afterRecorder,
      afterPriorityId: afterPriorityId,
      processingId: processingId,
      processingDescription: processingDescription,
      movedComments: movedComments,
      reportedUserId: reportedUserId,
      reportedUserNameShort: reportedUserNameShort,
      reportedAt: reportedAt,
      disapprovedUserId: disapprovedUserId,
      disapprovedUserNameShort: disapprovedUserNameShort,
      disapprovedAt: disapprovedAt,
      disapprovedNotes: disapprovedNotes,
      approvedUserId: approvedUserId,
      approvedUserNameShort: approvedUserNameShort,
      approvedAt: approvedAt,
      activitiesSearchable: activitiesSearchable,
      versionMode: versionMode,
      cartMaterialsAmount: cartMaterialsAmount,
      servicesValue: servicesValue,
      materialsValue: materialsValue,
      vehiclesValue: vehiclesValue,
      totalValue: totalValue,
      oCompanyImgFilePath: oCompanyImgFilePath,
      oCompanyImgFileName: oCompanyImgFileName,
    );

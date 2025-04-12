// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderStruct extends BaseStruct {
  DtOrderStruct({
    String? uid,
    int? id,
    int? parentId,
    int? companyId,
    String? companyDescription,
    String? companyImgFilePath,
    String? companyImgFileName,
    String? imgFilePath,
    String? imgFileName,
    int? departmentId,
    int? contractId,
    String? contractDescription,
    int? providerCompanyId,
    String? providerCompanyImgFilePath,
    String? providerCompanyImgFileName,
    int? providerDepartmentId,
    String? orderMask,
    int? typeId,
    String? typeCode,
    int? typeSubId,
    String? typeSubCode,
    String? requestedServices,
    int? objectId,
    String? objectCode,
    String? requesterName,
    String? objectDescription,
    int? systemParentId,
    String? systemParentDescription,
    String? systemParentCode,
    int? systemId,
    String? systemDescription,
    String? systemCode,
    int? unitTypeParentId,
    String? unitTypeParentDescription,
    String? unitTypeParentCode,
    int? unitTypeId,
    String? unitTypeDescription,
    String? unitTypeCode,
    int? unitId,
    String? unitDescription,
    String? unitAddress,
    double? unitLatitude,
    double? unitLongitude,
    LatLng? unitLatLng,
    String? requesterPhone,
    int? requesterTeamId,
    String? requesterTeamCode,
    String? requestedAt,
    DateTime? requestedDatetime,
    int? statusId,
    String? statusCode,
    String? statusDescription,
    String? statusAt,
    DateTime? statusDatetime,
    int? priorityId,
    String? priorityCode,
    String? priorityDescription,
    int? teamLeaderId,
    String? teamLeaderNameShort,
    String? teamLeaderEmail,
    int? teamId,
    String? teamCode,
    String? teamDescription,
    int? assetTagId,
    String? assetTagDescription,
    int? year,
    int? counterParent,
    int? counterChild,
    int? causeReasonId,
    String? causeReasonDescription,
    int? suspendedReasonId,
    String? suspendedReasonDescription,
    int? cancelReasonId,
    String? cancelReasonDescription,
    String? canceledUserNameShort,
    int? canceledTeamId,
    String? canceledTeamCode,
    int? planId,
    String? planCode,
    String? planDescription,
    double? valueServices,
    double? valueMaterials,
    double? valueVehicles,
    double? valueTotal,
    String? versionMode,
    int? createdUserId,
    int? ovCounter,
    double? progress,
  })  : _uid = uid,
        _id = id,
        _parentId = parentId,
        _companyId = companyId,
        _companyDescription = companyDescription,
        _companyImgFilePath = companyImgFilePath,
        _companyImgFileName = companyImgFileName,
        _imgFilePath = imgFilePath,
        _imgFileName = imgFileName,
        _departmentId = departmentId,
        _contractId = contractId,
        _contractDescription = contractDescription,
        _providerCompanyId = providerCompanyId,
        _providerCompanyImgFilePath = providerCompanyImgFilePath,
        _providerCompanyImgFileName = providerCompanyImgFileName,
        _providerDepartmentId = providerDepartmentId,
        _orderMask = orderMask,
        _typeId = typeId,
        _typeCode = typeCode,
        _typeSubId = typeSubId,
        _typeSubCode = typeSubCode,
        _requestedServices = requestedServices,
        _objectId = objectId,
        _objectCode = objectCode,
        _requesterName = requesterName,
        _objectDescription = objectDescription,
        _systemParentId = systemParentId,
        _systemParentDescription = systemParentDescription,
        _systemParentCode = systemParentCode,
        _systemId = systemId,
        _systemDescription = systemDescription,
        _systemCode = systemCode,
        _unitTypeParentId = unitTypeParentId,
        _unitTypeParentDescription = unitTypeParentDescription,
        _unitTypeParentCode = unitTypeParentCode,
        _unitTypeId = unitTypeId,
        _unitTypeDescription = unitTypeDescription,
        _unitTypeCode = unitTypeCode,
        _unitId = unitId,
        _unitDescription = unitDescription,
        _unitAddress = unitAddress,
        _unitLatitude = unitLatitude,
        _unitLongitude = unitLongitude,
        _unitLatLng = unitLatLng,
        _requesterPhone = requesterPhone,
        _requesterTeamId = requesterTeamId,
        _requesterTeamCode = requesterTeamCode,
        _requestedAt = requestedAt,
        _requestedDatetime = requestedDatetime,
        _statusId = statusId,
        _statusCode = statusCode,
        _statusDescription = statusDescription,
        _statusAt = statusAt,
        _statusDatetime = statusDatetime,
        _priorityId = priorityId,
        _priorityCode = priorityCode,
        _priorityDescription = priorityDescription,
        _teamLeaderId = teamLeaderId,
        _teamLeaderNameShort = teamLeaderNameShort,
        _teamLeaderEmail = teamLeaderEmail,
        _teamId = teamId,
        _teamCode = teamCode,
        _teamDescription = teamDescription,
        _assetTagId = assetTagId,
        _assetTagDescription = assetTagDescription,
        _year = year,
        _counterParent = counterParent,
        _counterChild = counterChild,
        _causeReasonId = causeReasonId,
        _causeReasonDescription = causeReasonDescription,
        _suspendedReasonId = suspendedReasonId,
        _suspendedReasonDescription = suspendedReasonDescription,
        _cancelReasonId = cancelReasonId,
        _cancelReasonDescription = cancelReasonDescription,
        _canceledUserNameShort = canceledUserNameShort,
        _canceledTeamId = canceledTeamId,
        _canceledTeamCode = canceledTeamCode,
        _planId = planId,
        _planCode = planCode,
        _planDescription = planDescription,
        _valueServices = valueServices,
        _valueMaterials = valueMaterials,
        _valueVehicles = valueVehicles,
        _valueTotal = valueTotal,
        _versionMode = versionMode,
        _createdUserId = createdUserId,
        _ovCounter = ovCounter,
        _progress = progress;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "parent_id" field.
  int? _parentId;
  int get parentId => _parentId ?? 0;
  set parentId(int? val) => _parentId = val;

  void incrementParentId(int amount) => parentId = parentId + amount;

  bool hasParentId() => _parentId != null;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "company_description" field.
  String? _companyDescription;
  String get companyDescription => _companyDescription ?? '';
  set companyDescription(String? val) => _companyDescription = val;

  bool hasCompanyDescription() => _companyDescription != null;

  // "company_img_file_path" field.
  String? _companyImgFilePath;
  String get companyImgFilePath => _companyImgFilePath ?? '';
  set companyImgFilePath(String? val) => _companyImgFilePath = val;

  bool hasCompanyImgFilePath() => _companyImgFilePath != null;

  // "company_img_file_name" field.
  String? _companyImgFileName;
  String get companyImgFileName => _companyImgFileName ?? '';
  set companyImgFileName(String? val) => _companyImgFileName = val;

  bool hasCompanyImgFileName() => _companyImgFileName != null;

  // "img_file_path" field.
  String? _imgFilePath;
  String get imgFilePath => _imgFilePath ?? '';
  set imgFilePath(String? val) => _imgFilePath = val;

  bool hasImgFilePath() => _imgFilePath != null;

  // "img_file_name" field.
  String? _imgFileName;
  String get imgFileName => _imgFileName ?? '';
  set imgFileName(String? val) => _imgFileName = val;

  bool hasImgFileName() => _imgFileName != null;

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "contract_id" field.
  int? _contractId;
  int get contractId => _contractId ?? 0;
  set contractId(int? val) => _contractId = val;

  void incrementContractId(int amount) => contractId = contractId + amount;

  bool hasContractId() => _contractId != null;

  // "contract_description" field.
  String? _contractDescription;
  String get contractDescription => _contractDescription ?? '';
  set contractDescription(String? val) => _contractDescription = val;

  bool hasContractDescription() => _contractDescription != null;

  // "provider_company_id" field.
  int? _providerCompanyId;
  int get providerCompanyId => _providerCompanyId ?? 0;
  set providerCompanyId(int? val) => _providerCompanyId = val;

  void incrementProviderCompanyId(int amount) =>
      providerCompanyId = providerCompanyId + amount;

  bool hasProviderCompanyId() => _providerCompanyId != null;

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

  // "provider_department_id" field.
  int? _providerDepartmentId;
  int get providerDepartmentId => _providerDepartmentId ?? 0;
  set providerDepartmentId(int? val) => _providerDepartmentId = val;

  void incrementProviderDepartmentId(int amount) =>
      providerDepartmentId = providerDepartmentId + amount;

  bool hasProviderDepartmentId() => _providerDepartmentId != null;

  // "order_mask" field.
  String? _orderMask;
  String get orderMask => _orderMask ?? '';
  set orderMask(String? val) => _orderMask = val;

  bool hasOrderMask() => _orderMask != null;

  // "type_id" field.
  int? _typeId;
  int get typeId => _typeId ?? 0;
  set typeId(int? val) => _typeId = val;

  void incrementTypeId(int amount) => typeId = typeId + amount;

  bool hasTypeId() => _typeId != null;

  // "type_code" field.
  String? _typeCode;
  String get typeCode => _typeCode ?? '';
  set typeCode(String? val) => _typeCode = val;

  bool hasTypeCode() => _typeCode != null;

  // "type_sub_id" field.
  int? _typeSubId;
  int get typeSubId => _typeSubId ?? 0;
  set typeSubId(int? val) => _typeSubId = val;

  void incrementTypeSubId(int amount) => typeSubId = typeSubId + amount;

  bool hasTypeSubId() => _typeSubId != null;

  // "type_sub_code" field.
  String? _typeSubCode;
  String get typeSubCode => _typeSubCode ?? '';
  set typeSubCode(String? val) => _typeSubCode = val;

  bool hasTypeSubCode() => _typeSubCode != null;

  // "requested_services" field.
  String? _requestedServices;
  String get requestedServices => _requestedServices ?? '';
  set requestedServices(String? val) => _requestedServices = val;

  bool hasRequestedServices() => _requestedServices != null;

  // "object_id" field.
  int? _objectId;
  int get objectId => _objectId ?? 0;
  set objectId(int? val) => _objectId = val;

  void incrementObjectId(int amount) => objectId = objectId + amount;

  bool hasObjectId() => _objectId != null;

  // "object_code" field.
  String? _objectCode;
  String get objectCode => _objectCode ?? '';
  set objectCode(String? val) => _objectCode = val;

  bool hasObjectCode() => _objectCode != null;

  // "requester_name" field.
  String? _requesterName;
  String get requesterName => _requesterName ?? '';
  set requesterName(String? val) => _requesterName = val;

  bool hasRequesterName() => _requesterName != null;

  // "object_description" field.
  String? _objectDescription;
  String get objectDescription => _objectDescription ?? '';
  set objectDescription(String? val) => _objectDescription = val;

  bool hasObjectDescription() => _objectDescription != null;

  // "system_parent_id" field.
  int? _systemParentId;
  int get systemParentId => _systemParentId ?? 0;
  set systemParentId(int? val) => _systemParentId = val;

  void incrementSystemParentId(int amount) =>
      systemParentId = systemParentId + amount;

  bool hasSystemParentId() => _systemParentId != null;

  // "system_parent_description" field.
  String? _systemParentDescription;
  String get systemParentDescription => _systemParentDescription ?? '';
  set systemParentDescription(String? val) => _systemParentDescription = val;

  bool hasSystemParentDescription() => _systemParentDescription != null;

  // "system_parent_code" field.
  String? _systemParentCode;
  String get systemParentCode => _systemParentCode ?? '';
  set systemParentCode(String? val) => _systemParentCode = val;

  bool hasSystemParentCode() => _systemParentCode != null;

  // "system_id" field.
  int? _systemId;
  int get systemId => _systemId ?? 0;
  set systemId(int? val) => _systemId = val;

  void incrementSystemId(int amount) => systemId = systemId + amount;

  bool hasSystemId() => _systemId != null;

  // "system_description" field.
  String? _systemDescription;
  String get systemDescription => _systemDescription ?? '';
  set systemDescription(String? val) => _systemDescription = val;

  bool hasSystemDescription() => _systemDescription != null;

  // "system_code" field.
  String? _systemCode;
  String get systemCode => _systemCode ?? '';
  set systemCode(String? val) => _systemCode = val;

  bool hasSystemCode() => _systemCode != null;

  // "unit_type_parent_id" field.
  int? _unitTypeParentId;
  int get unitTypeParentId => _unitTypeParentId ?? 0;
  set unitTypeParentId(int? val) => _unitTypeParentId = val;

  void incrementUnitTypeParentId(int amount) =>
      unitTypeParentId = unitTypeParentId + amount;

  bool hasUnitTypeParentId() => _unitTypeParentId != null;

  // "unit_type_parent_description" field.
  String? _unitTypeParentDescription;
  String get unitTypeParentDescription => _unitTypeParentDescription ?? '';
  set unitTypeParentDescription(String? val) =>
      _unitTypeParentDescription = val;

  bool hasUnitTypeParentDescription() => _unitTypeParentDescription != null;

  // "unit_type_parent_code" field.
  String? _unitTypeParentCode;
  String get unitTypeParentCode => _unitTypeParentCode ?? '';
  set unitTypeParentCode(String? val) => _unitTypeParentCode = val;

  bool hasUnitTypeParentCode() => _unitTypeParentCode != null;

  // "unit_type_id" field.
  int? _unitTypeId;
  int get unitTypeId => _unitTypeId ?? 0;
  set unitTypeId(int? val) => _unitTypeId = val;

  void incrementUnitTypeId(int amount) => unitTypeId = unitTypeId + amount;

  bool hasUnitTypeId() => _unitTypeId != null;

  // "unit_type_description" field.
  String? _unitTypeDescription;
  String get unitTypeDescription => _unitTypeDescription ?? '';
  set unitTypeDescription(String? val) => _unitTypeDescription = val;

  bool hasUnitTypeDescription() => _unitTypeDescription != null;

  // "unit_type_code" field.
  String? _unitTypeCode;
  String get unitTypeCode => _unitTypeCode ?? '';
  set unitTypeCode(String? val) => _unitTypeCode = val;

  bool hasUnitTypeCode() => _unitTypeCode != null;

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

  // "unit_address" field.
  String? _unitAddress;
  String get unitAddress => _unitAddress ?? '';
  set unitAddress(String? val) => _unitAddress = val;

  bool hasUnitAddress() => _unitAddress != null;

  // "unit_latitude" field.
  double? _unitLatitude;
  double get unitLatitude => _unitLatitude ?? 0.0;
  set unitLatitude(double? val) => _unitLatitude = val;

  void incrementUnitLatitude(double amount) =>
      unitLatitude = unitLatitude + amount;

  bool hasUnitLatitude() => _unitLatitude != null;

  // "unit_longitude" field.
  double? _unitLongitude;
  double get unitLongitude => _unitLongitude ?? 0.0;
  set unitLongitude(double? val) => _unitLongitude = val;

  void incrementUnitLongitude(double amount) =>
      unitLongitude = unitLongitude + amount;

  bool hasUnitLongitude() => _unitLongitude != null;

  // "unit_lat_lng" field.
  LatLng? _unitLatLng;
  LatLng? get unitLatLng => _unitLatLng;
  set unitLatLng(LatLng? val) => _unitLatLng = val;

  bool hasUnitLatLng() => _unitLatLng != null;

  // "requester_phone" field.
  String? _requesterPhone;
  String get requesterPhone => _requesterPhone ?? '';
  set requesterPhone(String? val) => _requesterPhone = val;

  bool hasRequesterPhone() => _requesterPhone != null;

  // "requester_team_id" field.
  int? _requesterTeamId;
  int get requesterTeamId => _requesterTeamId ?? 0;
  set requesterTeamId(int? val) => _requesterTeamId = val;

  void incrementRequesterTeamId(int amount) =>
      requesterTeamId = requesterTeamId + amount;

  bool hasRequesterTeamId() => _requesterTeamId != null;

  // "requester_team_code" field.
  String? _requesterTeamCode;
  String get requesterTeamCode => _requesterTeamCode ?? '';
  set requesterTeamCode(String? val) => _requesterTeamCode = val;

  bool hasRequesterTeamCode() => _requesterTeamCode != null;

  // "requested_at" field.
  String? _requestedAt;
  String get requestedAt => _requestedAt ?? '';
  set requestedAt(String? val) => _requestedAt = val;

  bool hasRequestedAt() => _requestedAt != null;

  // "requested_datetime" field.
  DateTime? _requestedDatetime;
  DateTime? get requestedDatetime => _requestedDatetime;
  set requestedDatetime(DateTime? val) => _requestedDatetime = val;

  bool hasRequestedDatetime() => _requestedDatetime != null;

  // "status_id" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;

  void incrementStatusId(int amount) => statusId = statusId + amount;

  bool hasStatusId() => _statusId != null;

  // "status_code" field.
  String? _statusCode;
  String get statusCode => _statusCode ?? '';
  set statusCode(String? val) => _statusCode = val;

  bool hasStatusCode() => _statusCode != null;

  // "status_description" field.
  String? _statusDescription;
  String get statusDescription => _statusDescription ?? '';
  set statusDescription(String? val) => _statusDescription = val;

  bool hasStatusDescription() => _statusDescription != null;

  // "status_at" field.
  String? _statusAt;
  String get statusAt => _statusAt ?? '';
  set statusAt(String? val) => _statusAt = val;

  bool hasStatusAt() => _statusAt != null;

  // "status_datetime" field.
  DateTime? _statusDatetime;
  DateTime? get statusDatetime => _statusDatetime;
  set statusDatetime(DateTime? val) => _statusDatetime = val;

  bool hasStatusDatetime() => _statusDatetime != null;

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

  // "team_leader_id" field.
  int? _teamLeaderId;
  int get teamLeaderId => _teamLeaderId ?? 0;
  set teamLeaderId(int? val) => _teamLeaderId = val;

  void incrementTeamLeaderId(int amount) =>
      teamLeaderId = teamLeaderId + amount;

  bool hasTeamLeaderId() => _teamLeaderId != null;

  // "team_leader_name_short" field.
  String? _teamLeaderNameShort;
  String get teamLeaderNameShort => _teamLeaderNameShort ?? '';
  set teamLeaderNameShort(String? val) => _teamLeaderNameShort = val;

  bool hasTeamLeaderNameShort() => _teamLeaderNameShort != null;

  // "team_leader_email" field.
  String? _teamLeaderEmail;
  String get teamLeaderEmail => _teamLeaderEmail ?? '';
  set teamLeaderEmail(String? val) => _teamLeaderEmail = val;

  bool hasTeamLeaderEmail() => _teamLeaderEmail != null;

  // "team_id" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;

  void incrementTeamId(int amount) => teamId = teamId + amount;

  bool hasTeamId() => _teamId != null;

  // "team_code" field.
  String? _teamCode;
  String get teamCode => _teamCode ?? '';
  set teamCode(String? val) => _teamCode = val;

  bool hasTeamCode() => _teamCode != null;

  // "team_description" field.
  String? _teamDescription;
  String get teamDescription => _teamDescription ?? '';
  set teamDescription(String? val) => _teamDescription = val;

  bool hasTeamDescription() => _teamDescription != null;

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

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  // "counter_parent" field.
  int? _counterParent;
  int get counterParent => _counterParent ?? 0;
  set counterParent(int? val) => _counterParent = val;

  void incrementCounterParent(int amount) =>
      counterParent = counterParent + amount;

  bool hasCounterParent() => _counterParent != null;

  // "counter_child" field.
  int? _counterChild;
  int get counterChild => _counterChild ?? 0;
  set counterChild(int? val) => _counterChild = val;

  void incrementCounterChild(int amount) =>
      counterChild = counterChild + amount;

  bool hasCounterChild() => _counterChild != null;

  // "cause_reason_id" field.
  int? _causeReasonId;
  int get causeReasonId => _causeReasonId ?? 0;
  set causeReasonId(int? val) => _causeReasonId = val;

  void incrementCauseReasonId(int amount) =>
      causeReasonId = causeReasonId + amount;

  bool hasCauseReasonId() => _causeReasonId != null;

  // "cause_reason_description" field.
  String? _causeReasonDescription;
  String get causeReasonDescription => _causeReasonDescription ?? '';
  set causeReasonDescription(String? val) => _causeReasonDescription = val;

  bool hasCauseReasonDescription() => _causeReasonDescription != null;

  // "suspended_reason_id" field.
  int? _suspendedReasonId;
  int get suspendedReasonId => _suspendedReasonId ?? 0;
  set suspendedReasonId(int? val) => _suspendedReasonId = val;

  void incrementSuspendedReasonId(int amount) =>
      suspendedReasonId = suspendedReasonId + amount;

  bool hasSuspendedReasonId() => _suspendedReasonId != null;

  // "suspended_reason_description" field.
  String? _suspendedReasonDescription;
  String get suspendedReasonDescription => _suspendedReasonDescription ?? '';
  set suspendedReasonDescription(String? val) =>
      _suspendedReasonDescription = val;

  bool hasSuspendedReasonDescription() => _suspendedReasonDescription != null;

  // "cancel_reason_id" field.
  int? _cancelReasonId;
  int get cancelReasonId => _cancelReasonId ?? 0;
  set cancelReasonId(int? val) => _cancelReasonId = val;

  void incrementCancelReasonId(int amount) =>
      cancelReasonId = cancelReasonId + amount;

  bool hasCancelReasonId() => _cancelReasonId != null;

  // "cancel_reason_description" field.
  String? _cancelReasonDescription;
  String get cancelReasonDescription => _cancelReasonDescription ?? '';
  set cancelReasonDescription(String? val) => _cancelReasonDescription = val;

  bool hasCancelReasonDescription() => _cancelReasonDescription != null;

  // "canceled_user_name_short" field.
  String? _canceledUserNameShort;
  String get canceledUserNameShort => _canceledUserNameShort ?? '';
  set canceledUserNameShort(String? val) => _canceledUserNameShort = val;

  bool hasCanceledUserNameShort() => _canceledUserNameShort != null;

  // "canceled_team_id" field.
  int? _canceledTeamId;
  int get canceledTeamId => _canceledTeamId ?? 0;
  set canceledTeamId(int? val) => _canceledTeamId = val;

  void incrementCanceledTeamId(int amount) =>
      canceledTeamId = canceledTeamId + amount;

  bool hasCanceledTeamId() => _canceledTeamId != null;

  // "canceled_team_code" field.
  String? _canceledTeamCode;
  String get canceledTeamCode => _canceledTeamCode ?? '';
  set canceledTeamCode(String? val) => _canceledTeamCode = val;

  bool hasCanceledTeamCode() => _canceledTeamCode != null;

  // "plan_id" field.
  int? _planId;
  int get planId => _planId ?? 0;
  set planId(int? val) => _planId = val;

  void incrementPlanId(int amount) => planId = planId + amount;

  bool hasPlanId() => _planId != null;

  // "plan_code" field.
  String? _planCode;
  String get planCode => _planCode ?? '';
  set planCode(String? val) => _planCode = val;

  bool hasPlanCode() => _planCode != null;

  // "plan_description" field.
  String? _planDescription;
  String get planDescription => _planDescription ?? '';
  set planDescription(String? val) => _planDescription = val;

  bool hasPlanDescription() => _planDescription != null;

  // "value_services" field.
  double? _valueServices;
  double get valueServices => _valueServices ?? 0.0;
  set valueServices(double? val) => _valueServices = val;

  void incrementValueServices(double amount) =>
      valueServices = valueServices + amount;

  bool hasValueServices() => _valueServices != null;

  // "value_materials" field.
  double? _valueMaterials;
  double get valueMaterials => _valueMaterials ?? 0.0;
  set valueMaterials(double? val) => _valueMaterials = val;

  void incrementValueMaterials(double amount) =>
      valueMaterials = valueMaterials + amount;

  bool hasValueMaterials() => _valueMaterials != null;

  // "value_vehicles" field.
  double? _valueVehicles;
  double get valueVehicles => _valueVehicles ?? 0.0;
  set valueVehicles(double? val) => _valueVehicles = val;

  void incrementValueVehicles(double amount) =>
      valueVehicles = valueVehicles + amount;

  bool hasValueVehicles() => _valueVehicles != null;

  // "value_total" field.
  double? _valueTotal;
  double get valueTotal => _valueTotal ?? 0.0;
  set valueTotal(double? val) => _valueTotal = val;

  void incrementValueTotal(double amount) => valueTotal = valueTotal + amount;

  bool hasValueTotal() => _valueTotal != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  // "created_user_id" field.
  int? _createdUserId;
  int get createdUserId => _createdUserId ?? 0;
  set createdUserId(int? val) => _createdUserId = val;

  void incrementCreatedUserId(int amount) =>
      createdUserId = createdUserId + amount;

  bool hasCreatedUserId() => _createdUserId != null;

  // "ov_counter" field.
  int? _ovCounter;
  int get ovCounter => _ovCounter ?? 0;
  set ovCounter(int? val) => _ovCounter = val;

  void incrementOvCounter(int amount) => ovCounter = ovCounter + amount;

  bool hasOvCounter() => _ovCounter != null;

  // "progress" field.
  double? _progress;
  double get progress => _progress ?? 0.0;
  set progress(double? val) => _progress = val;

  void incrementProgress(double amount) => progress = progress + amount;

  bool hasProgress() => _progress != null;

  static DtOrderStruct fromMap(Map<String, dynamic> data) => DtOrderStruct(
        uid: data['uid'] as String?,
        id: castToType<int>(data['id']),
        parentId: castToType<int>(data['parent_id']),
        companyId: castToType<int>(data['company_id']),
        companyDescription: data['company_description'] as String?,
        companyImgFilePath: data['company_img_file_path'] as String?,
        companyImgFileName: data['company_img_file_name'] as String?,
        imgFilePath: data['img_file_path'] as String?,
        imgFileName: data['img_file_name'] as String?,
        departmentId: castToType<int>(data['department_id']),
        contractId: castToType<int>(data['contract_id']),
        contractDescription: data['contract_description'] as String?,
        providerCompanyId: castToType<int>(data['provider_company_id']),
        providerCompanyImgFilePath:
            data['provider_company_img_file_path'] as String?,
        providerCompanyImgFileName:
            data['provider_company_img_file_name'] as String?,
        providerDepartmentId: castToType<int>(data['provider_department_id']),
        orderMask: data['order_mask'] as String?,
        typeId: castToType<int>(data['type_id']),
        typeCode: data['type_code'] as String?,
        typeSubId: castToType<int>(data['type_sub_id']),
        typeSubCode: data['type_sub_code'] as String?,
        requestedServices: data['requested_services'] as String?,
        objectId: castToType<int>(data['object_id']),
        objectCode: data['object_code'] as String?,
        requesterName: data['requester_name'] as String?,
        objectDescription: data['object_description'] as String?,
        systemParentId: castToType<int>(data['system_parent_id']),
        systemParentDescription: data['system_parent_description'] as String?,
        systemParentCode: data['system_parent_code'] as String?,
        systemId: castToType<int>(data['system_id']),
        systemDescription: data['system_description'] as String?,
        systemCode: data['system_code'] as String?,
        unitTypeParentId: castToType<int>(data['unit_type_parent_id']),
        unitTypeParentDescription:
            data['unit_type_parent_description'] as String?,
        unitTypeParentCode: data['unit_type_parent_code'] as String?,
        unitTypeId: castToType<int>(data['unit_type_id']),
        unitTypeDescription: data['unit_type_description'] as String?,
        unitTypeCode: data['unit_type_code'] as String?,
        unitId: castToType<int>(data['unit_id']),
        unitDescription: data['unit_description'] as String?,
        unitAddress: data['unit_address'] as String?,
        unitLatitude: castToType<double>(data['unit_latitude']),
        unitLongitude: castToType<double>(data['unit_longitude']),
        unitLatLng: data['unit_lat_lng'] as LatLng?,
        requesterPhone: data['requester_phone'] as String?,
        requesterTeamId: castToType<int>(data['requester_team_id']),
        requesterTeamCode: data['requester_team_code'] as String?,
        requestedAt: data['requested_at'] as String?,
        requestedDatetime: data['requested_datetime'] as DateTime?,
        statusId: castToType<int>(data['status_id']),
        statusCode: data['status_code'] as String?,
        statusDescription: data['status_description'] as String?,
        statusAt: data['status_at'] as String?,
        statusDatetime: data['status_datetime'] as DateTime?,
        priorityId: castToType<int>(data['priority_id']),
        priorityCode: data['priority_code'] as String?,
        priorityDescription: data['priority_description'] as String?,
        teamLeaderId: castToType<int>(data['team_leader_id']),
        teamLeaderNameShort: data['team_leader_name_short'] as String?,
        teamLeaderEmail: data['team_leader_email'] as String?,
        teamId: castToType<int>(data['team_id']),
        teamCode: data['team_code'] as String?,
        teamDescription: data['team_description'] as String?,
        assetTagId: castToType<int>(data['asset_tag_id']),
        assetTagDescription: data['asset_tag_description'] as String?,
        year: castToType<int>(data['year']),
        counterParent: castToType<int>(data['counter_parent']),
        counterChild: castToType<int>(data['counter_child']),
        causeReasonId: castToType<int>(data['cause_reason_id']),
        causeReasonDescription: data['cause_reason_description'] as String?,
        suspendedReasonId: castToType<int>(data['suspended_reason_id']),
        suspendedReasonDescription:
            data['suspended_reason_description'] as String?,
        cancelReasonId: castToType<int>(data['cancel_reason_id']),
        cancelReasonDescription: data['cancel_reason_description'] as String?,
        canceledUserNameShort: data['canceled_user_name_short'] as String?,
        canceledTeamId: castToType<int>(data['canceled_team_id']),
        canceledTeamCode: data['canceled_team_code'] as String?,
        planId: castToType<int>(data['plan_id']),
        planCode: data['plan_code'] as String?,
        planDescription: data['plan_description'] as String?,
        valueServices: castToType<double>(data['value_services']),
        valueMaterials: castToType<double>(data['value_materials']),
        valueVehicles: castToType<double>(data['value_vehicles']),
        valueTotal: castToType<double>(data['value_total']),
        versionMode: data['version_mode'] as String?,
        createdUserId: castToType<int>(data['created_user_id']),
        ovCounter: castToType<int>(data['ov_counter']),
        progress: castToType<double>(data['progress']),
      );

  static DtOrderStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtOrderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'id': _id,
        'parent_id': _parentId,
        'company_id': _companyId,
        'company_description': _companyDescription,
        'company_img_file_path': _companyImgFilePath,
        'company_img_file_name': _companyImgFileName,
        'img_file_path': _imgFilePath,
        'img_file_name': _imgFileName,
        'department_id': _departmentId,
        'contract_id': _contractId,
        'contract_description': _contractDescription,
        'provider_company_id': _providerCompanyId,
        'provider_company_img_file_path': _providerCompanyImgFilePath,
        'provider_company_img_file_name': _providerCompanyImgFileName,
        'provider_department_id': _providerDepartmentId,
        'order_mask': _orderMask,
        'type_id': _typeId,
        'type_code': _typeCode,
        'type_sub_id': _typeSubId,
        'type_sub_code': _typeSubCode,
        'requested_services': _requestedServices,
        'object_id': _objectId,
        'object_code': _objectCode,
        'requester_name': _requesterName,
        'object_description': _objectDescription,
        'system_parent_id': _systemParentId,
        'system_parent_description': _systemParentDescription,
        'system_parent_code': _systemParentCode,
        'system_id': _systemId,
        'system_description': _systemDescription,
        'system_code': _systemCode,
        'unit_type_parent_id': _unitTypeParentId,
        'unit_type_parent_description': _unitTypeParentDescription,
        'unit_type_parent_code': _unitTypeParentCode,
        'unit_type_id': _unitTypeId,
        'unit_type_description': _unitTypeDescription,
        'unit_type_code': _unitTypeCode,
        'unit_id': _unitId,
        'unit_description': _unitDescription,
        'unit_address': _unitAddress,
        'unit_latitude': _unitLatitude,
        'unit_longitude': _unitLongitude,
        'unit_lat_lng': _unitLatLng,
        'requester_phone': _requesterPhone,
        'requester_team_id': _requesterTeamId,
        'requester_team_code': _requesterTeamCode,
        'requested_at': _requestedAt,
        'requested_datetime': _requestedDatetime,
        'status_id': _statusId,
        'status_code': _statusCode,
        'status_description': _statusDescription,
        'status_at': _statusAt,
        'status_datetime': _statusDatetime,
        'priority_id': _priorityId,
        'priority_code': _priorityCode,
        'priority_description': _priorityDescription,
        'team_leader_id': _teamLeaderId,
        'team_leader_name_short': _teamLeaderNameShort,
        'team_leader_email': _teamLeaderEmail,
        'team_id': _teamId,
        'team_code': _teamCode,
        'team_description': _teamDescription,
        'asset_tag_id': _assetTagId,
        'asset_tag_description': _assetTagDescription,
        'year': _year,
        'counter_parent': _counterParent,
        'counter_child': _counterChild,
        'cause_reason_id': _causeReasonId,
        'cause_reason_description': _causeReasonDescription,
        'suspended_reason_id': _suspendedReasonId,
        'suspended_reason_description': _suspendedReasonDescription,
        'cancel_reason_id': _cancelReasonId,
        'cancel_reason_description': _cancelReasonDescription,
        'canceled_user_name_short': _canceledUserNameShort,
        'canceled_team_id': _canceledTeamId,
        'canceled_team_code': _canceledTeamCode,
        'plan_id': _planId,
        'plan_code': _planCode,
        'plan_description': _planDescription,
        'value_services': _valueServices,
        'value_materials': _valueMaterials,
        'value_vehicles': _valueVehicles,
        'value_total': _valueTotal,
        'version_mode': _versionMode,
        'created_user_id': _createdUserId,
        'ov_counter': _ovCounter,
        'progress': _progress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'parent_id': serializeParam(
          _parentId,
          ParamType.int,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'company_description': serializeParam(
          _companyDescription,
          ParamType.String,
        ),
        'company_img_file_path': serializeParam(
          _companyImgFilePath,
          ParamType.String,
        ),
        'company_img_file_name': serializeParam(
          _companyImgFileName,
          ParamType.String,
        ),
        'img_file_path': serializeParam(
          _imgFilePath,
          ParamType.String,
        ),
        'img_file_name': serializeParam(
          _imgFileName,
          ParamType.String,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'contract_id': serializeParam(
          _contractId,
          ParamType.int,
        ),
        'contract_description': serializeParam(
          _contractDescription,
          ParamType.String,
        ),
        'provider_company_id': serializeParam(
          _providerCompanyId,
          ParamType.int,
        ),
        'provider_company_img_file_path': serializeParam(
          _providerCompanyImgFilePath,
          ParamType.String,
        ),
        'provider_company_img_file_name': serializeParam(
          _providerCompanyImgFileName,
          ParamType.String,
        ),
        'provider_department_id': serializeParam(
          _providerDepartmentId,
          ParamType.int,
        ),
        'order_mask': serializeParam(
          _orderMask,
          ParamType.String,
        ),
        'type_id': serializeParam(
          _typeId,
          ParamType.int,
        ),
        'type_code': serializeParam(
          _typeCode,
          ParamType.String,
        ),
        'type_sub_id': serializeParam(
          _typeSubId,
          ParamType.int,
        ),
        'type_sub_code': serializeParam(
          _typeSubCode,
          ParamType.String,
        ),
        'requested_services': serializeParam(
          _requestedServices,
          ParamType.String,
        ),
        'object_id': serializeParam(
          _objectId,
          ParamType.int,
        ),
        'object_code': serializeParam(
          _objectCode,
          ParamType.String,
        ),
        'requester_name': serializeParam(
          _requesterName,
          ParamType.String,
        ),
        'object_description': serializeParam(
          _objectDescription,
          ParamType.String,
        ),
        'system_parent_id': serializeParam(
          _systemParentId,
          ParamType.int,
        ),
        'system_parent_description': serializeParam(
          _systemParentDescription,
          ParamType.String,
        ),
        'system_parent_code': serializeParam(
          _systemParentCode,
          ParamType.String,
        ),
        'system_id': serializeParam(
          _systemId,
          ParamType.int,
        ),
        'system_description': serializeParam(
          _systemDescription,
          ParamType.String,
        ),
        'system_code': serializeParam(
          _systemCode,
          ParamType.String,
        ),
        'unit_type_parent_id': serializeParam(
          _unitTypeParentId,
          ParamType.int,
        ),
        'unit_type_parent_description': serializeParam(
          _unitTypeParentDescription,
          ParamType.String,
        ),
        'unit_type_parent_code': serializeParam(
          _unitTypeParentCode,
          ParamType.String,
        ),
        'unit_type_id': serializeParam(
          _unitTypeId,
          ParamType.int,
        ),
        'unit_type_description': serializeParam(
          _unitTypeDescription,
          ParamType.String,
        ),
        'unit_type_code': serializeParam(
          _unitTypeCode,
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
        'unit_address': serializeParam(
          _unitAddress,
          ParamType.String,
        ),
        'unit_latitude': serializeParam(
          _unitLatitude,
          ParamType.double,
        ),
        'unit_longitude': serializeParam(
          _unitLongitude,
          ParamType.double,
        ),
        'unit_lat_lng': serializeParam(
          _unitLatLng,
          ParamType.LatLng,
        ),
        'requester_phone': serializeParam(
          _requesterPhone,
          ParamType.String,
        ),
        'requester_team_id': serializeParam(
          _requesterTeamId,
          ParamType.int,
        ),
        'requester_team_code': serializeParam(
          _requesterTeamCode,
          ParamType.String,
        ),
        'requested_at': serializeParam(
          _requestedAt,
          ParamType.String,
        ),
        'requested_datetime': serializeParam(
          _requestedDatetime,
          ParamType.DateTime,
        ),
        'status_id': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'status_code': serializeParam(
          _statusCode,
          ParamType.String,
        ),
        'status_description': serializeParam(
          _statusDescription,
          ParamType.String,
        ),
        'status_at': serializeParam(
          _statusAt,
          ParamType.String,
        ),
        'status_datetime': serializeParam(
          _statusDatetime,
          ParamType.DateTime,
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
        'team_leader_id': serializeParam(
          _teamLeaderId,
          ParamType.int,
        ),
        'team_leader_name_short': serializeParam(
          _teamLeaderNameShort,
          ParamType.String,
        ),
        'team_leader_email': serializeParam(
          _teamLeaderEmail,
          ParamType.String,
        ),
        'team_id': serializeParam(
          _teamId,
          ParamType.int,
        ),
        'team_code': serializeParam(
          _teamCode,
          ParamType.String,
        ),
        'team_description': serializeParam(
          _teamDescription,
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
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'counter_parent': serializeParam(
          _counterParent,
          ParamType.int,
        ),
        'counter_child': serializeParam(
          _counterChild,
          ParamType.int,
        ),
        'cause_reason_id': serializeParam(
          _causeReasonId,
          ParamType.int,
        ),
        'cause_reason_description': serializeParam(
          _causeReasonDescription,
          ParamType.String,
        ),
        'suspended_reason_id': serializeParam(
          _suspendedReasonId,
          ParamType.int,
        ),
        'suspended_reason_description': serializeParam(
          _suspendedReasonDescription,
          ParamType.String,
        ),
        'cancel_reason_id': serializeParam(
          _cancelReasonId,
          ParamType.int,
        ),
        'cancel_reason_description': serializeParam(
          _cancelReasonDescription,
          ParamType.String,
        ),
        'canceled_user_name_short': serializeParam(
          _canceledUserNameShort,
          ParamType.String,
        ),
        'canceled_team_id': serializeParam(
          _canceledTeamId,
          ParamType.int,
        ),
        'canceled_team_code': serializeParam(
          _canceledTeamCode,
          ParamType.String,
        ),
        'plan_id': serializeParam(
          _planId,
          ParamType.int,
        ),
        'plan_code': serializeParam(
          _planCode,
          ParamType.String,
        ),
        'plan_description': serializeParam(
          _planDescription,
          ParamType.String,
        ),
        'value_services': serializeParam(
          _valueServices,
          ParamType.double,
        ),
        'value_materials': serializeParam(
          _valueMaterials,
          ParamType.double,
        ),
        'value_vehicles': serializeParam(
          _valueVehicles,
          ParamType.double,
        ),
        'value_total': serializeParam(
          _valueTotal,
          ParamType.double,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
        'created_user_id': serializeParam(
          _createdUserId,
          ParamType.int,
        ),
        'ov_counter': serializeParam(
          _ovCounter,
          ParamType.int,
        ),
        'progress': serializeParam(
          _progress,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtOrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        parentId: deserializeParam(
          data['parent_id'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        companyDescription: deserializeParam(
          data['company_description'],
          ParamType.String,
          false,
        ),
        companyImgFilePath: deserializeParam(
          data['company_img_file_path'],
          ParamType.String,
          false,
        ),
        companyImgFileName: deserializeParam(
          data['company_img_file_name'],
          ParamType.String,
          false,
        ),
        imgFilePath: deserializeParam(
          data['img_file_path'],
          ParamType.String,
          false,
        ),
        imgFileName: deserializeParam(
          data['img_file_name'],
          ParamType.String,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        contractId: deserializeParam(
          data['contract_id'],
          ParamType.int,
          false,
        ),
        contractDescription: deserializeParam(
          data['contract_description'],
          ParamType.String,
          false,
        ),
        providerCompanyId: deserializeParam(
          data['provider_company_id'],
          ParamType.int,
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
        providerDepartmentId: deserializeParam(
          data['provider_department_id'],
          ParamType.int,
          false,
        ),
        orderMask: deserializeParam(
          data['order_mask'],
          ParamType.String,
          false,
        ),
        typeId: deserializeParam(
          data['type_id'],
          ParamType.int,
          false,
        ),
        typeCode: deserializeParam(
          data['type_code'],
          ParamType.String,
          false,
        ),
        typeSubId: deserializeParam(
          data['type_sub_id'],
          ParamType.int,
          false,
        ),
        typeSubCode: deserializeParam(
          data['type_sub_code'],
          ParamType.String,
          false,
        ),
        requestedServices: deserializeParam(
          data['requested_services'],
          ParamType.String,
          false,
        ),
        objectId: deserializeParam(
          data['object_id'],
          ParamType.int,
          false,
        ),
        objectCode: deserializeParam(
          data['object_code'],
          ParamType.String,
          false,
        ),
        requesterName: deserializeParam(
          data['requester_name'],
          ParamType.String,
          false,
        ),
        objectDescription: deserializeParam(
          data['object_description'],
          ParamType.String,
          false,
        ),
        systemParentId: deserializeParam(
          data['system_parent_id'],
          ParamType.int,
          false,
        ),
        systemParentDescription: deserializeParam(
          data['system_parent_description'],
          ParamType.String,
          false,
        ),
        systemParentCode: deserializeParam(
          data['system_parent_code'],
          ParamType.String,
          false,
        ),
        systemId: deserializeParam(
          data['system_id'],
          ParamType.int,
          false,
        ),
        systemDescription: deserializeParam(
          data['system_description'],
          ParamType.String,
          false,
        ),
        systemCode: deserializeParam(
          data['system_code'],
          ParamType.String,
          false,
        ),
        unitTypeParentId: deserializeParam(
          data['unit_type_parent_id'],
          ParamType.int,
          false,
        ),
        unitTypeParentDescription: deserializeParam(
          data['unit_type_parent_description'],
          ParamType.String,
          false,
        ),
        unitTypeParentCode: deserializeParam(
          data['unit_type_parent_code'],
          ParamType.String,
          false,
        ),
        unitTypeId: deserializeParam(
          data['unit_type_id'],
          ParamType.int,
          false,
        ),
        unitTypeDescription: deserializeParam(
          data['unit_type_description'],
          ParamType.String,
          false,
        ),
        unitTypeCode: deserializeParam(
          data['unit_type_code'],
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
        unitAddress: deserializeParam(
          data['unit_address'],
          ParamType.String,
          false,
        ),
        unitLatitude: deserializeParam(
          data['unit_latitude'],
          ParamType.double,
          false,
        ),
        unitLongitude: deserializeParam(
          data['unit_longitude'],
          ParamType.double,
          false,
        ),
        unitLatLng: deserializeParam(
          data['unit_lat_lng'],
          ParamType.LatLng,
          false,
        ),
        requesterPhone: deserializeParam(
          data['requester_phone'],
          ParamType.String,
          false,
        ),
        requesterTeamId: deserializeParam(
          data['requester_team_id'],
          ParamType.int,
          false,
        ),
        requesterTeamCode: deserializeParam(
          data['requester_team_code'],
          ParamType.String,
          false,
        ),
        requestedAt: deserializeParam(
          data['requested_at'],
          ParamType.String,
          false,
        ),
        requestedDatetime: deserializeParam(
          data['requested_datetime'],
          ParamType.DateTime,
          false,
        ),
        statusId: deserializeParam(
          data['status_id'],
          ParamType.int,
          false,
        ),
        statusCode: deserializeParam(
          data['status_code'],
          ParamType.String,
          false,
        ),
        statusDescription: deserializeParam(
          data['status_description'],
          ParamType.String,
          false,
        ),
        statusAt: deserializeParam(
          data['status_at'],
          ParamType.String,
          false,
        ),
        statusDatetime: deserializeParam(
          data['status_datetime'],
          ParamType.DateTime,
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
        teamLeaderId: deserializeParam(
          data['team_leader_id'],
          ParamType.int,
          false,
        ),
        teamLeaderNameShort: deserializeParam(
          data['team_leader_name_short'],
          ParamType.String,
          false,
        ),
        teamLeaderEmail: deserializeParam(
          data['team_leader_email'],
          ParamType.String,
          false,
        ),
        teamId: deserializeParam(
          data['team_id'],
          ParamType.int,
          false,
        ),
        teamCode: deserializeParam(
          data['team_code'],
          ParamType.String,
          false,
        ),
        teamDescription: deserializeParam(
          data['team_description'],
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
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        counterParent: deserializeParam(
          data['counter_parent'],
          ParamType.int,
          false,
        ),
        counterChild: deserializeParam(
          data['counter_child'],
          ParamType.int,
          false,
        ),
        causeReasonId: deserializeParam(
          data['cause_reason_id'],
          ParamType.int,
          false,
        ),
        causeReasonDescription: deserializeParam(
          data['cause_reason_description'],
          ParamType.String,
          false,
        ),
        suspendedReasonId: deserializeParam(
          data['suspended_reason_id'],
          ParamType.int,
          false,
        ),
        suspendedReasonDescription: deserializeParam(
          data['suspended_reason_description'],
          ParamType.String,
          false,
        ),
        cancelReasonId: deserializeParam(
          data['cancel_reason_id'],
          ParamType.int,
          false,
        ),
        cancelReasonDescription: deserializeParam(
          data['cancel_reason_description'],
          ParamType.String,
          false,
        ),
        canceledUserNameShort: deserializeParam(
          data['canceled_user_name_short'],
          ParamType.String,
          false,
        ),
        canceledTeamId: deserializeParam(
          data['canceled_team_id'],
          ParamType.int,
          false,
        ),
        canceledTeamCode: deserializeParam(
          data['canceled_team_code'],
          ParamType.String,
          false,
        ),
        planId: deserializeParam(
          data['plan_id'],
          ParamType.int,
          false,
        ),
        planCode: deserializeParam(
          data['plan_code'],
          ParamType.String,
          false,
        ),
        planDescription: deserializeParam(
          data['plan_description'],
          ParamType.String,
          false,
        ),
        valueServices: deserializeParam(
          data['value_services'],
          ParamType.double,
          false,
        ),
        valueMaterials: deserializeParam(
          data['value_materials'],
          ParamType.double,
          false,
        ),
        valueVehicles: deserializeParam(
          data['value_vehicles'],
          ParamType.double,
          false,
        ),
        valueTotal: deserializeParam(
          data['value_total'],
          ParamType.double,
          false,
        ),
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
        createdUserId: deserializeParam(
          data['created_user_id'],
          ParamType.int,
          false,
        ),
        ovCounter: deserializeParam(
          data['ov_counter'],
          ParamType.int,
          false,
        ),
        progress: deserializeParam(
          data['progress'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderStruct &&
        uid == other.uid &&
        id == other.id &&
        parentId == other.parentId &&
        companyId == other.companyId &&
        companyDescription == other.companyDescription &&
        companyImgFilePath == other.companyImgFilePath &&
        companyImgFileName == other.companyImgFileName &&
        imgFilePath == other.imgFilePath &&
        imgFileName == other.imgFileName &&
        departmentId == other.departmentId &&
        contractId == other.contractId &&
        contractDescription == other.contractDescription &&
        providerCompanyId == other.providerCompanyId &&
        providerCompanyImgFilePath == other.providerCompanyImgFilePath &&
        providerCompanyImgFileName == other.providerCompanyImgFileName &&
        providerDepartmentId == other.providerDepartmentId &&
        orderMask == other.orderMask &&
        typeId == other.typeId &&
        typeCode == other.typeCode &&
        typeSubId == other.typeSubId &&
        typeSubCode == other.typeSubCode &&
        requestedServices == other.requestedServices &&
        objectId == other.objectId &&
        objectCode == other.objectCode &&
        requesterName == other.requesterName &&
        objectDescription == other.objectDescription &&
        systemParentId == other.systemParentId &&
        systemParentDescription == other.systemParentDescription &&
        systemParentCode == other.systemParentCode &&
        systemId == other.systemId &&
        systemDescription == other.systemDescription &&
        systemCode == other.systemCode &&
        unitTypeParentId == other.unitTypeParentId &&
        unitTypeParentDescription == other.unitTypeParentDescription &&
        unitTypeParentCode == other.unitTypeParentCode &&
        unitTypeId == other.unitTypeId &&
        unitTypeDescription == other.unitTypeDescription &&
        unitTypeCode == other.unitTypeCode &&
        unitId == other.unitId &&
        unitDescription == other.unitDescription &&
        unitAddress == other.unitAddress &&
        unitLatitude == other.unitLatitude &&
        unitLongitude == other.unitLongitude &&
        unitLatLng == other.unitLatLng &&
        requesterPhone == other.requesterPhone &&
        requesterTeamId == other.requesterTeamId &&
        requesterTeamCode == other.requesterTeamCode &&
        requestedAt == other.requestedAt &&
        requestedDatetime == other.requestedDatetime &&
        statusId == other.statusId &&
        statusCode == other.statusCode &&
        statusDescription == other.statusDescription &&
        statusAt == other.statusAt &&
        statusDatetime == other.statusDatetime &&
        priorityId == other.priorityId &&
        priorityCode == other.priorityCode &&
        priorityDescription == other.priorityDescription &&
        teamLeaderId == other.teamLeaderId &&
        teamLeaderNameShort == other.teamLeaderNameShort &&
        teamLeaderEmail == other.teamLeaderEmail &&
        teamId == other.teamId &&
        teamCode == other.teamCode &&
        teamDescription == other.teamDescription &&
        assetTagId == other.assetTagId &&
        assetTagDescription == other.assetTagDescription &&
        year == other.year &&
        counterParent == other.counterParent &&
        counterChild == other.counterChild &&
        causeReasonId == other.causeReasonId &&
        causeReasonDescription == other.causeReasonDescription &&
        suspendedReasonId == other.suspendedReasonId &&
        suspendedReasonDescription == other.suspendedReasonDescription &&
        cancelReasonId == other.cancelReasonId &&
        cancelReasonDescription == other.cancelReasonDescription &&
        canceledUserNameShort == other.canceledUserNameShort &&
        canceledTeamId == other.canceledTeamId &&
        canceledTeamCode == other.canceledTeamCode &&
        planId == other.planId &&
        planCode == other.planCode &&
        planDescription == other.planDescription &&
        valueServices == other.valueServices &&
        valueMaterials == other.valueMaterials &&
        valueVehicles == other.valueVehicles &&
        valueTotal == other.valueTotal &&
        versionMode == other.versionMode &&
        createdUserId == other.createdUserId &&
        ovCounter == other.ovCounter &&
        progress == other.progress;
  }

  @override
  int get hashCode => const ListEquality().hash([
        uid,
        id,
        parentId,
        companyId,
        companyDescription,
        companyImgFilePath,
        companyImgFileName,
        imgFilePath,
        imgFileName,
        departmentId,
        contractId,
        contractDescription,
        providerCompanyId,
        providerCompanyImgFilePath,
        providerCompanyImgFileName,
        providerDepartmentId,
        orderMask,
        typeId,
        typeCode,
        typeSubId,
        typeSubCode,
        requestedServices,
        objectId,
        objectCode,
        requesterName,
        objectDescription,
        systemParentId,
        systemParentDescription,
        systemParentCode,
        systemId,
        systemDescription,
        systemCode,
        unitTypeParentId,
        unitTypeParentDescription,
        unitTypeParentCode,
        unitTypeId,
        unitTypeDescription,
        unitTypeCode,
        unitId,
        unitDescription,
        unitAddress,
        unitLatitude,
        unitLongitude,
        unitLatLng,
        requesterPhone,
        requesterTeamId,
        requesterTeamCode,
        requestedAt,
        requestedDatetime,
        statusId,
        statusCode,
        statusDescription,
        statusAt,
        statusDatetime,
        priorityId,
        priorityCode,
        priorityDescription,
        teamLeaderId,
        teamLeaderNameShort,
        teamLeaderEmail,
        teamId,
        teamCode,
        teamDescription,
        assetTagId,
        assetTagDescription,
        year,
        counterParent,
        counterChild,
        causeReasonId,
        causeReasonDescription,
        suspendedReasonId,
        suspendedReasonDescription,
        cancelReasonId,
        cancelReasonDescription,
        canceledUserNameShort,
        canceledTeamId,
        canceledTeamCode,
        planId,
        planCode,
        planDescription,
        valueServices,
        valueMaterials,
        valueVehicles,
        valueTotal,
        versionMode,
        createdUserId,
        ovCounter,
        progress
      ]);
}

DtOrderStruct createDtOrderStruct({
  String? uid,
  int? id,
  int? parentId,
  int? companyId,
  String? companyDescription,
  String? companyImgFilePath,
  String? companyImgFileName,
  String? imgFilePath,
  String? imgFileName,
  int? departmentId,
  int? contractId,
  String? contractDescription,
  int? providerCompanyId,
  String? providerCompanyImgFilePath,
  String? providerCompanyImgFileName,
  int? providerDepartmentId,
  String? orderMask,
  int? typeId,
  String? typeCode,
  int? typeSubId,
  String? typeSubCode,
  String? requestedServices,
  int? objectId,
  String? objectCode,
  String? requesterName,
  String? objectDescription,
  int? systemParentId,
  String? systemParentDescription,
  String? systemParentCode,
  int? systemId,
  String? systemDescription,
  String? systemCode,
  int? unitTypeParentId,
  String? unitTypeParentDescription,
  String? unitTypeParentCode,
  int? unitTypeId,
  String? unitTypeDescription,
  String? unitTypeCode,
  int? unitId,
  String? unitDescription,
  String? unitAddress,
  double? unitLatitude,
  double? unitLongitude,
  LatLng? unitLatLng,
  String? requesterPhone,
  int? requesterTeamId,
  String? requesterTeamCode,
  String? requestedAt,
  DateTime? requestedDatetime,
  int? statusId,
  String? statusCode,
  String? statusDescription,
  String? statusAt,
  DateTime? statusDatetime,
  int? priorityId,
  String? priorityCode,
  String? priorityDescription,
  int? teamLeaderId,
  String? teamLeaderNameShort,
  String? teamLeaderEmail,
  int? teamId,
  String? teamCode,
  String? teamDescription,
  int? assetTagId,
  String? assetTagDescription,
  int? year,
  int? counterParent,
  int? counterChild,
  int? causeReasonId,
  String? causeReasonDescription,
  int? suspendedReasonId,
  String? suspendedReasonDescription,
  int? cancelReasonId,
  String? cancelReasonDescription,
  String? canceledUserNameShort,
  int? canceledTeamId,
  String? canceledTeamCode,
  int? planId,
  String? planCode,
  String? planDescription,
  double? valueServices,
  double? valueMaterials,
  double? valueVehicles,
  double? valueTotal,
  String? versionMode,
  int? createdUserId,
  int? ovCounter,
  double? progress,
}) =>
    DtOrderStruct(
      uid: uid,
      id: id,
      parentId: parentId,
      companyId: companyId,
      companyDescription: companyDescription,
      companyImgFilePath: companyImgFilePath,
      companyImgFileName: companyImgFileName,
      imgFilePath: imgFilePath,
      imgFileName: imgFileName,
      departmentId: departmentId,
      contractId: contractId,
      contractDescription: contractDescription,
      providerCompanyId: providerCompanyId,
      providerCompanyImgFilePath: providerCompanyImgFilePath,
      providerCompanyImgFileName: providerCompanyImgFileName,
      providerDepartmentId: providerDepartmentId,
      orderMask: orderMask,
      typeId: typeId,
      typeCode: typeCode,
      typeSubId: typeSubId,
      typeSubCode: typeSubCode,
      requestedServices: requestedServices,
      objectId: objectId,
      objectCode: objectCode,
      requesterName: requesterName,
      objectDescription: objectDescription,
      systemParentId: systemParentId,
      systemParentDescription: systemParentDescription,
      systemParentCode: systemParentCode,
      systemId: systemId,
      systemDescription: systemDescription,
      systemCode: systemCode,
      unitTypeParentId: unitTypeParentId,
      unitTypeParentDescription: unitTypeParentDescription,
      unitTypeParentCode: unitTypeParentCode,
      unitTypeId: unitTypeId,
      unitTypeDescription: unitTypeDescription,
      unitTypeCode: unitTypeCode,
      unitId: unitId,
      unitDescription: unitDescription,
      unitAddress: unitAddress,
      unitLatitude: unitLatitude,
      unitLongitude: unitLongitude,
      unitLatLng: unitLatLng,
      requesterPhone: requesterPhone,
      requesterTeamId: requesterTeamId,
      requesterTeamCode: requesterTeamCode,
      requestedAt: requestedAt,
      requestedDatetime: requestedDatetime,
      statusId: statusId,
      statusCode: statusCode,
      statusDescription: statusDescription,
      statusAt: statusAt,
      statusDatetime: statusDatetime,
      priorityId: priorityId,
      priorityCode: priorityCode,
      priorityDescription: priorityDescription,
      teamLeaderId: teamLeaderId,
      teamLeaderNameShort: teamLeaderNameShort,
      teamLeaderEmail: teamLeaderEmail,
      teamId: teamId,
      teamCode: teamCode,
      teamDescription: teamDescription,
      assetTagId: assetTagId,
      assetTagDescription: assetTagDescription,
      year: year,
      counterParent: counterParent,
      counterChild: counterChild,
      causeReasonId: causeReasonId,
      causeReasonDescription: causeReasonDescription,
      suspendedReasonId: suspendedReasonId,
      suspendedReasonDescription: suspendedReasonDescription,
      cancelReasonId: cancelReasonId,
      cancelReasonDescription: cancelReasonDescription,
      canceledUserNameShort: canceledUserNameShort,
      canceledTeamId: canceledTeamId,
      canceledTeamCode: canceledTeamCode,
      planId: planId,
      planCode: planCode,
      planDescription: planDescription,
      valueServices: valueServices,
      valueMaterials: valueMaterials,
      valueVehicles: valueVehicles,
      valueTotal: valueTotal,
      versionMode: versionMode,
      createdUserId: createdUserId,
      ovCounter: ovCounter,
      progress: progress,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUserStruct extends BaseStruct {
  DtUserStruct({
    int? id,
    String? uuid,
    int? companyId,
    String? companyCode,
    String? companyDescription,
    String? companyImgFilePath,
    String? companyImgFileName,
    String? companyEmailSufix,
    bool? companyIsAvailable,
    int? departmentId,
    String? departmentCode,
    String? departmentDescription,
    String? email,
    String? nameShort,
    String? nameFull,
    int? teamId,
    String? teamCode,
    String? teamDescription,
    int? teamAmount,
    int? teamIdPrevious,
    int? statusId,
    String? statusCode,
    String? statusDescription,
    bool? isTeamLeader,
    bool? isAdmin,
    bool? isAdminSuper,
    String? imgFilePath,
    String? imgFileName,
    int? ovIdInProgress,
    int? oIdInProgress,
    int? opIdInProgress,
    int? ovInProgressLeaderId,
    int? profileId,
    String? profileDescription,
    int? vehicleId,
    bool? isAvailable,
    bool? isOvInProgress,
    int? oContractIdInProgress,
    String? tokenFcm,
    String? versionApp,
    int? notificationsAmount,
    int? oTypeIdInProgress,
    int? oTypeSubIdInProgress,
    int? oPlanIdInProgress,
    int? oAssetTagIdInProgress,
    int? oUnitIdInProgress,
    int? oSystemIdInProgress,
    int? oSystemParentIdInProgress,
    int? oUnitTypeIdInProgress,
    int? oUnitTypeParentIdInProgress,
    int? oObjectIdInProgress,
    String? mobileMask,
    String? mobileWhatsapp,
    String? migratedAt,
  })  : _id = id,
        _uuid = uuid,
        _companyId = companyId,
        _companyCode = companyCode,
        _companyDescription = companyDescription,
        _companyImgFilePath = companyImgFilePath,
        _companyImgFileName = companyImgFileName,
        _companyEmailSufix = companyEmailSufix,
        _companyIsAvailable = companyIsAvailable,
        _departmentId = departmentId,
        _departmentCode = departmentCode,
        _departmentDescription = departmentDescription,
        _email = email,
        _nameShort = nameShort,
        _nameFull = nameFull,
        _teamId = teamId,
        _teamCode = teamCode,
        _teamDescription = teamDescription,
        _teamAmount = teamAmount,
        _teamIdPrevious = teamIdPrevious,
        _statusId = statusId,
        _statusCode = statusCode,
        _statusDescription = statusDescription,
        _isTeamLeader = isTeamLeader,
        _isAdmin = isAdmin,
        _isAdminSuper = isAdminSuper,
        _imgFilePath = imgFilePath,
        _imgFileName = imgFileName,
        _ovIdInProgress = ovIdInProgress,
        _oIdInProgress = oIdInProgress,
        _opIdInProgress = opIdInProgress,
        _ovInProgressLeaderId = ovInProgressLeaderId,
        _profileId = profileId,
        _profileDescription = profileDescription,
        _vehicleId = vehicleId,
        _isAvailable = isAvailable,
        _isOvInProgress = isOvInProgress,
        _oContractIdInProgress = oContractIdInProgress,
        _tokenFcm = tokenFcm,
        _versionApp = versionApp,
        _notificationsAmount = notificationsAmount,
        _oTypeIdInProgress = oTypeIdInProgress,
        _oTypeSubIdInProgress = oTypeSubIdInProgress,
        _oPlanIdInProgress = oPlanIdInProgress,
        _oAssetTagIdInProgress = oAssetTagIdInProgress,
        _oUnitIdInProgress = oUnitIdInProgress,
        _oSystemIdInProgress = oSystemIdInProgress,
        _oSystemParentIdInProgress = oSystemParentIdInProgress,
        _oUnitTypeIdInProgress = oUnitTypeIdInProgress,
        _oUnitTypeParentIdInProgress = oUnitTypeParentIdInProgress,
        _oObjectIdInProgress = oObjectIdInProgress,
        _mobileMask = mobileMask,
        _mobileWhatsapp = mobileWhatsapp,
        _migratedAt = migratedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "company_code" field.
  String? _companyCode;
  String get companyCode => _companyCode ?? '';
  set companyCode(String? val) => _companyCode = val;

  bool hasCompanyCode() => _companyCode != null;

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

  // "company_email_sufix" field.
  String? _companyEmailSufix;
  String get companyEmailSufix => _companyEmailSufix ?? '';
  set companyEmailSufix(String? val) => _companyEmailSufix = val;

  bool hasCompanyEmailSufix() => _companyEmailSufix != null;

  // "company_is_available" field.
  bool? _companyIsAvailable;
  bool get companyIsAvailable => _companyIsAvailable ?? false;
  set companyIsAvailable(bool? val) => _companyIsAvailable = val;

  bool hasCompanyIsAvailable() => _companyIsAvailable != null;

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "department_code" field.
  String? _departmentCode;
  String get departmentCode => _departmentCode ?? '';
  set departmentCode(String? val) => _departmentCode = val;

  bool hasDepartmentCode() => _departmentCode != null;

  // "department_description" field.
  String? _departmentDescription;
  String get departmentDescription => _departmentDescription ?? '';
  set departmentDescription(String? val) => _departmentDescription = val;

  bool hasDepartmentDescription() => _departmentDescription != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "name_short" field.
  String? _nameShort;
  String get nameShort => _nameShort ?? '';
  set nameShort(String? val) => _nameShort = val;

  bool hasNameShort() => _nameShort != null;

  // "name_full" field.
  String? _nameFull;
  String get nameFull => _nameFull ?? '';
  set nameFull(String? val) => _nameFull = val;

  bool hasNameFull() => _nameFull != null;

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

  // "team_amount" field.
  int? _teamAmount;
  int get teamAmount => _teamAmount ?? 0;
  set teamAmount(int? val) => _teamAmount = val;

  void incrementTeamAmount(int amount) => teamAmount = teamAmount + amount;

  bool hasTeamAmount() => _teamAmount != null;

  // "team_id_previous" field.
  int? _teamIdPrevious;
  int get teamIdPrevious => _teamIdPrevious ?? 0;
  set teamIdPrevious(int? val) => _teamIdPrevious = val;

  void incrementTeamIdPrevious(int amount) =>
      teamIdPrevious = teamIdPrevious + amount;

  bool hasTeamIdPrevious() => _teamIdPrevious != null;

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

  // "is_team_leader" field.
  bool? _isTeamLeader;
  bool get isTeamLeader => _isTeamLeader ?? false;
  set isTeamLeader(bool? val) => _isTeamLeader = val;

  bool hasIsTeamLeader() => _isTeamLeader != null;

  // "is_admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;

  bool hasIsAdmin() => _isAdmin != null;

  // "is_admin_super" field.
  bool? _isAdminSuper;
  bool get isAdminSuper => _isAdminSuper ?? false;
  set isAdminSuper(bool? val) => _isAdminSuper = val;

  bool hasIsAdminSuper() => _isAdminSuper != null;

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

  // "ov_id_in_progress" field.
  int? _ovIdInProgress;
  int get ovIdInProgress => _ovIdInProgress ?? 0;
  set ovIdInProgress(int? val) => _ovIdInProgress = val;

  void incrementOvIdInProgress(int amount) =>
      ovIdInProgress = ovIdInProgress + amount;

  bool hasOvIdInProgress() => _ovIdInProgress != null;

  // "o_id_in_progress" field.
  int? _oIdInProgress;
  int get oIdInProgress => _oIdInProgress ?? 0;
  set oIdInProgress(int? val) => _oIdInProgress = val;

  void incrementOIdInProgress(int amount) =>
      oIdInProgress = oIdInProgress + amount;

  bool hasOIdInProgress() => _oIdInProgress != null;

  // "op_id_in_progress" field.
  int? _opIdInProgress;
  int get opIdInProgress => _opIdInProgress ?? 0;
  set opIdInProgress(int? val) => _opIdInProgress = val;

  void incrementOpIdInProgress(int amount) =>
      opIdInProgress = opIdInProgress + amount;

  bool hasOpIdInProgress() => _opIdInProgress != null;

  // "ov_in_progress_leader_id" field.
  int? _ovInProgressLeaderId;
  int get ovInProgressLeaderId => _ovInProgressLeaderId ?? 0;
  set ovInProgressLeaderId(int? val) => _ovInProgressLeaderId = val;

  void incrementOvInProgressLeaderId(int amount) =>
      ovInProgressLeaderId = ovInProgressLeaderId + amount;

  bool hasOvInProgressLeaderId() => _ovInProgressLeaderId != null;

  // "profile_id" field.
  int? _profileId;
  int get profileId => _profileId ?? 0;
  set profileId(int? val) => _profileId = val;

  void incrementProfileId(int amount) => profileId = profileId + amount;

  bool hasProfileId() => _profileId != null;

  // "profile_description" field.
  String? _profileDescription;
  String get profileDescription => _profileDescription ?? '';
  set profileDescription(String? val) => _profileDescription = val;

  bool hasProfileDescription() => _profileDescription != null;

  // "vehicle_id" field.
  int? _vehicleId;
  int get vehicleId => _vehicleId ?? 0;
  set vehicleId(int? val) => _vehicleId = val;

  void incrementVehicleId(int amount) => vehicleId = vehicleId + amount;

  bool hasVehicleId() => _vehicleId != null;

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "is_ov_in_progress" field.
  bool? _isOvInProgress;
  bool get isOvInProgress => _isOvInProgress ?? false;
  set isOvInProgress(bool? val) => _isOvInProgress = val;

  bool hasIsOvInProgress() => _isOvInProgress != null;

  // "o_contract_id_in_progress" field.
  int? _oContractIdInProgress;
  int get oContractIdInProgress => _oContractIdInProgress ?? 0;
  set oContractIdInProgress(int? val) => _oContractIdInProgress = val;

  void incrementOContractIdInProgress(int amount) =>
      oContractIdInProgress = oContractIdInProgress + amount;

  bool hasOContractIdInProgress() => _oContractIdInProgress != null;

  // "token_fcm" field.
  String? _tokenFcm;
  String get tokenFcm => _tokenFcm ?? '';
  set tokenFcm(String? val) => _tokenFcm = val;

  bool hasTokenFcm() => _tokenFcm != null;

  // "version_app" field.
  String? _versionApp;
  String get versionApp => _versionApp ?? '';
  set versionApp(String? val) => _versionApp = val;

  bool hasVersionApp() => _versionApp != null;

  // "notifications_amount" field.
  int? _notificationsAmount;
  int get notificationsAmount => _notificationsAmount ?? 0;
  set notificationsAmount(int? val) => _notificationsAmount = val;

  void incrementNotificationsAmount(int amount) =>
      notificationsAmount = notificationsAmount + amount;

  bool hasNotificationsAmount() => _notificationsAmount != null;

  // "o_type_id_in_progress" field.
  int? _oTypeIdInProgress;
  int get oTypeIdInProgress => _oTypeIdInProgress ?? 0;
  set oTypeIdInProgress(int? val) => _oTypeIdInProgress = val;

  void incrementOTypeIdInProgress(int amount) =>
      oTypeIdInProgress = oTypeIdInProgress + amount;

  bool hasOTypeIdInProgress() => _oTypeIdInProgress != null;

  // "o_type_sub_id_in_progress" field.
  int? _oTypeSubIdInProgress;
  int get oTypeSubIdInProgress => _oTypeSubIdInProgress ?? 0;
  set oTypeSubIdInProgress(int? val) => _oTypeSubIdInProgress = val;

  void incrementOTypeSubIdInProgress(int amount) =>
      oTypeSubIdInProgress = oTypeSubIdInProgress + amount;

  bool hasOTypeSubIdInProgress() => _oTypeSubIdInProgress != null;

  // "o_plan_id_in_progress" field.
  int? _oPlanIdInProgress;
  int get oPlanIdInProgress => _oPlanIdInProgress ?? 0;
  set oPlanIdInProgress(int? val) => _oPlanIdInProgress = val;

  void incrementOPlanIdInProgress(int amount) =>
      oPlanIdInProgress = oPlanIdInProgress + amount;

  bool hasOPlanIdInProgress() => _oPlanIdInProgress != null;

  // "o_asset_tag_id_in_progress" field.
  int? _oAssetTagIdInProgress;
  int get oAssetTagIdInProgress => _oAssetTagIdInProgress ?? 0;
  set oAssetTagIdInProgress(int? val) => _oAssetTagIdInProgress = val;

  void incrementOAssetTagIdInProgress(int amount) =>
      oAssetTagIdInProgress = oAssetTagIdInProgress + amount;

  bool hasOAssetTagIdInProgress() => _oAssetTagIdInProgress != null;

  // "o_unit_id_in_progress" field.
  int? _oUnitIdInProgress;
  int get oUnitIdInProgress => _oUnitIdInProgress ?? 0;
  set oUnitIdInProgress(int? val) => _oUnitIdInProgress = val;

  void incrementOUnitIdInProgress(int amount) =>
      oUnitIdInProgress = oUnitIdInProgress + amount;

  bool hasOUnitIdInProgress() => _oUnitIdInProgress != null;

  // "o_system_id_in_progress" field.
  int? _oSystemIdInProgress;
  int get oSystemIdInProgress => _oSystemIdInProgress ?? 0;
  set oSystemIdInProgress(int? val) => _oSystemIdInProgress = val;

  void incrementOSystemIdInProgress(int amount) =>
      oSystemIdInProgress = oSystemIdInProgress + amount;

  bool hasOSystemIdInProgress() => _oSystemIdInProgress != null;

  // "o_system_parent_id_in_progress" field.
  int? _oSystemParentIdInProgress;
  int get oSystemParentIdInProgress => _oSystemParentIdInProgress ?? 0;
  set oSystemParentIdInProgress(int? val) => _oSystemParentIdInProgress = val;

  void incrementOSystemParentIdInProgress(int amount) =>
      oSystemParentIdInProgress = oSystemParentIdInProgress + amount;

  bool hasOSystemParentIdInProgress() => _oSystemParentIdInProgress != null;

  // "o_unit_type_id_in_progress" field.
  int? _oUnitTypeIdInProgress;
  int get oUnitTypeIdInProgress => _oUnitTypeIdInProgress ?? 0;
  set oUnitTypeIdInProgress(int? val) => _oUnitTypeIdInProgress = val;

  void incrementOUnitTypeIdInProgress(int amount) =>
      oUnitTypeIdInProgress = oUnitTypeIdInProgress + amount;

  bool hasOUnitTypeIdInProgress() => _oUnitTypeIdInProgress != null;

  // "o_unit_type_parent_id_in_progress" field.
  int? _oUnitTypeParentIdInProgress;
  int get oUnitTypeParentIdInProgress => _oUnitTypeParentIdInProgress ?? 0;
  set oUnitTypeParentIdInProgress(int? val) =>
      _oUnitTypeParentIdInProgress = val;

  void incrementOUnitTypeParentIdInProgress(int amount) =>
      oUnitTypeParentIdInProgress = oUnitTypeParentIdInProgress + amount;

  bool hasOUnitTypeParentIdInProgress() => _oUnitTypeParentIdInProgress != null;

  // "o_object_id_in_progress" field.
  int? _oObjectIdInProgress;
  int get oObjectIdInProgress => _oObjectIdInProgress ?? 0;
  set oObjectIdInProgress(int? val) => _oObjectIdInProgress = val;

  void incrementOObjectIdInProgress(int amount) =>
      oObjectIdInProgress = oObjectIdInProgress + amount;

  bool hasOObjectIdInProgress() => _oObjectIdInProgress != null;

  // "mobile_mask" field.
  String? _mobileMask;
  String get mobileMask => _mobileMask ?? '';
  set mobileMask(String? val) => _mobileMask = val;

  bool hasMobileMask() => _mobileMask != null;

  // "mobile_whatsapp" field.
  String? _mobileWhatsapp;
  String get mobileWhatsapp => _mobileWhatsapp ?? '';
  set mobileWhatsapp(String? val) => _mobileWhatsapp = val;

  bool hasMobileWhatsapp() => _mobileWhatsapp != null;

  // "migrated_at" field.
  String? _migratedAt;
  String get migratedAt => _migratedAt ?? '';
  set migratedAt(String? val) => _migratedAt = val;

  bool hasMigratedAt() => _migratedAt != null;

  static DtUserStruct fromMap(Map<String, dynamic> data) => DtUserStruct(
        id: castToType<int>(data['id']),
        uuid: data['uuid'] as String?,
        companyId: castToType<int>(data['company_id']),
        companyCode: data['company_code'] as String?,
        companyDescription: data['company_description'] as String?,
        companyImgFilePath: data['company_img_file_path'] as String?,
        companyImgFileName: data['company_img_file_name'] as String?,
        companyEmailSufix: data['company_email_sufix'] as String?,
        companyIsAvailable: data['company_is_available'] as bool?,
        departmentId: castToType<int>(data['department_id']),
        departmentCode: data['department_code'] as String?,
        departmentDescription: data['department_description'] as String?,
        email: data['email'] as String?,
        nameShort: data['name_short'] as String?,
        nameFull: data['name_full'] as String?,
        teamId: castToType<int>(data['team_id']),
        teamCode: data['team_code'] as String?,
        teamDescription: data['team_description'] as String?,
        teamAmount: castToType<int>(data['team_amount']),
        teamIdPrevious: castToType<int>(data['team_id_previous']),
        statusId: castToType<int>(data['status_id']),
        statusCode: data['status_code'] as String?,
        statusDescription: data['status_description'] as String?,
        isTeamLeader: data['is_team_leader'] as bool?,
        isAdmin: data['is_admin'] as bool?,
        isAdminSuper: data['is_admin_super'] as bool?,
        imgFilePath: data['img_file_path'] as String?,
        imgFileName: data['img_file_name'] as String?,
        ovIdInProgress: castToType<int>(data['ov_id_in_progress']),
        oIdInProgress: castToType<int>(data['o_id_in_progress']),
        opIdInProgress: castToType<int>(data['op_id_in_progress']),
        ovInProgressLeaderId: castToType<int>(data['ov_in_progress_leader_id']),
        profileId: castToType<int>(data['profile_id']),
        profileDescription: data['profile_description'] as String?,
        vehicleId: castToType<int>(data['vehicle_id']),
        isAvailable: data['is_available'] as bool?,
        isOvInProgress: data['is_ov_in_progress'] as bool?,
        oContractIdInProgress:
            castToType<int>(data['o_contract_id_in_progress']),
        tokenFcm: data['token_fcm'] as String?,
        versionApp: data['version_app'] as String?,
        notificationsAmount: castToType<int>(data['notifications_amount']),
        oTypeIdInProgress: castToType<int>(data['o_type_id_in_progress']),
        oTypeSubIdInProgress:
            castToType<int>(data['o_type_sub_id_in_progress']),
        oPlanIdInProgress: castToType<int>(data['o_plan_id_in_progress']),
        oAssetTagIdInProgress:
            castToType<int>(data['o_asset_tag_id_in_progress']),
        oUnitIdInProgress: castToType<int>(data['o_unit_id_in_progress']),
        oSystemIdInProgress: castToType<int>(data['o_system_id_in_progress']),
        oSystemParentIdInProgress:
            castToType<int>(data['o_system_parent_id_in_progress']),
        oUnitTypeIdInProgress:
            castToType<int>(data['o_unit_type_id_in_progress']),
        oUnitTypeParentIdInProgress:
            castToType<int>(data['o_unit_type_parent_id_in_progress']),
        oObjectIdInProgress: castToType<int>(data['o_object_id_in_progress']),
        mobileMask: data['mobile_mask'] as String?,
        mobileWhatsapp: data['mobile_whatsapp'] as String?,
        migratedAt: data['migrated_at'] as String?,
      );

  static DtUserStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtUserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uuid': _uuid,
        'company_id': _companyId,
        'company_code': _companyCode,
        'company_description': _companyDescription,
        'company_img_file_path': _companyImgFilePath,
        'company_img_file_name': _companyImgFileName,
        'company_email_sufix': _companyEmailSufix,
        'company_is_available': _companyIsAvailable,
        'department_id': _departmentId,
        'department_code': _departmentCode,
        'department_description': _departmentDescription,
        'email': _email,
        'name_short': _nameShort,
        'name_full': _nameFull,
        'team_id': _teamId,
        'team_code': _teamCode,
        'team_description': _teamDescription,
        'team_amount': _teamAmount,
        'team_id_previous': _teamIdPrevious,
        'status_id': _statusId,
        'status_code': _statusCode,
        'status_description': _statusDescription,
        'is_team_leader': _isTeamLeader,
        'is_admin': _isAdmin,
        'is_admin_super': _isAdminSuper,
        'img_file_path': _imgFilePath,
        'img_file_name': _imgFileName,
        'ov_id_in_progress': _ovIdInProgress,
        'o_id_in_progress': _oIdInProgress,
        'op_id_in_progress': _opIdInProgress,
        'ov_in_progress_leader_id': _ovInProgressLeaderId,
        'profile_id': _profileId,
        'profile_description': _profileDescription,
        'vehicle_id': _vehicleId,
        'is_available': _isAvailable,
        'is_ov_in_progress': _isOvInProgress,
        'o_contract_id_in_progress': _oContractIdInProgress,
        'token_fcm': _tokenFcm,
        'version_app': _versionApp,
        'notifications_amount': _notificationsAmount,
        'o_type_id_in_progress': _oTypeIdInProgress,
        'o_type_sub_id_in_progress': _oTypeSubIdInProgress,
        'o_plan_id_in_progress': _oPlanIdInProgress,
        'o_asset_tag_id_in_progress': _oAssetTagIdInProgress,
        'o_unit_id_in_progress': _oUnitIdInProgress,
        'o_system_id_in_progress': _oSystemIdInProgress,
        'o_system_parent_id_in_progress': _oSystemParentIdInProgress,
        'o_unit_type_id_in_progress': _oUnitTypeIdInProgress,
        'o_unit_type_parent_id_in_progress': _oUnitTypeParentIdInProgress,
        'o_object_id_in_progress': _oObjectIdInProgress,
        'mobile_mask': _mobileMask,
        'mobile_whatsapp': _mobileWhatsapp,
        'migrated_at': _migratedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'company_code': serializeParam(
          _companyCode,
          ParamType.String,
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
        'company_email_sufix': serializeParam(
          _companyEmailSufix,
          ParamType.String,
        ),
        'company_is_available': serializeParam(
          _companyIsAvailable,
          ParamType.bool,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'department_code': serializeParam(
          _departmentCode,
          ParamType.String,
        ),
        'department_description': serializeParam(
          _departmentDescription,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'name_short': serializeParam(
          _nameShort,
          ParamType.String,
        ),
        'name_full': serializeParam(
          _nameFull,
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
        'team_amount': serializeParam(
          _teamAmount,
          ParamType.int,
        ),
        'team_id_previous': serializeParam(
          _teamIdPrevious,
          ParamType.int,
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
        'is_team_leader': serializeParam(
          _isTeamLeader,
          ParamType.bool,
        ),
        'is_admin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
        'is_admin_super': serializeParam(
          _isAdminSuper,
          ParamType.bool,
        ),
        'img_file_path': serializeParam(
          _imgFilePath,
          ParamType.String,
        ),
        'img_file_name': serializeParam(
          _imgFileName,
          ParamType.String,
        ),
        'ov_id_in_progress': serializeParam(
          _ovIdInProgress,
          ParamType.int,
        ),
        'o_id_in_progress': serializeParam(
          _oIdInProgress,
          ParamType.int,
        ),
        'op_id_in_progress': serializeParam(
          _opIdInProgress,
          ParamType.int,
        ),
        'ov_in_progress_leader_id': serializeParam(
          _ovInProgressLeaderId,
          ParamType.int,
        ),
        'profile_id': serializeParam(
          _profileId,
          ParamType.int,
        ),
        'profile_description': serializeParam(
          _profileDescription,
          ParamType.String,
        ),
        'vehicle_id': serializeParam(
          _vehicleId,
          ParamType.int,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_ov_in_progress': serializeParam(
          _isOvInProgress,
          ParamType.bool,
        ),
        'o_contract_id_in_progress': serializeParam(
          _oContractIdInProgress,
          ParamType.int,
        ),
        'token_fcm': serializeParam(
          _tokenFcm,
          ParamType.String,
        ),
        'version_app': serializeParam(
          _versionApp,
          ParamType.String,
        ),
        'notifications_amount': serializeParam(
          _notificationsAmount,
          ParamType.int,
        ),
        'o_type_id_in_progress': serializeParam(
          _oTypeIdInProgress,
          ParamType.int,
        ),
        'o_type_sub_id_in_progress': serializeParam(
          _oTypeSubIdInProgress,
          ParamType.int,
        ),
        'o_plan_id_in_progress': serializeParam(
          _oPlanIdInProgress,
          ParamType.int,
        ),
        'o_asset_tag_id_in_progress': serializeParam(
          _oAssetTagIdInProgress,
          ParamType.int,
        ),
        'o_unit_id_in_progress': serializeParam(
          _oUnitIdInProgress,
          ParamType.int,
        ),
        'o_system_id_in_progress': serializeParam(
          _oSystemIdInProgress,
          ParamType.int,
        ),
        'o_system_parent_id_in_progress': serializeParam(
          _oSystemParentIdInProgress,
          ParamType.int,
        ),
        'o_unit_type_id_in_progress': serializeParam(
          _oUnitTypeIdInProgress,
          ParamType.int,
        ),
        'o_unit_type_parent_id_in_progress': serializeParam(
          _oUnitTypeParentIdInProgress,
          ParamType.int,
        ),
        'o_object_id_in_progress': serializeParam(
          _oObjectIdInProgress,
          ParamType.int,
        ),
        'mobile_mask': serializeParam(
          _mobileMask,
          ParamType.String,
        ),
        'mobile_whatsapp': serializeParam(
          _mobileWhatsapp,
          ParamType.String,
        ),
        'migrated_at': serializeParam(
          _migratedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        companyCode: deserializeParam(
          data['company_code'],
          ParamType.String,
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
        companyEmailSufix: deserializeParam(
          data['company_email_sufix'],
          ParamType.String,
          false,
        ),
        companyIsAvailable: deserializeParam(
          data['company_is_available'],
          ParamType.bool,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        departmentCode: deserializeParam(
          data['department_code'],
          ParamType.String,
          false,
        ),
        departmentDescription: deserializeParam(
          data['department_description'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        nameShort: deserializeParam(
          data['name_short'],
          ParamType.String,
          false,
        ),
        nameFull: deserializeParam(
          data['name_full'],
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
        teamAmount: deserializeParam(
          data['team_amount'],
          ParamType.int,
          false,
        ),
        teamIdPrevious: deserializeParam(
          data['team_id_previous'],
          ParamType.int,
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
        isTeamLeader: deserializeParam(
          data['is_team_leader'],
          ParamType.bool,
          false,
        ),
        isAdmin: deserializeParam(
          data['is_admin'],
          ParamType.bool,
          false,
        ),
        isAdminSuper: deserializeParam(
          data['is_admin_super'],
          ParamType.bool,
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
        ovIdInProgress: deserializeParam(
          data['ov_id_in_progress'],
          ParamType.int,
          false,
        ),
        oIdInProgress: deserializeParam(
          data['o_id_in_progress'],
          ParamType.int,
          false,
        ),
        opIdInProgress: deserializeParam(
          data['op_id_in_progress'],
          ParamType.int,
          false,
        ),
        ovInProgressLeaderId: deserializeParam(
          data['ov_in_progress_leader_id'],
          ParamType.int,
          false,
        ),
        profileId: deserializeParam(
          data['profile_id'],
          ParamType.int,
          false,
        ),
        profileDescription: deserializeParam(
          data['profile_description'],
          ParamType.String,
          false,
        ),
        vehicleId: deserializeParam(
          data['vehicle_id'],
          ParamType.int,
          false,
        ),
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
        isOvInProgress: deserializeParam(
          data['is_ov_in_progress'],
          ParamType.bool,
          false,
        ),
        oContractIdInProgress: deserializeParam(
          data['o_contract_id_in_progress'],
          ParamType.int,
          false,
        ),
        tokenFcm: deserializeParam(
          data['token_fcm'],
          ParamType.String,
          false,
        ),
        versionApp: deserializeParam(
          data['version_app'],
          ParamType.String,
          false,
        ),
        notificationsAmount: deserializeParam(
          data['notifications_amount'],
          ParamType.int,
          false,
        ),
        oTypeIdInProgress: deserializeParam(
          data['o_type_id_in_progress'],
          ParamType.int,
          false,
        ),
        oTypeSubIdInProgress: deserializeParam(
          data['o_type_sub_id_in_progress'],
          ParamType.int,
          false,
        ),
        oPlanIdInProgress: deserializeParam(
          data['o_plan_id_in_progress'],
          ParamType.int,
          false,
        ),
        oAssetTagIdInProgress: deserializeParam(
          data['o_asset_tag_id_in_progress'],
          ParamType.int,
          false,
        ),
        oUnitIdInProgress: deserializeParam(
          data['o_unit_id_in_progress'],
          ParamType.int,
          false,
        ),
        oSystemIdInProgress: deserializeParam(
          data['o_system_id_in_progress'],
          ParamType.int,
          false,
        ),
        oSystemParentIdInProgress: deserializeParam(
          data['o_system_parent_id_in_progress'],
          ParamType.int,
          false,
        ),
        oUnitTypeIdInProgress: deserializeParam(
          data['o_unit_type_id_in_progress'],
          ParamType.int,
          false,
        ),
        oUnitTypeParentIdInProgress: deserializeParam(
          data['o_unit_type_parent_id_in_progress'],
          ParamType.int,
          false,
        ),
        oObjectIdInProgress: deserializeParam(
          data['o_object_id_in_progress'],
          ParamType.int,
          false,
        ),
        mobileMask: deserializeParam(
          data['mobile_mask'],
          ParamType.String,
          false,
        ),
        mobileWhatsapp: deserializeParam(
          data['mobile_whatsapp'],
          ParamType.String,
          false,
        ),
        migratedAt: deserializeParam(
          data['migrated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUserStruct &&
        id == other.id &&
        uuid == other.uuid &&
        companyId == other.companyId &&
        companyCode == other.companyCode &&
        companyDescription == other.companyDescription &&
        companyImgFilePath == other.companyImgFilePath &&
        companyImgFileName == other.companyImgFileName &&
        companyEmailSufix == other.companyEmailSufix &&
        companyIsAvailable == other.companyIsAvailable &&
        departmentId == other.departmentId &&
        departmentCode == other.departmentCode &&
        departmentDescription == other.departmentDescription &&
        email == other.email &&
        nameShort == other.nameShort &&
        nameFull == other.nameFull &&
        teamId == other.teamId &&
        teamCode == other.teamCode &&
        teamDescription == other.teamDescription &&
        teamAmount == other.teamAmount &&
        teamIdPrevious == other.teamIdPrevious &&
        statusId == other.statusId &&
        statusCode == other.statusCode &&
        statusDescription == other.statusDescription &&
        isTeamLeader == other.isTeamLeader &&
        isAdmin == other.isAdmin &&
        isAdminSuper == other.isAdminSuper &&
        imgFilePath == other.imgFilePath &&
        imgFileName == other.imgFileName &&
        ovIdInProgress == other.ovIdInProgress &&
        oIdInProgress == other.oIdInProgress &&
        opIdInProgress == other.opIdInProgress &&
        ovInProgressLeaderId == other.ovInProgressLeaderId &&
        profileId == other.profileId &&
        profileDescription == other.profileDescription &&
        vehicleId == other.vehicleId &&
        isAvailable == other.isAvailable &&
        isOvInProgress == other.isOvInProgress &&
        oContractIdInProgress == other.oContractIdInProgress &&
        tokenFcm == other.tokenFcm &&
        versionApp == other.versionApp &&
        notificationsAmount == other.notificationsAmount &&
        oTypeIdInProgress == other.oTypeIdInProgress &&
        oTypeSubIdInProgress == other.oTypeSubIdInProgress &&
        oPlanIdInProgress == other.oPlanIdInProgress &&
        oAssetTagIdInProgress == other.oAssetTagIdInProgress &&
        oUnitIdInProgress == other.oUnitIdInProgress &&
        oSystemIdInProgress == other.oSystemIdInProgress &&
        oSystemParentIdInProgress == other.oSystemParentIdInProgress &&
        oUnitTypeIdInProgress == other.oUnitTypeIdInProgress &&
        oUnitTypeParentIdInProgress == other.oUnitTypeParentIdInProgress &&
        oObjectIdInProgress == other.oObjectIdInProgress &&
        mobileMask == other.mobileMask &&
        mobileWhatsapp == other.mobileWhatsapp &&
        migratedAt == other.migratedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        uuid,
        companyId,
        companyCode,
        companyDescription,
        companyImgFilePath,
        companyImgFileName,
        companyEmailSufix,
        companyIsAvailable,
        departmentId,
        departmentCode,
        departmentDescription,
        email,
        nameShort,
        nameFull,
        teamId,
        teamCode,
        teamDescription,
        teamAmount,
        teamIdPrevious,
        statusId,
        statusCode,
        statusDescription,
        isTeamLeader,
        isAdmin,
        isAdminSuper,
        imgFilePath,
        imgFileName,
        ovIdInProgress,
        oIdInProgress,
        opIdInProgress,
        ovInProgressLeaderId,
        profileId,
        profileDescription,
        vehicleId,
        isAvailable,
        isOvInProgress,
        oContractIdInProgress,
        tokenFcm,
        versionApp,
        notificationsAmount,
        oTypeIdInProgress,
        oTypeSubIdInProgress,
        oPlanIdInProgress,
        oAssetTagIdInProgress,
        oUnitIdInProgress,
        oSystemIdInProgress,
        oSystemParentIdInProgress,
        oUnitTypeIdInProgress,
        oUnitTypeParentIdInProgress,
        oObjectIdInProgress,
        mobileMask,
        mobileWhatsapp,
        migratedAt
      ]);
}

DtUserStruct createDtUserStruct({
  int? id,
  String? uuid,
  int? companyId,
  String? companyCode,
  String? companyDescription,
  String? companyImgFilePath,
  String? companyImgFileName,
  String? companyEmailSufix,
  bool? companyIsAvailable,
  int? departmentId,
  String? departmentCode,
  String? departmentDescription,
  String? email,
  String? nameShort,
  String? nameFull,
  int? teamId,
  String? teamCode,
  String? teamDescription,
  int? teamAmount,
  int? teamIdPrevious,
  int? statusId,
  String? statusCode,
  String? statusDescription,
  bool? isTeamLeader,
  bool? isAdmin,
  bool? isAdminSuper,
  String? imgFilePath,
  String? imgFileName,
  int? ovIdInProgress,
  int? oIdInProgress,
  int? opIdInProgress,
  int? ovInProgressLeaderId,
  int? profileId,
  String? profileDescription,
  int? vehicleId,
  bool? isAvailable,
  bool? isOvInProgress,
  int? oContractIdInProgress,
  String? tokenFcm,
  String? versionApp,
  int? notificationsAmount,
  int? oTypeIdInProgress,
  int? oTypeSubIdInProgress,
  int? oPlanIdInProgress,
  int? oAssetTagIdInProgress,
  int? oUnitIdInProgress,
  int? oSystemIdInProgress,
  int? oSystemParentIdInProgress,
  int? oUnitTypeIdInProgress,
  int? oUnitTypeParentIdInProgress,
  int? oObjectIdInProgress,
  String? mobileMask,
  String? mobileWhatsapp,
  String? migratedAt,
}) =>
    DtUserStruct(
      id: id,
      uuid: uuid,
      companyId: companyId,
      companyCode: companyCode,
      companyDescription: companyDescription,
      companyImgFilePath: companyImgFilePath,
      companyImgFileName: companyImgFileName,
      companyEmailSufix: companyEmailSufix,
      companyIsAvailable: companyIsAvailable,
      departmentId: departmentId,
      departmentCode: departmentCode,
      departmentDescription: departmentDescription,
      email: email,
      nameShort: nameShort,
      nameFull: nameFull,
      teamId: teamId,
      teamCode: teamCode,
      teamDescription: teamDescription,
      teamAmount: teamAmount,
      teamIdPrevious: teamIdPrevious,
      statusId: statusId,
      statusCode: statusCode,
      statusDescription: statusDescription,
      isTeamLeader: isTeamLeader,
      isAdmin: isAdmin,
      isAdminSuper: isAdminSuper,
      imgFilePath: imgFilePath,
      imgFileName: imgFileName,
      ovIdInProgress: ovIdInProgress,
      oIdInProgress: oIdInProgress,
      opIdInProgress: opIdInProgress,
      ovInProgressLeaderId: ovInProgressLeaderId,
      profileId: profileId,
      profileDescription: profileDescription,
      vehicleId: vehicleId,
      isAvailable: isAvailable,
      isOvInProgress: isOvInProgress,
      oContractIdInProgress: oContractIdInProgress,
      tokenFcm: tokenFcm,
      versionApp: versionApp,
      notificationsAmount: notificationsAmount,
      oTypeIdInProgress: oTypeIdInProgress,
      oTypeSubIdInProgress: oTypeSubIdInProgress,
      oPlanIdInProgress: oPlanIdInProgress,
      oAssetTagIdInProgress: oAssetTagIdInProgress,
      oUnitIdInProgress: oUnitIdInProgress,
      oSystemIdInProgress: oSystemIdInProgress,
      oSystemParentIdInProgress: oSystemParentIdInProgress,
      oUnitTypeIdInProgress: oUnitTypeIdInProgress,
      oUnitTypeParentIdInProgress: oUnitTypeParentIdInProgress,
      oObjectIdInProgress: oObjectIdInProgress,
      mobileMask: mobileMask,
      mobileWhatsapp: mobileWhatsapp,
      migratedAt: migratedAt,
    );

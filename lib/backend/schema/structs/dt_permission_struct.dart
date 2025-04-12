// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtPermissionStruct extends BaseStruct {
  DtPermissionStruct({
    int? id,
    int? appPageId,
    String? description,
    int? profileId,
    String? profileDescription,
    int? departmentId,
    String? departmentCode,
    String? departmentDescription,
    int? companyId,
    String? companyCode,
    String? companyDescription,
  })  : _id = id,
        _appPageId = appPageId,
        _description = description,
        _profileId = profileId,
        _profileDescription = profileDescription,
        _departmentId = departmentId,
        _departmentCode = departmentCode,
        _departmentDescription = departmentDescription,
        _companyId = companyId,
        _companyCode = companyCode,
        _companyDescription = companyDescription;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "app_page_id" field.
  int? _appPageId;
  int get appPageId => _appPageId ?? 0;
  set appPageId(int? val) => _appPageId = val;

  void incrementAppPageId(int amount) => appPageId = appPageId + amount;

  bool hasAppPageId() => _appPageId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

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

  static DtPermissionStruct fromMap(Map<String, dynamic> data) =>
      DtPermissionStruct(
        id: castToType<int>(data['id']),
        appPageId: castToType<int>(data['app_page_id']),
        description: data['description'] as String?,
        profileId: castToType<int>(data['profile_id']),
        profileDescription: data['profile_description'] as String?,
        departmentId: castToType<int>(data['department_id']),
        departmentCode: data['department_code'] as String?,
        departmentDescription: data['department_description'] as String?,
        companyId: castToType<int>(data['company_id']),
        companyCode: data['company_code'] as String?,
        companyDescription: data['company_description'] as String?,
      );

  static DtPermissionStruct? maybeFromMap(dynamic data) => data is Map
      ? DtPermissionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'app_page_id': _appPageId,
        'description': _description,
        'profile_id': _profileId,
        'profile_description': _profileDescription,
        'department_id': _departmentId,
        'department_code': _departmentCode,
        'department_description': _departmentDescription,
        'company_id': _companyId,
        'company_code': _companyCode,
        'company_description': _companyDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'app_page_id': serializeParam(
          _appPageId,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'profile_id': serializeParam(
          _profileId,
          ParamType.int,
        ),
        'profile_description': serializeParam(
          _profileDescription,
          ParamType.String,
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
      }.withoutNulls;

  static DtPermissionStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtPermissionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        appPageId: deserializeParam(
          data['app_page_id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
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
      );

  @override
  String toString() => 'DtPermissionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtPermissionStruct &&
        id == other.id &&
        appPageId == other.appPageId &&
        description == other.description &&
        profileId == other.profileId &&
        profileDescription == other.profileDescription &&
        departmentId == other.departmentId &&
        departmentCode == other.departmentCode &&
        departmentDescription == other.departmentDescription &&
        companyId == other.companyId &&
        companyCode == other.companyCode &&
        companyDescription == other.companyDescription;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        appPageId,
        description,
        profileId,
        profileDescription,
        departmentId,
        departmentCode,
        departmentDescription,
        companyId,
        companyCode,
        companyDescription
      ]);
}

DtPermissionStruct createDtPermissionStruct({
  int? id,
  int? appPageId,
  String? description,
  int? profileId,
  String? profileDescription,
  int? departmentId,
  String? departmentCode,
  String? departmentDescription,
  int? companyId,
  String? companyCode,
  String? companyDescription,
}) =>
    DtPermissionStruct(
      id: id,
      appPageId: appPageId,
      description: description,
      profileId: profileId,
      profileDescription: profileDescription,
      departmentId: departmentId,
      departmentCode: departmentCode,
      departmentDescription: departmentDescription,
      companyId: companyId,
      companyCode: companyCode,
      companyDescription: companyDescription,
    );

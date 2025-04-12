// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtTeamStruct extends BaseStruct {
  DtTeamStruct({
    int? id,
    int? parentId,
    String? code,
    String? description,
    int? departmentId,
    bool? isAvailable,
    String? imgUrl,
    int? usersTotal,
    int? companyId,
    int? createdUserId,
    String? createdAt,
    int? updatedUserId,
    String? updatedAt,
    int? deletedUserId,
    String? deletedAt,
  })  : _id = id,
        _parentId = parentId,
        _code = code,
        _description = description,
        _departmentId = departmentId,
        _isAvailable = isAvailable,
        _imgUrl = imgUrl,
        _usersTotal = usersTotal,
        _companyId = companyId,
        _createdUserId = createdUserId,
        _createdAt = createdAt,
        _updatedUserId = updatedUserId,
        _updatedAt = updatedAt,
        _deletedUserId = deletedUserId,
        _deletedAt = deletedAt;

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

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "img_url" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  set imgUrl(String? val) => _imgUrl = val;

  bool hasImgUrl() => _imgUrl != null;

  // "users_total" field.
  int? _usersTotal;
  int get usersTotal => _usersTotal ?? 0;
  set usersTotal(int? val) => _usersTotal = val;

  void incrementUsersTotal(int amount) => usersTotal = usersTotal + amount;

  bool hasUsersTotal() => _usersTotal != null;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "created_user_id" field.
  int? _createdUserId;
  int get createdUserId => _createdUserId ?? 0;
  set createdUserId(int? val) => _createdUserId = val;

  void incrementCreatedUserId(int amount) =>
      createdUserId = createdUserId + amount;

  bool hasCreatedUserId() => _createdUserId != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_user_id" field.
  int? _updatedUserId;
  int get updatedUserId => _updatedUserId ?? 0;
  set updatedUserId(int? val) => _updatedUserId = val;

  void incrementUpdatedUserId(int amount) =>
      updatedUserId = updatedUserId + amount;

  bool hasUpdatedUserId() => _updatedUserId != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "deleted_user_id" field.
  int? _deletedUserId;
  int get deletedUserId => _deletedUserId ?? 0;
  set deletedUserId(int? val) => _deletedUserId = val;

  void incrementDeletedUserId(int amount) =>
      deletedUserId = deletedUserId + amount;

  bool hasDeletedUserId() => _deletedUserId != null;

  // "deleted_at" field.
  String? _deletedAt;
  String get deletedAt => _deletedAt ?? '';
  set deletedAt(String? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  static DtTeamStruct fromMap(Map<String, dynamic> data) => DtTeamStruct(
        id: castToType<int>(data['id']),
        parentId: castToType<int>(data['parent_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        departmentId: castToType<int>(data['department_id']),
        isAvailable: data['is_available'] as bool?,
        imgUrl: data['img_url'] as String?,
        usersTotal: castToType<int>(data['users_total']),
        companyId: castToType<int>(data['company_id']),
        createdUserId: castToType<int>(data['created_user_id']),
        createdAt: data['created_at'] as String?,
        updatedUserId: castToType<int>(data['updated_user_id']),
        updatedAt: data['updated_at'] as String?,
        deletedUserId: castToType<int>(data['deleted_user_id']),
        deletedAt: data['deleted_at'] as String?,
      );

  static DtTeamStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtTeamStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'parent_id': _parentId,
        'code': _code,
        'description': _description,
        'department_id': _departmentId,
        'is_available': _isAvailable,
        'img_url': _imgUrl,
        'users_total': _usersTotal,
        'company_id': _companyId,
        'created_user_id': _createdUserId,
        'created_at': _createdAt,
        'updated_user_id': _updatedUserId,
        'updated_at': _updatedAt,
        'deleted_user_id': _deletedUserId,
        'deleted_at': _deletedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'parent_id': serializeParam(
          _parentId,
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
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'img_url': serializeParam(
          _imgUrl,
          ParamType.String,
        ),
        'users_total': serializeParam(
          _usersTotal,
          ParamType.int,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'created_user_id': serializeParam(
          _createdUserId,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_user_id': serializeParam(
          _updatedUserId,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'deleted_user_id': serializeParam(
          _deletedUserId,
          ParamType.int,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtTeamStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtTeamStruct(
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
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
        imgUrl: deserializeParam(
          data['img_url'],
          ParamType.String,
          false,
        ),
        usersTotal: deserializeParam(
          data['users_total'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        createdUserId: deserializeParam(
          data['created_user_id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedUserId: deserializeParam(
          data['updated_user_id'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        deletedUserId: deserializeParam(
          data['deleted_user_id'],
          ParamType.int,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtTeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtTeamStruct &&
        id == other.id &&
        parentId == other.parentId &&
        code == other.code &&
        description == other.description &&
        departmentId == other.departmentId &&
        isAvailable == other.isAvailable &&
        imgUrl == other.imgUrl &&
        usersTotal == other.usersTotal &&
        companyId == other.companyId &&
        createdUserId == other.createdUserId &&
        createdAt == other.createdAt &&
        updatedUserId == other.updatedUserId &&
        updatedAt == other.updatedAt &&
        deletedUserId == other.deletedUserId &&
        deletedAt == other.deletedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        parentId,
        code,
        description,
        departmentId,
        isAvailable,
        imgUrl,
        usersTotal,
        companyId,
        createdUserId,
        createdAt,
        updatedUserId,
        updatedAt,
        deletedUserId,
        deletedAt
      ]);
}

DtTeamStruct createDtTeamStruct({
  int? id,
  int? parentId,
  String? code,
  String? description,
  int? departmentId,
  bool? isAvailable,
  String? imgUrl,
  int? usersTotal,
  int? companyId,
  int? createdUserId,
  String? createdAt,
  int? updatedUserId,
  String? updatedAt,
  int? deletedUserId,
  String? deletedAt,
}) =>
    DtTeamStruct(
      id: id,
      parentId: parentId,
      code: code,
      description: description,
      departmentId: departmentId,
      isAvailable: isAvailable,
      imgUrl: imgUrl,
      usersTotal: usersTotal,
      companyId: companyId,
      createdUserId: createdUserId,
      createdAt: createdAt,
      updatedUserId: updatedUserId,
      updatedAt: updatedAt,
      deletedUserId: deletedUserId,
      deletedAt: deletedAt,
    );

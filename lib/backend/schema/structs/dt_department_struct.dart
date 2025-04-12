// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtDepartmentStruct extends BaseStruct {
  DtDepartmentStruct({
    int? id,
    String? code,
    String? description,
    int? parentId,
    int? companyId,
    bool? isAvailable,
    bool? isDeleted,
    String? version,
  })  : _id = id,
        _code = code,
        _description = description,
        _parentId = parentId,
        _companyId = companyId,
        _isAvailable = isAvailable,
        _isDeleted = isDeleted,
        _version = version;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  static DtDepartmentStruct fromMap(Map<String, dynamic> data) =>
      DtDepartmentStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        parentId: castToType<int>(data['parent_id']),
        companyId: castToType<int>(data['company_id']),
        isAvailable: data['is_available'] as bool?,
        isDeleted: data['is_deleted'] as bool?,
        version: data['version'] as String?,
      );

  static DtDepartmentStruct? maybeFromMap(dynamic data) => data is Map
      ? DtDepartmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'parent_id': _parentId,
        'company_id': _companyId,
        'is_available': _isAvailable,
        'is_deleted': _isDeleted,
        'version': _version,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'parent_id': serializeParam(
          _parentId,
          ParamType.int,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtDepartmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtDepartmentStruct(
        id: deserializeParam(
          data['id'],
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
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtDepartmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtDepartmentStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        parentId == other.parentId &&
        companyId == other.companyId &&
        isAvailable == other.isAvailable &&
        isDeleted == other.isDeleted &&
        version == other.version;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        code,
        description,
        parentId,
        companyId,
        isAvailable,
        isDeleted,
        version
      ]);
}

DtDepartmentStruct createDtDepartmentStruct({
  int? id,
  String? code,
  String? description,
  int? parentId,
  int? companyId,
  bool? isAvailable,
  bool? isDeleted,
  String? version,
}) =>
    DtDepartmentStruct(
      id: id,
      code: code,
      description: description,
      parentId: parentId,
      companyId: companyId,
      isAvailable: isAvailable,
      isDeleted: isDeleted,
      version: version,
    );

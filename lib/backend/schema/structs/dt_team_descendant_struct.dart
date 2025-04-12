// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtTeamDescendantStruct extends BaseStruct {
  DtTeamDescendantStruct({
    int? id,
    int? parentId,
    String? code,
    String? description,
    int? departmentId,
    int? level,
    String? fullPath,
  })  : _id = id,
        _parentId = parentId,
        _code = code,
        _description = description,
        _departmentId = departmentId,
        _level = level,
        _fullPath = fullPath;

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

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  set level(int? val) => _level = val;

  void incrementLevel(int amount) => level = level + amount;

  bool hasLevel() => _level != null;

  // "full_path" field.
  String? _fullPath;
  String get fullPath => _fullPath ?? '';
  set fullPath(String? val) => _fullPath = val;

  bool hasFullPath() => _fullPath != null;

  static DtTeamDescendantStruct fromMap(Map<String, dynamic> data) =>
      DtTeamDescendantStruct(
        id: castToType<int>(data['id']),
        parentId: castToType<int>(data['parent_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        departmentId: castToType<int>(data['department_id']),
        level: castToType<int>(data['level']),
        fullPath: data['full_path'] as String?,
      );

  static DtTeamDescendantStruct? maybeFromMap(dynamic data) => data is Map
      ? DtTeamDescendantStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'parent_id': _parentId,
        'code': _code,
        'description': _description,
        'department_id': _departmentId,
        'level': _level,
        'full_path': _fullPath,
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
        'level': serializeParam(
          _level,
          ParamType.int,
        ),
        'full_path': serializeParam(
          _fullPath,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtTeamDescendantStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtTeamDescendantStruct(
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
        level: deserializeParam(
          data['level'],
          ParamType.int,
          false,
        ),
        fullPath: deserializeParam(
          data['full_path'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtTeamDescendantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtTeamDescendantStruct &&
        id == other.id &&
        parentId == other.parentId &&
        code == other.code &&
        description == other.description &&
        departmentId == other.departmentId &&
        level == other.level &&
        fullPath == other.fullPath;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, parentId, code, description, departmentId, level, fullPath]);
}

DtTeamDescendantStruct createDtTeamDescendantStruct({
  int? id,
  int? parentId,
  String? code,
  String? description,
  int? departmentId,
  int? level,
  String? fullPath,
}) =>
    DtTeamDescendantStruct(
      id: id,
      parentId: parentId,
      code: code,
      description: description,
      departmentId: departmentId,
      level: level,
      fullPath: fullPath,
    );

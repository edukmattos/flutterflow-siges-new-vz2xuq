// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtProfileStruct extends BaseStruct {
  DtProfileStruct({
    int? id,
    String? description,
    int? departmentId,
    String? version,
  })  : _id = id,
        _description = description,
        _departmentId = departmentId,
        _version = version;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  static DtProfileStruct fromMap(Map<String, dynamic> data) => DtProfileStruct(
        id: castToType<int>(data['id']),
        description: data['description'] as String?,
        departmentId: castToType<int>(data['department_id']),
        version: data['version'] as String?,
      );

  static DtProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? DtProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'department_id': _departmentId,
        'version': _version,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtProfileStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtProfileStruct &&
        id == other.id &&
        description == other.description &&
        departmentId == other.departmentId &&
        version == other.version;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, description, departmentId, version]);
}

DtProfileStruct createDtProfileStruct({
  int? id,
  String? description,
  int? departmentId,
  String? version,
}) =>
    DtProfileStruct(
      id: id,
      description: description,
      departmentId: departmentId,
      version: version,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderCancelReasonStruct extends BaseStruct {
  DtOrderCancelReasonStruct({
    int? id,
    int? departmentId,
    String? description,
    bool? isAvailable,
    bool? isDeleted,
  })  : _id = id,
        _departmentId = departmentId,
        _description = description,
        _isAvailable = isAvailable,
        _isDeleted = isDeleted;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

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

  static DtOrderCancelReasonStruct fromMap(Map<String, dynamic> data) =>
      DtOrderCancelReasonStruct(
        id: castToType<int>(data['id']),
        departmentId: castToType<int>(data['department_id']),
        description: data['description'] as String?,
        isAvailable: data['is_available'] as bool?,
        isDeleted: data['is_deleted'] as bool?,
      );

  static DtOrderCancelReasonStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderCancelReasonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'department_id': _departmentId,
        'description': _description,
        'is_available': _isAvailable,
        'is_deleted': _isDeleted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtOrderCancelReasonStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderCancelReasonStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
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
      );

  @override
  String toString() => 'DtOrderCancelReasonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderCancelReasonStruct &&
        id == other.id &&
        departmentId == other.departmentId &&
        description == other.description &&
        isAvailable == other.isAvailable &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, departmentId, description, isAvailable, isDeleted]);
}

DtOrderCancelReasonStruct createDtOrderCancelReasonStruct({
  int? id,
  int? departmentId,
  String? description,
  bool? isAvailable,
  bool? isDeleted,
}) =>
    DtOrderCancelReasonStruct(
      id: id,
      departmentId: departmentId,
      description: description,
      isAvailable: isAvailable,
      isDeleted: isDeleted,
    );

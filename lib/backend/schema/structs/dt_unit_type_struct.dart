// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUnitTypeStruct extends BaseStruct {
  DtUnitTypeStruct({
    int? id,
    String? code,
    String? description,
    int? parentId,
    bool? isAvailable,
    bool? isDeleted,
  })  : _id = id,
        _code = code,
        _description = description,
        _parentId = parentId,
        _isAvailable = isAvailable,
        _isDeleted = isDeleted;

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

  static DtUnitTypeStruct fromMap(Map<String, dynamic> data) =>
      DtUnitTypeStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        parentId: castToType<int>(data['parent_id']),
        isAvailable: data['is_available'] as bool?,
        isDeleted: data['is_deleted'] as bool?,
      );

  static DtUnitTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? DtUnitTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'parent_id': _parentId,
        'is_available': _isAvailable,
        'is_deleted': _isDeleted,
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
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtUnitTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtUnitTypeStruct(
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
  String toString() => 'DtUnitTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUnitTypeStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        parentId == other.parentId &&
        isAvailable == other.isAvailable &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, code, description, parentId, isAvailable, isDeleted]);
}

DtUnitTypeStruct createDtUnitTypeStruct({
  int? id,
  String? code,
  String? description,
  int? parentId,
  bool? isAvailable,
  bool? isDeleted,
}) =>
    DtUnitTypeStruct(
      id: id,
      code: code,
      description: description,
      parentId: parentId,
      isAvailable: isAvailable,
      isDeleted: isDeleted,
    );

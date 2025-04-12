// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtSystemStruct extends BaseStruct {
  DtSystemStruct({
    int? id,
    int? companyId,
    int? parentId,
    String? code,
    String? description,
    bool? isAvailable,
  })  : _id = id,
        _companyId = companyId,
        _parentId = parentId,
        _code = code,
        _description = description,
        _isAvailable = isAvailable;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

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

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  static DtSystemStruct fromMap(Map<String, dynamic> data) => DtSystemStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['company_id']),
        parentId: castToType<int>(data['parent_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isAvailable: data['is_available'] as bool?,
      );

  static DtSystemStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtSystemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'company_id': _companyId,
        'parent_id': _parentId,
        'code': _code,
        'description': _description,
        'is_available': _isAvailable,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'company_id': serializeParam(
          _companyId,
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
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtSystemStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtSystemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
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
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DtSystemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtSystemStruct &&
        id == other.id &&
        companyId == other.companyId &&
        parentId == other.parentId &&
        code == other.code &&
        description == other.description &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, companyId, parentId, code, description, isAvailable]);
}

DtSystemStruct createDtSystemStruct({
  int? id,
  int? companyId,
  int? parentId,
  String? code,
  String? description,
  bool? isAvailable,
}) =>
    DtSystemStruct(
      id: id,
      companyId: companyId,
      parentId: parentId,
      code: code,
      description: description,
      isAvailable: isAvailable,
    );

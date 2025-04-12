// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderStatusStruct extends BaseStruct {
  DtOrderStatusStruct({
    int? id,
    int? companyId,
    int? departmentId,
    String? code,
    String? description,
    bool? isAvailable,
  })  : _id = id,
        _companyId = companyId,
        _departmentId = departmentId,
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

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

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

  static DtOrderStatusStruct fromMap(Map<String, dynamic> data) =>
      DtOrderStatusStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['company_id']),
        departmentId: castToType<int>(data['department_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isAvailable: data['is_available'] as bool?,
      );

  static DtOrderStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'company_id': _companyId,
        'department_id': _departmentId,
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
        'department_id': serializeParam(
          _departmentId,
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

  static DtOrderStatusStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderStatusStruct(
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
        departmentId: deserializeParam(
          data['department_id'],
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
  String toString() => 'DtOrderStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderStatusStruct &&
        id == other.id &&
        companyId == other.companyId &&
        departmentId == other.departmentId &&
        code == other.code &&
        description == other.description &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, companyId, departmentId, code, description, isAvailable]);
}

DtOrderStatusStruct createDtOrderStatusStruct({
  int? id,
  int? companyId,
  int? departmentId,
  String? code,
  String? description,
  bool? isAvailable,
}) =>
    DtOrderStatusStruct(
      id: id,
      companyId: companyId,
      departmentId: departmentId,
      code: code,
      description: description,
      isAvailable: isAvailable,
    );

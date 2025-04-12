// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAssetTypeStruct extends BaseStruct {
  DtAssetTypeStruct({
    int? id,
    int? companyId,
    String? code,
    String? description,
    bool? isAvailable,
  })  : _id = id,
        _companyId = companyId,
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

  static DtAssetTypeStruct fromMap(Map<String, dynamic> data) =>
      DtAssetTypeStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['company_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isAvailable: data['is_available'] as bool?,
      );

  static DtAssetTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? DtAssetTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'company_id': _companyId,
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

  static DtAssetTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtAssetTypeStruct(
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
  String toString() => 'DtAssetTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAssetTypeStruct &&
        id == other.id &&
        companyId == other.companyId &&
        code == other.code &&
        description == other.description &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, companyId, code, description, isAvailable]);
}

DtAssetTypeStruct createDtAssetTypeStruct({
  int? id,
  int? companyId,
  String? code,
  String? description,
  bool? isAvailable,
}) =>
    DtAssetTypeStruct(
      id: id,
      companyId: companyId,
      code: code,
      description: description,
      isAvailable: isAvailable,
    );

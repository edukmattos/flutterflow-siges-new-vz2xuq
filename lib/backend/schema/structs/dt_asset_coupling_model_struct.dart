// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAssetCouplingModelStruct extends BaseStruct {
  DtAssetCouplingModelStruct({
    int? id,
    String? code,
    String? description,
    bool? isAvailable,
    bool? isDeleted,
    String? versionMode,
  })  : _id = id,
        _code = code,
        _description = description,
        _isAvailable = isAvailable,
        _isDeleted = isDeleted,
        _versionMode = versionMode;

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

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtAssetCouplingModelStruct fromMap(Map<String, dynamic> data) =>
      DtAssetCouplingModelStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isAvailable: data['is_available'] as bool?,
        isDeleted: data['is_deleted'] as bool?,
        versionMode: data['version_mode'] as String?,
      );

  static DtAssetCouplingModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DtAssetCouplingModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'is_available': _isAvailable,
        'is_deleted': _isDeleted,
        'version_mode': _versionMode,
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
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtAssetCouplingModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtAssetCouplingModelStruct(
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
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtAssetCouplingModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAssetCouplingModelStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        isAvailable == other.isAvailable &&
        isDeleted == other.isDeleted &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, code, description, isAvailable, isDeleted, versionMode]);
}

DtAssetCouplingModelStruct createDtAssetCouplingModelStruct({
  int? id,
  String? code,
  String? description,
  bool? isAvailable,
  bool? isDeleted,
  String? versionMode,
}) =>
    DtAssetCouplingModelStruct(
      id: id,
      code: code,
      description: description,
      isAvailable: isAvailable,
      isDeleted: isDeleted,
      versionMode: versionMode,
    );

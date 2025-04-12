// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAssetFollowerStruct extends BaseStruct {
  DtAssetFollowerStruct({
    int? id,
    int? userId,
    int? assetId,
    String? versionMode,
  })  : _id = id,
        _userId = userId,
        _assetId = assetId,
        _versionMode = versionMode;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "asset_id" field.
  int? _assetId;
  int get assetId => _assetId ?? 0;
  set assetId(int? val) => _assetId = val;

  void incrementAssetId(int amount) => assetId = assetId + amount;

  bool hasAssetId() => _assetId != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtAssetFollowerStruct fromMap(Map<String, dynamic> data) =>
      DtAssetFollowerStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        assetId: castToType<int>(data['asset_id']),
        versionMode: data['version_mode'] as String?,
      );

  static DtAssetFollowerStruct? maybeFromMap(dynamic data) => data is Map
      ? DtAssetFollowerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'asset_id': _assetId,
        'version_mode': _versionMode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'asset_id': serializeParam(
          _assetId,
          ParamType.int,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtAssetFollowerStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtAssetFollowerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        assetId: deserializeParam(
          data['asset_id'],
          ParamType.int,
          false,
        ),
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtAssetFollowerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAssetFollowerStruct &&
        id == other.id &&
        userId == other.userId &&
        assetId == other.assetId &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, userId, assetId, versionMode]);
}

DtAssetFollowerStruct createDtAssetFollowerStruct({
  int? id,
  int? userId,
  int? assetId,
  String? versionMode,
}) =>
    DtAssetFollowerStruct(
      id: id,
      userId: userId,
      assetId: assetId,
      versionMode: versionMode,
    );

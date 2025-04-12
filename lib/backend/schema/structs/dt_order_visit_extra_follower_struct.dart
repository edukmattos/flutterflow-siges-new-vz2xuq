// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitExtraFollowerStruct extends BaseStruct {
  DtOrderVisitExtraFollowerStruct({
    int? id,
    int? userId,
    int? oveId,
    String? versionMode,
  })  : _id = id,
        _userId = userId,
        _oveId = oveId,
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

  // "ove_id" field.
  int? _oveId;
  int get oveId => _oveId ?? 0;
  set oveId(int? val) => _oveId = val;

  void incrementOveId(int amount) => oveId = oveId + amount;

  bool hasOveId() => _oveId != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtOrderVisitExtraFollowerStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitExtraFollowerStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        oveId: castToType<int>(data['ove_id']),
        versionMode: data['version_mode'] as String?,
      );

  static DtOrderVisitExtraFollowerStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DtOrderVisitExtraFollowerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'ove_id': _oveId,
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
        'ove_id': serializeParam(
          _oveId,
          ParamType.int,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitExtraFollowerStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitExtraFollowerStruct(
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
        oveId: deserializeParam(
          data['ove_id'],
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
  String toString() => 'DtOrderVisitExtraFollowerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitExtraFollowerStruct &&
        id == other.id &&
        userId == other.userId &&
        oveId == other.oveId &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, userId, oveId, versionMode]);
}

DtOrderVisitExtraFollowerStruct createDtOrderVisitExtraFollowerStruct({
  int? id,
  int? userId,
  int? oveId,
  String? versionMode,
}) =>
    DtOrderVisitExtraFollowerStruct(
      id: id,
      userId: userId,
      oveId: oveId,
      versionMode: versionMode,
    );

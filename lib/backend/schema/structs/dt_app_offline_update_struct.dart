// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAppOfflineUpdateStruct extends BaseStruct {
  DtAppOfflineUpdateStruct({
    int? id,
    String? tableName,
    String? versionOffline,
    String? updatedAt,
  })  : _id = id,
        _tableName = tableName,
        _versionOffline = versionOffline,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "table_name" field.
  String? _tableName;
  String get tableName => _tableName ?? '';
  set tableName(String? val) => _tableName = val;

  bool hasTableName() => _tableName != null;

  // "version_offline" field.
  String? _versionOffline;
  String get versionOffline => _versionOffline ?? '';
  set versionOffline(String? val) => _versionOffline = val;

  bool hasVersionOffline() => _versionOffline != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static DtAppOfflineUpdateStruct fromMap(Map<String, dynamic> data) =>
      DtAppOfflineUpdateStruct(
        id: castToType<int>(data['id']),
        tableName: data['table_name'] as String?,
        versionOffline: data['version_offline'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static DtAppOfflineUpdateStruct? maybeFromMap(dynamic data) => data is Map
      ? DtAppOfflineUpdateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'table_name': _tableName,
        'version_offline': _versionOffline,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'table_name': serializeParam(
          _tableName,
          ParamType.String,
        ),
        'version_offline': serializeParam(
          _versionOffline,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtAppOfflineUpdateStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtAppOfflineUpdateStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        tableName: deserializeParam(
          data['table_name'],
          ParamType.String,
          false,
        ),
        versionOffline: deserializeParam(
          data['version_offline'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtAppOfflineUpdateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAppOfflineUpdateStruct &&
        id == other.id &&
        tableName == other.tableName &&
        versionOffline == other.versionOffline &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, tableName, versionOffline, updatedAt]);
}

DtAppOfflineUpdateStruct createDtAppOfflineUpdateStruct({
  int? id,
  String? tableName,
  String? versionOffline,
  String? updatedAt,
}) =>
    DtAppOfflineUpdateStruct(
      id: id,
      tableName: tableName,
      versionOffline: versionOffline,
      updatedAt: updatedAt,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtTechnicalManualTypeStruct extends BaseStruct {
  DtTechnicalManualTypeStruct({
    int? id,
    String? description,
    String? versionMode,
  })  : _id = id,
        _description = description,
        _versionMode = versionMode;

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

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtTechnicalManualTypeStruct fromMap(Map<String, dynamic> data) =>
      DtTechnicalManualTypeStruct(
        id: castToType<int>(data['id']),
        description: data['description'] as String?,
        versionMode: data['version_mode'] as String?,
      );

  static DtTechnicalManualTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? DtTechnicalManualTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'version_mode': _versionMode,
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
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtTechnicalManualTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtTechnicalManualTypeStruct(
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
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtTechnicalManualTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtTechnicalManualTypeStruct &&
        id == other.id &&
        description == other.description &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality().hash([id, description, versionMode]);
}

DtTechnicalManualTypeStruct createDtTechnicalManualTypeStruct({
  int? id,
  String? description,
  String? versionMode,
}) =>
    DtTechnicalManualTypeStruct(
      id: id,
      description: description,
      versionMode: versionMode,
    );

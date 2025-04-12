// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtActivityStruct extends BaseStruct {
  DtActivityStruct({
    int? id,
    String? description,
    bool? isAvailable,
    String? versionMode,
  })  : _id = id,
        _description = description,
        _isAvailable = isAvailable,
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

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtActivityStruct fromMap(Map<String, dynamic> data) =>
      DtActivityStruct(
        id: castToType<int>(data['id']),
        description: data['description'] as String?,
        isAvailable: data['is_available'] as bool?,
        versionMode: data['version_mode'] as String?,
      );

  static DtActivityStruct? maybeFromMap(dynamic data) => data is Map
      ? DtActivityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'is_available': _isAvailable,
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
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtActivityStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtActivityStruct(
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
        isAvailable: deserializeParam(
          data['is_available'],
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
  String toString() => 'DtActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtActivityStruct &&
        id == other.id &&
        description == other.description &&
        isAvailable == other.isAvailable &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, description, isAvailable, versionMode]);
}

DtActivityStruct createDtActivityStruct({
  int? id,
  String? description,
  bool? isAvailable,
  String? versionMode,
}) =>
    DtActivityStruct(
      id: id,
      description: description,
      isAvailable: isAvailable,
      versionMode: versionMode,
    );

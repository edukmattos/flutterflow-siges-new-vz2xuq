// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderTypeActivityStruct extends BaseStruct {
  DtOrderTypeActivityStruct({
    int? activityId,
    String? activityDescription,
    int? oTypeId,
    bool? isAvailable,
    String? versionMode,
  })  : _activityId = activityId,
        _activityDescription = activityDescription,
        _oTypeId = oTypeId,
        _isAvailable = isAvailable,
        _versionMode = versionMode;

  // "activity_id" field.
  int? _activityId;
  int get activityId => _activityId ?? 0;
  set activityId(int? val) => _activityId = val;

  void incrementActivityId(int amount) => activityId = activityId + amount;

  bool hasActivityId() => _activityId != null;

  // "activity_description" field.
  String? _activityDescription;
  String get activityDescription => _activityDescription ?? '';
  set activityDescription(String? val) => _activityDescription = val;

  bool hasActivityDescription() => _activityDescription != null;

  // "o_type_id" field.
  int? _oTypeId;
  int get oTypeId => _oTypeId ?? 0;
  set oTypeId(int? val) => _oTypeId = val;

  void incrementOTypeId(int amount) => oTypeId = oTypeId + amount;

  bool hasOTypeId() => _oTypeId != null;

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

  static DtOrderTypeActivityStruct fromMap(Map<String, dynamic> data) =>
      DtOrderTypeActivityStruct(
        activityId: castToType<int>(data['activity_id']),
        activityDescription: data['activity_description'] as String?,
        oTypeId: castToType<int>(data['o_type_id']),
        isAvailable: data['is_available'] as bool?,
        versionMode: data['version_mode'] as String?,
      );

  static DtOrderTypeActivityStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderTypeActivityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'activity_id': _activityId,
        'activity_description': _activityDescription,
        'o_type_id': _oTypeId,
        'is_available': _isAvailable,
        'version_mode': _versionMode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'activity_id': serializeParam(
          _activityId,
          ParamType.int,
        ),
        'activity_description': serializeParam(
          _activityDescription,
          ParamType.String,
        ),
        'o_type_id': serializeParam(
          _oTypeId,
          ParamType.int,
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

  static DtOrderTypeActivityStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderTypeActivityStruct(
        activityId: deserializeParam(
          data['activity_id'],
          ParamType.int,
          false,
        ),
        activityDescription: deserializeParam(
          data['activity_description'],
          ParamType.String,
          false,
        ),
        oTypeId: deserializeParam(
          data['o_type_id'],
          ParamType.int,
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
  String toString() => 'DtOrderTypeActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderTypeActivityStruct &&
        activityId == other.activityId &&
        activityDescription == other.activityDescription &&
        oTypeId == other.oTypeId &&
        isAvailable == other.isAvailable &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [activityId, activityDescription, oTypeId, isAvailable, versionMode]);
}

DtOrderTypeActivityStruct createDtOrderTypeActivityStruct({
  int? activityId,
  String? activityDescription,
  int? oTypeId,
  bool? isAvailable,
  String? versionMode,
}) =>
    DtOrderTypeActivityStruct(
      activityId: activityId,
      activityDescription: activityDescription,
      oTypeId: oTypeId,
      isAvailable: isAvailable,
      versionMode: versionMode,
    );

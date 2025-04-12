// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitAssetActivityStruct extends BaseStruct {
  DtOrderVisitAssetActivityStruct({
    int? id,
    int? activityId,
    String? description,
    int? amount,
    int? oId,
    int? opId,
    int? ovAssetId,
    int? ovId,
    String? version,
  })  : _id = id,
        _activityId = activityId,
        _description = description,
        _amount = amount,
        _oId = oId,
        _opId = opId,
        _ovAssetId = ovAssetId,
        _ovId = ovId,
        _version = version;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "activity_id" field.
  int? _activityId;
  int get activityId => _activityId ?? 0;
  set activityId(int? val) => _activityId = val;

  void incrementActivityId(int amount) => activityId = activityId + amount;

  bool hasActivityId() => _activityId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "o_id" field.
  int? _oId;
  int get oId => _oId ?? 0;
  set oId(int? val) => _oId = val;

  void incrementOId(int amount) => oId = oId + amount;

  bool hasOId() => _oId != null;

  // "op_id" field.
  int? _opId;
  int get opId => _opId ?? 0;
  set opId(int? val) => _opId = val;

  void incrementOpId(int amount) => opId = opId + amount;

  bool hasOpId() => _opId != null;

  // "ov_asset_id" field.
  int? _ovAssetId;
  int get ovAssetId => _ovAssetId ?? 0;
  set ovAssetId(int? val) => _ovAssetId = val;

  void incrementOvAssetId(int amount) => ovAssetId = ovAssetId + amount;

  bool hasOvAssetId() => _ovAssetId != null;

  // "ov_id" field.
  int? _ovId;
  int get ovId => _ovId ?? 0;
  set ovId(int? val) => _ovId = val;

  void incrementOvId(int amount) => ovId = ovId + amount;

  bool hasOvId() => _ovId != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  static DtOrderVisitAssetActivityStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitAssetActivityStruct(
        id: castToType<int>(data['id']),
        activityId: castToType<int>(data['activity_id']),
        description: data['description'] as String?,
        amount: castToType<int>(data['amount']),
        oId: castToType<int>(data['o_id']),
        opId: castToType<int>(data['op_id']),
        ovAssetId: castToType<int>(data['ov_asset_id']),
        ovId: castToType<int>(data['ov_id']),
        version: data['version'] as String?,
      );

  static DtOrderVisitAssetActivityStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DtOrderVisitAssetActivityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'activity_id': _activityId,
        'description': _description,
        'amount': _amount,
        'o_id': _oId,
        'op_id': _opId,
        'ov_asset_id': _ovAssetId,
        'ov_id': _ovId,
        'version': _version,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'activity_id': serializeParam(
          _activityId,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'o_id': serializeParam(
          _oId,
          ParamType.int,
        ),
        'op_id': serializeParam(
          _opId,
          ParamType.int,
        ),
        'ov_asset_id': serializeParam(
          _ovAssetId,
          ParamType.int,
        ),
        'ov_id': serializeParam(
          _ovId,
          ParamType.int,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitAssetActivityStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitAssetActivityStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        activityId: deserializeParam(
          data['activity_id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        oId: deserializeParam(
          data['o_id'],
          ParamType.int,
          false,
        ),
        opId: deserializeParam(
          data['op_id'],
          ParamType.int,
          false,
        ),
        ovAssetId: deserializeParam(
          data['ov_asset_id'],
          ParamType.int,
          false,
        ),
        ovId: deserializeParam(
          data['ov_id'],
          ParamType.int,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitAssetActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitAssetActivityStruct &&
        id == other.id &&
        activityId == other.activityId &&
        description == other.description &&
        amount == other.amount &&
        oId == other.oId &&
        opId == other.opId &&
        ovAssetId == other.ovAssetId &&
        ovId == other.ovId &&
        version == other.version;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        activityId,
        description,
        amount,
        oId,
        opId,
        ovAssetId,
        ovId,
        version
      ]);
}

DtOrderVisitAssetActivityStruct createDtOrderVisitAssetActivityStruct({
  int? id,
  int? activityId,
  String? description,
  int? amount,
  int? oId,
  int? opId,
  int? ovAssetId,
  int? ovId,
  String? version,
}) =>
    DtOrderVisitAssetActivityStruct(
      id: id,
      activityId: activityId,
      description: description,
      amount: amount,
      oId: oId,
      opId: opId,
      ovAssetId: ovAssetId,
      ovId: ovId,
      version: version,
    );

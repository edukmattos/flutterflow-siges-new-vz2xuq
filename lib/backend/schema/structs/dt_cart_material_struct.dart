// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtCartMaterialStruct extends BaseStruct {
  DtCartMaterialStruct({
    int? ovaId,
    int? userId,
    int? id,
    String? code,
    String? description,
    double? amount,
    String? unit,
    String? versionMode,
  })  : _ovaId = ovaId,
        _userId = userId,
        _id = id,
        _code = code,
        _description = description,
        _amount = amount,
        _unit = unit,
        _versionMode = versionMode;

  // "ova_id" field.
  int? _ovaId;
  int get ovaId => _ovaId ?? 0;
  set ovaId(int? val) => _ovaId = val;

  void incrementOvaId(int amount) => ovaId = ovaId + amount;

  bool hasOvaId() => _ovaId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

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

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtCartMaterialStruct fromMap(Map<String, dynamic> data) =>
      DtCartMaterialStruct(
        ovaId: castToType<int>(data['ova_id']),
        userId: castToType<int>(data['user_id']),
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        amount: castToType<double>(data['amount']),
        unit: data['unit'] as String?,
        versionMode: data['version_mode'] as String?,
      );

  static DtCartMaterialStruct? maybeFromMap(dynamic data) => data is Map
      ? DtCartMaterialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ova_id': _ovaId,
        'user_id': _userId,
        'id': _id,
        'code': _code,
        'description': _description,
        'amount': _amount,
        'unit': _unit,
        'version_mode': _versionMode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ova_id': serializeParam(
          _ovaId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
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
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtCartMaterialStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtCartMaterialStruct(
        ovaId: deserializeParam(
          data['ova_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
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
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
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
  String toString() => 'DtCartMaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtCartMaterialStruct &&
        ovaId == other.ovaId &&
        userId == other.userId &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        amount == other.amount &&
        unit == other.unit &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([ovaId, userId, id, code, description, amount, unit, versionMode]);
}

DtCartMaterialStruct createDtCartMaterialStruct({
  int? ovaId,
  int? userId,
  int? id,
  String? code,
  String? description,
  double? amount,
  String? unit,
  String? versionMode,
}) =>
    DtCartMaterialStruct(
      ovaId: ovaId,
      userId: userId,
      id: id,
      code: code,
      description: description,
      amount: amount,
      unit: unit,
      versionMode: versionMode,
    );

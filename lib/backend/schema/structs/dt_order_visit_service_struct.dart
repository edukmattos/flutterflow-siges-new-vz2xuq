// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitServiceStruct extends BaseStruct {
  DtOrderVisitServiceStruct({
    int? id,
    int? ovId,
    String? code,
    String? description,
    String? unit,
    double? amount,
    double? valueUnit,
    double? discount,
    double? valueTotal,
    String? versionMode,
  })  : _id = id,
        _ovId = ovId,
        _code = code,
        _description = description,
        _unit = unit,
        _amount = amount,
        _valueUnit = valueUnit,
        _discount = discount,
        _valueTotal = valueTotal,
        _versionMode = versionMode;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "ov_id" field.
  int? _ovId;
  int get ovId => _ovId ?? 0;
  set ovId(int? val) => _ovId = val;

  void incrementOvId(int amount) => ovId = ovId + amount;

  bool hasOvId() => _ovId != null;

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

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "value_unit" field.
  double? _valueUnit;
  double get valueUnit => _valueUnit ?? 0.0;
  set valueUnit(double? val) => _valueUnit = val;

  void incrementValueUnit(double amount) => valueUnit = valueUnit + amount;

  bool hasValueUnit() => _valueUnit != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "value_total" field.
  double? _valueTotal;
  double get valueTotal => _valueTotal ?? 0.0;
  set valueTotal(double? val) => _valueTotal = val;

  void incrementValueTotal(double amount) => valueTotal = valueTotal + amount;

  bool hasValueTotal() => _valueTotal != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtOrderVisitServiceStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitServiceStruct(
        id: castToType<int>(data['id']),
        ovId: castToType<int>(data['ov_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        unit: data['unit'] as String?,
        amount: castToType<double>(data['amount']),
        valueUnit: castToType<double>(data['value_unit']),
        discount: castToType<double>(data['discount']),
        valueTotal: castToType<double>(data['value_total']),
        versionMode: data['version_mode'] as String?,
      );

  static DtOrderVisitServiceStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitServiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'ov_id': _ovId,
        'code': _code,
        'description': _description,
        'unit': _unit,
        'amount': _amount,
        'value_unit': _valueUnit,
        'discount': _discount,
        'value_total': _valueTotal,
        'version_mode': _versionMode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'ov_id': serializeParam(
          _ovId,
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
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'value_unit': serializeParam(
          _valueUnit,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'value_total': serializeParam(
          _valueTotal,
          ParamType.double,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitServiceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitServiceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        ovId: deserializeParam(
          data['ov_id'],
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
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        valueUnit: deserializeParam(
          data['value_unit'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        valueTotal: deserializeParam(
          data['value_total'],
          ParamType.double,
          false,
        ),
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitServiceStruct &&
        id == other.id &&
        ovId == other.ovId &&
        code == other.code &&
        description == other.description &&
        unit == other.unit &&
        amount == other.amount &&
        valueUnit == other.valueUnit &&
        discount == other.discount &&
        valueTotal == other.valueTotal &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        ovId,
        code,
        description,
        unit,
        amount,
        valueUnit,
        discount,
        valueTotal,
        versionMode
      ]);
}

DtOrderVisitServiceStruct createDtOrderVisitServiceStruct({
  int? id,
  int? ovId,
  String? code,
  String? description,
  String? unit,
  double? amount,
  double? valueUnit,
  double? discount,
  double? valueTotal,
  String? versionMode,
}) =>
    DtOrderVisitServiceStruct(
      id: id,
      ovId: ovId,
      code: code,
      description: description,
      unit: unit,
      amount: amount,
      valueUnit: valueUnit,
      discount: discount,
      valueTotal: valueTotal,
      versionMode: versionMode,
    );

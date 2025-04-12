// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitVehicleStruct extends BaseStruct {
  DtOrderVisitVehicleStruct({
    int? id,
    int? ovId,
    int? vehicleId,
    String? vehicleDescription,
    String? vehiclePlates,
    int? recorderStart,
    int? recorderEnd,
    String? unit,
    double? amount,
    double? valueUnit,
    double? discount,
    double? valueTotal,
    String? versionMode,
  })  : _id = id,
        _ovId = ovId,
        _vehicleId = vehicleId,
        _vehicleDescription = vehicleDescription,
        _vehiclePlates = vehiclePlates,
        _recorderStart = recorderStart,
        _recorderEnd = recorderEnd,
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

  // "vehicle_id" field.
  int? _vehicleId;
  int get vehicleId => _vehicleId ?? 0;
  set vehicleId(int? val) => _vehicleId = val;

  void incrementVehicleId(int amount) => vehicleId = vehicleId + amount;

  bool hasVehicleId() => _vehicleId != null;

  // "vehicle_description" field.
  String? _vehicleDescription;
  String get vehicleDescription => _vehicleDescription ?? '';
  set vehicleDescription(String? val) => _vehicleDescription = val;

  bool hasVehicleDescription() => _vehicleDescription != null;

  // "vehicle_plates" field.
  String? _vehiclePlates;
  String get vehiclePlates => _vehiclePlates ?? '';
  set vehiclePlates(String? val) => _vehiclePlates = val;

  bool hasVehiclePlates() => _vehiclePlates != null;

  // "recorder_start" field.
  int? _recorderStart;
  int get recorderStart => _recorderStart ?? 0;
  set recorderStart(int? val) => _recorderStart = val;

  void incrementRecorderStart(int amount) =>
      recorderStart = recorderStart + amount;

  bool hasRecorderStart() => _recorderStart != null;

  // "recorder_end" field.
  int? _recorderEnd;
  int get recorderEnd => _recorderEnd ?? 0;
  set recorderEnd(int? val) => _recorderEnd = val;

  void incrementRecorderEnd(int amount) => recorderEnd = recorderEnd + amount;

  bool hasRecorderEnd() => _recorderEnd != null;

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

  static DtOrderVisitVehicleStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitVehicleStruct(
        id: castToType<int>(data['id']),
        ovId: castToType<int>(data['ov_id']),
        vehicleId: castToType<int>(data['vehicle_id']),
        vehicleDescription: data['vehicle_description'] as String?,
        vehiclePlates: data['vehicle_plates'] as String?,
        recorderStart: castToType<int>(data['recorder_start']),
        recorderEnd: castToType<int>(data['recorder_end']),
        unit: data['unit'] as String?,
        amount: castToType<double>(data['amount']),
        valueUnit: castToType<double>(data['value_unit']),
        discount: castToType<double>(data['discount']),
        valueTotal: castToType<double>(data['value_total']),
        versionMode: data['version_mode'] as String?,
      );

  static DtOrderVisitVehicleStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitVehicleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'ov_id': _ovId,
        'vehicle_id': _vehicleId,
        'vehicle_description': _vehicleDescription,
        'vehicle_plates': _vehiclePlates,
        'recorder_start': _recorderStart,
        'recorder_end': _recorderEnd,
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
        'vehicle_id': serializeParam(
          _vehicleId,
          ParamType.int,
        ),
        'vehicle_description': serializeParam(
          _vehicleDescription,
          ParamType.String,
        ),
        'vehicle_plates': serializeParam(
          _vehiclePlates,
          ParamType.String,
        ),
        'recorder_start': serializeParam(
          _recorderStart,
          ParamType.int,
        ),
        'recorder_end': serializeParam(
          _recorderEnd,
          ParamType.int,
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

  static DtOrderVisitVehicleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitVehicleStruct(
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
        vehicleId: deserializeParam(
          data['vehicle_id'],
          ParamType.int,
          false,
        ),
        vehicleDescription: deserializeParam(
          data['vehicle_description'],
          ParamType.String,
          false,
        ),
        vehiclePlates: deserializeParam(
          data['vehicle_plates'],
          ParamType.String,
          false,
        ),
        recorderStart: deserializeParam(
          data['recorder_start'],
          ParamType.int,
          false,
        ),
        recorderEnd: deserializeParam(
          data['recorder_end'],
          ParamType.int,
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
  String toString() => 'DtOrderVisitVehicleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitVehicleStruct &&
        id == other.id &&
        ovId == other.ovId &&
        vehicleId == other.vehicleId &&
        vehicleDescription == other.vehicleDescription &&
        vehiclePlates == other.vehiclePlates &&
        recorderStart == other.recorderStart &&
        recorderEnd == other.recorderEnd &&
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
        vehicleId,
        vehicleDescription,
        vehiclePlates,
        recorderStart,
        recorderEnd,
        unit,
        amount,
        valueUnit,
        discount,
        valueTotal,
        versionMode
      ]);
}

DtOrderVisitVehicleStruct createDtOrderVisitVehicleStruct({
  int? id,
  int? ovId,
  int? vehicleId,
  String? vehicleDescription,
  String? vehiclePlates,
  int? recorderStart,
  int? recorderEnd,
  String? unit,
  double? amount,
  double? valueUnit,
  double? discount,
  double? valueTotal,
  String? versionMode,
}) =>
    DtOrderVisitVehicleStruct(
      id: id,
      ovId: ovId,
      vehicleId: vehicleId,
      vehicleDescription: vehicleDescription,
      vehiclePlates: vehiclePlates,
      recorderStart: recorderStart,
      recorderEnd: recorderEnd,
      unit: unit,
      amount: amount,
      valueUnit: valueUnit,
      discount: discount,
      valueTotal: valueTotal,
      versionMode: versionMode,
    );

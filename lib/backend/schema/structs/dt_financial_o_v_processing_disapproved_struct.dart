// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtFinancialOVProcessingDisapprovedStruct extends BaseStruct {
  DtFinancialOVProcessingDisapprovedStruct({
    double? servicesValue,
    List<int>? servicesOvIds,
    double? materialsValue,
    List<int>? materialsOvIds,
    double? vehiclesValue,
    List<int>? vehiclesOvIds,
    double? totalValue,
    List<int>? ovIds,
    int? ovsCounter,
  })  : _servicesValue = servicesValue,
        _servicesOvIds = servicesOvIds,
        _materialsValue = materialsValue,
        _materialsOvIds = materialsOvIds,
        _vehiclesValue = vehiclesValue,
        _vehiclesOvIds = vehiclesOvIds,
        _totalValue = totalValue,
        _ovIds = ovIds,
        _ovsCounter = ovsCounter;

  // "services_value" field.
  double? _servicesValue;
  double get servicesValue => _servicesValue ?? 0.0;
  set servicesValue(double? val) => _servicesValue = val;

  void incrementServicesValue(double amount) =>
      servicesValue = servicesValue + amount;

  bool hasServicesValue() => _servicesValue != null;

  // "services_ov_ids" field.
  List<int>? _servicesOvIds;
  List<int> get servicesOvIds => _servicesOvIds ?? const [];
  set servicesOvIds(List<int>? val) => _servicesOvIds = val;

  void updateServicesOvIds(Function(List<int>) updateFn) {
    updateFn(_servicesOvIds ??= []);
  }

  bool hasServicesOvIds() => _servicesOvIds != null;

  // "materials_value" field.
  double? _materialsValue;
  double get materialsValue => _materialsValue ?? 0.0;
  set materialsValue(double? val) => _materialsValue = val;

  void incrementMaterialsValue(double amount) =>
      materialsValue = materialsValue + amount;

  bool hasMaterialsValue() => _materialsValue != null;

  // "materials_ov_ids" field.
  List<int>? _materialsOvIds;
  List<int> get materialsOvIds => _materialsOvIds ?? const [];
  set materialsOvIds(List<int>? val) => _materialsOvIds = val;

  void updateMaterialsOvIds(Function(List<int>) updateFn) {
    updateFn(_materialsOvIds ??= []);
  }

  bool hasMaterialsOvIds() => _materialsOvIds != null;

  // "vehicles_value" field.
  double? _vehiclesValue;
  double get vehiclesValue => _vehiclesValue ?? 0.0;
  set vehiclesValue(double? val) => _vehiclesValue = val;

  void incrementVehiclesValue(double amount) =>
      vehiclesValue = vehiclesValue + amount;

  bool hasVehiclesValue() => _vehiclesValue != null;

  // "vehicles_ov_ids" field.
  List<int>? _vehiclesOvIds;
  List<int> get vehiclesOvIds => _vehiclesOvIds ?? const [];
  set vehiclesOvIds(List<int>? val) => _vehiclesOvIds = val;

  void updateVehiclesOvIds(Function(List<int>) updateFn) {
    updateFn(_vehiclesOvIds ??= []);
  }

  bool hasVehiclesOvIds() => _vehiclesOvIds != null;

  // "total_value" field.
  double? _totalValue;
  double get totalValue => _totalValue ?? 0.0;
  set totalValue(double? val) => _totalValue = val;

  void incrementTotalValue(double amount) => totalValue = totalValue + amount;

  bool hasTotalValue() => _totalValue != null;

  // "ov_ids" field.
  List<int>? _ovIds;
  List<int> get ovIds => _ovIds ?? const [];
  set ovIds(List<int>? val) => _ovIds = val;

  void updateOvIds(Function(List<int>) updateFn) {
    updateFn(_ovIds ??= []);
  }

  bool hasOvIds() => _ovIds != null;

  // "ovs_counter" field.
  int? _ovsCounter;
  int get ovsCounter => _ovsCounter ?? 0;
  set ovsCounter(int? val) => _ovsCounter = val;

  void incrementOvsCounter(int amount) => ovsCounter = ovsCounter + amount;

  bool hasOvsCounter() => _ovsCounter != null;

  static DtFinancialOVProcessingDisapprovedStruct fromMap(
          Map<String, dynamic> data) =>
      DtFinancialOVProcessingDisapprovedStruct(
        servicesValue: castToType<double>(data['services_value']),
        servicesOvIds: getDataList(data['services_ov_ids']),
        materialsValue: castToType<double>(data['materials_value']),
        materialsOvIds: getDataList(data['materials_ov_ids']),
        vehiclesValue: castToType<double>(data['vehicles_value']),
        vehiclesOvIds: getDataList(data['vehicles_ov_ids']),
        totalValue: castToType<double>(data['total_value']),
        ovIds: getDataList(data['ov_ids']),
        ovsCounter: castToType<int>(data['ovs_counter']),
      );

  static DtFinancialOVProcessingDisapprovedStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DtFinancialOVProcessingDisapprovedStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'services_value': _servicesValue,
        'services_ov_ids': _servicesOvIds,
        'materials_value': _materialsValue,
        'materials_ov_ids': _materialsOvIds,
        'vehicles_value': _vehiclesValue,
        'vehicles_ov_ids': _vehiclesOvIds,
        'total_value': _totalValue,
        'ov_ids': _ovIds,
        'ovs_counter': _ovsCounter,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'services_value': serializeParam(
          _servicesValue,
          ParamType.double,
        ),
        'services_ov_ids': serializeParam(
          _servicesOvIds,
          ParamType.int,
          isList: true,
        ),
        'materials_value': serializeParam(
          _materialsValue,
          ParamType.double,
        ),
        'materials_ov_ids': serializeParam(
          _materialsOvIds,
          ParamType.int,
          isList: true,
        ),
        'vehicles_value': serializeParam(
          _vehiclesValue,
          ParamType.double,
        ),
        'vehicles_ov_ids': serializeParam(
          _vehiclesOvIds,
          ParamType.int,
          isList: true,
        ),
        'total_value': serializeParam(
          _totalValue,
          ParamType.double,
        ),
        'ov_ids': serializeParam(
          _ovIds,
          ParamType.int,
          isList: true,
        ),
        'ovs_counter': serializeParam(
          _ovsCounter,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtFinancialOVProcessingDisapprovedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtFinancialOVProcessingDisapprovedStruct(
        servicesValue: deserializeParam(
          data['services_value'],
          ParamType.double,
          false,
        ),
        servicesOvIds: deserializeParam<int>(
          data['services_ov_ids'],
          ParamType.int,
          true,
        ),
        materialsValue: deserializeParam(
          data['materials_value'],
          ParamType.double,
          false,
        ),
        materialsOvIds: deserializeParam<int>(
          data['materials_ov_ids'],
          ParamType.int,
          true,
        ),
        vehiclesValue: deserializeParam(
          data['vehicles_value'],
          ParamType.double,
          false,
        ),
        vehiclesOvIds: deserializeParam<int>(
          data['vehicles_ov_ids'],
          ParamType.int,
          true,
        ),
        totalValue: deserializeParam(
          data['total_value'],
          ParamType.double,
          false,
        ),
        ovIds: deserializeParam<int>(
          data['ov_ids'],
          ParamType.int,
          true,
        ),
        ovsCounter: deserializeParam(
          data['ovs_counter'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtFinancialOVProcessingDisapprovedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DtFinancialOVProcessingDisapprovedStruct &&
        servicesValue == other.servicesValue &&
        listEquality.equals(servicesOvIds, other.servicesOvIds) &&
        materialsValue == other.materialsValue &&
        listEquality.equals(materialsOvIds, other.materialsOvIds) &&
        vehiclesValue == other.vehiclesValue &&
        listEquality.equals(vehiclesOvIds, other.vehiclesOvIds) &&
        totalValue == other.totalValue &&
        listEquality.equals(ovIds, other.ovIds) &&
        ovsCounter == other.ovsCounter;
  }

  @override
  int get hashCode => const ListEquality().hash([
        servicesValue,
        servicesOvIds,
        materialsValue,
        materialsOvIds,
        vehiclesValue,
        vehiclesOvIds,
        totalValue,
        ovIds,
        ovsCounter
      ]);
}

DtFinancialOVProcessingDisapprovedStruct
    createDtFinancialOVProcessingDisapprovedStruct({
  double? servicesValue,
  double? materialsValue,
  double? vehiclesValue,
  double? totalValue,
  int? ovsCounter,
}) =>
        DtFinancialOVProcessingDisapprovedStruct(
          servicesValue: servicesValue,
          materialsValue: materialsValue,
          vehiclesValue: vehiclesValue,
          totalValue: totalValue,
          ovsCounter: ovsCounter,
        );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtContractServiceStruct extends BaseStruct {
  DtContractServiceStruct({
    int? id,
    int? contractId,
    int? serviceId,
    String? code,
    String? description,
    String? unit,
    double? valueUnit,
    double? discount,
    String? versionMode,
  })  : _id = id,
        _contractId = contractId,
        _serviceId = serviceId,
        _code = code,
        _description = description,
        _unit = unit,
        _valueUnit = valueUnit,
        _discount = discount,
        _versionMode = versionMode;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "contract_id" field.
  int? _contractId;
  int get contractId => _contractId ?? 0;
  set contractId(int? val) => _contractId = val;

  void incrementContractId(int amount) => contractId = contractId + amount;

  bool hasContractId() => _contractId != null;

  // "service_id" field.
  int? _serviceId;
  int get serviceId => _serviceId ?? 0;
  set serviceId(int? val) => _serviceId = val;

  void incrementServiceId(int amount) => serviceId = serviceId + amount;

  bool hasServiceId() => _serviceId != null;

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

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtContractServiceStruct fromMap(Map<String, dynamic> data) =>
      DtContractServiceStruct(
        id: castToType<int>(data['id']),
        contractId: castToType<int>(data['contract_id']),
        serviceId: castToType<int>(data['service_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        unit: data['unit'] as String?,
        valueUnit: castToType<double>(data['value_unit']),
        discount: castToType<double>(data['discount']),
        versionMode: data['version_mode'] as String?,
      );

  static DtContractServiceStruct? maybeFromMap(dynamic data) => data is Map
      ? DtContractServiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'contract_id': _contractId,
        'service_id': _serviceId,
        'code': _code,
        'description': _description,
        'unit': _unit,
        'value_unit': _valueUnit,
        'discount': _discount,
        'version_mode': _versionMode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'contract_id': serializeParam(
          _contractId,
          ParamType.int,
        ),
        'service_id': serializeParam(
          _serviceId,
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
        'value_unit': serializeParam(
          _valueUnit,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtContractServiceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtContractServiceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        contractId: deserializeParam(
          data['contract_id'],
          ParamType.int,
          false,
        ),
        serviceId: deserializeParam(
          data['service_id'],
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
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtContractServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtContractServiceStruct &&
        id == other.id &&
        contractId == other.contractId &&
        serviceId == other.serviceId &&
        code == other.code &&
        description == other.description &&
        unit == other.unit &&
        valueUnit == other.valueUnit &&
        discount == other.discount &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        contractId,
        serviceId,
        code,
        description,
        unit,
        valueUnit,
        discount,
        versionMode
      ]);
}

DtContractServiceStruct createDtContractServiceStruct({
  int? id,
  int? contractId,
  int? serviceId,
  String? code,
  String? description,
  String? unit,
  double? valueUnit,
  double? discount,
  String? versionMode,
}) =>
    DtContractServiceStruct(
      id: id,
      contractId: contractId,
      serviceId: serviceId,
      code: code,
      description: description,
      unit: unit,
      valueUnit: valueUnit,
      discount: discount,
      versionMode: versionMode,
    );

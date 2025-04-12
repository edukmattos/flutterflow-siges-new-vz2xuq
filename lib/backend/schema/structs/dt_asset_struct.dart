// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAssetStruct extends BaseStruct {
  DtAssetStruct({
    int? id,
    String? code,
    String? description,
    String? searchable,
    int? tagId,
    String? tagDescription,
    int? tagSubId,
    String? tagSubDescription,
    String? location,
    int? unitId,
    String? unitDescription,
    int? statusId,
    String? statusDescription,
    String? statusCode,
    String? statusAt,
    DateTime? statusDatetime,
    int? typeId,
    String? typeDescription,
    int? priorityId,
    String? priorityCode,
    String? priorityDescription,
    String? brand,
    String? model,
    String? serial,
    double? power,
    String? powerUnit,
    String? voltage,
    String? voltageUnit,
    String? amperage,
    String? amperageUnit,
    int? poles,
    String? polesUnit,
    int? rotation,
    String? rotationUnit,
    double? serviceFactor,
    double? pressureMax,
    double? pressureMin,
    double? pressureOperation,
    String? pressureUnit,
    double? flowRateMax,
    double? flowRateMin,
    double? flowRateOperation,
    String? flowRateUnit,
    double? rotorDiameter,
    String? rotorDiameterUnit,
    int? weight,
    String? weightUnit,
    int? couplingModelId,
    String? couplingModelDescription,
    String? comments,
    String? acquisitionAt,
    DateTime? acquisitionDatetime,
    double? acquisitionValue,
    String? imgFilePath,
    String? imgFileName,
  })  : _id = id,
        _code = code,
        _description = description,
        _searchable = searchable,
        _tagId = tagId,
        _tagDescription = tagDescription,
        _tagSubId = tagSubId,
        _tagSubDescription = tagSubDescription,
        _location = location,
        _unitId = unitId,
        _unitDescription = unitDescription,
        _statusId = statusId,
        _statusDescription = statusDescription,
        _statusCode = statusCode,
        _statusAt = statusAt,
        _statusDatetime = statusDatetime,
        _typeId = typeId,
        _typeDescription = typeDescription,
        _priorityId = priorityId,
        _priorityCode = priorityCode,
        _priorityDescription = priorityDescription,
        _brand = brand,
        _model = model,
        _serial = serial,
        _power = power,
        _powerUnit = powerUnit,
        _voltage = voltage,
        _voltageUnit = voltageUnit,
        _amperage = amperage,
        _amperageUnit = amperageUnit,
        _poles = poles,
        _polesUnit = polesUnit,
        _rotation = rotation,
        _rotationUnit = rotationUnit,
        _serviceFactor = serviceFactor,
        _pressureMax = pressureMax,
        _pressureMin = pressureMin,
        _pressureOperation = pressureOperation,
        _pressureUnit = pressureUnit,
        _flowRateMax = flowRateMax,
        _flowRateMin = flowRateMin,
        _flowRateOperation = flowRateOperation,
        _flowRateUnit = flowRateUnit,
        _rotorDiameter = rotorDiameter,
        _rotorDiameterUnit = rotorDiameterUnit,
        _weight = weight,
        _weightUnit = weightUnit,
        _couplingModelId = couplingModelId,
        _couplingModelDescription = couplingModelDescription,
        _comments = comments,
        _acquisitionAt = acquisitionAt,
        _acquisitionDatetime = acquisitionDatetime,
        _acquisitionValue = acquisitionValue,
        _imgFilePath = imgFilePath,
        _imgFileName = imgFileName;

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

  // "searchable" field.
  String? _searchable;
  String get searchable => _searchable ?? '';
  set searchable(String? val) => _searchable = val;

  bool hasSearchable() => _searchable != null;

  // "tag_id" field.
  int? _tagId;
  int get tagId => _tagId ?? 0;
  set tagId(int? val) => _tagId = val;

  void incrementTagId(int amount) => tagId = tagId + amount;

  bool hasTagId() => _tagId != null;

  // "tag_description" field.
  String? _tagDescription;
  String get tagDescription => _tagDescription ?? '';
  set tagDescription(String? val) => _tagDescription = val;

  bool hasTagDescription() => _tagDescription != null;

  // "tag_sub_id" field.
  int? _tagSubId;
  int get tagSubId => _tagSubId ?? 0;
  set tagSubId(int? val) => _tagSubId = val;

  void incrementTagSubId(int amount) => tagSubId = tagSubId + amount;

  bool hasTagSubId() => _tagSubId != null;

  // "tag_sub_description" field.
  String? _tagSubDescription;
  String get tagSubDescription => _tagSubDescription ?? '';
  set tagSubDescription(String? val) => _tagSubDescription = val;

  bool hasTagSubDescription() => _tagSubDescription != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "unit_id" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  set unitId(int? val) => _unitId = val;

  void incrementUnitId(int amount) => unitId = unitId + amount;

  bool hasUnitId() => _unitId != null;

  // "unit_description" field.
  String? _unitDescription;
  String get unitDescription => _unitDescription ?? '';
  set unitDescription(String? val) => _unitDescription = val;

  bool hasUnitDescription() => _unitDescription != null;

  // "status_id" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;

  void incrementStatusId(int amount) => statusId = statusId + amount;

  bool hasStatusId() => _statusId != null;

  // "status_description" field.
  String? _statusDescription;
  String get statusDescription => _statusDescription ?? '';
  set statusDescription(String? val) => _statusDescription = val;

  bool hasStatusDescription() => _statusDescription != null;

  // "status_code" field.
  String? _statusCode;
  String get statusCode => _statusCode ?? '';
  set statusCode(String? val) => _statusCode = val;

  bool hasStatusCode() => _statusCode != null;

  // "status_at" field.
  String? _statusAt;
  String get statusAt => _statusAt ?? '';
  set statusAt(String? val) => _statusAt = val;

  bool hasStatusAt() => _statusAt != null;

  // "status_datetime" field.
  DateTime? _statusDatetime;
  DateTime? get statusDatetime => _statusDatetime;
  set statusDatetime(DateTime? val) => _statusDatetime = val;

  bool hasStatusDatetime() => _statusDatetime != null;

  // "type_id" field.
  int? _typeId;
  int get typeId => _typeId ?? 0;
  set typeId(int? val) => _typeId = val;

  void incrementTypeId(int amount) => typeId = typeId + amount;

  bool hasTypeId() => _typeId != null;

  // "type_description" field.
  String? _typeDescription;
  String get typeDescription => _typeDescription ?? '';
  set typeDescription(String? val) => _typeDescription = val;

  bool hasTypeDescription() => _typeDescription != null;

  // "priority_id" field.
  int? _priorityId;
  int get priorityId => _priorityId ?? 0;
  set priorityId(int? val) => _priorityId = val;

  void incrementPriorityId(int amount) => priorityId = priorityId + amount;

  bool hasPriorityId() => _priorityId != null;

  // "priority_code" field.
  String? _priorityCode;
  String get priorityCode => _priorityCode ?? '';
  set priorityCode(String? val) => _priorityCode = val;

  bool hasPriorityCode() => _priorityCode != null;

  // "priority_description" field.
  String? _priorityDescription;
  String get priorityDescription => _priorityDescription ?? '';
  set priorityDescription(String? val) => _priorityDescription = val;

  bool hasPriorityDescription() => _priorityDescription != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "serial" field.
  String? _serial;
  String get serial => _serial ?? '';
  set serial(String? val) => _serial = val;

  bool hasSerial() => _serial != null;

  // "power" field.
  double? _power;
  double get power => _power ?? 0.0;
  set power(double? val) => _power = val;

  void incrementPower(double amount) => power = power + amount;

  bool hasPower() => _power != null;

  // "power_unit" field.
  String? _powerUnit;
  String get powerUnit => _powerUnit ?? '';
  set powerUnit(String? val) => _powerUnit = val;

  bool hasPowerUnit() => _powerUnit != null;

  // "voltage" field.
  String? _voltage;
  String get voltage => _voltage ?? '';
  set voltage(String? val) => _voltage = val;

  bool hasVoltage() => _voltage != null;

  // "voltage_unit" field.
  String? _voltageUnit;
  String get voltageUnit => _voltageUnit ?? '';
  set voltageUnit(String? val) => _voltageUnit = val;

  bool hasVoltageUnit() => _voltageUnit != null;

  // "amperage" field.
  String? _amperage;
  String get amperage => _amperage ?? '';
  set amperage(String? val) => _amperage = val;

  bool hasAmperage() => _amperage != null;

  // "amperage_unit" field.
  String? _amperageUnit;
  String get amperageUnit => _amperageUnit ?? '';
  set amperageUnit(String? val) => _amperageUnit = val;

  bool hasAmperageUnit() => _amperageUnit != null;

  // "poles" field.
  int? _poles;
  int get poles => _poles ?? 0;
  set poles(int? val) => _poles = val;

  void incrementPoles(int amount) => poles = poles + amount;

  bool hasPoles() => _poles != null;

  // "poles_unit" field.
  String? _polesUnit;
  String get polesUnit => _polesUnit ?? '';
  set polesUnit(String? val) => _polesUnit = val;

  bool hasPolesUnit() => _polesUnit != null;

  // "rotation" field.
  int? _rotation;
  int get rotation => _rotation ?? 0;
  set rotation(int? val) => _rotation = val;

  void incrementRotation(int amount) => rotation = rotation + amount;

  bool hasRotation() => _rotation != null;

  // "rotation_unit" field.
  String? _rotationUnit;
  String get rotationUnit => _rotationUnit ?? '';
  set rotationUnit(String? val) => _rotationUnit = val;

  bool hasRotationUnit() => _rotationUnit != null;

  // "service_factor" field.
  double? _serviceFactor;
  double get serviceFactor => _serviceFactor ?? 0.0;
  set serviceFactor(double? val) => _serviceFactor = val;

  void incrementServiceFactor(double amount) =>
      serviceFactor = serviceFactor + amount;

  bool hasServiceFactor() => _serviceFactor != null;

  // "pressure_max" field.
  double? _pressureMax;
  double get pressureMax => _pressureMax ?? 0.0;
  set pressureMax(double? val) => _pressureMax = val;

  void incrementPressureMax(double amount) =>
      pressureMax = pressureMax + amount;

  bool hasPressureMax() => _pressureMax != null;

  // "pressure_min" field.
  double? _pressureMin;
  double get pressureMin => _pressureMin ?? 0.0;
  set pressureMin(double? val) => _pressureMin = val;

  void incrementPressureMin(double amount) =>
      pressureMin = pressureMin + amount;

  bool hasPressureMin() => _pressureMin != null;

  // "pressure_operation" field.
  double? _pressureOperation;
  double get pressureOperation => _pressureOperation ?? 0.0;
  set pressureOperation(double? val) => _pressureOperation = val;

  void incrementPressureOperation(double amount) =>
      pressureOperation = pressureOperation + amount;

  bool hasPressureOperation() => _pressureOperation != null;

  // "pressure_unit" field.
  String? _pressureUnit;
  String get pressureUnit => _pressureUnit ?? '';
  set pressureUnit(String? val) => _pressureUnit = val;

  bool hasPressureUnit() => _pressureUnit != null;

  // "flow_rate_max" field.
  double? _flowRateMax;
  double get flowRateMax => _flowRateMax ?? 0.0;
  set flowRateMax(double? val) => _flowRateMax = val;

  void incrementFlowRateMax(double amount) =>
      flowRateMax = flowRateMax + amount;

  bool hasFlowRateMax() => _flowRateMax != null;

  // "flow_rate_min" field.
  double? _flowRateMin;
  double get flowRateMin => _flowRateMin ?? 0.0;
  set flowRateMin(double? val) => _flowRateMin = val;

  void incrementFlowRateMin(double amount) =>
      flowRateMin = flowRateMin + amount;

  bool hasFlowRateMin() => _flowRateMin != null;

  // "flow_rate_operation" field.
  double? _flowRateOperation;
  double get flowRateOperation => _flowRateOperation ?? 0.0;
  set flowRateOperation(double? val) => _flowRateOperation = val;

  void incrementFlowRateOperation(double amount) =>
      flowRateOperation = flowRateOperation + amount;

  bool hasFlowRateOperation() => _flowRateOperation != null;

  // "flow_rate_unit" field.
  String? _flowRateUnit;
  String get flowRateUnit => _flowRateUnit ?? '';
  set flowRateUnit(String? val) => _flowRateUnit = val;

  bool hasFlowRateUnit() => _flowRateUnit != null;

  // "rotor_diameter" field.
  double? _rotorDiameter;
  double get rotorDiameter => _rotorDiameter ?? 0.0;
  set rotorDiameter(double? val) => _rotorDiameter = val;

  void incrementRotorDiameter(double amount) =>
      rotorDiameter = rotorDiameter + amount;

  bool hasRotorDiameter() => _rotorDiameter != null;

  // "rotor_diameter_unit" field.
  String? _rotorDiameterUnit;
  String get rotorDiameterUnit => _rotorDiameterUnit ?? '';
  set rotorDiameterUnit(String? val) => _rotorDiameterUnit = val;

  bool hasRotorDiameterUnit() => _rotorDiameterUnit != null;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  set weight(int? val) => _weight = val;

  void incrementWeight(int amount) => weight = weight + amount;

  bool hasWeight() => _weight != null;

  // "weight_unit" field.
  String? _weightUnit;
  String get weightUnit => _weightUnit ?? '';
  set weightUnit(String? val) => _weightUnit = val;

  bool hasWeightUnit() => _weightUnit != null;

  // "coupling_model_id" field.
  int? _couplingModelId;
  int get couplingModelId => _couplingModelId ?? 0;
  set couplingModelId(int? val) => _couplingModelId = val;

  void incrementCouplingModelId(int amount) =>
      couplingModelId = couplingModelId + amount;

  bool hasCouplingModelId() => _couplingModelId != null;

  // "coupling_model_description" field.
  String? _couplingModelDescription;
  String get couplingModelDescription => _couplingModelDescription ?? '';
  set couplingModelDescription(String? val) => _couplingModelDescription = val;

  bool hasCouplingModelDescription() => _couplingModelDescription != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  set comments(String? val) => _comments = val;

  bool hasComments() => _comments != null;

  // "acquisition_at" field.
  String? _acquisitionAt;
  String get acquisitionAt => _acquisitionAt ?? '';
  set acquisitionAt(String? val) => _acquisitionAt = val;

  bool hasAcquisitionAt() => _acquisitionAt != null;

  // "acquisition_datetime" field.
  DateTime? _acquisitionDatetime;
  DateTime? get acquisitionDatetime => _acquisitionDatetime;
  set acquisitionDatetime(DateTime? val) => _acquisitionDatetime = val;

  bool hasAcquisitionDatetime() => _acquisitionDatetime != null;

  // "acquisition_value" field.
  double? _acquisitionValue;
  double get acquisitionValue => _acquisitionValue ?? 0.0;
  set acquisitionValue(double? val) => _acquisitionValue = val;

  void incrementAcquisitionValue(double amount) =>
      acquisitionValue = acquisitionValue + amount;

  bool hasAcquisitionValue() => _acquisitionValue != null;

  // "img_file_path" field.
  String? _imgFilePath;
  String get imgFilePath => _imgFilePath ?? '';
  set imgFilePath(String? val) => _imgFilePath = val;

  bool hasImgFilePath() => _imgFilePath != null;

  // "img_file_name" field.
  String? _imgFileName;
  String get imgFileName => _imgFileName ?? '';
  set imgFileName(String? val) => _imgFileName = val;

  bool hasImgFileName() => _imgFileName != null;

  static DtAssetStruct fromMap(Map<String, dynamic> data) => DtAssetStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        searchable: data['searchable'] as String?,
        tagId: castToType<int>(data['tag_id']),
        tagDescription: data['tag_description'] as String?,
        tagSubId: castToType<int>(data['tag_sub_id']),
        tagSubDescription: data['tag_sub_description'] as String?,
        location: data['location'] as String?,
        unitId: castToType<int>(data['unit_id']),
        unitDescription: data['unit_description'] as String?,
        statusId: castToType<int>(data['status_id']),
        statusDescription: data['status_description'] as String?,
        statusCode: data['status_code'] as String?,
        statusAt: data['status_at'] as String?,
        statusDatetime: data['status_datetime'] as DateTime?,
        typeId: castToType<int>(data['type_id']),
        typeDescription: data['type_description'] as String?,
        priorityId: castToType<int>(data['priority_id']),
        priorityCode: data['priority_code'] as String?,
        priorityDescription: data['priority_description'] as String?,
        brand: data['brand'] as String?,
        model: data['model'] as String?,
        serial: data['serial'] as String?,
        power: castToType<double>(data['power']),
        powerUnit: data['power_unit'] as String?,
        voltage: data['voltage'] as String?,
        voltageUnit: data['voltage_unit'] as String?,
        amperage: data['amperage'] as String?,
        amperageUnit: data['amperage_unit'] as String?,
        poles: castToType<int>(data['poles']),
        polesUnit: data['poles_unit'] as String?,
        rotation: castToType<int>(data['rotation']),
        rotationUnit: data['rotation_unit'] as String?,
        serviceFactor: castToType<double>(data['service_factor']),
        pressureMax: castToType<double>(data['pressure_max']),
        pressureMin: castToType<double>(data['pressure_min']),
        pressureOperation: castToType<double>(data['pressure_operation']),
        pressureUnit: data['pressure_unit'] as String?,
        flowRateMax: castToType<double>(data['flow_rate_max']),
        flowRateMin: castToType<double>(data['flow_rate_min']),
        flowRateOperation: castToType<double>(data['flow_rate_operation']),
        flowRateUnit: data['flow_rate_unit'] as String?,
        rotorDiameter: castToType<double>(data['rotor_diameter']),
        rotorDiameterUnit: data['rotor_diameter_unit'] as String?,
        weight: castToType<int>(data['weight']),
        weightUnit: data['weight_unit'] as String?,
        couplingModelId: castToType<int>(data['coupling_model_id']),
        couplingModelDescription: data['coupling_model_description'] as String?,
        comments: data['comments'] as String?,
        acquisitionAt: data['acquisition_at'] as String?,
        acquisitionDatetime: data['acquisition_datetime'] as DateTime?,
        acquisitionValue: castToType<double>(data['acquisition_value']),
        imgFilePath: data['img_file_path'] as String?,
        imgFileName: data['img_file_name'] as String?,
      );

  static DtAssetStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtAssetStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'searchable': _searchable,
        'tag_id': _tagId,
        'tag_description': _tagDescription,
        'tag_sub_id': _tagSubId,
        'tag_sub_description': _tagSubDescription,
        'location': _location,
        'unit_id': _unitId,
        'unit_description': _unitDescription,
        'status_id': _statusId,
        'status_description': _statusDescription,
        'status_code': _statusCode,
        'status_at': _statusAt,
        'status_datetime': _statusDatetime,
        'type_id': _typeId,
        'type_description': _typeDescription,
        'priority_id': _priorityId,
        'priority_code': _priorityCode,
        'priority_description': _priorityDescription,
        'brand': _brand,
        'model': _model,
        'serial': _serial,
        'power': _power,
        'power_unit': _powerUnit,
        'voltage': _voltage,
        'voltage_unit': _voltageUnit,
        'amperage': _amperage,
        'amperage_unit': _amperageUnit,
        'poles': _poles,
        'poles_unit': _polesUnit,
        'rotation': _rotation,
        'rotation_unit': _rotationUnit,
        'service_factor': _serviceFactor,
        'pressure_max': _pressureMax,
        'pressure_min': _pressureMin,
        'pressure_operation': _pressureOperation,
        'pressure_unit': _pressureUnit,
        'flow_rate_max': _flowRateMax,
        'flow_rate_min': _flowRateMin,
        'flow_rate_operation': _flowRateOperation,
        'flow_rate_unit': _flowRateUnit,
        'rotor_diameter': _rotorDiameter,
        'rotor_diameter_unit': _rotorDiameterUnit,
        'weight': _weight,
        'weight_unit': _weightUnit,
        'coupling_model_id': _couplingModelId,
        'coupling_model_description': _couplingModelDescription,
        'comments': _comments,
        'acquisition_at': _acquisitionAt,
        'acquisition_datetime': _acquisitionDatetime,
        'acquisition_value': _acquisitionValue,
        'img_file_path': _imgFilePath,
        'img_file_name': _imgFileName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'searchable': serializeParam(
          _searchable,
          ParamType.String,
        ),
        'tag_id': serializeParam(
          _tagId,
          ParamType.int,
        ),
        'tag_description': serializeParam(
          _tagDescription,
          ParamType.String,
        ),
        'tag_sub_id': serializeParam(
          _tagSubId,
          ParamType.int,
        ),
        'tag_sub_description': serializeParam(
          _tagSubDescription,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'unit_id': serializeParam(
          _unitId,
          ParamType.int,
        ),
        'unit_description': serializeParam(
          _unitDescription,
          ParamType.String,
        ),
        'status_id': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'status_description': serializeParam(
          _statusDescription,
          ParamType.String,
        ),
        'status_code': serializeParam(
          _statusCode,
          ParamType.String,
        ),
        'status_at': serializeParam(
          _statusAt,
          ParamType.String,
        ),
        'status_datetime': serializeParam(
          _statusDatetime,
          ParamType.DateTime,
        ),
        'type_id': serializeParam(
          _typeId,
          ParamType.int,
        ),
        'type_description': serializeParam(
          _typeDescription,
          ParamType.String,
        ),
        'priority_id': serializeParam(
          _priorityId,
          ParamType.int,
        ),
        'priority_code': serializeParam(
          _priorityCode,
          ParamType.String,
        ),
        'priority_description': serializeParam(
          _priorityDescription,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'serial': serializeParam(
          _serial,
          ParamType.String,
        ),
        'power': serializeParam(
          _power,
          ParamType.double,
        ),
        'power_unit': serializeParam(
          _powerUnit,
          ParamType.String,
        ),
        'voltage': serializeParam(
          _voltage,
          ParamType.String,
        ),
        'voltage_unit': serializeParam(
          _voltageUnit,
          ParamType.String,
        ),
        'amperage': serializeParam(
          _amperage,
          ParamType.String,
        ),
        'amperage_unit': serializeParam(
          _amperageUnit,
          ParamType.String,
        ),
        'poles': serializeParam(
          _poles,
          ParamType.int,
        ),
        'poles_unit': serializeParam(
          _polesUnit,
          ParamType.String,
        ),
        'rotation': serializeParam(
          _rotation,
          ParamType.int,
        ),
        'rotation_unit': serializeParam(
          _rotationUnit,
          ParamType.String,
        ),
        'service_factor': serializeParam(
          _serviceFactor,
          ParamType.double,
        ),
        'pressure_max': serializeParam(
          _pressureMax,
          ParamType.double,
        ),
        'pressure_min': serializeParam(
          _pressureMin,
          ParamType.double,
        ),
        'pressure_operation': serializeParam(
          _pressureOperation,
          ParamType.double,
        ),
        'pressure_unit': serializeParam(
          _pressureUnit,
          ParamType.String,
        ),
        'flow_rate_max': serializeParam(
          _flowRateMax,
          ParamType.double,
        ),
        'flow_rate_min': serializeParam(
          _flowRateMin,
          ParamType.double,
        ),
        'flow_rate_operation': serializeParam(
          _flowRateOperation,
          ParamType.double,
        ),
        'flow_rate_unit': serializeParam(
          _flowRateUnit,
          ParamType.String,
        ),
        'rotor_diameter': serializeParam(
          _rotorDiameter,
          ParamType.double,
        ),
        'rotor_diameter_unit': serializeParam(
          _rotorDiameterUnit,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.int,
        ),
        'weight_unit': serializeParam(
          _weightUnit,
          ParamType.String,
        ),
        'coupling_model_id': serializeParam(
          _couplingModelId,
          ParamType.int,
        ),
        'coupling_model_description': serializeParam(
          _couplingModelDescription,
          ParamType.String,
        ),
        'comments': serializeParam(
          _comments,
          ParamType.String,
        ),
        'acquisition_at': serializeParam(
          _acquisitionAt,
          ParamType.String,
        ),
        'acquisition_datetime': serializeParam(
          _acquisitionDatetime,
          ParamType.DateTime,
        ),
        'acquisition_value': serializeParam(
          _acquisitionValue,
          ParamType.double,
        ),
        'img_file_path': serializeParam(
          _imgFilePath,
          ParamType.String,
        ),
        'img_file_name': serializeParam(
          _imgFileName,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtAssetStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtAssetStruct(
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
        searchable: deserializeParam(
          data['searchable'],
          ParamType.String,
          false,
        ),
        tagId: deserializeParam(
          data['tag_id'],
          ParamType.int,
          false,
        ),
        tagDescription: deserializeParam(
          data['tag_description'],
          ParamType.String,
          false,
        ),
        tagSubId: deserializeParam(
          data['tag_sub_id'],
          ParamType.int,
          false,
        ),
        tagSubDescription: deserializeParam(
          data['tag_sub_description'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        unitId: deserializeParam(
          data['unit_id'],
          ParamType.int,
          false,
        ),
        unitDescription: deserializeParam(
          data['unit_description'],
          ParamType.String,
          false,
        ),
        statusId: deserializeParam(
          data['status_id'],
          ParamType.int,
          false,
        ),
        statusDescription: deserializeParam(
          data['status_description'],
          ParamType.String,
          false,
        ),
        statusCode: deserializeParam(
          data['status_code'],
          ParamType.String,
          false,
        ),
        statusAt: deserializeParam(
          data['status_at'],
          ParamType.String,
          false,
        ),
        statusDatetime: deserializeParam(
          data['status_datetime'],
          ParamType.DateTime,
          false,
        ),
        typeId: deserializeParam(
          data['type_id'],
          ParamType.int,
          false,
        ),
        typeDescription: deserializeParam(
          data['type_description'],
          ParamType.String,
          false,
        ),
        priorityId: deserializeParam(
          data['priority_id'],
          ParamType.int,
          false,
        ),
        priorityCode: deserializeParam(
          data['priority_code'],
          ParamType.String,
          false,
        ),
        priorityDescription: deserializeParam(
          data['priority_description'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        serial: deserializeParam(
          data['serial'],
          ParamType.String,
          false,
        ),
        power: deserializeParam(
          data['power'],
          ParamType.double,
          false,
        ),
        powerUnit: deserializeParam(
          data['power_unit'],
          ParamType.String,
          false,
        ),
        voltage: deserializeParam(
          data['voltage'],
          ParamType.String,
          false,
        ),
        voltageUnit: deserializeParam(
          data['voltage_unit'],
          ParamType.String,
          false,
        ),
        amperage: deserializeParam(
          data['amperage'],
          ParamType.String,
          false,
        ),
        amperageUnit: deserializeParam(
          data['amperage_unit'],
          ParamType.String,
          false,
        ),
        poles: deserializeParam(
          data['poles'],
          ParamType.int,
          false,
        ),
        polesUnit: deserializeParam(
          data['poles_unit'],
          ParamType.String,
          false,
        ),
        rotation: deserializeParam(
          data['rotation'],
          ParamType.int,
          false,
        ),
        rotationUnit: deserializeParam(
          data['rotation_unit'],
          ParamType.String,
          false,
        ),
        serviceFactor: deserializeParam(
          data['service_factor'],
          ParamType.double,
          false,
        ),
        pressureMax: deserializeParam(
          data['pressure_max'],
          ParamType.double,
          false,
        ),
        pressureMin: deserializeParam(
          data['pressure_min'],
          ParamType.double,
          false,
        ),
        pressureOperation: deserializeParam(
          data['pressure_operation'],
          ParamType.double,
          false,
        ),
        pressureUnit: deserializeParam(
          data['pressure_unit'],
          ParamType.String,
          false,
        ),
        flowRateMax: deserializeParam(
          data['flow_rate_max'],
          ParamType.double,
          false,
        ),
        flowRateMin: deserializeParam(
          data['flow_rate_min'],
          ParamType.double,
          false,
        ),
        flowRateOperation: deserializeParam(
          data['flow_rate_operation'],
          ParamType.double,
          false,
        ),
        flowRateUnit: deserializeParam(
          data['flow_rate_unit'],
          ParamType.String,
          false,
        ),
        rotorDiameter: deserializeParam(
          data['rotor_diameter'],
          ParamType.double,
          false,
        ),
        rotorDiameterUnit: deserializeParam(
          data['rotor_diameter_unit'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.int,
          false,
        ),
        weightUnit: deserializeParam(
          data['weight_unit'],
          ParamType.String,
          false,
        ),
        couplingModelId: deserializeParam(
          data['coupling_model_id'],
          ParamType.int,
          false,
        ),
        couplingModelDescription: deserializeParam(
          data['coupling_model_description'],
          ParamType.String,
          false,
        ),
        comments: deserializeParam(
          data['comments'],
          ParamType.String,
          false,
        ),
        acquisitionAt: deserializeParam(
          data['acquisition_at'],
          ParamType.String,
          false,
        ),
        acquisitionDatetime: deserializeParam(
          data['acquisition_datetime'],
          ParamType.DateTime,
          false,
        ),
        acquisitionValue: deserializeParam(
          data['acquisition_value'],
          ParamType.double,
          false,
        ),
        imgFilePath: deserializeParam(
          data['img_file_path'],
          ParamType.String,
          false,
        ),
        imgFileName: deserializeParam(
          data['img_file_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtAssetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAssetStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        searchable == other.searchable &&
        tagId == other.tagId &&
        tagDescription == other.tagDescription &&
        tagSubId == other.tagSubId &&
        tagSubDescription == other.tagSubDescription &&
        location == other.location &&
        unitId == other.unitId &&
        unitDescription == other.unitDescription &&
        statusId == other.statusId &&
        statusDescription == other.statusDescription &&
        statusCode == other.statusCode &&
        statusAt == other.statusAt &&
        statusDatetime == other.statusDatetime &&
        typeId == other.typeId &&
        typeDescription == other.typeDescription &&
        priorityId == other.priorityId &&
        priorityCode == other.priorityCode &&
        priorityDescription == other.priorityDescription &&
        brand == other.brand &&
        model == other.model &&
        serial == other.serial &&
        power == other.power &&
        powerUnit == other.powerUnit &&
        voltage == other.voltage &&
        voltageUnit == other.voltageUnit &&
        amperage == other.amperage &&
        amperageUnit == other.amperageUnit &&
        poles == other.poles &&
        polesUnit == other.polesUnit &&
        rotation == other.rotation &&
        rotationUnit == other.rotationUnit &&
        serviceFactor == other.serviceFactor &&
        pressureMax == other.pressureMax &&
        pressureMin == other.pressureMin &&
        pressureOperation == other.pressureOperation &&
        pressureUnit == other.pressureUnit &&
        flowRateMax == other.flowRateMax &&
        flowRateMin == other.flowRateMin &&
        flowRateOperation == other.flowRateOperation &&
        flowRateUnit == other.flowRateUnit &&
        rotorDiameter == other.rotorDiameter &&
        rotorDiameterUnit == other.rotorDiameterUnit &&
        weight == other.weight &&
        weightUnit == other.weightUnit &&
        couplingModelId == other.couplingModelId &&
        couplingModelDescription == other.couplingModelDescription &&
        comments == other.comments &&
        acquisitionAt == other.acquisitionAt &&
        acquisitionDatetime == other.acquisitionDatetime &&
        acquisitionValue == other.acquisitionValue &&
        imgFilePath == other.imgFilePath &&
        imgFileName == other.imgFileName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        code,
        description,
        searchable,
        tagId,
        tagDescription,
        tagSubId,
        tagSubDescription,
        location,
        unitId,
        unitDescription,
        statusId,
        statusDescription,
        statusCode,
        statusAt,
        statusDatetime,
        typeId,
        typeDescription,
        priorityId,
        priorityCode,
        priorityDescription,
        brand,
        model,
        serial,
        power,
        powerUnit,
        voltage,
        voltageUnit,
        amperage,
        amperageUnit,
        poles,
        polesUnit,
        rotation,
        rotationUnit,
        serviceFactor,
        pressureMax,
        pressureMin,
        pressureOperation,
        pressureUnit,
        flowRateMax,
        flowRateMin,
        flowRateOperation,
        flowRateUnit,
        rotorDiameter,
        rotorDiameterUnit,
        weight,
        weightUnit,
        couplingModelId,
        couplingModelDescription,
        comments,
        acquisitionAt,
        acquisitionDatetime,
        acquisitionValue,
        imgFilePath,
        imgFileName
      ]);
}

DtAssetStruct createDtAssetStruct({
  int? id,
  String? code,
  String? description,
  String? searchable,
  int? tagId,
  String? tagDescription,
  int? tagSubId,
  String? tagSubDescription,
  String? location,
  int? unitId,
  String? unitDescription,
  int? statusId,
  String? statusDescription,
  String? statusCode,
  String? statusAt,
  DateTime? statusDatetime,
  int? typeId,
  String? typeDescription,
  int? priorityId,
  String? priorityCode,
  String? priorityDescription,
  String? brand,
  String? model,
  String? serial,
  double? power,
  String? powerUnit,
  String? voltage,
  String? voltageUnit,
  String? amperage,
  String? amperageUnit,
  int? poles,
  String? polesUnit,
  int? rotation,
  String? rotationUnit,
  double? serviceFactor,
  double? pressureMax,
  double? pressureMin,
  double? pressureOperation,
  String? pressureUnit,
  double? flowRateMax,
  double? flowRateMin,
  double? flowRateOperation,
  String? flowRateUnit,
  double? rotorDiameter,
  String? rotorDiameterUnit,
  int? weight,
  String? weightUnit,
  int? couplingModelId,
  String? couplingModelDescription,
  String? comments,
  String? acquisitionAt,
  DateTime? acquisitionDatetime,
  double? acquisitionValue,
  String? imgFilePath,
  String? imgFileName,
}) =>
    DtAssetStruct(
      id: id,
      code: code,
      description: description,
      searchable: searchable,
      tagId: tagId,
      tagDescription: tagDescription,
      tagSubId: tagSubId,
      tagSubDescription: tagSubDescription,
      location: location,
      unitId: unitId,
      unitDescription: unitDescription,
      statusId: statusId,
      statusDescription: statusDescription,
      statusCode: statusCode,
      statusAt: statusAt,
      statusDatetime: statusDatetime,
      typeId: typeId,
      typeDescription: typeDescription,
      priorityId: priorityId,
      priorityCode: priorityCode,
      priorityDescription: priorityDescription,
      brand: brand,
      model: model,
      serial: serial,
      power: power,
      powerUnit: powerUnit,
      voltage: voltage,
      voltageUnit: voltageUnit,
      amperage: amperage,
      amperageUnit: amperageUnit,
      poles: poles,
      polesUnit: polesUnit,
      rotation: rotation,
      rotationUnit: rotationUnit,
      serviceFactor: serviceFactor,
      pressureMax: pressureMax,
      pressureMin: pressureMin,
      pressureOperation: pressureOperation,
      pressureUnit: pressureUnit,
      flowRateMax: flowRateMax,
      flowRateMin: flowRateMin,
      flowRateOperation: flowRateOperation,
      flowRateUnit: flowRateUnit,
      rotorDiameter: rotorDiameter,
      rotorDiameterUnit: rotorDiameterUnit,
      weight: weight,
      weightUnit: weightUnit,
      couplingModelId: couplingModelId,
      couplingModelDescription: couplingModelDescription,
      comments: comments,
      acquisitionAt: acquisitionAt,
      acquisitionDatetime: acquisitionDatetime,
      acquisitionValue: acquisitionValue,
      imgFilePath: imgFilePath,
      imgFileName: imgFileName,
    );

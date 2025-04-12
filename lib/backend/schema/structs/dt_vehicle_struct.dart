// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVehicleStruct extends BaseStruct {
  DtVehicleStruct({
    int? id,
    int? companyId,
    int? departmentId,
    String? plates,
    int? valueUnit,
    bool? isAvailable,
    String? unit,
    int? discount,
    String? description,
  })  : _id = id,
        _companyId = companyId,
        _departmentId = departmentId,
        _plates = plates,
        _valueUnit = valueUnit,
        _isAvailable = isAvailable,
        _unit = unit,
        _discount = discount,
        _description = description;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "plates" field.
  String? _plates;
  String get plates => _plates ?? '';
  set plates(String? val) => _plates = val;

  bool hasPlates() => _plates != null;

  // "value_unit" field.
  int? _valueUnit;
  int get valueUnit => _valueUnit ?? 0;
  set valueUnit(int? val) => _valueUnit = val;

  void incrementValueUnit(int amount) => valueUnit = valueUnit + amount;

  bool hasValueUnit() => _valueUnit != null;

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  set discount(int? val) => _discount = val;

  void incrementDiscount(int amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static DtVehicleStruct fromMap(Map<String, dynamic> data) => DtVehicleStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['company_id']),
        departmentId: castToType<int>(data['department_id']),
        plates: data['plates'] as String?,
        valueUnit: castToType<int>(data['value_unit']),
        isAvailable: data['is_available'] as bool?,
        unit: data['unit'] as String?,
        discount: castToType<int>(data['discount']),
        description: data['description'] as String?,
      );

  static DtVehicleStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVehicleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'company_id': _companyId,
        'department_id': _departmentId,
        'plates': _plates,
        'value_unit': _valueUnit,
        'is_available': _isAvailable,
        'unit': _unit,
        'discount': _discount,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'plates': serializeParam(
          _plates,
          ParamType.String,
        ),
        'value_unit': serializeParam(
          _valueUnit,
          ParamType.int,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtVehicleStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtVehicleStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        plates: deserializeParam(
          data['plates'],
          ParamType.String,
          false,
        ),
        valueUnit: deserializeParam(
          data['value_unit'],
          ParamType.int,
          false,
        ),
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtVehicleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVehicleStruct &&
        id == other.id &&
        companyId == other.companyId &&
        departmentId == other.departmentId &&
        plates == other.plates &&
        valueUnit == other.valueUnit &&
        isAvailable == other.isAvailable &&
        unit == other.unit &&
        discount == other.discount &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        companyId,
        departmentId,
        plates,
        valueUnit,
        isAvailable,
        unit,
        discount,
        description
      ]);
}

DtVehicleStruct createDtVehicleStruct({
  int? id,
  int? companyId,
  int? departmentId,
  String? plates,
  int? valueUnit,
  bool? isAvailable,
  String? unit,
  int? discount,
  String? description,
}) =>
    DtVehicleStruct(
      id: id,
      companyId: companyId,
      departmentId: departmentId,
      plates: plates,
      valueUnit: valueUnit,
      isAvailable: isAvailable,
      unit: unit,
      discount: discount,
      description: description,
    );

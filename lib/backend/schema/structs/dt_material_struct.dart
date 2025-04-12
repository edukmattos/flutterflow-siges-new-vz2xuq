// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtMaterialStruct extends BaseStruct {
  DtMaterialStruct({
    int? id,
    String? code,
    String? description,
    String? unit,
    double? priceUnit,
    String? searchable,
    String? version,
  })  : _id = id,
        _code = code,
        _description = description,
        _unit = unit,
        _priceUnit = priceUnit,
        _searchable = searchable,
        _version = version;

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

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "price_unit" field.
  double? _priceUnit;
  double get priceUnit => _priceUnit ?? 0.0;
  set priceUnit(double? val) => _priceUnit = val;

  void incrementPriceUnit(double amount) => priceUnit = priceUnit + amount;

  bool hasPriceUnit() => _priceUnit != null;

  // "searchable" field.
  String? _searchable;
  String get searchable => _searchable ?? '';
  set searchable(String? val) => _searchable = val;

  bool hasSearchable() => _searchable != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  static DtMaterialStruct fromMap(Map<String, dynamic> data) =>
      DtMaterialStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        unit: data['unit'] as String?,
        priceUnit: castToType<double>(data['price_unit']),
        searchable: data['searchable'] as String?,
        version: data['version'] as String?,
      );

  static DtMaterialStruct? maybeFromMap(dynamic data) => data is Map
      ? DtMaterialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'unit': _unit,
        'price_unit': _priceUnit,
        'searchable': _searchable,
        'version': _version,
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
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'price_unit': serializeParam(
          _priceUnit,
          ParamType.double,
        ),
        'searchable': serializeParam(
          _searchable,
          ParamType.String,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtMaterialStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtMaterialStruct(
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
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        priceUnit: deserializeParam(
          data['price_unit'],
          ParamType.double,
          false,
        ),
        searchable: deserializeParam(
          data['searchable'],
          ParamType.String,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtMaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtMaterialStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        unit == other.unit &&
        priceUnit == other.priceUnit &&
        searchable == other.searchable &&
        version == other.version;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, code, description, unit, priceUnit, searchable, version]);
}

DtMaterialStruct createDtMaterialStruct({
  int? id,
  String? code,
  String? description,
  String? unit,
  double? priceUnit,
  String? searchable,
  String? version,
}) =>
    DtMaterialStruct(
      id: id,
      code: code,
      description: description,
      unit: unit,
      priceUnit: priceUnit,
      searchable: searchable,
      version: version,
    );

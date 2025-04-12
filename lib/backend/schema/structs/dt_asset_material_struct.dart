// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAssetMaterialStruct extends BaseStruct {
  DtAssetMaterialStruct({
    int? id,
    int? ovId,
    int? assetId,
    int? materialId,
    String? materialCode,
    String? materialDescription,
    String? materialUnit,
    String? brandModel,
    String? location,
    double? amount,
    bool? isOriginal,
    String? versionMode,
  })  : _id = id,
        _ovId = ovId,
        _assetId = assetId,
        _materialId = materialId,
        _materialCode = materialCode,
        _materialDescription = materialDescription,
        _materialUnit = materialUnit,
        _brandModel = brandModel,
        _location = location,
        _amount = amount,
        _isOriginal = isOriginal,
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

  // "asset_id" field.
  int? _assetId;
  int get assetId => _assetId ?? 0;
  set assetId(int? val) => _assetId = val;

  void incrementAssetId(int amount) => assetId = assetId + amount;

  bool hasAssetId() => _assetId != null;

  // "material_id" field.
  int? _materialId;
  int get materialId => _materialId ?? 0;
  set materialId(int? val) => _materialId = val;

  void incrementMaterialId(int amount) => materialId = materialId + amount;

  bool hasMaterialId() => _materialId != null;

  // "material_code" field.
  String? _materialCode;
  String get materialCode => _materialCode ?? '';
  set materialCode(String? val) => _materialCode = val;

  bool hasMaterialCode() => _materialCode != null;

  // "material_description" field.
  String? _materialDescription;
  String get materialDescription => _materialDescription ?? '';
  set materialDescription(String? val) => _materialDescription = val;

  bool hasMaterialDescription() => _materialDescription != null;

  // "material_unit" field.
  String? _materialUnit;
  String get materialUnit => _materialUnit ?? '';
  set materialUnit(String? val) => _materialUnit = val;

  bool hasMaterialUnit() => _materialUnit != null;

  // "brand_model" field.
  String? _brandModel;
  String get brandModel => _brandModel ?? '';
  set brandModel(String? val) => _brandModel = val;

  bool hasBrandModel() => _brandModel != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "is_original" field.
  bool? _isOriginal;
  bool get isOriginal => _isOriginal ?? false;
  set isOriginal(bool? val) => _isOriginal = val;

  bool hasIsOriginal() => _isOriginal != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtAssetMaterialStruct fromMap(Map<String, dynamic> data) =>
      DtAssetMaterialStruct(
        id: castToType<int>(data['id']),
        ovId: castToType<int>(data['ov_id']),
        assetId: castToType<int>(data['asset_id']),
        materialId: castToType<int>(data['material_id']),
        materialCode: data['material_code'] as String?,
        materialDescription: data['material_description'] as String?,
        materialUnit: data['material_unit'] as String?,
        brandModel: data['brand_model'] as String?,
        location: data['location'] as String?,
        amount: castToType<double>(data['amount']),
        isOriginal: data['is_original'] as bool?,
        versionMode: data['version_mode'] as String?,
      );

  static DtAssetMaterialStruct? maybeFromMap(dynamic data) => data is Map
      ? DtAssetMaterialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'ov_id': _ovId,
        'asset_id': _assetId,
        'material_id': _materialId,
        'material_code': _materialCode,
        'material_description': _materialDescription,
        'material_unit': _materialUnit,
        'brand_model': _brandModel,
        'location': _location,
        'amount': _amount,
        'is_original': _isOriginal,
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
        'asset_id': serializeParam(
          _assetId,
          ParamType.int,
        ),
        'material_id': serializeParam(
          _materialId,
          ParamType.int,
        ),
        'material_code': serializeParam(
          _materialCode,
          ParamType.String,
        ),
        'material_description': serializeParam(
          _materialDescription,
          ParamType.String,
        ),
        'material_unit': serializeParam(
          _materialUnit,
          ParamType.String,
        ),
        'brand_model': serializeParam(
          _brandModel,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'is_original': serializeParam(
          _isOriginal,
          ParamType.bool,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtAssetMaterialStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtAssetMaterialStruct(
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
        assetId: deserializeParam(
          data['asset_id'],
          ParamType.int,
          false,
        ),
        materialId: deserializeParam(
          data['material_id'],
          ParamType.int,
          false,
        ),
        materialCode: deserializeParam(
          data['material_code'],
          ParamType.String,
          false,
        ),
        materialDescription: deserializeParam(
          data['material_description'],
          ParamType.String,
          false,
        ),
        materialUnit: deserializeParam(
          data['material_unit'],
          ParamType.String,
          false,
        ),
        brandModel: deserializeParam(
          data['brand_model'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        isOriginal: deserializeParam(
          data['is_original'],
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
  String toString() => 'DtAssetMaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAssetMaterialStruct &&
        id == other.id &&
        ovId == other.ovId &&
        assetId == other.assetId &&
        materialId == other.materialId &&
        materialCode == other.materialCode &&
        materialDescription == other.materialDescription &&
        materialUnit == other.materialUnit &&
        brandModel == other.brandModel &&
        location == other.location &&
        amount == other.amount &&
        isOriginal == other.isOriginal &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        ovId,
        assetId,
        materialId,
        materialCode,
        materialDescription,
        materialUnit,
        brandModel,
        location,
        amount,
        isOriginal,
        versionMode
      ]);
}

DtAssetMaterialStruct createDtAssetMaterialStruct({
  int? id,
  int? ovId,
  int? assetId,
  int? materialId,
  String? materialCode,
  String? materialDescription,
  String? materialUnit,
  String? brandModel,
  String? location,
  double? amount,
  bool? isOriginal,
  String? versionMode,
}) =>
    DtAssetMaterialStruct(
      id: id,
      ovId: ovId,
      assetId: assetId,
      materialId: materialId,
      materialCode: materialCode,
      materialDescription: materialDescription,
      materialUnit: materialUnit,
      brandModel: brandModel,
      location: location,
      amount: amount,
      isOriginal: isOriginal,
      versionMode: versionMode,
    );

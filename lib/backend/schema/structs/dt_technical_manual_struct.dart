// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtTechnicalManualStruct extends BaseStruct {
  DtTechnicalManualStruct({
    int? id,
    int? companyId,
    int? tmTypeId,
    String? tmTypeDescription,
    String? tmDescription,
    String? docFilePath,
    String? docFileName,
    int? assetsAmount,
    int? assetTypeId,
    String? assetTypeDescription,
    String? versionMode,
  })  : _id = id,
        _companyId = companyId,
        _tmTypeId = tmTypeId,
        _tmTypeDescription = tmTypeDescription,
        _tmDescription = tmDescription,
        _docFilePath = docFilePath,
        _docFileName = docFileName,
        _assetsAmount = assetsAmount,
        _assetTypeId = assetTypeId,
        _assetTypeDescription = assetTypeDescription,
        _versionMode = versionMode;

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

  // "tm_type_id" field.
  int? _tmTypeId;
  int get tmTypeId => _tmTypeId ?? 0;
  set tmTypeId(int? val) => _tmTypeId = val;

  void incrementTmTypeId(int amount) => tmTypeId = tmTypeId + amount;

  bool hasTmTypeId() => _tmTypeId != null;

  // "tm_type_description" field.
  String? _tmTypeDescription;
  String get tmTypeDescription => _tmTypeDescription ?? '';
  set tmTypeDescription(String? val) => _tmTypeDescription = val;

  bool hasTmTypeDescription() => _tmTypeDescription != null;

  // "tm_description" field.
  String? _tmDescription;
  String get tmDescription => _tmDescription ?? '';
  set tmDescription(String? val) => _tmDescription = val;

  bool hasTmDescription() => _tmDescription != null;

  // "doc_file_path" field.
  String? _docFilePath;
  String get docFilePath => _docFilePath ?? '';
  set docFilePath(String? val) => _docFilePath = val;

  bool hasDocFilePath() => _docFilePath != null;

  // "doc_file_name" field.
  String? _docFileName;
  String get docFileName => _docFileName ?? '';
  set docFileName(String? val) => _docFileName = val;

  bool hasDocFileName() => _docFileName != null;

  // "assets_amount" field.
  int? _assetsAmount;
  int get assetsAmount => _assetsAmount ?? 0;
  set assetsAmount(int? val) => _assetsAmount = val;

  void incrementAssetsAmount(int amount) =>
      assetsAmount = assetsAmount + amount;

  bool hasAssetsAmount() => _assetsAmount != null;

  // "asset_type_id" field.
  int? _assetTypeId;
  int get assetTypeId => _assetTypeId ?? 0;
  set assetTypeId(int? val) => _assetTypeId = val;

  void incrementAssetTypeId(int amount) => assetTypeId = assetTypeId + amount;

  bool hasAssetTypeId() => _assetTypeId != null;

  // "asset_type_description" field.
  String? _assetTypeDescription;
  String get assetTypeDescription => _assetTypeDescription ?? '';
  set assetTypeDescription(String? val) => _assetTypeDescription = val;

  bool hasAssetTypeDescription() => _assetTypeDescription != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtTechnicalManualStruct fromMap(Map<String, dynamic> data) =>
      DtTechnicalManualStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['company_id']),
        tmTypeId: castToType<int>(data['tm_type_id']),
        tmTypeDescription: data['tm_type_description'] as String?,
        tmDescription: data['tm_description'] as String?,
        docFilePath: data['doc_file_path'] as String?,
        docFileName: data['doc_file_name'] as String?,
        assetsAmount: castToType<int>(data['assets_amount']),
        assetTypeId: castToType<int>(data['asset_type_id']),
        assetTypeDescription: data['asset_type_description'] as String?,
        versionMode: data['version_mode'] as String?,
      );

  static DtTechnicalManualStruct? maybeFromMap(dynamic data) => data is Map
      ? DtTechnicalManualStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'company_id': _companyId,
        'tm_type_id': _tmTypeId,
        'tm_type_description': _tmTypeDescription,
        'tm_description': _tmDescription,
        'doc_file_path': _docFilePath,
        'doc_file_name': _docFileName,
        'assets_amount': _assetsAmount,
        'asset_type_id': _assetTypeId,
        'asset_type_description': _assetTypeDescription,
        'version_mode': _versionMode,
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
        'tm_type_id': serializeParam(
          _tmTypeId,
          ParamType.int,
        ),
        'tm_type_description': serializeParam(
          _tmTypeDescription,
          ParamType.String,
        ),
        'tm_description': serializeParam(
          _tmDescription,
          ParamType.String,
        ),
        'doc_file_path': serializeParam(
          _docFilePath,
          ParamType.String,
        ),
        'doc_file_name': serializeParam(
          _docFileName,
          ParamType.String,
        ),
        'assets_amount': serializeParam(
          _assetsAmount,
          ParamType.int,
        ),
        'asset_type_id': serializeParam(
          _assetTypeId,
          ParamType.int,
        ),
        'asset_type_description': serializeParam(
          _assetTypeDescription,
          ParamType.String,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtTechnicalManualStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtTechnicalManualStruct(
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
        tmTypeId: deserializeParam(
          data['tm_type_id'],
          ParamType.int,
          false,
        ),
        tmTypeDescription: deserializeParam(
          data['tm_type_description'],
          ParamType.String,
          false,
        ),
        tmDescription: deserializeParam(
          data['tm_description'],
          ParamType.String,
          false,
        ),
        docFilePath: deserializeParam(
          data['doc_file_path'],
          ParamType.String,
          false,
        ),
        docFileName: deserializeParam(
          data['doc_file_name'],
          ParamType.String,
          false,
        ),
        assetsAmount: deserializeParam(
          data['assets_amount'],
          ParamType.int,
          false,
        ),
        assetTypeId: deserializeParam(
          data['asset_type_id'],
          ParamType.int,
          false,
        ),
        assetTypeDescription: deserializeParam(
          data['asset_type_description'],
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
  String toString() => 'DtTechnicalManualStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtTechnicalManualStruct &&
        id == other.id &&
        companyId == other.companyId &&
        tmTypeId == other.tmTypeId &&
        tmTypeDescription == other.tmTypeDescription &&
        tmDescription == other.tmDescription &&
        docFilePath == other.docFilePath &&
        docFileName == other.docFileName &&
        assetsAmount == other.assetsAmount &&
        assetTypeId == other.assetTypeId &&
        assetTypeDescription == other.assetTypeDescription &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        companyId,
        tmTypeId,
        tmTypeDescription,
        tmDescription,
        docFilePath,
        docFileName,
        assetsAmount,
        assetTypeId,
        assetTypeDescription,
        versionMode
      ]);
}

DtTechnicalManualStruct createDtTechnicalManualStruct({
  int? id,
  int? companyId,
  int? tmTypeId,
  String? tmTypeDescription,
  String? tmDescription,
  String? docFilePath,
  String? docFileName,
  int? assetsAmount,
  int? assetTypeId,
  String? assetTypeDescription,
  String? versionMode,
}) =>
    DtTechnicalManualStruct(
      id: id,
      companyId: companyId,
      tmTypeId: tmTypeId,
      tmTypeDescription: tmTypeDescription,
      tmDescription: tmDescription,
      docFilePath: docFilePath,
      docFileName: docFileName,
      assetsAmount: assetsAmount,
      assetTypeId: assetTypeId,
      assetTypeDescription: assetTypeDescription,
      versionMode: versionMode,
    );

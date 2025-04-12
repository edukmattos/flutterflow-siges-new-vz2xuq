// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtContractStruct extends BaseStruct {
  DtContractStruct({
    int? id,
    int? clientCompanyId,
    String? clientCompanyDescription,
    int? clientDepartmentId,
    int? providerCompanyId,
    String? providerCompanyDescription,
    String? providerCompanyImgFilePath,
    String? providerCompanyImgFileName,
    int? providerDepartmentId,
    String? code,
    String? description,
    int? statusId,
    String? statusCode,
    String? statusDescription,
    bool? isAvailable,
    bool? isDeleted,
    String? version,
  })  : _id = id,
        _clientCompanyId = clientCompanyId,
        _clientCompanyDescription = clientCompanyDescription,
        _clientDepartmentId = clientDepartmentId,
        _providerCompanyId = providerCompanyId,
        _providerCompanyDescription = providerCompanyDescription,
        _providerCompanyImgFilePath = providerCompanyImgFilePath,
        _providerCompanyImgFileName = providerCompanyImgFileName,
        _providerDepartmentId = providerDepartmentId,
        _code = code,
        _description = description,
        _statusId = statusId,
        _statusCode = statusCode,
        _statusDescription = statusDescription,
        _isAvailable = isAvailable,
        _isDeleted = isDeleted,
        _version = version;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "client_company_id" field.
  int? _clientCompanyId;
  int get clientCompanyId => _clientCompanyId ?? 0;
  set clientCompanyId(int? val) => _clientCompanyId = val;

  void incrementClientCompanyId(int amount) =>
      clientCompanyId = clientCompanyId + amount;

  bool hasClientCompanyId() => _clientCompanyId != null;

  // "client_company_description" field.
  String? _clientCompanyDescription;
  String get clientCompanyDescription => _clientCompanyDescription ?? '';
  set clientCompanyDescription(String? val) => _clientCompanyDescription = val;

  bool hasClientCompanyDescription() => _clientCompanyDescription != null;

  // "client_department_id" field.
  int? _clientDepartmentId;
  int get clientDepartmentId => _clientDepartmentId ?? 0;
  set clientDepartmentId(int? val) => _clientDepartmentId = val;

  void incrementClientDepartmentId(int amount) =>
      clientDepartmentId = clientDepartmentId + amount;

  bool hasClientDepartmentId() => _clientDepartmentId != null;

  // "provider_company_id" field.
  int? _providerCompanyId;
  int get providerCompanyId => _providerCompanyId ?? 0;
  set providerCompanyId(int? val) => _providerCompanyId = val;

  void incrementProviderCompanyId(int amount) =>
      providerCompanyId = providerCompanyId + amount;

  bool hasProviderCompanyId() => _providerCompanyId != null;

  // "provider_company_description" field.
  String? _providerCompanyDescription;
  String get providerCompanyDescription => _providerCompanyDescription ?? '';
  set providerCompanyDescription(String? val) =>
      _providerCompanyDescription = val;

  bool hasProviderCompanyDescription() => _providerCompanyDescription != null;

  // "provider_company_img_file_path" field.
  String? _providerCompanyImgFilePath;
  String get providerCompanyImgFilePath => _providerCompanyImgFilePath ?? '';
  set providerCompanyImgFilePath(String? val) =>
      _providerCompanyImgFilePath = val;

  bool hasProviderCompanyImgFilePath() => _providerCompanyImgFilePath != null;

  // "provider_company_img_file_name" field.
  String? _providerCompanyImgFileName;
  String get providerCompanyImgFileName => _providerCompanyImgFileName ?? '';
  set providerCompanyImgFileName(String? val) =>
      _providerCompanyImgFileName = val;

  bool hasProviderCompanyImgFileName() => _providerCompanyImgFileName != null;

  // "provider_department_id" field.
  int? _providerDepartmentId;
  int get providerDepartmentId => _providerDepartmentId ?? 0;
  set providerDepartmentId(int? val) => _providerDepartmentId = val;

  void incrementProviderDepartmentId(int amount) =>
      providerDepartmentId = providerDepartmentId + amount;

  bool hasProviderDepartmentId() => _providerDepartmentId != null;

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

  // "status_id" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;

  void incrementStatusId(int amount) => statusId = statusId + amount;

  bool hasStatusId() => _statusId != null;

  // "status_code" field.
  String? _statusCode;
  String get statusCode => _statusCode ?? '';
  set statusCode(String? val) => _statusCode = val;

  bool hasStatusCode() => _statusCode != null;

  // "status_description" field.
  String? _statusDescription;
  String get statusDescription => _statusDescription ?? '';
  set statusDescription(String? val) => _statusDescription = val;

  bool hasStatusDescription() => _statusDescription != null;

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  static DtContractStruct fromMap(Map<String, dynamic> data) =>
      DtContractStruct(
        id: castToType<int>(data['id']),
        clientCompanyId: castToType<int>(data['client_company_id']),
        clientCompanyDescription: data['client_company_description'] as String?,
        clientDepartmentId: castToType<int>(data['client_department_id']),
        providerCompanyId: castToType<int>(data['provider_company_id']),
        providerCompanyDescription:
            data['provider_company_description'] as String?,
        providerCompanyImgFilePath:
            data['provider_company_img_file_path'] as String?,
        providerCompanyImgFileName:
            data['provider_company_img_file_name'] as String?,
        providerDepartmentId: castToType<int>(data['provider_department_id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        statusId: castToType<int>(data['status_id']),
        statusCode: data['status_code'] as String?,
        statusDescription: data['status_description'] as String?,
        isAvailable: data['is_available'] as bool?,
        isDeleted: data['is_deleted'] as bool?,
        version: data['version'] as String?,
      );

  static DtContractStruct? maybeFromMap(dynamic data) => data is Map
      ? DtContractStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'client_company_id': _clientCompanyId,
        'client_company_description': _clientCompanyDescription,
        'client_department_id': _clientDepartmentId,
        'provider_company_id': _providerCompanyId,
        'provider_company_description': _providerCompanyDescription,
        'provider_company_img_file_path': _providerCompanyImgFilePath,
        'provider_company_img_file_name': _providerCompanyImgFileName,
        'provider_department_id': _providerDepartmentId,
        'code': _code,
        'description': _description,
        'status_id': _statusId,
        'status_code': _statusCode,
        'status_description': _statusDescription,
        'is_available': _isAvailable,
        'is_deleted': _isDeleted,
        'version': _version,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'client_company_id': serializeParam(
          _clientCompanyId,
          ParamType.int,
        ),
        'client_company_description': serializeParam(
          _clientCompanyDescription,
          ParamType.String,
        ),
        'client_department_id': serializeParam(
          _clientDepartmentId,
          ParamType.int,
        ),
        'provider_company_id': serializeParam(
          _providerCompanyId,
          ParamType.int,
        ),
        'provider_company_description': serializeParam(
          _providerCompanyDescription,
          ParamType.String,
        ),
        'provider_company_img_file_path': serializeParam(
          _providerCompanyImgFilePath,
          ParamType.String,
        ),
        'provider_company_img_file_name': serializeParam(
          _providerCompanyImgFileName,
          ParamType.String,
        ),
        'provider_department_id': serializeParam(
          _providerDepartmentId,
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
        'status_id': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'status_code': serializeParam(
          _statusCode,
          ParamType.String,
        ),
        'status_description': serializeParam(
          _statusDescription,
          ParamType.String,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtContractStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtContractStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        clientCompanyId: deserializeParam(
          data['client_company_id'],
          ParamType.int,
          false,
        ),
        clientCompanyDescription: deserializeParam(
          data['client_company_description'],
          ParamType.String,
          false,
        ),
        clientDepartmentId: deserializeParam(
          data['client_department_id'],
          ParamType.int,
          false,
        ),
        providerCompanyId: deserializeParam(
          data['provider_company_id'],
          ParamType.int,
          false,
        ),
        providerCompanyDescription: deserializeParam(
          data['provider_company_description'],
          ParamType.String,
          false,
        ),
        providerCompanyImgFilePath: deserializeParam(
          data['provider_company_img_file_path'],
          ParamType.String,
          false,
        ),
        providerCompanyImgFileName: deserializeParam(
          data['provider_company_img_file_name'],
          ParamType.String,
          false,
        ),
        providerDepartmentId: deserializeParam(
          data['provider_department_id'],
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
        statusId: deserializeParam(
          data['status_id'],
          ParamType.int,
          false,
        ),
        statusCode: deserializeParam(
          data['status_code'],
          ParamType.String,
          false,
        ),
        statusDescription: deserializeParam(
          data['status_description'],
          ParamType.String,
          false,
        ),
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtContractStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtContractStruct &&
        id == other.id &&
        clientCompanyId == other.clientCompanyId &&
        clientCompanyDescription == other.clientCompanyDescription &&
        clientDepartmentId == other.clientDepartmentId &&
        providerCompanyId == other.providerCompanyId &&
        providerCompanyDescription == other.providerCompanyDescription &&
        providerCompanyImgFilePath == other.providerCompanyImgFilePath &&
        providerCompanyImgFileName == other.providerCompanyImgFileName &&
        providerDepartmentId == other.providerDepartmentId &&
        code == other.code &&
        description == other.description &&
        statusId == other.statusId &&
        statusCode == other.statusCode &&
        statusDescription == other.statusDescription &&
        isAvailable == other.isAvailable &&
        isDeleted == other.isDeleted &&
        version == other.version;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        clientCompanyId,
        clientCompanyDescription,
        clientDepartmentId,
        providerCompanyId,
        providerCompanyDescription,
        providerCompanyImgFilePath,
        providerCompanyImgFileName,
        providerDepartmentId,
        code,
        description,
        statusId,
        statusCode,
        statusDescription,
        isAvailable,
        isDeleted,
        version
      ]);
}

DtContractStruct createDtContractStruct({
  int? id,
  int? clientCompanyId,
  String? clientCompanyDescription,
  int? clientDepartmentId,
  int? providerCompanyId,
  String? providerCompanyDescription,
  String? providerCompanyImgFilePath,
  String? providerCompanyImgFileName,
  int? providerDepartmentId,
  String? code,
  String? description,
  int? statusId,
  String? statusCode,
  String? statusDescription,
  bool? isAvailable,
  bool? isDeleted,
  String? version,
}) =>
    DtContractStruct(
      id: id,
      clientCompanyId: clientCompanyId,
      clientCompanyDescription: clientCompanyDescription,
      clientDepartmentId: clientDepartmentId,
      providerCompanyId: providerCompanyId,
      providerCompanyDescription: providerCompanyDescription,
      providerCompanyImgFilePath: providerCompanyImgFilePath,
      providerCompanyImgFileName: providerCompanyImgFileName,
      providerDepartmentId: providerDepartmentId,
      code: code,
      description: description,
      statusId: statusId,
      statusCode: statusCode,
      statusDescription: statusDescription,
      isAvailable: isAvailable,
      isDeleted: isDeleted,
      version: version,
    );

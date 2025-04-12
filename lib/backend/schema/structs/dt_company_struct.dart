// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtCompanyStruct extends BaseStruct {
  DtCompanyStruct({
    int? id,
    String? code,
    String? description,
    String? imgFilePath,
    String? imgFileName,
    bool? isAvailable,
    String? emailSufix,
  })  : _id = id,
        _code = code,
        _description = description,
        _imgFilePath = imgFilePath,
        _imgFileName = imgFileName,
        _isAvailable = isAvailable,
        _emailSufix = emailSufix;

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

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "email_sufix" field.
  String? _emailSufix;
  String get emailSufix => _emailSufix ?? '';
  set emailSufix(String? val) => _emailSufix = val;

  bool hasEmailSufix() => _emailSufix != null;

  static DtCompanyStruct fromMap(Map<String, dynamic> data) => DtCompanyStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        imgFilePath: data['img_file_path'] as String?,
        imgFileName: data['img_file_name'] as String?,
        isAvailable: data['is_available'] as bool?,
        emailSufix: data['email_sufix'] as String?,
      );

  static DtCompanyStruct? maybeFromMap(dynamic data) => data is Map
      ? DtCompanyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'img_file_path': _imgFilePath,
        'img_file_name': _imgFileName,
        'is_available': _isAvailable,
        'email_sufix': _emailSufix,
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
        'img_file_path': serializeParam(
          _imgFilePath,
          ParamType.String,
        ),
        'img_file_name': serializeParam(
          _imgFileName,
          ParamType.String,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'email_sufix': serializeParam(
          _emailSufix,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtCompanyStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtCompanyStruct(
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
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
        emailSufix: deserializeParam(
          data['email_sufix'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtCompanyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtCompanyStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        imgFilePath == other.imgFilePath &&
        imgFileName == other.imgFileName &&
        isAvailable == other.isAvailable &&
        emailSufix == other.emailSufix;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        code,
        description,
        imgFilePath,
        imgFileName,
        isAvailable,
        emailSufix
      ]);
}

DtCompanyStruct createDtCompanyStruct({
  int? id,
  String? code,
  String? description,
  String? imgFilePath,
  String? imgFileName,
  bool? isAvailable,
  String? emailSufix,
}) =>
    DtCompanyStruct(
      id: id,
      code: code,
      description: description,
      imgFilePath: imgFilePath,
      imgFileName: imgFileName,
      isAvailable: isAvailable,
      emailSufix: emailSufix,
    );

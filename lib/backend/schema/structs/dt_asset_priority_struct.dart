// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAssetPriorityStruct extends BaseStruct {
  DtAssetPriorityStruct({
    int? id,
    String? code,
    String? description,
    bool? isAvailable,
  })  : _id = id,
        _code = code,
        _description = description,
        _isAvailable = isAvailable;

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

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  static DtAssetPriorityStruct fromMap(Map<String, dynamic> data) =>
      DtAssetPriorityStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isAvailable: data['is_available'] as bool?,
      );

  static DtAssetPriorityStruct? maybeFromMap(dynamic data) => data is Map
      ? DtAssetPriorityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'is_available': _isAvailable,
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
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtAssetPriorityStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtAssetPriorityStruct(
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
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DtAssetPriorityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAssetPriorityStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, code, description, isAvailable]);
}

DtAssetPriorityStruct createDtAssetPriorityStruct({
  int? id,
  String? code,
  String? description,
  bool? isAvailable,
}) =>
    DtAssetPriorityStruct(
      id: id,
      code: code,
      description: description,
      isAvailable: isAvailable,
    );

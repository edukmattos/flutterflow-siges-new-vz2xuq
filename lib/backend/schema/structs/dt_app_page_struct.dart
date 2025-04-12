// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAppPageStruct extends BaseStruct {
  DtAppPageStruct({
    int? id,
    String? code,
    String? description,
    bool? isAvailableProvider,
  })  : _id = id,
        _code = code,
        _description = description,
        _isAvailableProvider = isAvailableProvider;

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

  // "is_available_provider" field.
  bool? _isAvailableProvider;
  bool get isAvailableProvider => _isAvailableProvider ?? false;
  set isAvailableProvider(bool? val) => _isAvailableProvider = val;

  bool hasIsAvailableProvider() => _isAvailableProvider != null;

  static DtAppPageStruct fromMap(Map<String, dynamic> data) => DtAppPageStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isAvailableProvider: data['is_available_provider'] as bool?,
      );

  static DtAppPageStruct? maybeFromMap(dynamic data) => data is Map
      ? DtAppPageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'is_available_provider': _isAvailableProvider,
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
        'is_available_provider': serializeParam(
          _isAvailableProvider,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtAppPageStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtAppPageStruct(
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
        isAvailableProvider: deserializeParam(
          data['is_available_provider'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DtAppPageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAppPageStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        isAvailableProvider == other.isAvailableProvider;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, code, description, isAvailableProvider]);
}

DtAppPageStruct createDtAppPageStruct({
  int? id,
  String? code,
  String? description,
  bool? isAvailableProvider,
}) =>
    DtAppPageStruct(
      id: id,
      code: code,
      description: description,
      isAvailableProvider: isAvailableProvider,
    );

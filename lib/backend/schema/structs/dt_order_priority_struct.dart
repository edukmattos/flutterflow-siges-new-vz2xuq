// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderPriorityStruct extends BaseStruct {
  DtOrderPriorityStruct({
    int? id,
    String? code,
    String? description,
  })  : _id = id,
        _code = code,
        _description = description;

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

  static DtOrderPriorityStruct fromMap(Map<String, dynamic> data) =>
      DtOrderPriorityStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
      );

  static DtOrderPriorityStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderPriorityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
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
      }.withoutNulls;

  static DtOrderPriorityStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderPriorityStruct(
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
      );

  @override
  String toString() => 'DtOrderPriorityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderPriorityStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([id, code, description]);
}

DtOrderPriorityStruct createDtOrderPriorityStruct({
  int? id,
  String? code,
  String? description,
}) =>
    DtOrderPriorityStruct(
      id: id,
      code: code,
      description: description,
    );

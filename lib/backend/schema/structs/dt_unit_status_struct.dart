// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUnitStatusStruct extends BaseStruct {
  DtUnitStatusStruct({
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

  static DtUnitStatusStruct fromMap(Map<String, dynamic> data) =>
      DtUnitStatusStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
      );

  static DtUnitStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? DtUnitStatusStruct.fromMap(data.cast<String, dynamic>())
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

  static DtUnitStatusStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtUnitStatusStruct(
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
  String toString() => 'DtUnitStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUnitStatusStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([id, code, description]);
}

DtUnitStatusStruct createDtUnitStatusStruct({
  int? id,
  String? code,
  String? description,
}) =>
    DtUnitStatusStruct(
      id: id,
      code: code,
      description: description,
    );

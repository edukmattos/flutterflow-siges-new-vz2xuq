// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitOpenTeamUsersStruct extends BaseStruct {
  DtOrderVisitOpenTeamUsersStruct({
    int? id,
  }) : _id = id;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static DtOrderVisitOpenTeamUsersStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitOpenTeamUsersStruct(
        id: castToType<int>(data['id']),
      );

  static DtOrderVisitOpenTeamUsersStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DtOrderVisitOpenTeamUsersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtOrderVisitOpenTeamUsersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitOpenTeamUsersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitOpenTeamUsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitOpenTeamUsersStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

DtOrderVisitOpenTeamUsersStruct createDtOrderVisitOpenTeamUsersStruct({
  int? id,
}) =>
    DtOrderVisitOpenTeamUsersStruct(
      id: id,
    );

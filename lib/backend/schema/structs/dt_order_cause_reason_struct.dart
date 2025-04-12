// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderCauseReasonStruct extends BaseStruct {
  DtOrderCauseReasonStruct({
    int? id,
    String? description,
    bool? isAvailabe,
    bool? isDeleted,
  })  : _id = id,
        _description = description,
        _isAvailabe = isAvailabe,
        _isDeleted = isDeleted;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "is_availabe" field.
  bool? _isAvailabe;
  bool get isAvailabe => _isAvailabe ?? false;
  set isAvailabe(bool? val) => _isAvailabe = val;

  bool hasIsAvailabe() => _isAvailabe != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  static DtOrderCauseReasonStruct fromMap(Map<String, dynamic> data) =>
      DtOrderCauseReasonStruct(
        id: castToType<int>(data['id']),
        description: data['description'] as String?,
        isAvailabe: data['is_availabe'] as bool?,
        isDeleted: data['is_deleted'] as bool?,
      );

  static DtOrderCauseReasonStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderCauseReasonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'is_availabe': _isAvailabe,
        'is_deleted': _isDeleted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'is_availabe': serializeParam(
          _isAvailabe,
          ParamType.bool,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtOrderCauseReasonStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderCauseReasonStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isAvailabe: deserializeParam(
          data['is_availabe'],
          ParamType.bool,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderCauseReasonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderCauseReasonStruct &&
        id == other.id &&
        description == other.description &&
        isAvailabe == other.isAvailabe &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, description, isAvailabe, isDeleted]);
}

DtOrderCauseReasonStruct createDtOrderCauseReasonStruct({
  int? id,
  String? description,
  bool? isAvailabe,
  bool? isDeleted,
}) =>
    DtOrderCauseReasonStruct(
      id: id,
      description: description,
      isAvailabe: isAvailabe,
      isDeleted: isDeleted,
    );

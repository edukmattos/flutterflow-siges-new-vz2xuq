// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtContractManagerStruct extends BaseStruct {
  DtContractManagerStruct({
    int? contractId,
    int? managerId,
  })  : _contractId = contractId,
        _managerId = managerId;

  // "contract_id" field.
  int? _contractId;
  int get contractId => _contractId ?? 0;
  set contractId(int? val) => _contractId = val;

  void incrementContractId(int amount) => contractId = contractId + amount;

  bool hasContractId() => _contractId != null;

  // "manager_id" field.
  int? _managerId;
  int get managerId => _managerId ?? 0;
  set managerId(int? val) => _managerId = val;

  void incrementManagerId(int amount) => managerId = managerId + amount;

  bool hasManagerId() => _managerId != null;

  static DtContractManagerStruct fromMap(Map<String, dynamic> data) =>
      DtContractManagerStruct(
        contractId: castToType<int>(data['contract_id']),
        managerId: castToType<int>(data['manager_id']),
      );

  static DtContractManagerStruct? maybeFromMap(dynamic data) => data is Map
      ? DtContractManagerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'contract_id': _contractId,
        'manager_id': _managerId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contract_id': serializeParam(
          _contractId,
          ParamType.int,
        ),
        'manager_id': serializeParam(
          _managerId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtContractManagerStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtContractManagerStruct(
        contractId: deserializeParam(
          data['contract_id'],
          ParamType.int,
          false,
        ),
        managerId: deserializeParam(
          data['manager_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtContractManagerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtContractManagerStruct &&
        contractId == other.contractId &&
        managerId == other.managerId;
  }

  @override
  int get hashCode => const ListEquality().hash([contractId, managerId]);
}

DtContractManagerStruct createDtContractManagerStruct({
  int? contractId,
  int? managerId,
}) =>
    DtContractManagerStruct(
      contractId: contractId,
      managerId: managerId,
    );

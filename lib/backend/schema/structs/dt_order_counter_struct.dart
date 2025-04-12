// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderCounterStruct extends BaseStruct {
  DtOrderCounterStruct({
    int? counter,
  }) : _counter = counter;

  // "counter" field.
  int? _counter;
  int get counter => _counter ?? 0;
  set counter(int? val) => _counter = val;

  void incrementCounter(int amount) => counter = counter + amount;

  bool hasCounter() => _counter != null;

  static DtOrderCounterStruct fromMap(Map<String, dynamic> data) =>
      DtOrderCounterStruct(
        counter: castToType<int>(data['counter']),
      );

  static DtOrderCounterStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderCounterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'counter': _counter,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'counter': serializeParam(
          _counter,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtOrderCounterStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderCounterStruct(
        counter: deserializeParam(
          data['counter'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderCounterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderCounterStruct && counter == other.counter;
  }

  @override
  int get hashCode => const ListEquality().hash([counter]);
}

DtOrderCounterStruct createDtOrderCounterStruct({
  int? counter,
}) =>
    DtOrderCounterStruct(
      counter: counter,
    );

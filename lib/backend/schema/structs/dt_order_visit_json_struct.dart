// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitJsonStruct extends BaseStruct {
  DtOrderVisitJsonStruct({
    String? data,
  }) : _data = data;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  static DtOrderVisitJsonStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitJsonStruct(
        data: data['data'] as String?,
      );

  static DtOrderVisitJsonStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitJsonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitJsonStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitJsonStruct(
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitJsonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitJsonStruct && data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

DtOrderVisitJsonStruct createDtOrderVisitJsonStruct({
  String? data,
}) =>
    DtOrderVisitJsonStruct(
      data: data,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderFollowerStruct extends BaseStruct {
  DtOrderFollowerStruct({
    int? id,
    int? orderId,
    int? userId,
    String? mobileWhatsapp,
  })  : _id = id,
        _orderId = orderId,
        _userId = userId,
        _mobileWhatsapp = mobileWhatsapp;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "order_id" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  set orderId(int? val) => _orderId = val;

  void incrementOrderId(int amount) => orderId = orderId + amount;

  bool hasOrderId() => _orderId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "mobile_whatsapp" field.
  String? _mobileWhatsapp;
  String get mobileWhatsapp => _mobileWhatsapp ?? '';
  set mobileWhatsapp(String? val) => _mobileWhatsapp = val;

  bool hasMobileWhatsapp() => _mobileWhatsapp != null;

  static DtOrderFollowerStruct fromMap(Map<String, dynamic> data) =>
      DtOrderFollowerStruct(
        id: castToType<int>(data['id']),
        orderId: castToType<int>(data['order_id']),
        userId: castToType<int>(data['user_id']),
        mobileWhatsapp: data['mobile_whatsapp'] as String?,
      );

  static DtOrderFollowerStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderFollowerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'order_id': _orderId,
        'user_id': _userId,
        'mobile_whatsapp': _mobileWhatsapp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'order_id': serializeParam(
          _orderId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'mobile_whatsapp': serializeParam(
          _mobileWhatsapp,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderFollowerStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderFollowerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        orderId: deserializeParam(
          data['order_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        mobileWhatsapp: deserializeParam(
          data['mobile_whatsapp'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderFollowerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderFollowerStruct &&
        id == other.id &&
        orderId == other.orderId &&
        userId == other.userId &&
        mobileWhatsapp == other.mobileWhatsapp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, orderId, userId, mobileWhatsapp]);
}

DtOrderFollowerStruct createDtOrderFollowerStruct({
  int? id,
  int? orderId,
  int? userId,
  String? mobileWhatsapp,
}) =>
    DtOrderFollowerStruct(
      id: id,
      orderId: orderId,
      userId: userId,
      mobileWhatsapp: mobileWhatsapp,
    );

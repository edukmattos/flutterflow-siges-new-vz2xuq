// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUserNotificationStruct extends BaseStruct {
  DtUserNotificationStruct({
    int? id,
    String? createdAt,
    int? userIdTo,
    int? userIdFrom,
    String? title,
    String? body,
    bool? isRead,
    String? readAt,
    int? unitId,
    String? imgUrl,
    String? type,
    int? oId,
    int? vId,
    int? activityId,
    int? companyId,
    String? tokenFcm,
    String? imgFilePath,
    String? imgFileName,
    String? userFromNameShort,
    String? pageTarget,
  })  : _id = id,
        _createdAt = createdAt,
        _userIdTo = userIdTo,
        _userIdFrom = userIdFrom,
        _title = title,
        _body = body,
        _isRead = isRead,
        _readAt = readAt,
        _unitId = unitId,
        _imgUrl = imgUrl,
        _type = type,
        _oId = oId,
        _vId = vId,
        _activityId = activityId,
        _companyId = companyId,
        _tokenFcm = tokenFcm,
        _imgFilePath = imgFilePath,
        _imgFileName = imgFileName,
        _userFromNameShort = userFromNameShort,
        _pageTarget = pageTarget;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "user_id_to" field.
  int? _userIdTo;
  int get userIdTo => _userIdTo ?? 0;
  set userIdTo(int? val) => _userIdTo = val;

  void incrementUserIdTo(int amount) => userIdTo = userIdTo + amount;

  bool hasUserIdTo() => _userIdTo != null;

  // "user_id_from" field.
  int? _userIdFrom;
  int get userIdFrom => _userIdFrom ?? 0;
  set userIdFrom(int? val) => _userIdFrom = val;

  void incrementUserIdFrom(int amount) => userIdFrom = userIdFrom + amount;

  bool hasUserIdFrom() => _userIdFrom != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;

  bool hasBody() => _body != null;

  // "is_read" field.
  bool? _isRead;
  bool get isRead => _isRead ?? false;
  set isRead(bool? val) => _isRead = val;

  bool hasIsRead() => _isRead != null;

  // "read_at" field.
  String? _readAt;
  String get readAt => _readAt ?? '';
  set readAt(String? val) => _readAt = val;

  bool hasReadAt() => _readAt != null;

  // "unit_id" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  set unitId(int? val) => _unitId = val;

  void incrementUnitId(int amount) => unitId = unitId + amount;

  bool hasUnitId() => _unitId != null;

  // "img_url" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  set imgUrl(String? val) => _imgUrl = val;

  bool hasImgUrl() => _imgUrl != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "o_id" field.
  int? _oId;
  int get oId => _oId ?? 0;
  set oId(int? val) => _oId = val;

  void incrementOId(int amount) => oId = oId + amount;

  bool hasOId() => _oId != null;

  // "v_id" field.
  int? _vId;
  int get vId => _vId ?? 0;
  set vId(int? val) => _vId = val;

  void incrementVId(int amount) => vId = vId + amount;

  bool hasVId() => _vId != null;

  // "activity_id" field.
  int? _activityId;
  int get activityId => _activityId ?? 0;
  set activityId(int? val) => _activityId = val;

  void incrementActivityId(int amount) => activityId = activityId + amount;

  bool hasActivityId() => _activityId != null;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "token_fcm" field.
  String? _tokenFcm;
  String get tokenFcm => _tokenFcm ?? '';
  set tokenFcm(String? val) => _tokenFcm = val;

  bool hasTokenFcm() => _tokenFcm != null;

  // "img_file_path" field.
  String? _imgFilePath;
  String get imgFilePath => _imgFilePath ?? '';
  set imgFilePath(String? val) => _imgFilePath = val;

  bool hasImgFilePath() => _imgFilePath != null;

  // "img_file_name" field.
  String? _imgFileName;
  String get imgFileName => _imgFileName ?? '';
  set imgFileName(String? val) => _imgFileName = val;

  bool hasImgFileName() => _imgFileName != null;

  // "user_from_name_short" field.
  String? _userFromNameShort;
  String get userFromNameShort => _userFromNameShort ?? '';
  set userFromNameShort(String? val) => _userFromNameShort = val;

  bool hasUserFromNameShort() => _userFromNameShort != null;

  // "page_target" field.
  String? _pageTarget;
  String get pageTarget => _pageTarget ?? '';
  set pageTarget(String? val) => _pageTarget = val;

  bool hasPageTarget() => _pageTarget != null;

  static DtUserNotificationStruct fromMap(Map<String, dynamic> data) =>
      DtUserNotificationStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        userIdTo: castToType<int>(data['user_id_to']),
        userIdFrom: castToType<int>(data['user_id_from']),
        title: data['title'] as String?,
        body: data['body'] as String?,
        isRead: data['is_read'] as bool?,
        readAt: data['read_at'] as String?,
        unitId: castToType<int>(data['unit_id']),
        imgUrl: data['img_url'] as String?,
        type: data['type'] as String?,
        oId: castToType<int>(data['o_id']),
        vId: castToType<int>(data['v_id']),
        activityId: castToType<int>(data['activity_id']),
        companyId: castToType<int>(data['company_id']),
        tokenFcm: data['token_fcm'] as String?,
        imgFilePath: data['img_file_path'] as String?,
        imgFileName: data['img_file_name'] as String?,
        userFromNameShort: data['user_from_name_short'] as String?,
        pageTarget: data['page_target'] as String?,
      );

  static DtUserNotificationStruct? maybeFromMap(dynamic data) => data is Map
      ? DtUserNotificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'user_id_to': _userIdTo,
        'user_id_from': _userIdFrom,
        'title': _title,
        'body': _body,
        'is_read': _isRead,
        'read_at': _readAt,
        'unit_id': _unitId,
        'img_url': _imgUrl,
        'type': _type,
        'o_id': _oId,
        'v_id': _vId,
        'activity_id': _activityId,
        'company_id': _companyId,
        'token_fcm': _tokenFcm,
        'img_file_path': _imgFilePath,
        'img_file_name': _imgFileName,
        'user_from_name_short': _userFromNameShort,
        'page_target': _pageTarget,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'user_id_to': serializeParam(
          _userIdTo,
          ParamType.int,
        ),
        'user_id_from': serializeParam(
          _userIdFrom,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'body': serializeParam(
          _body,
          ParamType.String,
        ),
        'is_read': serializeParam(
          _isRead,
          ParamType.bool,
        ),
        'read_at': serializeParam(
          _readAt,
          ParamType.String,
        ),
        'unit_id': serializeParam(
          _unitId,
          ParamType.int,
        ),
        'img_url': serializeParam(
          _imgUrl,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'o_id': serializeParam(
          _oId,
          ParamType.int,
        ),
        'v_id': serializeParam(
          _vId,
          ParamType.int,
        ),
        'activity_id': serializeParam(
          _activityId,
          ParamType.int,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'token_fcm': serializeParam(
          _tokenFcm,
          ParamType.String,
        ),
        'img_file_path': serializeParam(
          _imgFilePath,
          ParamType.String,
        ),
        'img_file_name': serializeParam(
          _imgFileName,
          ParamType.String,
        ),
        'user_from_name_short': serializeParam(
          _userFromNameShort,
          ParamType.String,
        ),
        'page_target': serializeParam(
          _pageTarget,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtUserNotificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtUserNotificationStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        userIdTo: deserializeParam(
          data['user_id_to'],
          ParamType.int,
          false,
        ),
        userIdFrom: deserializeParam(
          data['user_id_from'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        body: deserializeParam(
          data['body'],
          ParamType.String,
          false,
        ),
        isRead: deserializeParam(
          data['is_read'],
          ParamType.bool,
          false,
        ),
        readAt: deserializeParam(
          data['read_at'],
          ParamType.String,
          false,
        ),
        unitId: deserializeParam(
          data['unit_id'],
          ParamType.int,
          false,
        ),
        imgUrl: deserializeParam(
          data['img_url'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        oId: deserializeParam(
          data['o_id'],
          ParamType.int,
          false,
        ),
        vId: deserializeParam(
          data['v_id'],
          ParamType.int,
          false,
        ),
        activityId: deserializeParam(
          data['activity_id'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        tokenFcm: deserializeParam(
          data['token_fcm'],
          ParamType.String,
          false,
        ),
        imgFilePath: deserializeParam(
          data['img_file_path'],
          ParamType.String,
          false,
        ),
        imgFileName: deserializeParam(
          data['img_file_name'],
          ParamType.String,
          false,
        ),
        userFromNameShort: deserializeParam(
          data['user_from_name_short'],
          ParamType.String,
          false,
        ),
        pageTarget: deserializeParam(
          data['page_target'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtUserNotificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUserNotificationStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        userIdTo == other.userIdTo &&
        userIdFrom == other.userIdFrom &&
        title == other.title &&
        body == other.body &&
        isRead == other.isRead &&
        readAt == other.readAt &&
        unitId == other.unitId &&
        imgUrl == other.imgUrl &&
        type == other.type &&
        oId == other.oId &&
        vId == other.vId &&
        activityId == other.activityId &&
        companyId == other.companyId &&
        tokenFcm == other.tokenFcm &&
        imgFilePath == other.imgFilePath &&
        imgFileName == other.imgFileName &&
        userFromNameShort == other.userFromNameShort &&
        pageTarget == other.pageTarget;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        userIdTo,
        userIdFrom,
        title,
        body,
        isRead,
        readAt,
        unitId,
        imgUrl,
        type,
        oId,
        vId,
        activityId,
        companyId,
        tokenFcm,
        imgFilePath,
        imgFileName,
        userFromNameShort,
        pageTarget
      ]);
}

DtUserNotificationStruct createDtUserNotificationStruct({
  int? id,
  String? createdAt,
  int? userIdTo,
  int? userIdFrom,
  String? title,
  String? body,
  bool? isRead,
  String? readAt,
  int? unitId,
  String? imgUrl,
  String? type,
  int? oId,
  int? vId,
  int? activityId,
  int? companyId,
  String? tokenFcm,
  String? imgFilePath,
  String? imgFileName,
  String? userFromNameShort,
  String? pageTarget,
}) =>
    DtUserNotificationStruct(
      id: id,
      createdAt: createdAt,
      userIdTo: userIdTo,
      userIdFrom: userIdFrom,
      title: title,
      body: body,
      isRead: isRead,
      readAt: readAt,
      unitId: unitId,
      imgUrl: imgUrl,
      type: type,
      oId: oId,
      vId: vId,
      activityId: activityId,
      companyId: companyId,
      tokenFcm: tokenFcm,
      imgFilePath: imgFilePath,
      imgFileName: imgFileName,
      userFromNameShort: userFromNameShort,
      pageTarget: pageTarget,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitTeamUserStruct extends BaseStruct {
  DtOrderVisitTeamUserStruct({
    int? ovId,
    int? orderBy,
    bool? isLeader,
    int? userId,
    String? nameShort,
    String? imgFilePath,
    String? imgFileName,
    String? ovStartedAt,
    String? ovEndedAt,
    bool? isAvailable,
    bool? isOvInProgress,
    String? versionMode,
  })  : _ovId = ovId,
        _orderBy = orderBy,
        _isLeader = isLeader,
        _userId = userId,
        _nameShort = nameShort,
        _imgFilePath = imgFilePath,
        _imgFileName = imgFileName,
        _ovStartedAt = ovStartedAt,
        _ovEndedAt = ovEndedAt,
        _isAvailable = isAvailable,
        _isOvInProgress = isOvInProgress,
        _versionMode = versionMode;

  // "ov_id" field.
  int? _ovId;
  int get ovId => _ovId ?? 0;
  set ovId(int? val) => _ovId = val;

  void incrementOvId(int amount) => ovId = ovId + amount;

  bool hasOvId() => _ovId != null;

  // "order_by" field.
  int? _orderBy;
  int get orderBy => _orderBy ?? 0;
  set orderBy(int? val) => _orderBy = val;

  void incrementOrderBy(int amount) => orderBy = orderBy + amount;

  bool hasOrderBy() => _orderBy != null;

  // "is_leader" field.
  bool? _isLeader;
  bool get isLeader => _isLeader ?? false;
  set isLeader(bool? val) => _isLeader = val;

  bool hasIsLeader() => _isLeader != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "name_short" field.
  String? _nameShort;
  String get nameShort => _nameShort ?? '';
  set nameShort(String? val) => _nameShort = val;

  bool hasNameShort() => _nameShort != null;

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

  // "ov_started_at" field.
  String? _ovStartedAt;
  String get ovStartedAt => _ovStartedAt ?? '';
  set ovStartedAt(String? val) => _ovStartedAt = val;

  bool hasOvStartedAt() => _ovStartedAt != null;

  // "ov_ended_at" field.
  String? _ovEndedAt;
  String get ovEndedAt => _ovEndedAt ?? '';
  set ovEndedAt(String? val) => _ovEndedAt = val;

  bool hasOvEndedAt() => _ovEndedAt != null;

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "is_ov_in_progress" field.
  bool? _isOvInProgress;
  bool get isOvInProgress => _isOvInProgress ?? false;
  set isOvInProgress(bool? val) => _isOvInProgress = val;

  bool hasIsOvInProgress() => _isOvInProgress != null;

  // "version_mode" field.
  String? _versionMode;
  String get versionMode => _versionMode ?? '';
  set versionMode(String? val) => _versionMode = val;

  bool hasVersionMode() => _versionMode != null;

  static DtOrderVisitTeamUserStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitTeamUserStruct(
        ovId: castToType<int>(data['ov_id']),
        orderBy: castToType<int>(data['order_by']),
        isLeader: data['is_leader'] as bool?,
        userId: castToType<int>(data['user_id']),
        nameShort: data['name_short'] as String?,
        imgFilePath: data['img_file_path'] as String?,
        imgFileName: data['img_file_name'] as String?,
        ovStartedAt: data['ov_started_at'] as String?,
        ovEndedAt: data['ov_ended_at'] as String?,
        isAvailable: data['is_available'] as bool?,
        isOvInProgress: data['is_ov_in_progress'] as bool?,
        versionMode: data['version_mode'] as String?,
      );

  static DtOrderVisitTeamUserStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitTeamUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ov_id': _ovId,
        'order_by': _orderBy,
        'is_leader': _isLeader,
        'user_id': _userId,
        'name_short': _nameShort,
        'img_file_path': _imgFilePath,
        'img_file_name': _imgFileName,
        'ov_started_at': _ovStartedAt,
        'ov_ended_at': _ovEndedAt,
        'is_available': _isAvailable,
        'is_ov_in_progress': _isOvInProgress,
        'version_mode': _versionMode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ov_id': serializeParam(
          _ovId,
          ParamType.int,
        ),
        'order_by': serializeParam(
          _orderBy,
          ParamType.int,
        ),
        'is_leader': serializeParam(
          _isLeader,
          ParamType.bool,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'name_short': serializeParam(
          _nameShort,
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
        'ov_started_at': serializeParam(
          _ovStartedAt,
          ParamType.String,
        ),
        'ov_ended_at': serializeParam(
          _ovEndedAt,
          ParamType.String,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_ov_in_progress': serializeParam(
          _isOvInProgress,
          ParamType.bool,
        ),
        'version_mode': serializeParam(
          _versionMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitTeamUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitTeamUserStruct(
        ovId: deserializeParam(
          data['ov_id'],
          ParamType.int,
          false,
        ),
        orderBy: deserializeParam(
          data['order_by'],
          ParamType.int,
          false,
        ),
        isLeader: deserializeParam(
          data['is_leader'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        nameShort: deserializeParam(
          data['name_short'],
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
        ovStartedAt: deserializeParam(
          data['ov_started_at'],
          ParamType.String,
          false,
        ),
        ovEndedAt: deserializeParam(
          data['ov_ended_at'],
          ParamType.String,
          false,
        ),
        isAvailable: deserializeParam(
          data['is_available'],
          ParamType.bool,
          false,
        ),
        isOvInProgress: deserializeParam(
          data['is_ov_in_progress'],
          ParamType.bool,
          false,
        ),
        versionMode: deserializeParam(
          data['version_mode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitTeamUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitTeamUserStruct &&
        ovId == other.ovId &&
        orderBy == other.orderBy &&
        isLeader == other.isLeader &&
        userId == other.userId &&
        nameShort == other.nameShort &&
        imgFilePath == other.imgFilePath &&
        imgFileName == other.imgFileName &&
        ovStartedAt == other.ovStartedAt &&
        ovEndedAt == other.ovEndedAt &&
        isAvailable == other.isAvailable &&
        isOvInProgress == other.isOvInProgress &&
        versionMode == other.versionMode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        ovId,
        orderBy,
        isLeader,
        userId,
        nameShort,
        imgFilePath,
        imgFileName,
        ovStartedAt,
        ovEndedAt,
        isAvailable,
        isOvInProgress,
        versionMode
      ]);
}

DtOrderVisitTeamUserStruct createDtOrderVisitTeamUserStruct({
  int? ovId,
  int? orderBy,
  bool? isLeader,
  int? userId,
  String? nameShort,
  String? imgFilePath,
  String? imgFileName,
  String? ovStartedAt,
  String? ovEndedAt,
  bool? isAvailable,
  bool? isOvInProgress,
  String? versionMode,
}) =>
    DtOrderVisitTeamUserStruct(
      ovId: ovId,
      orderBy: orderBy,
      isLeader: isLeader,
      userId: userId,
      nameShort: nameShort,
      imgFilePath: imgFilePath,
      imgFileName: imgFileName,
      ovStartedAt: ovStartedAt,
      ovEndedAt: ovEndedAt,
      isAvailable: isAvailable,
      isOvInProgress: isOvInProgress,
      versionMode: versionMode,
    );

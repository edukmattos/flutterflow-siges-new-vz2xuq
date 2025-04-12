// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitExtraTeamUserStruct extends BaseStruct {
  DtOrderVisitExtraTeamUserStruct({
    int? id,
    int? oveId,
    int? orderBy,
    bool? isLeader,
    int? userId,
    String? nameShort,
    String? imgFilePath,
    String? imgFileName,
    String? startedAt,
    String? endedAt,
    double? durationHours,
    bool? isAvailable,
    bool? isOvInProgress,
  })  : _id = id,
        _oveId = oveId,
        _orderBy = orderBy,
        _isLeader = isLeader,
        _userId = userId,
        _nameShort = nameShort,
        _imgFilePath = imgFilePath,
        _imgFileName = imgFileName,
        _startedAt = startedAt,
        _endedAt = endedAt,
        _durationHours = durationHours,
        _isAvailable = isAvailable,
        _isOvInProgress = isOvInProgress;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "ove_id" field.
  int? _oveId;
  int get oveId => _oveId ?? 0;
  set oveId(int? val) => _oveId = val;

  void incrementOveId(int amount) => oveId = oveId + amount;

  bool hasOveId() => _oveId != null;

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

  // "started_at" field.
  String? _startedAt;
  String get startedAt => _startedAt ?? '';
  set startedAt(String? val) => _startedAt = val;

  bool hasStartedAt() => _startedAt != null;

  // "ended_at" field.
  String? _endedAt;
  String get endedAt => _endedAt ?? '';
  set endedAt(String? val) => _endedAt = val;

  bool hasEndedAt() => _endedAt != null;

  // "duration_hours" field.
  double? _durationHours;
  double get durationHours => _durationHours ?? 0.0;
  set durationHours(double? val) => _durationHours = val;

  void incrementDurationHours(double amount) =>
      durationHours = durationHours + amount;

  bool hasDurationHours() => _durationHours != null;

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

  static DtOrderVisitExtraTeamUserStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitExtraTeamUserStruct(
        id: castToType<int>(data['id']),
        oveId: castToType<int>(data['ove_id']),
        orderBy: castToType<int>(data['order_by']),
        isLeader: data['is_leader'] as bool?,
        userId: castToType<int>(data['user_id']),
        nameShort: data['name_short'] as String?,
        imgFilePath: data['img_file_path'] as String?,
        imgFileName: data['img_file_name'] as String?,
        startedAt: data['started_at'] as String?,
        endedAt: data['ended_at'] as String?,
        durationHours: castToType<double>(data['duration_hours']),
        isAvailable: data['is_available'] as bool?,
        isOvInProgress: data['is_ov_in_progress'] as bool?,
      );

  static DtOrderVisitExtraTeamUserStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DtOrderVisitExtraTeamUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'ove_id': _oveId,
        'order_by': _orderBy,
        'is_leader': _isLeader,
        'user_id': _userId,
        'name_short': _nameShort,
        'img_file_path': _imgFilePath,
        'img_file_name': _imgFileName,
        'started_at': _startedAt,
        'ended_at': _endedAt,
        'duration_hours': _durationHours,
        'is_available': _isAvailable,
        'is_ov_in_progress': _isOvInProgress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'ove_id': serializeParam(
          _oveId,
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
        'started_at': serializeParam(
          _startedAt,
          ParamType.String,
        ),
        'ended_at': serializeParam(
          _endedAt,
          ParamType.String,
        ),
        'duration_hours': serializeParam(
          _durationHours,
          ParamType.double,
        ),
        'is_available': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'is_ov_in_progress': serializeParam(
          _isOvInProgress,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtOrderVisitExtraTeamUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitExtraTeamUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        oveId: deserializeParam(
          data['ove_id'],
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
        startedAt: deserializeParam(
          data['started_at'],
          ParamType.String,
          false,
        ),
        endedAt: deserializeParam(
          data['ended_at'],
          ParamType.String,
          false,
        ),
        durationHours: deserializeParam(
          data['duration_hours'],
          ParamType.double,
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
      );

  @override
  String toString() => 'DtOrderVisitExtraTeamUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitExtraTeamUserStruct &&
        id == other.id &&
        oveId == other.oveId &&
        orderBy == other.orderBy &&
        isLeader == other.isLeader &&
        userId == other.userId &&
        nameShort == other.nameShort &&
        imgFilePath == other.imgFilePath &&
        imgFileName == other.imgFileName &&
        startedAt == other.startedAt &&
        endedAt == other.endedAt &&
        durationHours == other.durationHours &&
        isAvailable == other.isAvailable &&
        isOvInProgress == other.isOvInProgress;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        oveId,
        orderBy,
        isLeader,
        userId,
        nameShort,
        imgFilePath,
        imgFileName,
        startedAt,
        endedAt,
        durationHours,
        isAvailable,
        isOvInProgress
      ]);
}

DtOrderVisitExtraTeamUserStruct createDtOrderVisitExtraTeamUserStruct({
  int? id,
  int? oveId,
  int? orderBy,
  bool? isLeader,
  int? userId,
  String? nameShort,
  String? imgFilePath,
  String? imgFileName,
  String? startedAt,
  String? endedAt,
  double? durationHours,
  bool? isAvailable,
  bool? isOvInProgress,
}) =>
    DtOrderVisitExtraTeamUserStruct(
      id: id,
      oveId: oveId,
      orderBy: orderBy,
      isLeader: isLeader,
      userId: userId,
      nameShort: nameShort,
      imgFilePath: imgFilePath,
      imgFileName: imgFileName,
      startedAt: startedAt,
      endedAt: endedAt,
      durationHours: durationHours,
      isAvailable: isAvailable,
      isOvInProgress: isOvInProgress,
    );

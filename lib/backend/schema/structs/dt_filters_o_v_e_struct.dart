// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtFiltersOVEStruct extends BaseStruct {
  DtFiltersOVEStruct({
    DateTime? dateStart,
    DateTime? dateEnd,
    List<int>? teamsIds,
    List<int>? unitsIds,
    List<int>? oTypesIds,
    List<int>? oTypesSubsIds,
    List<int>? teamsLeadersIds,
    List<int>? assetsTagsIds,
    String? pgAdmin,
    List<int>? systemsParentsIds,
    List<int>? systemsIds,
    List<int>? unitsTypesParentsIds,
    List<int>? unitsTypesIds,
    List<int>? oCausesReasonsIds,
  })  : _dateStart = dateStart,
        _dateEnd = dateEnd,
        _teamsIds = teamsIds,
        _unitsIds = unitsIds,
        _oTypesIds = oTypesIds,
        _oTypesSubsIds = oTypesSubsIds,
        _teamsLeadersIds = teamsLeadersIds,
        _assetsTagsIds = assetsTagsIds,
        _pgAdmin = pgAdmin,
        _systemsParentsIds = systemsParentsIds,
        _systemsIds = systemsIds,
        _unitsTypesParentsIds = unitsTypesParentsIds,
        _unitsTypesIds = unitsTypesIds,
        _oCausesReasonsIds = oCausesReasonsIds;

  // "date_start" field.
  DateTime? _dateStart;
  DateTime? get dateStart => _dateStart;
  set dateStart(DateTime? val) => _dateStart = val;

  bool hasDateStart() => _dateStart != null;

  // "date_end" field.
  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  set dateEnd(DateTime? val) => _dateEnd = val;

  bool hasDateEnd() => _dateEnd != null;

  // "teams_ids" field.
  List<int>? _teamsIds;
  List<int> get teamsIds => _teamsIds ?? const [];
  set teamsIds(List<int>? val) => _teamsIds = val;

  void updateTeamsIds(Function(List<int>) updateFn) {
    updateFn(_teamsIds ??= []);
  }

  bool hasTeamsIds() => _teamsIds != null;

  // "units_ids" field.
  List<int>? _unitsIds;
  List<int> get unitsIds => _unitsIds ?? const [];
  set unitsIds(List<int>? val) => _unitsIds = val;

  void updateUnitsIds(Function(List<int>) updateFn) {
    updateFn(_unitsIds ??= []);
  }

  bool hasUnitsIds() => _unitsIds != null;

  // "o_types_ids" field.
  List<int>? _oTypesIds;
  List<int> get oTypesIds => _oTypesIds ?? const [];
  set oTypesIds(List<int>? val) => _oTypesIds = val;

  void updateOTypesIds(Function(List<int>) updateFn) {
    updateFn(_oTypesIds ??= []);
  }

  bool hasOTypesIds() => _oTypesIds != null;

  // "o_types_subs_ids" field.
  List<int>? _oTypesSubsIds;
  List<int> get oTypesSubsIds => _oTypesSubsIds ?? const [];
  set oTypesSubsIds(List<int>? val) => _oTypesSubsIds = val;

  void updateOTypesSubsIds(Function(List<int>) updateFn) {
    updateFn(_oTypesSubsIds ??= []);
  }

  bool hasOTypesSubsIds() => _oTypesSubsIds != null;

  // "teams_leaders_ids" field.
  List<int>? _teamsLeadersIds;
  List<int> get teamsLeadersIds => _teamsLeadersIds ?? const [];
  set teamsLeadersIds(List<int>? val) => _teamsLeadersIds = val;

  void updateTeamsLeadersIds(Function(List<int>) updateFn) {
    updateFn(_teamsLeadersIds ??= []);
  }

  bool hasTeamsLeadersIds() => _teamsLeadersIds != null;

  // "assets_tags_ids" field.
  List<int>? _assetsTagsIds;
  List<int> get assetsTagsIds => _assetsTagsIds ?? const [];
  set assetsTagsIds(List<int>? val) => _assetsTagsIds = val;

  void updateAssetsTagsIds(Function(List<int>) updateFn) {
    updateFn(_assetsTagsIds ??= []);
  }

  bool hasAssetsTagsIds() => _assetsTagsIds != null;

  // "pg_admin" field.
  String? _pgAdmin;
  String get pgAdmin => _pgAdmin ?? '';
  set pgAdmin(String? val) => _pgAdmin = val;

  bool hasPgAdmin() => _pgAdmin != null;

  // "systems_parents_ids" field.
  List<int>? _systemsParentsIds;
  List<int> get systemsParentsIds => _systemsParentsIds ?? const [];
  set systemsParentsIds(List<int>? val) => _systemsParentsIds = val;

  void updateSystemsParentsIds(Function(List<int>) updateFn) {
    updateFn(_systemsParentsIds ??= []);
  }

  bool hasSystemsParentsIds() => _systemsParentsIds != null;

  // "systems_ids" field.
  List<int>? _systemsIds;
  List<int> get systemsIds => _systemsIds ?? const [];
  set systemsIds(List<int>? val) => _systemsIds = val;

  void updateSystemsIds(Function(List<int>) updateFn) {
    updateFn(_systemsIds ??= []);
  }

  bool hasSystemsIds() => _systemsIds != null;

  // "units_types_parents_ids" field.
  List<int>? _unitsTypesParentsIds;
  List<int> get unitsTypesParentsIds => _unitsTypesParentsIds ?? const [];
  set unitsTypesParentsIds(List<int>? val) => _unitsTypesParentsIds = val;

  void updateUnitsTypesParentsIds(Function(List<int>) updateFn) {
    updateFn(_unitsTypesParentsIds ??= []);
  }

  bool hasUnitsTypesParentsIds() => _unitsTypesParentsIds != null;

  // "units_types_ids" field.
  List<int>? _unitsTypesIds;
  List<int> get unitsTypesIds => _unitsTypesIds ?? const [];
  set unitsTypesIds(List<int>? val) => _unitsTypesIds = val;

  void updateUnitsTypesIds(Function(List<int>) updateFn) {
    updateFn(_unitsTypesIds ??= []);
  }

  bool hasUnitsTypesIds() => _unitsTypesIds != null;

  // "o_causes_reasons_ids" field.
  List<int>? _oCausesReasonsIds;
  List<int> get oCausesReasonsIds => _oCausesReasonsIds ?? const [];
  set oCausesReasonsIds(List<int>? val) => _oCausesReasonsIds = val;

  void updateOCausesReasonsIds(Function(List<int>) updateFn) {
    updateFn(_oCausesReasonsIds ??= []);
  }

  bool hasOCausesReasonsIds() => _oCausesReasonsIds != null;

  static DtFiltersOVEStruct fromMap(Map<String, dynamic> data) =>
      DtFiltersOVEStruct(
        dateStart: data['date_start'] as DateTime?,
        dateEnd: data['date_end'] as DateTime?,
        teamsIds: getDataList(data['teams_ids']),
        unitsIds: getDataList(data['units_ids']),
        oTypesIds: getDataList(data['o_types_ids']),
        oTypesSubsIds: getDataList(data['o_types_subs_ids']),
        teamsLeadersIds: getDataList(data['teams_leaders_ids']),
        assetsTagsIds: getDataList(data['assets_tags_ids']),
        pgAdmin: data['pg_admin'] as String?,
        systemsParentsIds: getDataList(data['systems_parents_ids']),
        systemsIds: getDataList(data['systems_ids']),
        unitsTypesParentsIds: getDataList(data['units_types_parents_ids']),
        unitsTypesIds: getDataList(data['units_types_ids']),
        oCausesReasonsIds: getDataList(data['o_causes_reasons_ids']),
      );

  static DtFiltersOVEStruct? maybeFromMap(dynamic data) => data is Map
      ? DtFiltersOVEStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date_start': _dateStart,
        'date_end': _dateEnd,
        'teams_ids': _teamsIds,
        'units_ids': _unitsIds,
        'o_types_ids': _oTypesIds,
        'o_types_subs_ids': _oTypesSubsIds,
        'teams_leaders_ids': _teamsLeadersIds,
        'assets_tags_ids': _assetsTagsIds,
        'pg_admin': _pgAdmin,
        'systems_parents_ids': _systemsParentsIds,
        'systems_ids': _systemsIds,
        'units_types_parents_ids': _unitsTypesParentsIds,
        'units_types_ids': _unitsTypesIds,
        'o_causes_reasons_ids': _oCausesReasonsIds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date_start': serializeParam(
          _dateStart,
          ParamType.DateTime,
        ),
        'date_end': serializeParam(
          _dateEnd,
          ParamType.DateTime,
        ),
        'teams_ids': serializeParam(
          _teamsIds,
          ParamType.int,
          isList: true,
        ),
        'units_ids': serializeParam(
          _unitsIds,
          ParamType.int,
          isList: true,
        ),
        'o_types_ids': serializeParam(
          _oTypesIds,
          ParamType.int,
          isList: true,
        ),
        'o_types_subs_ids': serializeParam(
          _oTypesSubsIds,
          ParamType.int,
          isList: true,
        ),
        'teams_leaders_ids': serializeParam(
          _teamsLeadersIds,
          ParamType.int,
          isList: true,
        ),
        'assets_tags_ids': serializeParam(
          _assetsTagsIds,
          ParamType.int,
          isList: true,
        ),
        'pg_admin': serializeParam(
          _pgAdmin,
          ParamType.String,
        ),
        'systems_parents_ids': serializeParam(
          _systemsParentsIds,
          ParamType.int,
          isList: true,
        ),
        'systems_ids': serializeParam(
          _systemsIds,
          ParamType.int,
          isList: true,
        ),
        'units_types_parents_ids': serializeParam(
          _unitsTypesParentsIds,
          ParamType.int,
          isList: true,
        ),
        'units_types_ids': serializeParam(
          _unitsTypesIds,
          ParamType.int,
          isList: true,
        ),
        'o_causes_reasons_ids': serializeParam(
          _oCausesReasonsIds,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static DtFiltersOVEStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtFiltersOVEStruct(
        dateStart: deserializeParam(
          data['date_start'],
          ParamType.DateTime,
          false,
        ),
        dateEnd: deserializeParam(
          data['date_end'],
          ParamType.DateTime,
          false,
        ),
        teamsIds: deserializeParam<int>(
          data['teams_ids'],
          ParamType.int,
          true,
        ),
        unitsIds: deserializeParam<int>(
          data['units_ids'],
          ParamType.int,
          true,
        ),
        oTypesIds: deserializeParam<int>(
          data['o_types_ids'],
          ParamType.int,
          true,
        ),
        oTypesSubsIds: deserializeParam<int>(
          data['o_types_subs_ids'],
          ParamType.int,
          true,
        ),
        teamsLeadersIds: deserializeParam<int>(
          data['teams_leaders_ids'],
          ParamType.int,
          true,
        ),
        assetsTagsIds: deserializeParam<int>(
          data['assets_tags_ids'],
          ParamType.int,
          true,
        ),
        pgAdmin: deserializeParam(
          data['pg_admin'],
          ParamType.String,
          false,
        ),
        systemsParentsIds: deserializeParam<int>(
          data['systems_parents_ids'],
          ParamType.int,
          true,
        ),
        systemsIds: deserializeParam<int>(
          data['systems_ids'],
          ParamType.int,
          true,
        ),
        unitsTypesParentsIds: deserializeParam<int>(
          data['units_types_parents_ids'],
          ParamType.int,
          true,
        ),
        unitsTypesIds: deserializeParam<int>(
          data['units_types_ids'],
          ParamType.int,
          true,
        ),
        oCausesReasonsIds: deserializeParam<int>(
          data['o_causes_reasons_ids'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'DtFiltersOVEStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DtFiltersOVEStruct &&
        dateStart == other.dateStart &&
        dateEnd == other.dateEnd &&
        listEquality.equals(teamsIds, other.teamsIds) &&
        listEquality.equals(unitsIds, other.unitsIds) &&
        listEquality.equals(oTypesIds, other.oTypesIds) &&
        listEquality.equals(oTypesSubsIds, other.oTypesSubsIds) &&
        listEquality.equals(teamsLeadersIds, other.teamsLeadersIds) &&
        listEquality.equals(assetsTagsIds, other.assetsTagsIds) &&
        pgAdmin == other.pgAdmin &&
        listEquality.equals(systemsParentsIds, other.systemsParentsIds) &&
        listEquality.equals(systemsIds, other.systemsIds) &&
        listEquality.equals(unitsTypesParentsIds, other.unitsTypesParentsIds) &&
        listEquality.equals(unitsTypesIds, other.unitsTypesIds) &&
        listEquality.equals(oCausesReasonsIds, other.oCausesReasonsIds);
  }

  @override
  int get hashCode => const ListEquality().hash([
        dateStart,
        dateEnd,
        teamsIds,
        unitsIds,
        oTypesIds,
        oTypesSubsIds,
        teamsLeadersIds,
        assetsTagsIds,
        pgAdmin,
        systemsParentsIds,
        systemsIds,
        unitsTypesParentsIds,
        unitsTypesIds,
        oCausesReasonsIds
      ]);
}

DtFiltersOVEStruct createDtFiltersOVEStruct({
  DateTime? dateStart,
  DateTime? dateEnd,
  String? pgAdmin,
}) =>
    DtFiltersOVEStruct(
      dateStart: dateStart,
      dateEnd: dateEnd,
      pgAdmin: pgAdmin,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtFiltersUnitsStruct extends BaseStruct {
  DtFiltersUnitsStruct({
    List<int>? systemsParent,
    List<int>? systems,
    List<int>? unitsTypesParent,
    List<int>? unitsTypes,
    int? status,
    String? searchTerms,
  })  : _systemsParent = systemsParent,
        _systems = systems,
        _unitsTypesParent = unitsTypesParent,
        _unitsTypes = unitsTypes,
        _status = status,
        _searchTerms = searchTerms;

  // "systems_parent" field.
  List<int>? _systemsParent;
  List<int> get systemsParent => _systemsParent ?? const [];
  set systemsParent(List<int>? val) => _systemsParent = val;

  void updateSystemsParent(Function(List<int>) updateFn) {
    updateFn(_systemsParent ??= []);
  }

  bool hasSystemsParent() => _systemsParent != null;

  // "systems" field.
  List<int>? _systems;
  List<int> get systems => _systems ?? const [];
  set systems(List<int>? val) => _systems = val;

  void updateSystems(Function(List<int>) updateFn) {
    updateFn(_systems ??= []);
  }

  bool hasSystems() => _systems != null;

  // "units_types_parent" field.
  List<int>? _unitsTypesParent;
  List<int> get unitsTypesParent => _unitsTypesParent ?? const [];
  set unitsTypesParent(List<int>? val) => _unitsTypesParent = val;

  void updateUnitsTypesParent(Function(List<int>) updateFn) {
    updateFn(_unitsTypesParent ??= []);
  }

  bool hasUnitsTypesParent() => _unitsTypesParent != null;

  // "units_types" field.
  List<int>? _unitsTypes;
  List<int> get unitsTypes => _unitsTypes ?? const [];
  set unitsTypes(List<int>? val) => _unitsTypes = val;

  void updateUnitsTypes(Function(List<int>) updateFn) {
    updateFn(_unitsTypes ??= []);
  }

  bool hasUnitsTypes() => _unitsTypes != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "search_terms" field.
  String? _searchTerms;
  String get searchTerms => _searchTerms ?? '';
  set searchTerms(String? val) => _searchTerms = val;

  bool hasSearchTerms() => _searchTerms != null;

  static DtFiltersUnitsStruct fromMap(Map<String, dynamic> data) =>
      DtFiltersUnitsStruct(
        systemsParent: getDataList(data['systems_parent']),
        systems: getDataList(data['systems']),
        unitsTypesParent: getDataList(data['units_types_parent']),
        unitsTypes: getDataList(data['units_types']),
        status: castToType<int>(data['status']),
        searchTerms: data['search_terms'] as String?,
      );

  static DtFiltersUnitsStruct? maybeFromMap(dynamic data) => data is Map
      ? DtFiltersUnitsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'systems_parent': _systemsParent,
        'systems': _systems,
        'units_types_parent': _unitsTypesParent,
        'units_types': _unitsTypes,
        'status': _status,
        'search_terms': _searchTerms,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'systems_parent': serializeParam(
          _systemsParent,
          ParamType.int,
          isList: true,
        ),
        'systems': serializeParam(
          _systems,
          ParamType.int,
          isList: true,
        ),
        'units_types_parent': serializeParam(
          _unitsTypesParent,
          ParamType.int,
          isList: true,
        ),
        'units_types': serializeParam(
          _unitsTypes,
          ParamType.int,
          isList: true,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'search_terms': serializeParam(
          _searchTerms,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtFiltersUnitsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtFiltersUnitsStruct(
        systemsParent: deserializeParam<int>(
          data['systems_parent'],
          ParamType.int,
          true,
        ),
        systems: deserializeParam<int>(
          data['systems'],
          ParamType.int,
          true,
        ),
        unitsTypesParent: deserializeParam<int>(
          data['units_types_parent'],
          ParamType.int,
          true,
        ),
        unitsTypes: deserializeParam<int>(
          data['units_types'],
          ParamType.int,
          true,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        searchTerms: deserializeParam(
          data['search_terms'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtFiltersUnitsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DtFiltersUnitsStruct &&
        listEquality.equals(systemsParent, other.systemsParent) &&
        listEquality.equals(systems, other.systems) &&
        listEquality.equals(unitsTypesParent, other.unitsTypesParent) &&
        listEquality.equals(unitsTypes, other.unitsTypes) &&
        status == other.status &&
        searchTerms == other.searchTerms;
  }

  @override
  int get hashCode => const ListEquality().hash([
        systemsParent,
        systems,
        unitsTypesParent,
        unitsTypes,
        status,
        searchTerms
      ]);
}

DtFiltersUnitsStruct createDtFiltersUnitsStruct({
  int? status,
  String? searchTerms,
}) =>
    DtFiltersUnitsStruct(
      status: status,
      searchTerms: searchTerms,
    );

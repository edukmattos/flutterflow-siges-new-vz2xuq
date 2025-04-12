// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtFiltersServicesStruct extends BaseStruct {
  DtFiltersServicesStruct({
    DateTime? dateStart,
    DateTime? dateEnd,
    List<int>? systemsParent,
    List<int>? systems,
    List<int>? unitsTypesParent,
    List<int>? unitsTypes,
    List<int>? assetsTags,
    List<int>? ordersTypes,
    List<int>? ordersTypesSubs,
    List<int>? ordersPriorities,
    List<int>? ordersPlans,
    List<int>? ordersObjects,
    List<int>? companies,
    List<int>? contracts,
    List<int>? ordersVisitsProcessing,
    List<int>? units,
    List<int>? teams,
  })  : _dateStart = dateStart,
        _dateEnd = dateEnd,
        _systemsParent = systemsParent,
        _systems = systems,
        _unitsTypesParent = unitsTypesParent,
        _unitsTypes = unitsTypes,
        _assetsTags = assetsTags,
        _ordersTypes = ordersTypes,
        _ordersTypesSubs = ordersTypesSubs,
        _ordersPriorities = ordersPriorities,
        _ordersPlans = ordersPlans,
        _ordersObjects = ordersObjects,
        _companies = companies,
        _contracts = contracts,
        _ordersVisitsProcessing = ordersVisitsProcessing,
        _units = units,
        _teams = teams;

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

  // "assets_tags" field.
  List<int>? _assetsTags;
  List<int> get assetsTags => _assetsTags ?? const [];
  set assetsTags(List<int>? val) => _assetsTags = val;

  void updateAssetsTags(Function(List<int>) updateFn) {
    updateFn(_assetsTags ??= []);
  }

  bool hasAssetsTags() => _assetsTags != null;

  // "orders_types" field.
  List<int>? _ordersTypes;
  List<int> get ordersTypes => _ordersTypes ?? const [];
  set ordersTypes(List<int>? val) => _ordersTypes = val;

  void updateOrdersTypes(Function(List<int>) updateFn) {
    updateFn(_ordersTypes ??= []);
  }

  bool hasOrdersTypes() => _ordersTypes != null;

  // "orders_types_subs" field.
  List<int>? _ordersTypesSubs;
  List<int> get ordersTypesSubs => _ordersTypesSubs ?? const [];
  set ordersTypesSubs(List<int>? val) => _ordersTypesSubs = val;

  void updateOrdersTypesSubs(Function(List<int>) updateFn) {
    updateFn(_ordersTypesSubs ??= []);
  }

  bool hasOrdersTypesSubs() => _ordersTypesSubs != null;

  // "orders_priorities" field.
  List<int>? _ordersPriorities;
  List<int> get ordersPriorities => _ordersPriorities ?? const [];
  set ordersPriorities(List<int>? val) => _ordersPriorities = val;

  void updateOrdersPriorities(Function(List<int>) updateFn) {
    updateFn(_ordersPriorities ??= []);
  }

  bool hasOrdersPriorities() => _ordersPriorities != null;

  // "orders_plans" field.
  List<int>? _ordersPlans;
  List<int> get ordersPlans => _ordersPlans ?? const [];
  set ordersPlans(List<int>? val) => _ordersPlans = val;

  void updateOrdersPlans(Function(List<int>) updateFn) {
    updateFn(_ordersPlans ??= []);
  }

  bool hasOrdersPlans() => _ordersPlans != null;

  // "orders_objects" field.
  List<int>? _ordersObjects;
  List<int> get ordersObjects => _ordersObjects ?? const [];
  set ordersObjects(List<int>? val) => _ordersObjects = val;

  void updateOrdersObjects(Function(List<int>) updateFn) {
    updateFn(_ordersObjects ??= []);
  }

  bool hasOrdersObjects() => _ordersObjects != null;

  // "companies" field.
  List<int>? _companies;
  List<int> get companies => _companies ?? const [];
  set companies(List<int>? val) => _companies = val;

  void updateCompanies(Function(List<int>) updateFn) {
    updateFn(_companies ??= []);
  }

  bool hasCompanies() => _companies != null;

  // "contracts" field.
  List<int>? _contracts;
  List<int> get contracts => _contracts ?? const [];
  set contracts(List<int>? val) => _contracts = val;

  void updateContracts(Function(List<int>) updateFn) {
    updateFn(_contracts ??= []);
  }

  bool hasContracts() => _contracts != null;

  // "orders_visits_processing" field.
  List<int>? _ordersVisitsProcessing;
  List<int> get ordersVisitsProcessing => _ordersVisitsProcessing ?? const [];
  set ordersVisitsProcessing(List<int>? val) => _ordersVisitsProcessing = val;

  void updateOrdersVisitsProcessing(Function(List<int>) updateFn) {
    updateFn(_ordersVisitsProcessing ??= []);
  }

  bool hasOrdersVisitsProcessing() => _ordersVisitsProcessing != null;

  // "units" field.
  List<int>? _units;
  List<int> get units => _units ?? const [];
  set units(List<int>? val) => _units = val;

  void updateUnits(Function(List<int>) updateFn) {
    updateFn(_units ??= []);
  }

  bool hasUnits() => _units != null;

  // "teams" field.
  List<int>? _teams;
  List<int> get teams => _teams ?? const [];
  set teams(List<int>? val) => _teams = val;

  void updateTeams(Function(List<int>) updateFn) {
    updateFn(_teams ??= []);
  }

  bool hasTeams() => _teams != null;

  static DtFiltersServicesStruct fromMap(Map<String, dynamic> data) =>
      DtFiltersServicesStruct(
        dateStart: data['date_start'] as DateTime?,
        dateEnd: data['date_end'] as DateTime?,
        systemsParent: getDataList(data['systems_parent']),
        systems: getDataList(data['systems']),
        unitsTypesParent: getDataList(data['units_types_parent']),
        unitsTypes: getDataList(data['units_types']),
        assetsTags: getDataList(data['assets_tags']),
        ordersTypes: getDataList(data['orders_types']),
        ordersTypesSubs: getDataList(data['orders_types_subs']),
        ordersPriorities: getDataList(data['orders_priorities']),
        ordersPlans: getDataList(data['orders_plans']),
        ordersObjects: getDataList(data['orders_objects']),
        companies: getDataList(data['companies']),
        contracts: getDataList(data['contracts']),
        ordersVisitsProcessing: getDataList(data['orders_visits_processing']),
        units: getDataList(data['units']),
        teams: getDataList(data['teams']),
      );

  static DtFiltersServicesStruct? maybeFromMap(dynamic data) => data is Map
      ? DtFiltersServicesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date_start': _dateStart,
        'date_end': _dateEnd,
        'systems_parent': _systemsParent,
        'systems': _systems,
        'units_types_parent': _unitsTypesParent,
        'units_types': _unitsTypes,
        'assets_tags': _assetsTags,
        'orders_types': _ordersTypes,
        'orders_types_subs': _ordersTypesSubs,
        'orders_priorities': _ordersPriorities,
        'orders_plans': _ordersPlans,
        'orders_objects': _ordersObjects,
        'companies': _companies,
        'contracts': _contracts,
        'orders_visits_processing': _ordersVisitsProcessing,
        'units': _units,
        'teams': _teams,
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
        'assets_tags': serializeParam(
          _assetsTags,
          ParamType.int,
          isList: true,
        ),
        'orders_types': serializeParam(
          _ordersTypes,
          ParamType.int,
          isList: true,
        ),
        'orders_types_subs': serializeParam(
          _ordersTypesSubs,
          ParamType.int,
          isList: true,
        ),
        'orders_priorities': serializeParam(
          _ordersPriorities,
          ParamType.int,
          isList: true,
        ),
        'orders_plans': serializeParam(
          _ordersPlans,
          ParamType.int,
          isList: true,
        ),
        'orders_objects': serializeParam(
          _ordersObjects,
          ParamType.int,
          isList: true,
        ),
        'companies': serializeParam(
          _companies,
          ParamType.int,
          isList: true,
        ),
        'contracts': serializeParam(
          _contracts,
          ParamType.int,
          isList: true,
        ),
        'orders_visits_processing': serializeParam(
          _ordersVisitsProcessing,
          ParamType.int,
          isList: true,
        ),
        'units': serializeParam(
          _units,
          ParamType.int,
          isList: true,
        ),
        'teams': serializeParam(
          _teams,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static DtFiltersServicesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtFiltersServicesStruct(
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
        assetsTags: deserializeParam<int>(
          data['assets_tags'],
          ParamType.int,
          true,
        ),
        ordersTypes: deserializeParam<int>(
          data['orders_types'],
          ParamType.int,
          true,
        ),
        ordersTypesSubs: deserializeParam<int>(
          data['orders_types_subs'],
          ParamType.int,
          true,
        ),
        ordersPriorities: deserializeParam<int>(
          data['orders_priorities'],
          ParamType.int,
          true,
        ),
        ordersPlans: deserializeParam<int>(
          data['orders_plans'],
          ParamType.int,
          true,
        ),
        ordersObjects: deserializeParam<int>(
          data['orders_objects'],
          ParamType.int,
          true,
        ),
        companies: deserializeParam<int>(
          data['companies'],
          ParamType.int,
          true,
        ),
        contracts: deserializeParam<int>(
          data['contracts'],
          ParamType.int,
          true,
        ),
        ordersVisitsProcessing: deserializeParam<int>(
          data['orders_visits_processing'],
          ParamType.int,
          true,
        ),
        units: deserializeParam<int>(
          data['units'],
          ParamType.int,
          true,
        ),
        teams: deserializeParam<int>(
          data['teams'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'DtFiltersServicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DtFiltersServicesStruct &&
        dateStart == other.dateStart &&
        dateEnd == other.dateEnd &&
        listEquality.equals(systemsParent, other.systemsParent) &&
        listEquality.equals(systems, other.systems) &&
        listEquality.equals(unitsTypesParent, other.unitsTypesParent) &&
        listEquality.equals(unitsTypes, other.unitsTypes) &&
        listEquality.equals(assetsTags, other.assetsTags) &&
        listEquality.equals(ordersTypes, other.ordersTypes) &&
        listEquality.equals(ordersTypesSubs, other.ordersTypesSubs) &&
        listEquality.equals(ordersPriorities, other.ordersPriorities) &&
        listEquality.equals(ordersPlans, other.ordersPlans) &&
        listEquality.equals(ordersObjects, other.ordersObjects) &&
        listEquality.equals(companies, other.companies) &&
        listEquality.equals(contracts, other.contracts) &&
        listEquality.equals(
            ordersVisitsProcessing, other.ordersVisitsProcessing) &&
        listEquality.equals(units, other.units) &&
        listEquality.equals(teams, other.teams);
  }

  @override
  int get hashCode => const ListEquality().hash([
        dateStart,
        dateEnd,
        systemsParent,
        systems,
        unitsTypesParent,
        unitsTypes,
        assetsTags,
        ordersTypes,
        ordersTypesSubs,
        ordersPriorities,
        ordersPlans,
        ordersObjects,
        companies,
        contracts,
        ordersVisitsProcessing,
        units,
        teams
      ]);
}

DtFiltersServicesStruct createDtFiltersServicesStruct({
  DateTime? dateStart,
  DateTime? dateEnd,
}) =>
    DtFiltersServicesStruct(
      dateStart: dateStart,
      dateEnd: dateEnd,
    );

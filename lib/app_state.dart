import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_stUserCurrent')) {
        try {
          final serializedData = prefs.getString('ff_stUserCurrent') ?? '{}';
          _stUserCurrent =
              DtUserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _stOfflineCompanies = prefs
              .getStringList('ff_stOfflineCompanies')
              ?.map((x) {
                try {
                  return DtCompanyStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineCompanies;
    });
    _safeInit(() {
      _stOfflineTeams = prefs
              .getStringList('ff_stOfflineTeams')
              ?.map((x) {
                try {
                  return DtTeamStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineTeams;
    });
    _safeInit(() {
      _stTokenRefresh = prefs.getString('ff_stTokenRefresh') ?? _stTokenRefresh;
    });
    _safeInit(() {
      _stTokenExpiresAt =
          prefs.getInt('ff_stTokenExpiresAt') ?? _stTokenExpiresAt;
    });
    _safeInit(() {
      _stAppServerUrlDbStorage =
          prefs.getString('ff_stAppServerUrlDbStorage') ??
              _stAppServerUrlDbStorage;
    });
    _safeInit(() {
      _stOfflineUnitsTypes = prefs
              .getStringList('ff_stOfflineUnitsTypes')
              ?.map((x) {
                try {
                  return DtUnitTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineUnitsTypes;
    });
    _safeInit(() {
      _stOfflineUnitsTypesParent = prefs
              .getStringList('ff_stOfflineUnitsTypesParent')
              ?.map((x) {
                try {
                  return DtUnitTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineUnitsTypesParent;
    });
    _safeInit(() {
      _stOfflineSystems = prefs
              .getStringList('ff_stOfflineSystems')
              ?.map((x) {
                try {
                  return DtSystemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineSystems;
    });
    _safeInit(() {
      _stOfflineSystemsParent = prefs
              .getStringList('ff_stOfflineSystemsParent')
              ?.map((x) {
                try {
                  return DtSystemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineSystemsParent;
    });
    _safeInit(() {
      _stTokenFcm = prefs.getString('ff_stTokenFcm') ?? _stTokenFcm;
    });
    _safeInit(() {
      _stAppOfflineUpdatesUser = prefs
              .getStringList('ff_stAppOfflineUpdatesUser')
              ?.map((x) {
                try {
                  return DtAppOfflineUpdateStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stAppOfflineUpdatesUser;
    });
    _safeInit(() {
      _stOfflineUnits = prefs
              .getStringList('ff_stOfflineUnits')
              ?.map((x) {
                try {
                  return DtUnitStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineUnits;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_stFiltersAssets')) {
        try {
          final serializedData = prefs.getString('ff_stFiltersAssets') ?? '{}';
          _stFiltersAssets = DtFiltersAssetsStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _stOfflineAssetsTags = prefs
              .getStringList('ff_stOfflineAssetsTags')
              ?.map((x) {
                try {
                  return DtAssetTagStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineAssetsTags;
    });
    _safeInit(() {
      _stOfflineAssetsTagsSubs = prefs
              .getStringList('ff_stOfflineAssetsTagsSubs')
              ?.map((x) {
                try {
                  return DtAssetTagSubStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineAssetsTagsSubs;
    });
    _safeInit(() {
      _stOfflineAssetsStatuses = prefs
              .getStringList('ff_stOfflineAssetsStatuses')
              ?.map((x) {
                try {
                  return DtAssetStatusStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineAssetsStatuses;
    });
    _safeInit(() {
      _stOfflineAssetsTypes = prefs
              .getStringList('ff_stOfflineAssetsTypes')
              ?.map((x) {
                try {
                  return DtAssetTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineAssetsTypes;
    });
    _safeInit(() {
      _stOfflineAssetsPriorities = prefs
              .getStringList('ff_stOfflineAssetsPriorities')
              ?.map((x) {
                try {
                  return DtAssetPriorityStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineAssetsPriorities;
    });
    _safeInit(() {
      _stAppServerUrlDb =
          prefs.getString('ff_stAppServerUrlDb') ?? _stAppServerUrlDb;
    });
    _safeInit(() {
      _stOfflineOTypes = prefs
              .getStringList('ff_stOfflineOTypes')
              ?.map((x) {
                try {
                  return DtOrderTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOTypes;
    });
    _safeInit(() {
      _stOfflineOPriorities = prefs
              .getStringList('ff_stOfflineOPriorities')
              ?.map((x) {
                try {
                  return DtOrderPriorityStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOPriorities;
    });
    _safeInit(() {
      _stOfflineOCreated = prefs
              .getStringList('ff_stOfflineOCreated')
              ?.map((x) {
                try {
                  return DtOrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOCreated;
    });
    _safeInit(() {
      _stIsConnected = prefs.getBool('ff_stIsConnected') ?? _stIsConnected;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_stFiltersServices')) {
        try {
          final serializedData =
              prefs.getString('ff_stFiltersServices') ?? '{}';
          _stFiltersServices = DtFiltersServicesStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _stOfflineOTypesSubs = prefs
              .getStringList('ff_stOfflineOTypesSubs')
              ?.map((x) {
                try {
                  return DtOrderTypeSubStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOTypesSubs;
    });
    _safeInit(() {
      _stOfflineOObjetcs = prefs
              .getStringList('ff_stOfflineOObjetcs')
              ?.map((x) {
                try {
                  return DtOrderObjectStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOObjetcs;
    });
    _safeInit(() {
      _stOfflineContracts = prefs
              .getStringList('ff_stOfflineContracts')
              ?.map((x) {
                try {
                  return DtContractStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineContracts;
    });
    _safeInit(() {
      _stOfflineOPlans = prefs
              .getStringList('ff_stOfflineOPlans')
              ?.map((x) {
                try {
                  return DtOrderPlanStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOPlans;
    });
    _safeInit(() {
      _stOfflineOStatuses = prefs
              .getStringList('ff_stOfflineOStatuses')
              ?.map((x) {
                try {
                  return DtOrderStatusStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOStatuses;
    });
    _safeInit(() {
      _stOfflineTeamsLeaders = prefs
              .getStringList('ff_stOfflineTeamsLeaders')
              ?.map((x) {
                try {
                  return DtUserStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineTeamsLeaders;
    });
    _safeInit(() {
      _XstUserOFollowing = prefs
              .getStringList('ff_XstUserOFollowing')
              ?.map((x) {
                try {
                  return DtOrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _XstUserOFollowing;
    });
    _safeInit(() {
      _stDBUserOOpen = prefs
              .getStringList('ff_stDBUserOOpen')
              ?.map((x) {
                try {
                  return DtOrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stDBUserOOpen;
    });
    _safeInit(() {
      _stUserNotifications = prefs
              .getStringList('ff_stUserNotifications')
              ?.map((x) {
                try {
                  return DtUserNotificationStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stUserNotifications;
    });
    _safeInit(() {
      _stOfflineUnitsStatuses = prefs
              .getStringList('ff_stOfflineUnitsStatuses')
              ?.map((x) {
                try {
                  return DtUnitStatusStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineUnitsStatuses;
    });
    _safeInit(() {
      _stOfflineOSuspendedReasons = prefs
              .getStringList('ff_stOfflineOSuspendedReasons')
              ?.map((x) {
                try {
                  return DtOrderSuspendedReasonStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOSuspendedReasons;
    });
    _safeInit(() {
      _stOfflineVehicles = prefs
              .getStringList('ff_stOfflineVehicles')
              ?.map((x) {
                try {
                  return DtVehicleStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineVehicles;
    });
    _safeInit(() {
      _stAppVersionMode = prefs.containsKey('ff_stAppVersionMode')
          ? deserializeEnum<EnumVersionsMode>(
              prefs.getString('ff_stAppVersionMode'))
          : _stAppVersionMode;
    });
    _safeInit(() {
      _stOfflineDepartments = prefs
              .getStringList('ff_stOfflineDepartments')
              ?.map((x) {
                try {
                  return DtDepartmentStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineDepartments;
    });
    _safeInit(() {
      _stOfflineProfiles = prefs
              .getStringList('ff_stOfflineProfiles')
              ?.map((x) {
                try {
                  return DtProfileStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineProfiles;
    });
    _safeInit(() {
      _stOfflineAppPages = prefs
              .getStringList('ff_stOfflineAppPages')
              ?.map((x) {
                try {
                  return DtAppPageStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineAppPages;
    });
    _safeInit(() {
      _stOfflineOTypesActivities = prefs
              .getStringList('ff_stOfflineOTypesActivities')
              ?.map((x) {
                try {
                  return DtOrderTypeActivityStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOTypesActivities;
    });
    _safeInit(() {
      _stOfflineOCausesReasons = prefs
              .getStringList('ff_stOfflineOCausesReasons')
              ?.map((x) {
                try {
                  return DtOrderCauseReasonStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineOCausesReasons;
    });
    _safeInit(() {
      _stOfflineAssetsCouplingsModels = prefs
              .getStringList('ff_stOfflineAssetsCouplingsModels')
              ?.map((x) {
                try {
                  return DtAssetCouplingModelStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineAssetsCouplingsModels;
    });
    _safeInit(() {
      _stOfflineTMTypes = prefs
              .getStringList('ff_stOfflineTMTypes')
              ?.map((x) {
                try {
                  return DtTechnicalManualTypeStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stOfflineTMTypes;
    });
    _safeInit(() {
      _stAppVersionDevice =
          prefs.getString('ff_stAppVersionDevice') ?? _stAppVersionDevice;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_stFiltersUnits')) {
        try {
          final serializedData = prefs.getString('ff_stFiltersUnits') ?? '{}';
          _stFiltersUnits = DtFiltersUnitsStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_stFiltersOVE')) {
        try {
          final serializedData = prefs.getString('ff_stFiltersOVE') ?? '{}';
          _stFiltersOVE = DtFiltersOVEStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _stOVEProcessingId =
          prefs.getInt('ff_stOVEProcessingId') ?? _stOVEProcessingId;
    });
    _safeInit(() {
      _stOVEIsArchived =
          prefs.getBool('ff_stOVEIsArchived') ?? _stOVEIsArchived;
    });
    _safeInit(() {
      _stDbAdminOVEFiltersModel =
          prefs.getString('ff_stDbAdminOVEFiltersModel') ??
              _stDbAdminOVEFiltersModel;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DtUserStruct _stUserCurrent = DtUserStruct();
  DtUserStruct get stUserCurrent => _stUserCurrent;
  set stUserCurrent(DtUserStruct value) {
    _stUserCurrent = value;
    prefs.setString('ff_stUserCurrent', value.serialize());
  }

  void updateStUserCurrentStruct(Function(DtUserStruct) updateFn) {
    updateFn(_stUserCurrent);
    prefs.setString('ff_stUserCurrent', _stUserCurrent.serialize());
  }

  List<DtCompanyStruct> _stOfflineCompanies = [];
  List<DtCompanyStruct> get stOfflineCompanies => _stOfflineCompanies;
  set stOfflineCompanies(List<DtCompanyStruct> value) {
    _stOfflineCompanies = value;
    prefs.setStringList(
        'ff_stOfflineCompanies', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineCompanies(DtCompanyStruct value) {
    stOfflineCompanies.add(value);
    prefs.setStringList('ff_stOfflineCompanies',
        _stOfflineCompanies.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineCompanies(DtCompanyStruct value) {
    stOfflineCompanies.remove(value);
    prefs.setStringList('ff_stOfflineCompanies',
        _stOfflineCompanies.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineCompanies(int index) {
    stOfflineCompanies.removeAt(index);
    prefs.setStringList('ff_stOfflineCompanies',
        _stOfflineCompanies.map((x) => x.serialize()).toList());
  }

  void updateStOfflineCompaniesAtIndex(
    int index,
    DtCompanyStruct Function(DtCompanyStruct) updateFn,
  ) {
    stOfflineCompanies[index] = updateFn(_stOfflineCompanies[index]);
    prefs.setStringList('ff_stOfflineCompanies',
        _stOfflineCompanies.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineCompanies(int index, DtCompanyStruct value) {
    stOfflineCompanies.insert(index, value);
    prefs.setStringList('ff_stOfflineCompanies',
        _stOfflineCompanies.map((x) => x.serialize()).toList());
  }

  List<DtTeamStruct> _stOfflineTeams = [];
  List<DtTeamStruct> get stOfflineTeams => _stOfflineTeams;
  set stOfflineTeams(List<DtTeamStruct> value) {
    _stOfflineTeams = value;
    prefs.setStringList(
        'ff_stOfflineTeams', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineTeams(DtTeamStruct value) {
    stOfflineTeams.add(value);
    prefs.setStringList('ff_stOfflineTeams',
        _stOfflineTeams.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineTeams(DtTeamStruct value) {
    stOfflineTeams.remove(value);
    prefs.setStringList('ff_stOfflineTeams',
        _stOfflineTeams.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineTeams(int index) {
    stOfflineTeams.removeAt(index);
    prefs.setStringList('ff_stOfflineTeams',
        _stOfflineTeams.map((x) => x.serialize()).toList());
  }

  void updateStOfflineTeamsAtIndex(
    int index,
    DtTeamStruct Function(DtTeamStruct) updateFn,
  ) {
    stOfflineTeams[index] = updateFn(_stOfflineTeams[index]);
    prefs.setStringList('ff_stOfflineTeams',
        _stOfflineTeams.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineTeams(int index, DtTeamStruct value) {
    stOfflineTeams.insert(index, value);
    prefs.setStringList('ff_stOfflineTeams',
        _stOfflineTeams.map((x) => x.serialize()).toList());
  }

  DtCompanyStruct _stCompanySelected = DtCompanyStruct();
  DtCompanyStruct get stCompanySelected => _stCompanySelected;
  set stCompanySelected(DtCompanyStruct value) {
    _stCompanySelected = value;
  }

  void updateStCompanySelectedStruct(Function(DtCompanyStruct) updateFn) {
    updateFn(_stCompanySelected);
  }

  String _stTokenRefresh = '';
  String get stTokenRefresh => _stTokenRefresh;
  set stTokenRefresh(String value) {
    _stTokenRefresh = value;
    prefs.setString('ff_stTokenRefresh', value);
  }

  int _stTokenExpiresAt = 0;
  int get stTokenExpiresAt => _stTokenExpiresAt;
  set stTokenExpiresAt(int value) {
    _stTokenExpiresAt = value;
    prefs.setInt('ff_stTokenExpiresAt', value);
  }

  List<DtPermissionStruct> _stPermissions = [];
  List<DtPermissionStruct> get stPermissions => _stPermissions;
  set stPermissions(List<DtPermissionStruct> value) {
    _stPermissions = value;
  }

  void addToStPermissions(DtPermissionStruct value) {
    stPermissions.add(value);
  }

  void removeFromStPermissions(DtPermissionStruct value) {
    stPermissions.remove(value);
  }

  void removeAtIndexFromStPermissions(int index) {
    stPermissions.removeAt(index);
  }

  void updateStPermissionsAtIndex(
    int index,
    DtPermissionStruct Function(DtPermissionStruct) updateFn,
  ) {
    stPermissions[index] = updateFn(_stPermissions[index]);
  }

  void insertAtIndexInStPermissions(int index, DtPermissionStruct value) {
    stPermissions.insert(index, value);
  }

  int _stCounterLoop = 0;
  int get stCounterLoop => _stCounterLoop;
  set stCounterLoop(int value) {
    _stCounterLoop = value;
  }

  int _stCounterLoopFinal = 0;
  int get stCounterLoopFinal => _stCounterLoopFinal;
  set stCounterLoopFinal(int value) {
    _stCounterLoopFinal = value;
  }

  String _stAppServerUrlDbStorage =
      'https://unngducwohenmmxjlrlk.supabase.co/storage/v1/object/public/siges/';
  String get stAppServerUrlDbStorage => _stAppServerUrlDbStorage;
  set stAppServerUrlDbStorage(String value) {
    _stAppServerUrlDbStorage = value;
    prefs.setString('ff_stAppServerUrlDbStorage', value);
  }

  List<int> _stRowsSelected = [];
  List<int> get stRowsSelected => _stRowsSelected;
  set stRowsSelected(List<int> value) {
    _stRowsSelected = value;
  }

  void addToStRowsSelected(int value) {
    stRowsSelected.add(value);
  }

  void removeFromStRowsSelected(int value) {
    stRowsSelected.remove(value);
  }

  void removeAtIndexFromStRowsSelected(int index) {
    stRowsSelected.removeAt(index);
  }

  void updateStRowsSelectedAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    stRowsSelected[index] = updateFn(_stRowsSelected[index]);
  }

  void insertAtIndexInStRowsSelected(int index, int value) {
    stRowsSelected.insert(index, value);
  }

  DtUnitStruct _stUnitSelected = DtUnitStruct();
  DtUnitStruct get stUnitSelected => _stUnitSelected;
  set stUnitSelected(DtUnitStruct value) {
    _stUnitSelected = value;
  }

  void updateStUnitSelectedStruct(Function(DtUnitStruct) updateFn) {
    updateFn(_stUnitSelected);
  }

  List<DtUnitTypeStruct> _stOfflineUnitsTypes = [];
  List<DtUnitTypeStruct> get stOfflineUnitsTypes => _stOfflineUnitsTypes;
  set stOfflineUnitsTypes(List<DtUnitTypeStruct> value) {
    _stOfflineUnitsTypes = value;
    prefs.setStringList(
        'ff_stOfflineUnitsTypes', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineUnitsTypes(DtUnitTypeStruct value) {
    stOfflineUnitsTypes.add(value);
    prefs.setStringList('ff_stOfflineUnitsTypes',
        _stOfflineUnitsTypes.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineUnitsTypes(DtUnitTypeStruct value) {
    stOfflineUnitsTypes.remove(value);
    prefs.setStringList('ff_stOfflineUnitsTypes',
        _stOfflineUnitsTypes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineUnitsTypes(int index) {
    stOfflineUnitsTypes.removeAt(index);
    prefs.setStringList('ff_stOfflineUnitsTypes',
        _stOfflineUnitsTypes.map((x) => x.serialize()).toList());
  }

  void updateStOfflineUnitsTypesAtIndex(
    int index,
    DtUnitTypeStruct Function(DtUnitTypeStruct) updateFn,
  ) {
    stOfflineUnitsTypes[index] = updateFn(_stOfflineUnitsTypes[index]);
    prefs.setStringList('ff_stOfflineUnitsTypes',
        _stOfflineUnitsTypes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineUnitsTypes(int index, DtUnitTypeStruct value) {
    stOfflineUnitsTypes.insert(index, value);
    prefs.setStringList('ff_stOfflineUnitsTypes',
        _stOfflineUnitsTypes.map((x) => x.serialize()).toList());
  }

  List<DtUnitTypeStruct> _stOfflineUnitsTypesParent = [];
  List<DtUnitTypeStruct> get stOfflineUnitsTypesParent =>
      _stOfflineUnitsTypesParent;
  set stOfflineUnitsTypesParent(List<DtUnitTypeStruct> value) {
    _stOfflineUnitsTypesParent = value;
    prefs.setStringList('ff_stOfflineUnitsTypesParent',
        value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineUnitsTypesParent(DtUnitTypeStruct value) {
    stOfflineUnitsTypesParent.add(value);
    prefs.setStringList('ff_stOfflineUnitsTypesParent',
        _stOfflineUnitsTypesParent.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineUnitsTypesParent(DtUnitTypeStruct value) {
    stOfflineUnitsTypesParent.remove(value);
    prefs.setStringList('ff_stOfflineUnitsTypesParent',
        _stOfflineUnitsTypesParent.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineUnitsTypesParent(int index) {
    stOfflineUnitsTypesParent.removeAt(index);
    prefs.setStringList('ff_stOfflineUnitsTypesParent',
        _stOfflineUnitsTypesParent.map((x) => x.serialize()).toList());
  }

  void updateStOfflineUnitsTypesParentAtIndex(
    int index,
    DtUnitTypeStruct Function(DtUnitTypeStruct) updateFn,
  ) {
    stOfflineUnitsTypesParent[index] =
        updateFn(_stOfflineUnitsTypesParent[index]);
    prefs.setStringList('ff_stOfflineUnitsTypesParent',
        _stOfflineUnitsTypesParent.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineUnitsTypesParent(
      int index, DtUnitTypeStruct value) {
    stOfflineUnitsTypesParent.insert(index, value);
    prefs.setStringList('ff_stOfflineUnitsTypesParent',
        _stOfflineUnitsTypesParent.map((x) => x.serialize()).toList());
  }

  List<DtSystemStruct> _stOfflineSystems = [];
  List<DtSystemStruct> get stOfflineSystems => _stOfflineSystems;
  set stOfflineSystems(List<DtSystemStruct> value) {
    _stOfflineSystems = value;
    prefs.setStringList(
        'ff_stOfflineSystems', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineSystems(DtSystemStruct value) {
    stOfflineSystems.add(value);
    prefs.setStringList('ff_stOfflineSystems',
        _stOfflineSystems.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineSystems(DtSystemStruct value) {
    stOfflineSystems.remove(value);
    prefs.setStringList('ff_stOfflineSystems',
        _stOfflineSystems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineSystems(int index) {
    stOfflineSystems.removeAt(index);
    prefs.setStringList('ff_stOfflineSystems',
        _stOfflineSystems.map((x) => x.serialize()).toList());
  }

  void updateStOfflineSystemsAtIndex(
    int index,
    DtSystemStruct Function(DtSystemStruct) updateFn,
  ) {
    stOfflineSystems[index] = updateFn(_stOfflineSystems[index]);
    prefs.setStringList('ff_stOfflineSystems',
        _stOfflineSystems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineSystems(int index, DtSystemStruct value) {
    stOfflineSystems.insert(index, value);
    prefs.setStringList('ff_stOfflineSystems',
        _stOfflineSystems.map((x) => x.serialize()).toList());
  }

  List<DtSystemStruct> _stOfflineSystemsParent = [];
  List<DtSystemStruct> get stOfflineSystemsParent => _stOfflineSystemsParent;
  set stOfflineSystemsParent(List<DtSystemStruct> value) {
    _stOfflineSystemsParent = value;
    prefs.setStringList(
        'ff_stOfflineSystemsParent', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineSystemsParent(DtSystemStruct value) {
    stOfflineSystemsParent.add(value);
    prefs.setStringList('ff_stOfflineSystemsParent',
        _stOfflineSystemsParent.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineSystemsParent(DtSystemStruct value) {
    stOfflineSystemsParent.remove(value);
    prefs.setStringList('ff_stOfflineSystemsParent',
        _stOfflineSystemsParent.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineSystemsParent(int index) {
    stOfflineSystemsParent.removeAt(index);
    prefs.setStringList('ff_stOfflineSystemsParent',
        _stOfflineSystemsParent.map((x) => x.serialize()).toList());
  }

  void updateStOfflineSystemsParentAtIndex(
    int index,
    DtSystemStruct Function(DtSystemStruct) updateFn,
  ) {
    stOfflineSystemsParent[index] = updateFn(_stOfflineSystemsParent[index]);
    prefs.setStringList('ff_stOfflineSystemsParent',
        _stOfflineSystemsParent.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineSystemsParent(int index, DtSystemStruct value) {
    stOfflineSystemsParent.insert(index, value);
    prefs.setStringList('ff_stOfflineSystemsParent',
        _stOfflineSystemsParent.map((x) => x.serialize()).toList());
  }

  String _stTokenFcm = '';
  String get stTokenFcm => _stTokenFcm;
  set stTokenFcm(String value) {
    _stTokenFcm = value;
    prefs.setString('ff_stTokenFcm', value);
  }

  List<DtUnitStruct> _stUnitsSearchResults = [];
  List<DtUnitStruct> get stUnitsSearchResults => _stUnitsSearchResults;
  set stUnitsSearchResults(List<DtUnitStruct> value) {
    _stUnitsSearchResults = value;
  }

  void addToStUnitsSearchResults(DtUnitStruct value) {
    stUnitsSearchResults.add(value);
  }

  void removeFromStUnitsSearchResults(DtUnitStruct value) {
    stUnitsSearchResults.remove(value);
  }

  void removeAtIndexFromStUnitsSearchResults(int index) {
    stUnitsSearchResults.removeAt(index);
  }

  void updateStUnitsSearchResultsAtIndex(
    int index,
    DtUnitStruct Function(DtUnitStruct) updateFn,
  ) {
    stUnitsSearchResults[index] = updateFn(_stUnitsSearchResults[index]);
  }

  void insertAtIndexInStUnitsSearchResults(int index, DtUnitStruct value) {
    stUnitsSearchResults.insert(index, value);
  }

  List<DtAssetStruct> _stAssetsSearchResults = [];
  List<DtAssetStruct> get stAssetsSearchResults => _stAssetsSearchResults;
  set stAssetsSearchResults(List<DtAssetStruct> value) {
    _stAssetsSearchResults = value;
  }

  void addToStAssetsSearchResults(DtAssetStruct value) {
    stAssetsSearchResults.add(value);
  }

  void removeFromStAssetsSearchResults(DtAssetStruct value) {
    stAssetsSearchResults.remove(value);
  }

  void removeAtIndexFromStAssetsSearchResults(int index) {
    stAssetsSearchResults.removeAt(index);
  }

  void updateStAssetsSearchResultsAtIndex(
    int index,
    DtAssetStruct Function(DtAssetStruct) updateFn,
  ) {
    stAssetsSearchResults[index] = updateFn(_stAssetsSearchResults[index]);
  }

  void insertAtIndexInStAssetsSearchResults(int index, DtAssetStruct value) {
    stAssetsSearchResults.insert(index, value);
  }

  DtAssetStruct _stAssetSelected = DtAssetStruct();
  DtAssetStruct get stAssetSelected => _stAssetSelected;
  set stAssetSelected(DtAssetStruct value) {
    _stAssetSelected = value;
  }

  void updateStAssetSelectedStruct(Function(DtAssetStruct) updateFn) {
    updateFn(_stAssetSelected);
  }

  List<DtAssetStruct> _XstAssetsFollowing = [];
  List<DtAssetStruct> get XstAssetsFollowing => _XstAssetsFollowing;
  set XstAssetsFollowing(List<DtAssetStruct> value) {
    _XstAssetsFollowing = value;
  }

  void addToXstAssetsFollowing(DtAssetStruct value) {
    XstAssetsFollowing.add(value);
  }

  void removeFromXstAssetsFollowing(DtAssetStruct value) {
    XstAssetsFollowing.remove(value);
  }

  void removeAtIndexFromXstAssetsFollowing(int index) {
    XstAssetsFollowing.removeAt(index);
  }

  void updateXstAssetsFollowingAtIndex(
    int index,
    DtAssetStruct Function(DtAssetStruct) updateFn,
  ) {
    XstAssetsFollowing[index] = updateFn(_XstAssetsFollowing[index]);
  }

  void insertAtIndexInXstAssetsFollowing(int index, DtAssetStruct value) {
    XstAssetsFollowing.insert(index, value);
  }

  List<DtAppOfflineUpdateStruct> _stAppOfflineUpdatesUser = [];
  List<DtAppOfflineUpdateStruct> get stAppOfflineUpdatesUser =>
      _stAppOfflineUpdatesUser;
  set stAppOfflineUpdatesUser(List<DtAppOfflineUpdateStruct> value) {
    _stAppOfflineUpdatesUser = value;
    prefs.setStringList(
        'ff_stAppOfflineUpdatesUser', value.map((x) => x.serialize()).toList());
  }

  void addToStAppOfflineUpdatesUser(DtAppOfflineUpdateStruct value) {
    stAppOfflineUpdatesUser.add(value);
    prefs.setStringList('ff_stAppOfflineUpdatesUser',
        _stAppOfflineUpdatesUser.map((x) => x.serialize()).toList());
  }

  void removeFromStAppOfflineUpdatesUser(DtAppOfflineUpdateStruct value) {
    stAppOfflineUpdatesUser.remove(value);
    prefs.setStringList('ff_stAppOfflineUpdatesUser',
        _stAppOfflineUpdatesUser.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStAppOfflineUpdatesUser(int index) {
    stAppOfflineUpdatesUser.removeAt(index);
    prefs.setStringList('ff_stAppOfflineUpdatesUser',
        _stAppOfflineUpdatesUser.map((x) => x.serialize()).toList());
  }

  void updateStAppOfflineUpdatesUserAtIndex(
    int index,
    DtAppOfflineUpdateStruct Function(DtAppOfflineUpdateStruct) updateFn,
  ) {
    stAppOfflineUpdatesUser[index] = updateFn(_stAppOfflineUpdatesUser[index]);
    prefs.setStringList('ff_stAppOfflineUpdatesUser',
        _stAppOfflineUpdatesUser.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStAppOfflineUpdatesUser(
      int index, DtAppOfflineUpdateStruct value) {
    stAppOfflineUpdatesUser.insert(index, value);
    prefs.setStringList('ff_stAppOfflineUpdatesUser',
        _stAppOfflineUpdatesUser.map((x) => x.serialize()).toList());
  }

  List<DtUnitStruct> _stOfflineUnits = [];
  List<DtUnitStruct> get stOfflineUnits => _stOfflineUnits;
  set stOfflineUnits(List<DtUnitStruct> value) {
    _stOfflineUnits = value;
    prefs.setStringList(
        'ff_stOfflineUnits', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineUnits(DtUnitStruct value) {
    stOfflineUnits.add(value);
    prefs.setStringList('ff_stOfflineUnits',
        _stOfflineUnits.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineUnits(DtUnitStruct value) {
    stOfflineUnits.remove(value);
    prefs.setStringList('ff_stOfflineUnits',
        _stOfflineUnits.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineUnits(int index) {
    stOfflineUnits.removeAt(index);
    prefs.setStringList('ff_stOfflineUnits',
        _stOfflineUnits.map((x) => x.serialize()).toList());
  }

  void updateStOfflineUnitsAtIndex(
    int index,
    DtUnitStruct Function(DtUnitStruct) updateFn,
  ) {
    stOfflineUnits[index] = updateFn(_stOfflineUnits[index]);
    prefs.setStringList('ff_stOfflineUnits',
        _stOfflineUnits.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineUnits(int index, DtUnitStruct value) {
    stOfflineUnits.insert(index, value);
    prefs.setStringList('ff_stOfflineUnits',
        _stOfflineUnits.map((x) => x.serialize()).toList());
  }

  List<DtAppOfflineUpdateStruct> _stAppOfflineUpdatesServer = [];
  List<DtAppOfflineUpdateStruct> get stAppOfflineUpdatesServer =>
      _stAppOfflineUpdatesServer;
  set stAppOfflineUpdatesServer(List<DtAppOfflineUpdateStruct> value) {
    _stAppOfflineUpdatesServer = value;
  }

  void addToStAppOfflineUpdatesServer(DtAppOfflineUpdateStruct value) {
    stAppOfflineUpdatesServer.add(value);
  }

  void removeFromStAppOfflineUpdatesServer(DtAppOfflineUpdateStruct value) {
    stAppOfflineUpdatesServer.remove(value);
  }

  void removeAtIndexFromStAppOfflineUpdatesServer(int index) {
    stAppOfflineUpdatesServer.removeAt(index);
  }

  void updateStAppOfflineUpdatesServerAtIndex(
    int index,
    DtAppOfflineUpdateStruct Function(DtAppOfflineUpdateStruct) updateFn,
  ) {
    stAppOfflineUpdatesServer[index] =
        updateFn(_stAppOfflineUpdatesServer[index]);
  }

  void insertAtIndexInStAppOfflineUpdatesServer(
      int index, DtAppOfflineUpdateStruct value) {
    stAppOfflineUpdatesServer.insert(index, value);
  }

  DtFiltersAssetsStruct _stFiltersAssets = DtFiltersAssetsStruct();
  DtFiltersAssetsStruct get stFiltersAssets => _stFiltersAssets;
  set stFiltersAssets(DtFiltersAssetsStruct value) {
    _stFiltersAssets = value;
    prefs.setString('ff_stFiltersAssets', value.serialize());
  }

  void updateStFiltersAssetsStruct(Function(DtFiltersAssetsStruct) updateFn) {
    updateFn(_stFiltersAssets);
    prefs.setString('ff_stFiltersAssets', _stFiltersAssets.serialize());
  }

  List<DtAssetTagStruct> _stOfflineAssetsTags = [];
  List<DtAssetTagStruct> get stOfflineAssetsTags => _stOfflineAssetsTags;
  set stOfflineAssetsTags(List<DtAssetTagStruct> value) {
    _stOfflineAssetsTags = value;
    prefs.setStringList(
        'ff_stOfflineAssetsTags', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineAssetsTags(DtAssetTagStruct value) {
    stOfflineAssetsTags.add(value);
    prefs.setStringList('ff_stOfflineAssetsTags',
        _stOfflineAssetsTags.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineAssetsTags(DtAssetTagStruct value) {
    stOfflineAssetsTags.remove(value);
    prefs.setStringList('ff_stOfflineAssetsTags',
        _stOfflineAssetsTags.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineAssetsTags(int index) {
    stOfflineAssetsTags.removeAt(index);
    prefs.setStringList('ff_stOfflineAssetsTags',
        _stOfflineAssetsTags.map((x) => x.serialize()).toList());
  }

  void updateStOfflineAssetsTagsAtIndex(
    int index,
    DtAssetTagStruct Function(DtAssetTagStruct) updateFn,
  ) {
    stOfflineAssetsTags[index] = updateFn(_stOfflineAssetsTags[index]);
    prefs.setStringList('ff_stOfflineAssetsTags',
        _stOfflineAssetsTags.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineAssetsTags(int index, DtAssetTagStruct value) {
    stOfflineAssetsTags.insert(index, value);
    prefs.setStringList('ff_stOfflineAssetsTags',
        _stOfflineAssetsTags.map((x) => x.serialize()).toList());
  }

  List<DtAssetTagSubStruct> _stOfflineAssetsTagsSubs = [];
  List<DtAssetTagSubStruct> get stOfflineAssetsTagsSubs =>
      _stOfflineAssetsTagsSubs;
  set stOfflineAssetsTagsSubs(List<DtAssetTagSubStruct> value) {
    _stOfflineAssetsTagsSubs = value;
    prefs.setStringList(
        'ff_stOfflineAssetsTagsSubs', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineAssetsTagsSubs(DtAssetTagSubStruct value) {
    stOfflineAssetsTagsSubs.add(value);
    prefs.setStringList('ff_stOfflineAssetsTagsSubs',
        _stOfflineAssetsTagsSubs.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineAssetsTagsSubs(DtAssetTagSubStruct value) {
    stOfflineAssetsTagsSubs.remove(value);
    prefs.setStringList('ff_stOfflineAssetsTagsSubs',
        _stOfflineAssetsTagsSubs.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineAssetsTagsSubs(int index) {
    stOfflineAssetsTagsSubs.removeAt(index);
    prefs.setStringList('ff_stOfflineAssetsTagsSubs',
        _stOfflineAssetsTagsSubs.map((x) => x.serialize()).toList());
  }

  void updateStOfflineAssetsTagsSubsAtIndex(
    int index,
    DtAssetTagSubStruct Function(DtAssetTagSubStruct) updateFn,
  ) {
    stOfflineAssetsTagsSubs[index] = updateFn(_stOfflineAssetsTagsSubs[index]);
    prefs.setStringList('ff_stOfflineAssetsTagsSubs',
        _stOfflineAssetsTagsSubs.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineAssetsTagsSubs(
      int index, DtAssetTagSubStruct value) {
    stOfflineAssetsTagsSubs.insert(index, value);
    prefs.setStringList('ff_stOfflineAssetsTagsSubs',
        _stOfflineAssetsTagsSubs.map((x) => x.serialize()).toList());
  }

  List<DtAssetStatusStruct> _stOfflineAssetsStatuses = [];
  List<DtAssetStatusStruct> get stOfflineAssetsStatuses =>
      _stOfflineAssetsStatuses;
  set stOfflineAssetsStatuses(List<DtAssetStatusStruct> value) {
    _stOfflineAssetsStatuses = value;
    prefs.setStringList(
        'ff_stOfflineAssetsStatuses', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineAssetsStatuses(DtAssetStatusStruct value) {
    stOfflineAssetsStatuses.add(value);
    prefs.setStringList('ff_stOfflineAssetsStatuses',
        _stOfflineAssetsStatuses.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineAssetsStatuses(DtAssetStatusStruct value) {
    stOfflineAssetsStatuses.remove(value);
    prefs.setStringList('ff_stOfflineAssetsStatuses',
        _stOfflineAssetsStatuses.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineAssetsStatuses(int index) {
    stOfflineAssetsStatuses.removeAt(index);
    prefs.setStringList('ff_stOfflineAssetsStatuses',
        _stOfflineAssetsStatuses.map((x) => x.serialize()).toList());
  }

  void updateStOfflineAssetsStatusesAtIndex(
    int index,
    DtAssetStatusStruct Function(DtAssetStatusStruct) updateFn,
  ) {
    stOfflineAssetsStatuses[index] = updateFn(_stOfflineAssetsStatuses[index]);
    prefs.setStringList('ff_stOfflineAssetsStatuses',
        _stOfflineAssetsStatuses.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineAssetsStatuses(
      int index, DtAssetStatusStruct value) {
    stOfflineAssetsStatuses.insert(index, value);
    prefs.setStringList('ff_stOfflineAssetsStatuses',
        _stOfflineAssetsStatuses.map((x) => x.serialize()).toList());
  }

  List<DtAssetTypeStruct> _stOfflineAssetsTypes = [];
  List<DtAssetTypeStruct> get stOfflineAssetsTypes => _stOfflineAssetsTypes;
  set stOfflineAssetsTypes(List<DtAssetTypeStruct> value) {
    _stOfflineAssetsTypes = value;
    prefs.setStringList(
        'ff_stOfflineAssetsTypes', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineAssetsTypes(DtAssetTypeStruct value) {
    stOfflineAssetsTypes.add(value);
    prefs.setStringList('ff_stOfflineAssetsTypes',
        _stOfflineAssetsTypes.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineAssetsTypes(DtAssetTypeStruct value) {
    stOfflineAssetsTypes.remove(value);
    prefs.setStringList('ff_stOfflineAssetsTypes',
        _stOfflineAssetsTypes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineAssetsTypes(int index) {
    stOfflineAssetsTypes.removeAt(index);
    prefs.setStringList('ff_stOfflineAssetsTypes',
        _stOfflineAssetsTypes.map((x) => x.serialize()).toList());
  }

  void updateStOfflineAssetsTypesAtIndex(
    int index,
    DtAssetTypeStruct Function(DtAssetTypeStruct) updateFn,
  ) {
    stOfflineAssetsTypes[index] = updateFn(_stOfflineAssetsTypes[index]);
    prefs.setStringList('ff_stOfflineAssetsTypes',
        _stOfflineAssetsTypes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineAssetsTypes(int index, DtAssetTypeStruct value) {
    stOfflineAssetsTypes.insert(index, value);
    prefs.setStringList('ff_stOfflineAssetsTypes',
        _stOfflineAssetsTypes.map((x) => x.serialize()).toList());
  }

  DtAssetStruct _stAssetSelectedCU = DtAssetStruct();
  DtAssetStruct get stAssetSelectedCU => _stAssetSelectedCU;
  set stAssetSelectedCU(DtAssetStruct value) {
    _stAssetSelectedCU = value;
  }

  void updateStAssetSelectedCUStruct(Function(DtAssetStruct) updateFn) {
    updateFn(_stAssetSelectedCU);
  }

  List<DtAssetPriorityStruct> _stOfflineAssetsPriorities = [];
  List<DtAssetPriorityStruct> get stOfflineAssetsPriorities =>
      _stOfflineAssetsPriorities;
  set stOfflineAssetsPriorities(List<DtAssetPriorityStruct> value) {
    _stOfflineAssetsPriorities = value;
    prefs.setStringList('ff_stOfflineAssetsPriorities',
        value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineAssetsPriorities(DtAssetPriorityStruct value) {
    stOfflineAssetsPriorities.add(value);
    prefs.setStringList('ff_stOfflineAssetsPriorities',
        _stOfflineAssetsPriorities.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineAssetsPriorities(DtAssetPriorityStruct value) {
    stOfflineAssetsPriorities.remove(value);
    prefs.setStringList('ff_stOfflineAssetsPriorities',
        _stOfflineAssetsPriorities.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineAssetsPriorities(int index) {
    stOfflineAssetsPriorities.removeAt(index);
    prefs.setStringList('ff_stOfflineAssetsPriorities',
        _stOfflineAssetsPriorities.map((x) => x.serialize()).toList());
  }

  void updateStOfflineAssetsPrioritiesAtIndex(
    int index,
    DtAssetPriorityStruct Function(DtAssetPriorityStruct) updateFn,
  ) {
    stOfflineAssetsPriorities[index] =
        updateFn(_stOfflineAssetsPriorities[index]);
    prefs.setStringList('ff_stOfflineAssetsPriorities',
        _stOfflineAssetsPriorities.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineAssetsPriorities(
      int index, DtAssetPriorityStruct value) {
    stOfflineAssetsPriorities.insert(index, value);
    prefs.setStringList('ff_stOfflineAssetsPriorities',
        _stOfflineAssetsPriorities.map((x) => x.serialize()).toList());
  }

  String _stAppServerUrlDb = 'https://unngducwohenmmxjlrlk.supabase.co';
  String get stAppServerUrlDb => _stAppServerUrlDb;
  set stAppServerUrlDb(String value) {
    _stAppServerUrlDb = value;
    prefs.setString('ff_stAppServerUrlDb', value);
  }

  List<DtOrderTypeStruct> _stOfflineOTypes = [];
  List<DtOrderTypeStruct> get stOfflineOTypes => _stOfflineOTypes;
  set stOfflineOTypes(List<DtOrderTypeStruct> value) {
    _stOfflineOTypes = value;
    prefs.setStringList(
        'ff_stOfflineOTypes', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOTypes(DtOrderTypeStruct value) {
    stOfflineOTypes.add(value);
    prefs.setStringList('ff_stOfflineOTypes',
        _stOfflineOTypes.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOTypes(DtOrderTypeStruct value) {
    stOfflineOTypes.remove(value);
    prefs.setStringList('ff_stOfflineOTypes',
        _stOfflineOTypes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOTypes(int index) {
    stOfflineOTypes.removeAt(index);
    prefs.setStringList('ff_stOfflineOTypes',
        _stOfflineOTypes.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOTypesAtIndex(
    int index,
    DtOrderTypeStruct Function(DtOrderTypeStruct) updateFn,
  ) {
    stOfflineOTypes[index] = updateFn(_stOfflineOTypes[index]);
    prefs.setStringList('ff_stOfflineOTypes',
        _stOfflineOTypes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOTypes(int index, DtOrderTypeStruct value) {
    stOfflineOTypes.insert(index, value);
    prefs.setStringList('ff_stOfflineOTypes',
        _stOfflineOTypes.map((x) => x.serialize()).toList());
  }

  List<DtOrderPriorityStruct> _stOfflineOPriorities = [];
  List<DtOrderPriorityStruct> get stOfflineOPriorities => _stOfflineOPriorities;
  set stOfflineOPriorities(List<DtOrderPriorityStruct> value) {
    _stOfflineOPriorities = value;
    prefs.setStringList(
        'ff_stOfflineOPriorities', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOPriorities(DtOrderPriorityStruct value) {
    stOfflineOPriorities.add(value);
    prefs.setStringList('ff_stOfflineOPriorities',
        _stOfflineOPriorities.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOPriorities(DtOrderPriorityStruct value) {
    stOfflineOPriorities.remove(value);
    prefs.setStringList('ff_stOfflineOPriorities',
        _stOfflineOPriorities.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOPriorities(int index) {
    stOfflineOPriorities.removeAt(index);
    prefs.setStringList('ff_stOfflineOPriorities',
        _stOfflineOPriorities.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOPrioritiesAtIndex(
    int index,
    DtOrderPriorityStruct Function(DtOrderPriorityStruct) updateFn,
  ) {
    stOfflineOPriorities[index] = updateFn(_stOfflineOPriorities[index]);
    prefs.setStringList('ff_stOfflineOPriorities',
        _stOfflineOPriorities.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOPriorities(
      int index, DtOrderPriorityStruct value) {
    stOfflineOPriorities.insert(index, value);
    prefs.setStringList('ff_stOfflineOPriorities',
        _stOfflineOPriorities.map((x) => x.serialize()).toList());
  }

  List<DtOrderStruct> _stOfflineOCreated = [];
  List<DtOrderStruct> get stOfflineOCreated => _stOfflineOCreated;
  set stOfflineOCreated(List<DtOrderStruct> value) {
    _stOfflineOCreated = value;
    prefs.setStringList(
        'ff_stOfflineOCreated', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOCreated(DtOrderStruct value) {
    stOfflineOCreated.add(value);
    prefs.setStringList('ff_stOfflineOCreated',
        _stOfflineOCreated.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOCreated(DtOrderStruct value) {
    stOfflineOCreated.remove(value);
    prefs.setStringList('ff_stOfflineOCreated',
        _stOfflineOCreated.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOCreated(int index) {
    stOfflineOCreated.removeAt(index);
    prefs.setStringList('ff_stOfflineOCreated',
        _stOfflineOCreated.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOCreatedAtIndex(
    int index,
    DtOrderStruct Function(DtOrderStruct) updateFn,
  ) {
    stOfflineOCreated[index] = updateFn(_stOfflineOCreated[index]);
    prefs.setStringList('ff_stOfflineOCreated',
        _stOfflineOCreated.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOCreated(int index, DtOrderStruct value) {
    stOfflineOCreated.insert(index, value);
    prefs.setStringList('ff_stOfflineOCreated',
        _stOfflineOCreated.map((x) => x.serialize()).toList());
  }

  bool _stIsConnected = false;
  bool get stIsConnected => _stIsConnected;
  set stIsConnected(bool value) {
    _stIsConnected = value;
    prefs.setBool('ff_stIsConnected', value);
  }

  DtOrderStruct _stOPSelected = DtOrderStruct();
  DtOrderStruct get stOPSelected => _stOPSelected;
  set stOPSelected(DtOrderStruct value) {
    _stOPSelected = value;
  }

  void updateStOPSelectedStruct(Function(DtOrderStruct) updateFn) {
    updateFn(_stOPSelected);
  }

  List<DtOrderStruct> _stOPFiltersResults = [];
  List<DtOrderStruct> get stOPFiltersResults => _stOPFiltersResults;
  set stOPFiltersResults(List<DtOrderStruct> value) {
    _stOPFiltersResults = value;
  }

  void addToStOPFiltersResults(DtOrderStruct value) {
    stOPFiltersResults.add(value);
  }

  void removeFromStOPFiltersResults(DtOrderStruct value) {
    stOPFiltersResults.remove(value);
  }

  void removeAtIndexFromStOPFiltersResults(int index) {
    stOPFiltersResults.removeAt(index);
  }

  void updateStOPFiltersResultsAtIndex(
    int index,
    DtOrderStruct Function(DtOrderStruct) updateFn,
  ) {
    stOPFiltersResults[index] = updateFn(_stOPFiltersResults[index]);
  }

  void insertAtIndexInStOPFiltersResults(int index, DtOrderStruct value) {
    stOPFiltersResults.insert(index, value);
  }

  List<DtOrderStruct> _stOFiltersResults = [];
  List<DtOrderStruct> get stOFiltersResults => _stOFiltersResults;
  set stOFiltersResults(List<DtOrderStruct> value) {
    _stOFiltersResults = value;
  }

  void addToStOFiltersResults(DtOrderStruct value) {
    stOFiltersResults.add(value);
  }

  void removeFromStOFiltersResults(DtOrderStruct value) {
    stOFiltersResults.remove(value);
  }

  void removeAtIndexFromStOFiltersResults(int index) {
    stOFiltersResults.removeAt(index);
  }

  void updateStOFiltersResultsAtIndex(
    int index,
    DtOrderStruct Function(DtOrderStruct) updateFn,
  ) {
    stOFiltersResults[index] = updateFn(_stOFiltersResults[index]);
  }

  void insertAtIndexInStOFiltersResults(int index, DtOrderStruct value) {
    stOFiltersResults.insert(index, value);
  }

  List<DtOrderStruct> _stDBAdminOFiltersInProgress = [];
  List<DtOrderStruct> get stDBAdminOFiltersInProgress =>
      _stDBAdminOFiltersInProgress;
  set stDBAdminOFiltersInProgress(List<DtOrderStruct> value) {
    _stDBAdminOFiltersInProgress = value;
  }

  void addToStDBAdminOFiltersInProgress(DtOrderStruct value) {
    stDBAdminOFiltersInProgress.add(value);
  }

  void removeFromStDBAdminOFiltersInProgress(DtOrderStruct value) {
    stDBAdminOFiltersInProgress.remove(value);
  }

  void removeAtIndexFromStDBAdminOFiltersInProgress(int index) {
    stDBAdminOFiltersInProgress.removeAt(index);
  }

  void updateStDBAdminOFiltersInProgressAtIndex(
    int index,
    DtOrderStruct Function(DtOrderStruct) updateFn,
  ) {
    stDBAdminOFiltersInProgress[index] =
        updateFn(_stDBAdminOFiltersInProgress[index]);
  }

  void insertAtIndexInStDBAdminOFiltersInProgress(
      int index, DtOrderStruct value) {
    stDBAdminOFiltersInProgress.insert(index, value);
  }

  DtFiltersServicesStruct _stFiltersServices = DtFiltersServicesStruct();
  DtFiltersServicesStruct get stFiltersServices => _stFiltersServices;
  set stFiltersServices(DtFiltersServicesStruct value) {
    _stFiltersServices = value;
    prefs.setString('ff_stFiltersServices', value.serialize());
  }

  void updateStFiltersServicesStruct(
      Function(DtFiltersServicesStruct) updateFn) {
    updateFn(_stFiltersServices);
    prefs.setString('ff_stFiltersServices', _stFiltersServices.serialize());
  }

  List<DtOrderTypeSubStruct> _stOfflineOTypesSubs = [];
  List<DtOrderTypeSubStruct> get stOfflineOTypesSubs => _stOfflineOTypesSubs;
  set stOfflineOTypesSubs(List<DtOrderTypeSubStruct> value) {
    _stOfflineOTypesSubs = value;
    prefs.setStringList(
        'ff_stOfflineOTypesSubs', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOTypesSubs(DtOrderTypeSubStruct value) {
    stOfflineOTypesSubs.add(value);
    prefs.setStringList('ff_stOfflineOTypesSubs',
        _stOfflineOTypesSubs.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOTypesSubs(DtOrderTypeSubStruct value) {
    stOfflineOTypesSubs.remove(value);
    prefs.setStringList('ff_stOfflineOTypesSubs',
        _stOfflineOTypesSubs.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOTypesSubs(int index) {
    stOfflineOTypesSubs.removeAt(index);
    prefs.setStringList('ff_stOfflineOTypesSubs',
        _stOfflineOTypesSubs.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOTypesSubsAtIndex(
    int index,
    DtOrderTypeSubStruct Function(DtOrderTypeSubStruct) updateFn,
  ) {
    stOfflineOTypesSubs[index] = updateFn(_stOfflineOTypesSubs[index]);
    prefs.setStringList('ff_stOfflineOTypesSubs',
        _stOfflineOTypesSubs.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOTypesSubs(
      int index, DtOrderTypeSubStruct value) {
    stOfflineOTypesSubs.insert(index, value);
    prefs.setStringList('ff_stOfflineOTypesSubs',
        _stOfflineOTypesSubs.map((x) => x.serialize()).toList());
  }

  List<DtOrderObjectStruct> _stOfflineOObjetcs = [];
  List<DtOrderObjectStruct> get stOfflineOObjetcs => _stOfflineOObjetcs;
  set stOfflineOObjetcs(List<DtOrderObjectStruct> value) {
    _stOfflineOObjetcs = value;
    prefs.setStringList(
        'ff_stOfflineOObjetcs', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOObjetcs(DtOrderObjectStruct value) {
    stOfflineOObjetcs.add(value);
    prefs.setStringList('ff_stOfflineOObjetcs',
        _stOfflineOObjetcs.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOObjetcs(DtOrderObjectStruct value) {
    stOfflineOObjetcs.remove(value);
    prefs.setStringList('ff_stOfflineOObjetcs',
        _stOfflineOObjetcs.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOObjetcs(int index) {
    stOfflineOObjetcs.removeAt(index);
    prefs.setStringList('ff_stOfflineOObjetcs',
        _stOfflineOObjetcs.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOObjetcsAtIndex(
    int index,
    DtOrderObjectStruct Function(DtOrderObjectStruct) updateFn,
  ) {
    stOfflineOObjetcs[index] = updateFn(_stOfflineOObjetcs[index]);
    prefs.setStringList('ff_stOfflineOObjetcs',
        _stOfflineOObjetcs.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOObjetcs(int index, DtOrderObjectStruct value) {
    stOfflineOObjetcs.insert(index, value);
    prefs.setStringList('ff_stOfflineOObjetcs',
        _stOfflineOObjetcs.map((x) => x.serialize()).toList());
  }

  List<DtContractStruct> _stOfflineContracts = [];
  List<DtContractStruct> get stOfflineContracts => _stOfflineContracts;
  set stOfflineContracts(List<DtContractStruct> value) {
    _stOfflineContracts = value;
    prefs.setStringList(
        'ff_stOfflineContracts', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineContracts(DtContractStruct value) {
    stOfflineContracts.add(value);
    prefs.setStringList('ff_stOfflineContracts',
        _stOfflineContracts.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineContracts(DtContractStruct value) {
    stOfflineContracts.remove(value);
    prefs.setStringList('ff_stOfflineContracts',
        _stOfflineContracts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineContracts(int index) {
    stOfflineContracts.removeAt(index);
    prefs.setStringList('ff_stOfflineContracts',
        _stOfflineContracts.map((x) => x.serialize()).toList());
  }

  void updateStOfflineContractsAtIndex(
    int index,
    DtContractStruct Function(DtContractStruct) updateFn,
  ) {
    stOfflineContracts[index] = updateFn(_stOfflineContracts[index]);
    prefs.setStringList('ff_stOfflineContracts',
        _stOfflineContracts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineContracts(int index, DtContractStruct value) {
    stOfflineContracts.insert(index, value);
    prefs.setStringList('ff_stOfflineContracts',
        _stOfflineContracts.map((x) => x.serialize()).toList());
  }

  DtContractStruct _stContractSelected = DtContractStruct();
  DtContractStruct get stContractSelected => _stContractSelected;
  set stContractSelected(DtContractStruct value) {
    _stContractSelected = value;
  }

  void updateStContractSelectedStruct(Function(DtContractStruct) updateFn) {
    updateFn(_stContractSelected);
  }

  DtOrderStruct _stOSelected = DtOrderStruct();
  DtOrderStruct get stOSelected => _stOSelected;
  set stOSelected(DtOrderStruct value) {
    _stOSelected = value;
  }

  void updateStOSelectedStruct(Function(DtOrderStruct) updateFn) {
    updateFn(_stOSelected);
  }

  List<DtOrderFollowerStruct> _stUserOFollowing = [];
  List<DtOrderFollowerStruct> get stUserOFollowing => _stUserOFollowing;
  set stUserOFollowing(List<DtOrderFollowerStruct> value) {
    _stUserOFollowing = value;
  }

  void addToStUserOFollowing(DtOrderFollowerStruct value) {
    stUserOFollowing.add(value);
  }

  void removeFromStUserOFollowing(DtOrderFollowerStruct value) {
    stUserOFollowing.remove(value);
  }

  void removeAtIndexFromStUserOFollowing(int index) {
    stUserOFollowing.removeAt(index);
  }

  void updateStUserOFollowingAtIndex(
    int index,
    DtOrderFollowerStruct Function(DtOrderFollowerStruct) updateFn,
  ) {
    stUserOFollowing[index] = updateFn(_stUserOFollowing[index]);
  }

  void insertAtIndexInStUserOFollowing(int index, DtOrderFollowerStruct value) {
    stUserOFollowing.insert(index, value);
  }

  List<DtOrderPlanStruct> _stOfflineOPlans = [];
  List<DtOrderPlanStruct> get stOfflineOPlans => _stOfflineOPlans;
  set stOfflineOPlans(List<DtOrderPlanStruct> value) {
    _stOfflineOPlans = value;
    prefs.setStringList(
        'ff_stOfflineOPlans', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOPlans(DtOrderPlanStruct value) {
    stOfflineOPlans.add(value);
    prefs.setStringList('ff_stOfflineOPlans',
        _stOfflineOPlans.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOPlans(DtOrderPlanStruct value) {
    stOfflineOPlans.remove(value);
    prefs.setStringList('ff_stOfflineOPlans',
        _stOfflineOPlans.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOPlans(int index) {
    stOfflineOPlans.removeAt(index);
    prefs.setStringList('ff_stOfflineOPlans',
        _stOfflineOPlans.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOPlansAtIndex(
    int index,
    DtOrderPlanStruct Function(DtOrderPlanStruct) updateFn,
  ) {
    stOfflineOPlans[index] = updateFn(_stOfflineOPlans[index]);
    prefs.setStringList('ff_stOfflineOPlans',
        _stOfflineOPlans.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOPlans(int index, DtOrderPlanStruct value) {
    stOfflineOPlans.insert(index, value);
    prefs.setStringList('ff_stOfflineOPlans',
        _stOfflineOPlans.map((x) => x.serialize()).toList());
  }

  List<DtOrderStatusStruct> _stOfflineOStatuses = [];
  List<DtOrderStatusStruct> get stOfflineOStatuses => _stOfflineOStatuses;
  set stOfflineOStatuses(List<DtOrderStatusStruct> value) {
    _stOfflineOStatuses = value;
    prefs.setStringList(
        'ff_stOfflineOStatuses', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOStatuses(DtOrderStatusStruct value) {
    stOfflineOStatuses.add(value);
    prefs.setStringList('ff_stOfflineOStatuses',
        _stOfflineOStatuses.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOStatuses(DtOrderStatusStruct value) {
    stOfflineOStatuses.remove(value);
    prefs.setStringList('ff_stOfflineOStatuses',
        _stOfflineOStatuses.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOStatuses(int index) {
    stOfflineOStatuses.removeAt(index);
    prefs.setStringList('ff_stOfflineOStatuses',
        _stOfflineOStatuses.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOStatusesAtIndex(
    int index,
    DtOrderStatusStruct Function(DtOrderStatusStruct) updateFn,
  ) {
    stOfflineOStatuses[index] = updateFn(_stOfflineOStatuses[index]);
    prefs.setStringList('ff_stOfflineOStatuses',
        _stOfflineOStatuses.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOStatuses(int index, DtOrderStatusStruct value) {
    stOfflineOStatuses.insert(index, value);
    prefs.setStringList('ff_stOfflineOStatuses',
        _stOfflineOStatuses.map((x) => x.serialize()).toList());
  }

  List<DtUserStruct> _stOfflineTeamsLeaders = [];
  List<DtUserStruct> get stOfflineTeamsLeaders => _stOfflineTeamsLeaders;
  set stOfflineTeamsLeaders(List<DtUserStruct> value) {
    _stOfflineTeamsLeaders = value;
    prefs.setStringList(
        'ff_stOfflineTeamsLeaders', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineTeamsLeaders(DtUserStruct value) {
    stOfflineTeamsLeaders.add(value);
    prefs.setStringList('ff_stOfflineTeamsLeaders',
        _stOfflineTeamsLeaders.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineTeamsLeaders(DtUserStruct value) {
    stOfflineTeamsLeaders.remove(value);
    prefs.setStringList('ff_stOfflineTeamsLeaders',
        _stOfflineTeamsLeaders.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineTeamsLeaders(int index) {
    stOfflineTeamsLeaders.removeAt(index);
    prefs.setStringList('ff_stOfflineTeamsLeaders',
        _stOfflineTeamsLeaders.map((x) => x.serialize()).toList());
  }

  void updateStOfflineTeamsLeadersAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stOfflineTeamsLeaders[index] = updateFn(_stOfflineTeamsLeaders[index]);
    prefs.setStringList('ff_stOfflineTeamsLeaders',
        _stOfflineTeamsLeaders.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineTeamsLeaders(int index, DtUserStruct value) {
    stOfflineTeamsLeaders.insert(index, value);
    prefs.setStringList('ff_stOfflineTeamsLeaders',
        _stOfflineTeamsLeaders.map((x) => x.serialize()).toList());
  }

  DtUserStruct _stUserSelected = DtUserStruct();
  DtUserStruct get stUserSelected => _stUserSelected;
  set stUserSelected(DtUserStruct value) {
    _stUserSelected = value;
  }

  void updateStUserSelectedStruct(Function(DtUserStruct) updateFn) {
    updateFn(_stUserSelected);
  }

  List<DtOrderStruct> _XstUserOFollowing = [];
  List<DtOrderStruct> get XstUserOFollowing => _XstUserOFollowing;
  set XstUserOFollowing(List<DtOrderStruct> value) {
    _XstUserOFollowing = value;
    prefs.setStringList(
        'ff_XstUserOFollowing', value.map((x) => x.serialize()).toList());
  }

  void addToXstUserOFollowing(DtOrderStruct value) {
    XstUserOFollowing.add(value);
    prefs.setStringList('ff_XstUserOFollowing',
        _XstUserOFollowing.map((x) => x.serialize()).toList());
  }

  void removeFromXstUserOFollowing(DtOrderStruct value) {
    XstUserOFollowing.remove(value);
    prefs.setStringList('ff_XstUserOFollowing',
        _XstUserOFollowing.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromXstUserOFollowing(int index) {
    XstUserOFollowing.removeAt(index);
    prefs.setStringList('ff_XstUserOFollowing',
        _XstUserOFollowing.map((x) => x.serialize()).toList());
  }

  void updateXstUserOFollowingAtIndex(
    int index,
    DtOrderStruct Function(DtOrderStruct) updateFn,
  ) {
    XstUserOFollowing[index] = updateFn(_XstUserOFollowing[index]);
    prefs.setStringList('ff_XstUserOFollowing',
        _XstUserOFollowing.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInXstUserOFollowing(int index, DtOrderStruct value) {
    XstUserOFollowing.insert(index, value);
    prefs.setStringList('ff_XstUserOFollowing',
        _XstUserOFollowing.map((x) => x.serialize()).toList());
  }

  List<DtOrderStruct> _stDBUserOOpen = [];
  List<DtOrderStruct> get stDBUserOOpen => _stDBUserOOpen;
  set stDBUserOOpen(List<DtOrderStruct> value) {
    _stDBUserOOpen = value;
    prefs.setStringList(
        'ff_stDBUserOOpen', value.map((x) => x.serialize()).toList());
  }

  void addToStDBUserOOpen(DtOrderStruct value) {
    stDBUserOOpen.add(value);
    prefs.setStringList(
        'ff_stDBUserOOpen', _stDBUserOOpen.map((x) => x.serialize()).toList());
  }

  void removeFromStDBUserOOpen(DtOrderStruct value) {
    stDBUserOOpen.remove(value);
    prefs.setStringList(
        'ff_stDBUserOOpen', _stDBUserOOpen.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStDBUserOOpen(int index) {
    stDBUserOOpen.removeAt(index);
    prefs.setStringList(
        'ff_stDBUserOOpen', _stDBUserOOpen.map((x) => x.serialize()).toList());
  }

  void updateStDBUserOOpenAtIndex(
    int index,
    DtOrderStruct Function(DtOrderStruct) updateFn,
  ) {
    stDBUserOOpen[index] = updateFn(_stDBUserOOpen[index]);
    prefs.setStringList(
        'ff_stDBUserOOpen', _stDBUserOOpen.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStDBUserOOpen(int index, DtOrderStruct value) {
    stDBUserOOpen.insert(index, value);
    prefs.setStringList(
        'ff_stDBUserOOpen', _stDBUserOOpen.map((x) => x.serialize()).toList());
  }

  List<DtUserNotificationStruct> _stUserNotifications = [];
  List<DtUserNotificationStruct> get stUserNotifications =>
      _stUserNotifications;
  set stUserNotifications(List<DtUserNotificationStruct> value) {
    _stUserNotifications = value;
    prefs.setStringList(
        'ff_stUserNotifications', value.map((x) => x.serialize()).toList());
  }

  void addToStUserNotifications(DtUserNotificationStruct value) {
    stUserNotifications.add(value);
    prefs.setStringList('ff_stUserNotifications',
        _stUserNotifications.map((x) => x.serialize()).toList());
  }

  void removeFromStUserNotifications(DtUserNotificationStruct value) {
    stUserNotifications.remove(value);
    prefs.setStringList('ff_stUserNotifications',
        _stUserNotifications.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStUserNotifications(int index) {
    stUserNotifications.removeAt(index);
    prefs.setStringList('ff_stUserNotifications',
        _stUserNotifications.map((x) => x.serialize()).toList());
  }

  void updateStUserNotificationsAtIndex(
    int index,
    DtUserNotificationStruct Function(DtUserNotificationStruct) updateFn,
  ) {
    stUserNotifications[index] = updateFn(_stUserNotifications[index]);
    prefs.setStringList('ff_stUserNotifications',
        _stUserNotifications.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStUserNotifications(
      int index, DtUserNotificationStruct value) {
    stUserNotifications.insert(index, value);
    prefs.setStringList('ff_stUserNotifications',
        _stUserNotifications.map((x) => x.serialize()).toList());
  }

  List<DtUnitStatusStruct> _stOfflineUnitsStatuses = [];
  List<DtUnitStatusStruct> get stOfflineUnitsStatuses =>
      _stOfflineUnitsStatuses;
  set stOfflineUnitsStatuses(List<DtUnitStatusStruct> value) {
    _stOfflineUnitsStatuses = value;
    prefs.setStringList(
        'ff_stOfflineUnitsStatuses', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineUnitsStatuses(DtUnitStatusStruct value) {
    stOfflineUnitsStatuses.add(value);
    prefs.setStringList('ff_stOfflineUnitsStatuses',
        _stOfflineUnitsStatuses.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineUnitsStatuses(DtUnitStatusStruct value) {
    stOfflineUnitsStatuses.remove(value);
    prefs.setStringList('ff_stOfflineUnitsStatuses',
        _stOfflineUnitsStatuses.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineUnitsStatuses(int index) {
    stOfflineUnitsStatuses.removeAt(index);
    prefs.setStringList('ff_stOfflineUnitsStatuses',
        _stOfflineUnitsStatuses.map((x) => x.serialize()).toList());
  }

  void updateStOfflineUnitsStatusesAtIndex(
    int index,
    DtUnitStatusStruct Function(DtUnitStatusStruct) updateFn,
  ) {
    stOfflineUnitsStatuses[index] = updateFn(_stOfflineUnitsStatuses[index]);
    prefs.setStringList('ff_stOfflineUnitsStatuses',
        _stOfflineUnitsStatuses.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineUnitsStatuses(
      int index, DtUnitStatusStruct value) {
    stOfflineUnitsStatuses.insert(index, value);
    prefs.setStringList('ff_stOfflineUnitsStatuses',
        _stOfflineUnitsStatuses.map((x) => x.serialize()).toList());
  }

  DtOrderVisitStruct _stOVSelected = DtOrderVisitStruct();
  DtOrderVisitStruct get stOVSelected => _stOVSelected;
  set stOVSelected(DtOrderVisitStruct value) {
    _stOVSelected = value;
  }

  void updateStOVSelectedStruct(Function(DtOrderVisitStruct) updateFn) {
    updateFn(_stOVSelected);
  }

  List<DtOrderSuspendedReasonStruct> _stOfflineOSuspendedReasons = [];
  List<DtOrderSuspendedReasonStruct> get stOfflineOSuspendedReasons =>
      _stOfflineOSuspendedReasons;
  set stOfflineOSuspendedReasons(List<DtOrderSuspendedReasonStruct> value) {
    _stOfflineOSuspendedReasons = value;
    prefs.setStringList('ff_stOfflineOSuspendedReasons',
        value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOSuspendedReasons(DtOrderSuspendedReasonStruct value) {
    stOfflineOSuspendedReasons.add(value);
    prefs.setStringList('ff_stOfflineOSuspendedReasons',
        _stOfflineOSuspendedReasons.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOSuspendedReasons(
      DtOrderSuspendedReasonStruct value) {
    stOfflineOSuspendedReasons.remove(value);
    prefs.setStringList('ff_stOfflineOSuspendedReasons',
        _stOfflineOSuspendedReasons.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOSuspendedReasons(int index) {
    stOfflineOSuspendedReasons.removeAt(index);
    prefs.setStringList('ff_stOfflineOSuspendedReasons',
        _stOfflineOSuspendedReasons.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOSuspendedReasonsAtIndex(
    int index,
    DtOrderSuspendedReasonStruct Function(DtOrderSuspendedReasonStruct)
        updateFn,
  ) {
    stOfflineOSuspendedReasons[index] =
        updateFn(_stOfflineOSuspendedReasons[index]);
    prefs.setStringList('ff_stOfflineOSuspendedReasons',
        _stOfflineOSuspendedReasons.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOSuspendedReasons(
      int index, DtOrderSuspendedReasonStruct value) {
    stOfflineOSuspendedReasons.insert(index, value);
    prefs.setStringList('ff_stOfflineOSuspendedReasons',
        _stOfflineOSuspendedReasons.map((x) => x.serialize()).toList());
  }

  List<DtVehicleStruct> _stOfflineVehicles = [];
  List<DtVehicleStruct> get stOfflineVehicles => _stOfflineVehicles;
  set stOfflineVehicles(List<DtVehicleStruct> value) {
    _stOfflineVehicles = value;
    prefs.setStringList(
        'ff_stOfflineVehicles', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineVehicles(DtVehicleStruct value) {
    stOfflineVehicles.add(value);
    prefs.setStringList('ff_stOfflineVehicles',
        _stOfflineVehicles.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineVehicles(DtVehicleStruct value) {
    stOfflineVehicles.remove(value);
    prefs.setStringList('ff_stOfflineVehicles',
        _stOfflineVehicles.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineVehicles(int index) {
    stOfflineVehicles.removeAt(index);
    prefs.setStringList('ff_stOfflineVehicles',
        _stOfflineVehicles.map((x) => x.serialize()).toList());
  }

  void updateStOfflineVehiclesAtIndex(
    int index,
    DtVehicleStruct Function(DtVehicleStruct) updateFn,
  ) {
    stOfflineVehicles[index] = updateFn(_stOfflineVehicles[index]);
    prefs.setStringList('ff_stOfflineVehicles',
        _stOfflineVehicles.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineVehicles(int index, DtVehicleStruct value) {
    stOfflineVehicles.insert(index, value);
    prefs.setStringList('ff_stOfflineVehicles',
        _stOfflineVehicles.map((x) => x.serialize()).toList());
  }

  List<DtOrderVisitVehicleStruct> _stOVVehicles = [];
  List<DtOrderVisitVehicleStruct> get stOVVehicles => _stOVVehicles;
  set stOVVehicles(List<DtOrderVisitVehicleStruct> value) {
    _stOVVehicles = value;
  }

  void addToStOVVehicles(DtOrderVisitVehicleStruct value) {
    stOVVehicles.add(value);
  }

  void removeFromStOVVehicles(DtOrderVisitVehicleStruct value) {
    stOVVehicles.remove(value);
  }

  void removeAtIndexFromStOVVehicles(int index) {
    stOVVehicles.removeAt(index);
  }

  void updateStOVVehiclesAtIndex(
    int index,
    DtOrderVisitVehicleStruct Function(DtOrderVisitVehicleStruct) updateFn,
  ) {
    stOVVehicles[index] = updateFn(_stOVVehicles[index]);
  }

  void insertAtIndexInStOVVehicles(int index, DtOrderVisitVehicleStruct value) {
    stOVVehicles.insert(index, value);
  }

  List<DtUserStruct> _stDBAdminUsersAvailabe = [];
  List<DtUserStruct> get stDBAdminUsersAvailabe => _stDBAdminUsersAvailabe;
  set stDBAdminUsersAvailabe(List<DtUserStruct> value) {
    _stDBAdminUsersAvailabe = value;
  }

  void addToStDBAdminUsersAvailabe(DtUserStruct value) {
    stDBAdminUsersAvailabe.add(value);
  }

  void removeFromStDBAdminUsersAvailabe(DtUserStruct value) {
    stDBAdminUsersAvailabe.remove(value);
  }

  void removeAtIndexFromStDBAdminUsersAvailabe(int index) {
    stDBAdminUsersAvailabe.removeAt(index);
  }

  void updateStDBAdminUsersAvailabeAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stDBAdminUsersAvailabe[index] = updateFn(_stDBAdminUsersAvailabe[index]);
  }

  void insertAtIndexInStDBAdminUsersAvailabe(int index, DtUserStruct value) {
    stDBAdminUsersAvailabe.insert(index, value);
  }

  List<DtUserStruct> _stUsersByTeam = [];
  List<DtUserStruct> get stUsersByTeam => _stUsersByTeam;
  set stUsersByTeam(List<DtUserStruct> value) {
    _stUsersByTeam = value;
  }

  void addToStUsersByTeam(DtUserStruct value) {
    stUsersByTeam.add(value);
  }

  void removeFromStUsersByTeam(DtUserStruct value) {
    stUsersByTeam.remove(value);
  }

  void removeAtIndexFromStUsersByTeam(int index) {
    stUsersByTeam.removeAt(index);
  }

  void updateStUsersByTeamAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stUsersByTeam[index] = updateFn(_stUsersByTeam[index]);
  }

  void insertAtIndexInStUsersByTeam(int index, DtUserStruct value) {
    stUsersByTeam.insert(index, value);
  }

  List<DtOrderVisitStruct> _stOSelectedOVs = [];
  List<DtOrderVisitStruct> get stOSelectedOVs => _stOSelectedOVs;
  set stOSelectedOVs(List<DtOrderVisitStruct> value) {
    _stOSelectedOVs = value;
  }

  void addToStOSelectedOVs(DtOrderVisitStruct value) {
    stOSelectedOVs.add(value);
  }

  void removeFromStOSelectedOVs(DtOrderVisitStruct value) {
    stOSelectedOVs.remove(value);
  }

  void removeAtIndexFromStOSelectedOVs(int index) {
    stOSelectedOVs.removeAt(index);
  }

  void updateStOSelectedOVsAtIndex(
    int index,
    DtOrderVisitStruct Function(DtOrderVisitStruct) updateFn,
  ) {
    stOSelectedOVs[index] = updateFn(_stOSelectedOVs[index]);
  }

  void insertAtIndexInStOSelectedOVs(int index, DtOrderVisitStruct value) {
    stOSelectedOVs.insert(index, value);
  }

  List<DtOrderVisitTeamUserStruct> _stOVSelectedTeamUsers = [];
  List<DtOrderVisitTeamUserStruct> get stOVSelectedTeamUsers =>
      _stOVSelectedTeamUsers;
  set stOVSelectedTeamUsers(List<DtOrderVisitTeamUserStruct> value) {
    _stOVSelectedTeamUsers = value;
  }

  void addToStOVSelectedTeamUsers(DtOrderVisitTeamUserStruct value) {
    stOVSelectedTeamUsers.add(value);
  }

  void removeFromStOVSelectedTeamUsers(DtOrderVisitTeamUserStruct value) {
    stOVSelectedTeamUsers.remove(value);
  }

  void removeAtIndexFromStOVSelectedTeamUsers(int index) {
    stOVSelectedTeamUsers.removeAt(index);
  }

  void updateStOVSelectedTeamUsersAtIndex(
    int index,
    DtOrderVisitTeamUserStruct Function(DtOrderVisitTeamUserStruct) updateFn,
  ) {
    stOVSelectedTeamUsers[index] = updateFn(_stOVSelectedTeamUsers[index]);
  }

  void insertAtIndexInStOVSelectedTeamUsers(
      int index, DtOrderVisitTeamUserStruct value) {
    stOVSelectedTeamUsers.insert(index, value);
  }

  List<DtOrderStruct> _stOPSelectedOs = [];
  List<DtOrderStruct> get stOPSelectedOs => _stOPSelectedOs;
  set stOPSelectedOs(List<DtOrderStruct> value) {
    _stOPSelectedOs = value;
  }

  void addToStOPSelectedOs(DtOrderStruct value) {
    stOPSelectedOs.add(value);
  }

  void removeFromStOPSelectedOs(DtOrderStruct value) {
    stOPSelectedOs.remove(value);
  }

  void removeAtIndexFromStOPSelectedOs(int index) {
    stOPSelectedOs.removeAt(index);
  }

  void updateStOPSelectedOsAtIndex(
    int index,
    DtOrderStruct Function(DtOrderStruct) updateFn,
  ) {
    stOPSelectedOs[index] = updateFn(_stOPSelectedOs[index]);
  }

  void insertAtIndexInStOPSelectedOs(int index, DtOrderStruct value) {
    stOPSelectedOs.insert(index, value);
  }

  EnumVersionsMode? _stAppVersionMode = EnumVersionsMode.live;
  EnumVersionsMode? get stAppVersionMode => _stAppVersionMode;
  set stAppVersionMode(EnumVersionsMode? value) {
    _stAppVersionMode = value;
    value != null
        ? prefs.setString('ff_stAppVersionMode', value.serialize())
        : prefs.remove('ff_stAppVersionMode');
  }

  DtUserStruct _stTeamUserSelected = DtUserStruct();
  DtUserStruct get stTeamUserSelected => _stTeamUserSelected;
  set stTeamUserSelected(DtUserStruct value) {
    _stTeamUserSelected = value;
  }

  void updateStTeamUserSelectedStruct(Function(DtUserStruct) updateFn) {
    updateFn(_stTeamUserSelected);
  }

  List<DtUserStruct> _stUsersLeadersByTeam = [];
  List<DtUserStruct> get stUsersLeadersByTeam => _stUsersLeadersByTeam;
  set stUsersLeadersByTeam(List<DtUserStruct> value) {
    _stUsersLeadersByTeam = value;
  }

  void addToStUsersLeadersByTeam(DtUserStruct value) {
    stUsersLeadersByTeam.add(value);
  }

  void removeFromStUsersLeadersByTeam(DtUserStruct value) {
    stUsersLeadersByTeam.remove(value);
  }

  void removeAtIndexFromStUsersLeadersByTeam(int index) {
    stUsersLeadersByTeam.removeAt(index);
  }

  void updateStUsersLeadersByTeamAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stUsersLeadersByTeam[index] = updateFn(_stUsersLeadersByTeam[index]);
  }

  void insertAtIndexInStUsersLeadersByTeam(int index, DtUserStruct value) {
    stUsersLeadersByTeam.insert(index, value);
  }

  List<DtDepartmentStruct> _stOfflineDepartments = [];
  List<DtDepartmentStruct> get stOfflineDepartments => _stOfflineDepartments;
  set stOfflineDepartments(List<DtDepartmentStruct> value) {
    _stOfflineDepartments = value;
    prefs.setStringList(
        'ff_stOfflineDepartments', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineDepartments(DtDepartmentStruct value) {
    stOfflineDepartments.add(value);
    prefs.setStringList('ff_stOfflineDepartments',
        _stOfflineDepartments.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineDepartments(DtDepartmentStruct value) {
    stOfflineDepartments.remove(value);
    prefs.setStringList('ff_stOfflineDepartments',
        _stOfflineDepartments.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineDepartments(int index) {
    stOfflineDepartments.removeAt(index);
    prefs.setStringList('ff_stOfflineDepartments',
        _stOfflineDepartments.map((x) => x.serialize()).toList());
  }

  void updateStOfflineDepartmentsAtIndex(
    int index,
    DtDepartmentStruct Function(DtDepartmentStruct) updateFn,
  ) {
    stOfflineDepartments[index] = updateFn(_stOfflineDepartments[index]);
    prefs.setStringList('ff_stOfflineDepartments',
        _stOfflineDepartments.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineDepartments(
      int index, DtDepartmentStruct value) {
    stOfflineDepartments.insert(index, value);
    prefs.setStringList('ff_stOfflineDepartments',
        _stOfflineDepartments.map((x) => x.serialize()).toList());
  }

  List<DtProfileStruct> _stOfflineProfiles = [];
  List<DtProfileStruct> get stOfflineProfiles => _stOfflineProfiles;
  set stOfflineProfiles(List<DtProfileStruct> value) {
    _stOfflineProfiles = value;
    prefs.setStringList(
        'ff_stOfflineProfiles', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineProfiles(DtProfileStruct value) {
    stOfflineProfiles.add(value);
    prefs.setStringList('ff_stOfflineProfiles',
        _stOfflineProfiles.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineProfiles(DtProfileStruct value) {
    stOfflineProfiles.remove(value);
    prefs.setStringList('ff_stOfflineProfiles',
        _stOfflineProfiles.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineProfiles(int index) {
    stOfflineProfiles.removeAt(index);
    prefs.setStringList('ff_stOfflineProfiles',
        _stOfflineProfiles.map((x) => x.serialize()).toList());
  }

  void updateStOfflineProfilesAtIndex(
    int index,
    DtProfileStruct Function(DtProfileStruct) updateFn,
  ) {
    stOfflineProfiles[index] = updateFn(_stOfflineProfiles[index]);
    prefs.setStringList('ff_stOfflineProfiles',
        _stOfflineProfiles.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineProfiles(int index, DtProfileStruct value) {
    stOfflineProfiles.insert(index, value);
    prefs.setStringList('ff_stOfflineProfiles',
        _stOfflineProfiles.map((x) => x.serialize()).toList());
  }

  List<DtAppPageStruct> _stOfflineAppPages = [];
  List<DtAppPageStruct> get stOfflineAppPages => _stOfflineAppPages;
  set stOfflineAppPages(List<DtAppPageStruct> value) {
    _stOfflineAppPages = value;
    prefs.setStringList(
        'ff_stOfflineAppPages', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineAppPages(DtAppPageStruct value) {
    stOfflineAppPages.add(value);
    prefs.setStringList('ff_stOfflineAppPages',
        _stOfflineAppPages.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineAppPages(DtAppPageStruct value) {
    stOfflineAppPages.remove(value);
    prefs.setStringList('ff_stOfflineAppPages',
        _stOfflineAppPages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineAppPages(int index) {
    stOfflineAppPages.removeAt(index);
    prefs.setStringList('ff_stOfflineAppPages',
        _stOfflineAppPages.map((x) => x.serialize()).toList());
  }

  void updateStOfflineAppPagesAtIndex(
    int index,
    DtAppPageStruct Function(DtAppPageStruct) updateFn,
  ) {
    stOfflineAppPages[index] = updateFn(_stOfflineAppPages[index]);
    prefs.setStringList('ff_stOfflineAppPages',
        _stOfflineAppPages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineAppPages(int index, DtAppPageStruct value) {
    stOfflineAppPages.insert(index, value);
    prefs.setStringList('ff_stOfflineAppPages',
        _stOfflineAppPages.map((x) => x.serialize()).toList());
  }

  List<DtOrderVisitVehicleStruct> _stOVSelectedVehicles = [];
  List<DtOrderVisitVehicleStruct> get stOVSelectedVehicles =>
      _stOVSelectedVehicles;
  set stOVSelectedVehicles(List<DtOrderVisitVehicleStruct> value) {
    _stOVSelectedVehicles = value;
  }

  void addToStOVSelectedVehicles(DtOrderVisitVehicleStruct value) {
    stOVSelectedVehicles.add(value);
  }

  void removeFromStOVSelectedVehicles(DtOrderVisitVehicleStruct value) {
    stOVSelectedVehicles.remove(value);
  }

  void removeAtIndexFromStOVSelectedVehicles(int index) {
    stOVSelectedVehicles.removeAt(index);
  }

  void updateStOVSelectedVehiclesAtIndex(
    int index,
    DtOrderVisitVehicleStruct Function(DtOrderVisitVehicleStruct) updateFn,
  ) {
    stOVSelectedVehicles[index] = updateFn(_stOVSelectedVehicles[index]);
  }

  void insertAtIndexInStOVSelectedVehicles(
      int index, DtOrderVisitVehicleStruct value) {
    stOVSelectedVehicles.insert(index, value);
  }

  List<DtAssetStruct> _stOVAssetsSearchFilters = [];
  List<DtAssetStruct> get stOVAssetsSearchFilters => _stOVAssetsSearchFilters;
  set stOVAssetsSearchFilters(List<DtAssetStruct> value) {
    _stOVAssetsSearchFilters = value;
  }

  void addToStOVAssetsSearchFilters(DtAssetStruct value) {
    stOVAssetsSearchFilters.add(value);
  }

  void removeFromStOVAssetsSearchFilters(DtAssetStruct value) {
    stOVAssetsSearchFilters.remove(value);
  }

  void removeAtIndexFromStOVAssetsSearchFilters(int index) {
    stOVAssetsSearchFilters.removeAt(index);
  }

  void updateStOVAssetsSearchFiltersAtIndex(
    int index,
    DtAssetStruct Function(DtAssetStruct) updateFn,
  ) {
    stOVAssetsSearchFilters[index] = updateFn(_stOVAssetsSearchFilters[index]);
  }

  void insertAtIndexInStOVAssetsSearchFilters(int index, DtAssetStruct value) {
    stOVAssetsSearchFilters.insert(index, value);
  }

  DtOrderVisitAssetStruct _stOVSelectedAsset = DtOrderVisitAssetStruct();
  DtOrderVisitAssetStruct get stOVSelectedAsset => _stOVSelectedAsset;
  set stOVSelectedAsset(DtOrderVisitAssetStruct value) {
    _stOVSelectedAsset = value;
  }

  void updateStOVSelectedAssetStruct(
      Function(DtOrderVisitAssetStruct) updateFn) {
    updateFn(_stOVSelectedAsset);
  }

  List<DtOrderVisitAssetStruct> _stOVSelectedAssets = [];
  List<DtOrderVisitAssetStruct> get stOVSelectedAssets => _stOVSelectedAssets;
  set stOVSelectedAssets(List<DtOrderVisitAssetStruct> value) {
    _stOVSelectedAssets = value;
  }

  void addToStOVSelectedAssets(DtOrderVisitAssetStruct value) {
    stOVSelectedAssets.add(value);
  }

  void removeFromStOVSelectedAssets(DtOrderVisitAssetStruct value) {
    stOVSelectedAssets.remove(value);
  }

  void removeAtIndexFromStOVSelectedAssets(int index) {
    stOVSelectedAssets.removeAt(index);
  }

  void updateStOVSelectedAssetsAtIndex(
    int index,
    DtOrderVisitAssetStruct Function(DtOrderVisitAssetStruct) updateFn,
  ) {
    stOVSelectedAssets[index] = updateFn(_stOVSelectedAssets[index]);
  }

  void insertAtIndexInStOVSelectedAssets(
      int index, DtOrderVisitAssetStruct value) {
    stOVSelectedAssets.insert(index, value);
  }

  List<DtOrderTypeActivityStruct> _stOfflineOTypesActivities = [];
  List<DtOrderTypeActivityStruct> get stOfflineOTypesActivities =>
      _stOfflineOTypesActivities;
  set stOfflineOTypesActivities(List<DtOrderTypeActivityStruct> value) {
    _stOfflineOTypesActivities = value;
    prefs.setStringList('ff_stOfflineOTypesActivities',
        value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOTypesActivities(DtOrderTypeActivityStruct value) {
    stOfflineOTypesActivities.add(value);
    prefs.setStringList('ff_stOfflineOTypesActivities',
        _stOfflineOTypesActivities.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOTypesActivities(DtOrderTypeActivityStruct value) {
    stOfflineOTypesActivities.remove(value);
    prefs.setStringList('ff_stOfflineOTypesActivities',
        _stOfflineOTypesActivities.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOTypesActivities(int index) {
    stOfflineOTypesActivities.removeAt(index);
    prefs.setStringList('ff_stOfflineOTypesActivities',
        _stOfflineOTypesActivities.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOTypesActivitiesAtIndex(
    int index,
    DtOrderTypeActivityStruct Function(DtOrderTypeActivityStruct) updateFn,
  ) {
    stOfflineOTypesActivities[index] =
        updateFn(_stOfflineOTypesActivities[index]);
    prefs.setStringList('ff_stOfflineOTypesActivities',
        _stOfflineOTypesActivities.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOTypesActivities(
      int index, DtOrderTypeActivityStruct value) {
    stOfflineOTypesActivities.insert(index, value);
    prefs.setStringList('ff_stOfflineOTypesActivities',
        _stOfflineOTypesActivities.map((x) => x.serialize()).toList());
  }

  List<DtOrderVisitAssetActivityStruct> _stOVSelectedAssetActivities = [];
  List<DtOrderVisitAssetActivityStruct> get stOVSelectedAssetActivities =>
      _stOVSelectedAssetActivities;
  set stOVSelectedAssetActivities(List<DtOrderVisitAssetActivityStruct> value) {
    _stOVSelectedAssetActivities = value;
  }

  void addToStOVSelectedAssetActivities(DtOrderVisitAssetActivityStruct value) {
    stOVSelectedAssetActivities.add(value);
  }

  void removeFromStOVSelectedAssetActivities(
      DtOrderVisitAssetActivityStruct value) {
    stOVSelectedAssetActivities.remove(value);
  }

  void removeAtIndexFromStOVSelectedAssetActivities(int index) {
    stOVSelectedAssetActivities.removeAt(index);
  }

  void updateStOVSelectedAssetActivitiesAtIndex(
    int index,
    DtOrderVisitAssetActivityStruct Function(DtOrderVisitAssetActivityStruct)
        updateFn,
  ) {
    stOVSelectedAssetActivities[index] =
        updateFn(_stOVSelectedAssetActivities[index]);
  }

  void insertAtIndexInStOVSelectedAssetActivities(
      int index, DtOrderVisitAssetActivityStruct value) {
    stOVSelectedAssetActivities.insert(index, value);
  }

  List<DtMaterialStruct> _stMaterialsSearchResults = [];
  List<DtMaterialStruct> get stMaterialsSearchResults =>
      _stMaterialsSearchResults;
  set stMaterialsSearchResults(List<DtMaterialStruct> value) {
    _stMaterialsSearchResults = value;
  }

  void addToStMaterialsSearchResults(DtMaterialStruct value) {
    stMaterialsSearchResults.add(value);
  }

  void removeFromStMaterialsSearchResults(DtMaterialStruct value) {
    stMaterialsSearchResults.remove(value);
  }

  void removeAtIndexFromStMaterialsSearchResults(int index) {
    stMaterialsSearchResults.removeAt(index);
  }

  void updateStMaterialsSearchResultsAtIndex(
    int index,
    DtMaterialStruct Function(DtMaterialStruct) updateFn,
  ) {
    stMaterialsSearchResults[index] =
        updateFn(_stMaterialsSearchResults[index]);
  }

  void insertAtIndexInStMaterialsSearchResults(
      int index, DtMaterialStruct value) {
    stMaterialsSearchResults.insert(index, value);
  }

  String _XstUserNavBarOption = '';
  String get XstUserNavBarOption => _XstUserNavBarOption;
  set XstUserNavBarOption(String value) {
    _XstUserNavBarOption = value;
  }

  List<DtUserStruct> _stOVOpenTeamUsers = [];
  List<DtUserStruct> get stOVOpenTeamUsers => _stOVOpenTeamUsers;
  set stOVOpenTeamUsers(List<DtUserStruct> value) {
    _stOVOpenTeamUsers = value;
  }

  void addToStOVOpenTeamUsers(DtUserStruct value) {
    stOVOpenTeamUsers.add(value);
  }

  void removeFromStOVOpenTeamUsers(DtUserStruct value) {
    stOVOpenTeamUsers.remove(value);
  }

  void removeAtIndexFromStOVOpenTeamUsers(int index) {
    stOVOpenTeamUsers.removeAt(index);
  }

  void updateStOVOpenTeamUsersAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stOVOpenTeamUsers[index] = updateFn(_stOVOpenTeamUsers[index]);
  }

  void insertAtIndexInStOVOpenTeamUsers(int index, DtUserStruct value) {
    stOVOpenTeamUsers.insert(index, value);
  }

  int _XstCartMaterialsAmount = 0;
  int get XstCartMaterialsAmount => _XstCartMaterialsAmount;
  set XstCartMaterialsAmount(int value) {
    _XstCartMaterialsAmount = value;
  }

  List<DtCartMaterialStruct> _stCartMaterials = [];
  List<DtCartMaterialStruct> get stCartMaterials => _stCartMaterials;
  set stCartMaterials(List<DtCartMaterialStruct> value) {
    _stCartMaterials = value;
  }

  void addToStCartMaterials(DtCartMaterialStruct value) {
    stCartMaterials.add(value);
  }

  void removeFromStCartMaterials(DtCartMaterialStruct value) {
    stCartMaterials.remove(value);
  }

  void removeAtIndexFromStCartMaterials(int index) {
    stCartMaterials.removeAt(index);
  }

  void updateStCartMaterialsAtIndex(
    int index,
    DtCartMaterialStruct Function(DtCartMaterialStruct) updateFn,
  ) {
    stCartMaterials[index] = updateFn(_stCartMaterials[index]);
  }

  void insertAtIndexInStCartMaterials(int index, DtCartMaterialStruct value) {
    stCartMaterials.insert(index, value);
  }

  String _stOVNavBarOption = '';
  String get stOVNavBarOption => _stOVNavBarOption;
  set stOVNavBarOption(String value) {
    _stOVNavBarOption = value;
  }

  int _stOVSelectedAssetsDraftAmount = 0;
  int get stOVSelectedAssetsDraftAmount => _stOVSelectedAssetsDraftAmount;
  set stOVSelectedAssetsDraftAmount(int value) {
    _stOVSelectedAssetsDraftAmount = value;
  }

  int _stOVSelectedAssetsReportedAmount = 0;
  int get stOVSelectedAssetsReportedAmount => _stOVSelectedAssetsReportedAmount;
  set stOVSelectedAssetsReportedAmount(int value) {
    _stOVSelectedAssetsReportedAmount = value;
  }

  int _stOVSelectedAssetsDisapprovedAmount = 0;
  int get stOVSelectedAssetsDisapprovedAmount =>
      _stOVSelectedAssetsDisapprovedAmount;
  set stOVSelectedAssetsDisapprovedAmount(int value) {
    _stOVSelectedAssetsDisapprovedAmount = value;
  }

  int _stOVSelectedAssetsApprovedAmount = 0;
  int get stOVSelectedAssetsApprovedAmount => _stOVSelectedAssetsApprovedAmount;
  set stOVSelectedAssetsApprovedAmount(int value) {
    _stOVSelectedAssetsApprovedAmount = value;
  }

  int _stOVSelectedAssetsAmount = 0;
  int get stOVSelectedAssetsAmount => _stOVSelectedAssetsAmount;
  set stOVSelectedAssetsAmount(int value) {
    _stOVSelectedAssetsAmount = value;
  }

  int _stOVSelectedAssetsRevisedAmount = 0;
  int get stOVSelectedAssetsRevisedAmount => _stOVSelectedAssetsRevisedAmount;
  set stOVSelectedAssetsRevisedAmount(int value) {
    _stOVSelectedAssetsRevisedAmount = value;
  }

  List<DtOrderCauseReasonStruct> _stOfflineOCausesReasons = [];
  List<DtOrderCauseReasonStruct> get stOfflineOCausesReasons =>
      _stOfflineOCausesReasons;
  set stOfflineOCausesReasons(List<DtOrderCauseReasonStruct> value) {
    _stOfflineOCausesReasons = value;
    prefs.setStringList(
        'ff_stOfflineOCausesReasons', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineOCausesReasons(DtOrderCauseReasonStruct value) {
    stOfflineOCausesReasons.add(value);
    prefs.setStringList('ff_stOfflineOCausesReasons',
        _stOfflineOCausesReasons.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineOCausesReasons(DtOrderCauseReasonStruct value) {
    stOfflineOCausesReasons.remove(value);
    prefs.setStringList('ff_stOfflineOCausesReasons',
        _stOfflineOCausesReasons.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineOCausesReasons(int index) {
    stOfflineOCausesReasons.removeAt(index);
    prefs.setStringList('ff_stOfflineOCausesReasons',
        _stOfflineOCausesReasons.map((x) => x.serialize()).toList());
  }

  void updateStOfflineOCausesReasonsAtIndex(
    int index,
    DtOrderCauseReasonStruct Function(DtOrderCauseReasonStruct) updateFn,
  ) {
    stOfflineOCausesReasons[index] = updateFn(_stOfflineOCausesReasons[index]);
    prefs.setStringList('ff_stOfflineOCausesReasons',
        _stOfflineOCausesReasons.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineOCausesReasons(
      int index, DtOrderCauseReasonStruct value) {
    stOfflineOCausesReasons.insert(index, value);
    prefs.setStringList('ff_stOfflineOCausesReasons',
        _stOfflineOCausesReasons.map((x) => x.serialize()).toList());
  }

  List<DtOrderVisitStruct> _stDBAdminOVFilters = [];
  List<DtOrderVisitStruct> get stDBAdminOVFilters => _stDBAdminOVFilters;
  set stDBAdminOVFilters(List<DtOrderVisitStruct> value) {
    _stDBAdminOVFilters = value;
  }

  void addToStDBAdminOVFilters(DtOrderVisitStruct value) {
    stDBAdminOVFilters.add(value);
  }

  void removeFromStDBAdminOVFilters(DtOrderVisitStruct value) {
    stDBAdminOVFilters.remove(value);
  }

  void removeAtIndexFromStDBAdminOVFilters(int index) {
    stDBAdminOVFilters.removeAt(index);
  }

  void updateStDBAdminOVFiltersAtIndex(
    int index,
    DtOrderVisitStruct Function(DtOrderVisitStruct) updateFn,
  ) {
    stDBAdminOVFilters[index] = updateFn(_stDBAdminOVFilters[index]);
  }

  void insertAtIndexInStDBAdminOVFilters(int index, DtOrderVisitStruct value) {
    stDBAdminOVFilters.insert(index, value);
  }

  String _stDBAdminNavBarOption = '';
  String get stDBAdminNavBarOption => _stDBAdminNavBarOption;
  set stDBAdminNavBarOption(String value) {
    _stDBAdminNavBarOption = value;
  }

  String _stDBUserNavBarOption = '';
  String get stDBUserNavBarOption => _stDBUserNavBarOption;
  set stDBUserNavBarOption(String value) {
    _stDBUserNavBarOption = value;
  }

  List<DtOrderVisitStruct> _stDBUserOVOpen = [];
  List<DtOrderVisitStruct> get stDBUserOVOpen => _stDBUserOVOpen;
  set stDBUserOVOpen(List<DtOrderVisitStruct> value) {
    _stDBUserOVOpen = value;
  }

  void addToStDBUserOVOpen(DtOrderVisitStruct value) {
    stDBUserOVOpen.add(value);
  }

  void removeFromStDBUserOVOpen(DtOrderVisitStruct value) {
    stDBUserOVOpen.remove(value);
  }

  void removeAtIndexFromStDBUserOVOpen(int index) {
    stDBUserOVOpen.removeAt(index);
  }

  void updateStDBUserOVOpenAtIndex(
    int index,
    DtOrderVisitStruct Function(DtOrderVisitStruct) updateFn,
  ) {
    stDBUserOVOpen[index] = updateFn(_stDBUserOVOpen[index]);
  }

  void insertAtIndexInStDBUserOVOpen(int index, DtOrderVisitStruct value) {
    stDBUserOVOpen.insert(index, value);
  }

  List<DtContractManagerStruct> _stOSelectedContractManagers = [];
  List<DtContractManagerStruct> get stOSelectedContractManagers =>
      _stOSelectedContractManagers;
  set stOSelectedContractManagers(List<DtContractManagerStruct> value) {
    _stOSelectedContractManagers = value;
  }

  void addToStOSelectedContractManagers(DtContractManagerStruct value) {
    stOSelectedContractManagers.add(value);
  }

  void removeFromStOSelectedContractManagers(DtContractManagerStruct value) {
    stOSelectedContractManagers.remove(value);
  }

  void removeAtIndexFromStOSelectedContractManagers(int index) {
    stOSelectedContractManagers.removeAt(index);
  }

  void updateStOSelectedContractManagersAtIndex(
    int index,
    DtContractManagerStruct Function(DtContractManagerStruct) updateFn,
  ) {
    stOSelectedContractManagers[index] =
        updateFn(_stOSelectedContractManagers[index]);
  }

  void insertAtIndexInStOSelectedContractManagers(
      int index, DtContractManagerStruct value) {
    stOSelectedContractManagers.insert(index, value);
  }

  List<DtMaterialStruct> _stOVSelectedAssetMaterialsSearchResults = [];
  List<DtMaterialStruct> get stOVSelectedAssetMaterialsSearchResults =>
      _stOVSelectedAssetMaterialsSearchResults;
  set stOVSelectedAssetMaterialsSearchResults(List<DtMaterialStruct> value) {
    _stOVSelectedAssetMaterialsSearchResults = value;
  }

  void addToStOVSelectedAssetMaterialsSearchResults(DtMaterialStruct value) {
    stOVSelectedAssetMaterialsSearchResults.add(value);
  }

  void removeFromStOVSelectedAssetMaterialsSearchResults(
      DtMaterialStruct value) {
    stOVSelectedAssetMaterialsSearchResults.remove(value);
  }

  void removeAtIndexFromStOVSelectedAssetMaterialsSearchResults(int index) {
    stOVSelectedAssetMaterialsSearchResults.removeAt(index);
  }

  void updateStOVSelectedAssetMaterialsSearchResultsAtIndex(
    int index,
    DtMaterialStruct Function(DtMaterialStruct) updateFn,
  ) {
    stOVSelectedAssetMaterialsSearchResults[index] =
        updateFn(_stOVSelectedAssetMaterialsSearchResults[index]);
  }

  void insertAtIndexInStOVSelectedAssetMaterialsSearchResults(
      int index, DtMaterialStruct value) {
    stOVSelectedAssetMaterialsSearchResults.insert(index, value);
  }

  List<DtOrderVisitAssetMaterialStruct> _stOVSelectedAssetMaterials = [];
  List<DtOrderVisitAssetMaterialStruct> get stOVSelectedAssetMaterials =>
      _stOVSelectedAssetMaterials;
  set stOVSelectedAssetMaterials(List<DtOrderVisitAssetMaterialStruct> value) {
    _stOVSelectedAssetMaterials = value;
  }

  void addToStOVSelectedAssetMaterials(DtOrderVisitAssetMaterialStruct value) {
    stOVSelectedAssetMaterials.add(value);
  }

  void removeFromStOVSelectedAssetMaterials(
      DtOrderVisitAssetMaterialStruct value) {
    stOVSelectedAssetMaterials.remove(value);
  }

  void removeAtIndexFromStOVSelectedAssetMaterials(int index) {
    stOVSelectedAssetMaterials.removeAt(index);
  }

  void updateStOVSelectedAssetMaterialsAtIndex(
    int index,
    DtOrderVisitAssetMaterialStruct Function(DtOrderVisitAssetMaterialStruct)
        updateFn,
  ) {
    stOVSelectedAssetMaterials[index] =
        updateFn(_stOVSelectedAssetMaterials[index]);
  }

  void insertAtIndexInStOVSelectedAssetMaterials(
      int index, DtOrderVisitAssetMaterialStruct value) {
    stOVSelectedAssetMaterials.insert(index, value);
  }

  List<DtContractServiceStruct> _stContractSelectedServices = [];
  List<DtContractServiceStruct> get stContractSelectedServices =>
      _stContractSelectedServices;
  set stContractSelectedServices(List<DtContractServiceStruct> value) {
    _stContractSelectedServices = value;
  }

  void addToStContractSelectedServices(DtContractServiceStruct value) {
    stContractSelectedServices.add(value);
  }

  void removeFromStContractSelectedServices(DtContractServiceStruct value) {
    stContractSelectedServices.remove(value);
  }

  void removeAtIndexFromStContractSelectedServices(int index) {
    stContractSelectedServices.removeAt(index);
  }

  void updateStContractSelectedServicesAtIndex(
    int index,
    DtContractServiceStruct Function(DtContractServiceStruct) updateFn,
  ) {
    stContractSelectedServices[index] =
        updateFn(_stContractSelectedServices[index]);
  }

  void insertAtIndexInStContractSelectedServices(
      int index, DtContractServiceStruct value) {
    stContractSelectedServices.insert(index, value);
  }

  List<DtContractServiceStruct> _stContractSelectedServicesSearchResults = [];
  List<DtContractServiceStruct> get stContractSelectedServicesSearchResults =>
      _stContractSelectedServicesSearchResults;
  set stContractSelectedServicesSearchResults(
      List<DtContractServiceStruct> value) {
    _stContractSelectedServicesSearchResults = value;
  }

  void addToStContractSelectedServicesSearchResults(
      DtContractServiceStruct value) {
    stContractSelectedServicesSearchResults.add(value);
  }

  void removeFromStContractSelectedServicesSearchResults(
      DtContractServiceStruct value) {
    stContractSelectedServicesSearchResults.remove(value);
  }

  void removeAtIndexFromStContractSelectedServicesSearchResults(int index) {
    stContractSelectedServicesSearchResults.removeAt(index);
  }

  void updateStContractSelectedServicesSearchResultsAtIndex(
    int index,
    DtContractServiceStruct Function(DtContractServiceStruct) updateFn,
  ) {
    stContractSelectedServicesSearchResults[index] =
        updateFn(_stContractSelectedServicesSearchResults[index]);
  }

  void insertAtIndexInStContractSelectedServicesSearchResults(
      int index, DtContractServiceStruct value) {
    stContractSelectedServicesSearchResults.insert(index, value);
  }

  List<DtOrderVisitServiceStruct> _stOVSelectedServices = [];
  List<DtOrderVisitServiceStruct> get stOVSelectedServices =>
      _stOVSelectedServices;
  set stOVSelectedServices(List<DtOrderVisitServiceStruct> value) {
    _stOVSelectedServices = value;
  }

  void addToStOVSelectedServices(DtOrderVisitServiceStruct value) {
    stOVSelectedServices.add(value);
  }

  void removeFromStOVSelectedServices(DtOrderVisitServiceStruct value) {
    stOVSelectedServices.remove(value);
  }

  void removeAtIndexFromStOVSelectedServices(int index) {
    stOVSelectedServices.removeAt(index);
  }

  void updateStOVSelectedServicesAtIndex(
    int index,
    DtOrderVisitServiceStruct Function(DtOrderVisitServiceStruct) updateFn,
  ) {
    stOVSelectedServices[index] = updateFn(_stOVSelectedServices[index]);
  }

  void insertAtIndexInStOVSelectedServices(
      int index, DtOrderVisitServiceStruct value) {
    stOVSelectedServices.insert(index, value);
  }

  List<DtAssetFollowerStruct> _stAssetsFollowers = [];
  List<DtAssetFollowerStruct> get stAssetsFollowers => _stAssetsFollowers;
  set stAssetsFollowers(List<DtAssetFollowerStruct> value) {
    _stAssetsFollowers = value;
  }

  void addToStAssetsFollowers(DtAssetFollowerStruct value) {
    stAssetsFollowers.add(value);
  }

  void removeFromStAssetsFollowers(DtAssetFollowerStruct value) {
    stAssetsFollowers.remove(value);
  }

  void removeAtIndexFromStAssetsFollowers(int index) {
    stAssetsFollowers.removeAt(index);
  }

  void updateStAssetsFollowersAtIndex(
    int index,
    DtAssetFollowerStruct Function(DtAssetFollowerStruct) updateFn,
  ) {
    stAssetsFollowers[index] = updateFn(_stAssetsFollowers[index]);
  }

  void insertAtIndexInStAssetsFollowers(
      int index, DtAssetFollowerStruct value) {
    stAssetsFollowers.insert(index, value);
  }

  List<DtAssetStruct> _stUserAssetsFollowing = [];
  List<DtAssetStruct> get stUserAssetsFollowing => _stUserAssetsFollowing;
  set stUserAssetsFollowing(List<DtAssetStruct> value) {
    _stUserAssetsFollowing = value;
  }

  void addToStUserAssetsFollowing(DtAssetStruct value) {
    stUserAssetsFollowing.add(value);
  }

  void removeFromStUserAssetsFollowing(DtAssetStruct value) {
    stUserAssetsFollowing.remove(value);
  }

  void removeAtIndexFromStUserAssetsFollowing(int index) {
    stUserAssetsFollowing.removeAt(index);
  }

  void updateStUserAssetsFollowingAtIndex(
    int index,
    DtAssetStruct Function(DtAssetStruct) updateFn,
  ) {
    stUserAssetsFollowing[index] = updateFn(_stUserAssetsFollowing[index]);
  }

  void insertAtIndexInStUserAssetsFollowing(int index, DtAssetStruct value) {
    stUserAssetsFollowing.insert(index, value);
  }

  List<DtAssetCouplingModelStruct> _stOfflineAssetsCouplingsModels = [];
  List<DtAssetCouplingModelStruct> get stOfflineAssetsCouplingsModels =>
      _stOfflineAssetsCouplingsModels;
  set stOfflineAssetsCouplingsModels(List<DtAssetCouplingModelStruct> value) {
    _stOfflineAssetsCouplingsModels = value;
    prefs.setStringList('ff_stOfflineAssetsCouplingsModels',
        value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineAssetsCouplingsModels(DtAssetCouplingModelStruct value) {
    stOfflineAssetsCouplingsModels.add(value);
    prefs.setStringList('ff_stOfflineAssetsCouplingsModels',
        _stOfflineAssetsCouplingsModels.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineAssetsCouplingsModels(
      DtAssetCouplingModelStruct value) {
    stOfflineAssetsCouplingsModels.remove(value);
    prefs.setStringList('ff_stOfflineAssetsCouplingsModels',
        _stOfflineAssetsCouplingsModels.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineAssetsCouplingsModels(int index) {
    stOfflineAssetsCouplingsModels.removeAt(index);
    prefs.setStringList('ff_stOfflineAssetsCouplingsModels',
        _stOfflineAssetsCouplingsModels.map((x) => x.serialize()).toList());
  }

  void updateStOfflineAssetsCouplingsModelsAtIndex(
    int index,
    DtAssetCouplingModelStruct Function(DtAssetCouplingModelStruct) updateFn,
  ) {
    stOfflineAssetsCouplingsModels[index] =
        updateFn(_stOfflineAssetsCouplingsModels[index]);
    prefs.setStringList('ff_stOfflineAssetsCouplingsModels',
        _stOfflineAssetsCouplingsModels.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineAssetsCouplingsModels(
      int index, DtAssetCouplingModelStruct value) {
    stOfflineAssetsCouplingsModels.insert(index, value);
    prefs.setStringList('ff_stOfflineAssetsCouplingsModels',
        _stOfflineAssetsCouplingsModels.map((x) => x.serialize()).toList());
  }

  String _stAssetNavBarOption = '';
  String get stAssetNavBarOption => _stAssetNavBarOption;
  set stAssetNavBarOption(String value) {
    _stAssetNavBarOption = value;
  }

  List<DtMaterialStruct> _stAssetSelectedMaterialsSearchResults = [];
  List<DtMaterialStruct> get stAssetSelectedMaterialsSearchResults =>
      _stAssetSelectedMaterialsSearchResults;
  set stAssetSelectedMaterialsSearchResults(List<DtMaterialStruct> value) {
    _stAssetSelectedMaterialsSearchResults = value;
  }

  void addToStAssetSelectedMaterialsSearchResults(DtMaterialStruct value) {
    stAssetSelectedMaterialsSearchResults.add(value);
  }

  void removeFromStAssetSelectedMaterialsSearchResults(DtMaterialStruct value) {
    stAssetSelectedMaterialsSearchResults.remove(value);
  }

  void removeAtIndexFromStAssetSelectedMaterialsSearchResults(int index) {
    stAssetSelectedMaterialsSearchResults.removeAt(index);
  }

  void updateStAssetSelectedMaterialsSearchResultsAtIndex(
    int index,
    DtMaterialStruct Function(DtMaterialStruct) updateFn,
  ) {
    stAssetSelectedMaterialsSearchResults[index] =
        updateFn(_stAssetSelectedMaterialsSearchResults[index]);
  }

  void insertAtIndexInStAssetSelectedMaterialsSearchResults(
      int index, DtMaterialStruct value) {
    stAssetSelectedMaterialsSearchResults.insert(index, value);
  }

  List<DtAssetMaterialStruct> _stAssetSelectedMaterials = [];
  List<DtAssetMaterialStruct> get stAssetSelectedMaterials =>
      _stAssetSelectedMaterials;
  set stAssetSelectedMaterials(List<DtAssetMaterialStruct> value) {
    _stAssetSelectedMaterials = value;
  }

  void addToStAssetSelectedMaterials(DtAssetMaterialStruct value) {
    stAssetSelectedMaterials.add(value);
  }

  void removeFromStAssetSelectedMaterials(DtAssetMaterialStruct value) {
    stAssetSelectedMaterials.remove(value);
  }

  void removeAtIndexFromStAssetSelectedMaterials(int index) {
    stAssetSelectedMaterials.removeAt(index);
  }

  void updateStAssetSelectedMaterialsAtIndex(
    int index,
    DtAssetMaterialStruct Function(DtAssetMaterialStruct) updateFn,
  ) {
    stAssetSelectedMaterials[index] =
        updateFn(_stAssetSelectedMaterials[index]);
  }

  void insertAtIndexInStAssetSelectedMaterials(
      int index, DtAssetMaterialStruct value) {
    stAssetSelectedMaterials.insert(index, value);
  }

  List<DtTechnicalManualStruct> _stTMSearchResults = [];
  List<DtTechnicalManualStruct> get stTMSearchResults => _stTMSearchResults;
  set stTMSearchResults(List<DtTechnicalManualStruct> value) {
    _stTMSearchResults = value;
  }

  void addToStTMSearchResults(DtTechnicalManualStruct value) {
    stTMSearchResults.add(value);
  }

  void removeFromStTMSearchResults(DtTechnicalManualStruct value) {
    stTMSearchResults.remove(value);
  }

  void removeAtIndexFromStTMSearchResults(int index) {
    stTMSearchResults.removeAt(index);
  }

  void updateStTMSearchResultsAtIndex(
    int index,
    DtTechnicalManualStruct Function(DtTechnicalManualStruct) updateFn,
  ) {
    stTMSearchResults[index] = updateFn(_stTMSearchResults[index]);
  }

  void insertAtIndexInStTMSearchResults(
      int index, DtTechnicalManualStruct value) {
    stTMSearchResults.insert(index, value);
  }

  DtTechnicalManualStruct _stTMSelected = DtTechnicalManualStruct();
  DtTechnicalManualStruct get stTMSelected => _stTMSelected;
  set stTMSelected(DtTechnicalManualStruct value) {
    _stTMSelected = value;
  }

  void updateStTMSelectedStruct(Function(DtTechnicalManualStruct) updateFn) {
    updateFn(_stTMSelected);
  }

  List<DtAssetStruct> _stTMAssetsSearchResults = [];
  List<DtAssetStruct> get stTMAssetsSearchResults => _stTMAssetsSearchResults;
  set stTMAssetsSearchResults(List<DtAssetStruct> value) {
    _stTMAssetsSearchResults = value;
  }

  void addToStTMAssetsSearchResults(DtAssetStruct value) {
    stTMAssetsSearchResults.add(value);
  }

  void removeFromStTMAssetsSearchResults(DtAssetStruct value) {
    stTMAssetsSearchResults.remove(value);
  }

  void removeAtIndexFromStTMAssetsSearchResults(int index) {
    stTMAssetsSearchResults.removeAt(index);
  }

  void updateStTMAssetsSearchResultsAtIndex(
    int index,
    DtAssetStruct Function(DtAssetStruct) updateFn,
  ) {
    stTMAssetsSearchResults[index] = updateFn(_stTMAssetsSearchResults[index]);
  }

  void insertAtIndexInStTMAssetsSearchResults(int index, DtAssetStruct value) {
    stTMAssetsSearchResults.insert(index, value);
  }

  String _stTMNavBarOption = '';
  String get stTMNavBarOption => _stTMNavBarOption;
  set stTMNavBarOption(String value) {
    _stTMNavBarOption = value;
  }

  List<DtAssetStruct> _stTMSelectedAssets = [];
  List<DtAssetStruct> get stTMSelectedAssets => _stTMSelectedAssets;
  set stTMSelectedAssets(List<DtAssetStruct> value) {
    _stTMSelectedAssets = value;
  }

  void addToStTMSelectedAssets(DtAssetStruct value) {
    stTMSelectedAssets.add(value);
  }

  void removeFromStTMSelectedAssets(DtAssetStruct value) {
    stTMSelectedAssets.remove(value);
  }

  void removeAtIndexFromStTMSelectedAssets(int index) {
    stTMSelectedAssets.removeAt(index);
  }

  void updateStTMSelectedAssetsAtIndex(
    int index,
    DtAssetStruct Function(DtAssetStruct) updateFn,
  ) {
    stTMSelectedAssets[index] = updateFn(_stTMSelectedAssets[index]);
  }

  void insertAtIndexInStTMSelectedAssets(int index, DtAssetStruct value) {
    stTMSelectedAssets.insert(index, value);
  }

  List<DtTechnicalManualTypeStruct> _stOfflineTMTypes = [];
  List<DtTechnicalManualTypeStruct> get stOfflineTMTypes => _stOfflineTMTypes;
  set stOfflineTMTypes(List<DtTechnicalManualTypeStruct> value) {
    _stOfflineTMTypes = value;
    prefs.setStringList(
        'ff_stOfflineTMTypes', value.map((x) => x.serialize()).toList());
  }

  void addToStOfflineTMTypes(DtTechnicalManualTypeStruct value) {
    stOfflineTMTypes.add(value);
    prefs.setStringList('ff_stOfflineTMTypes',
        _stOfflineTMTypes.map((x) => x.serialize()).toList());
  }

  void removeFromStOfflineTMTypes(DtTechnicalManualTypeStruct value) {
    stOfflineTMTypes.remove(value);
    prefs.setStringList('ff_stOfflineTMTypes',
        _stOfflineTMTypes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStOfflineTMTypes(int index) {
    stOfflineTMTypes.removeAt(index);
    prefs.setStringList('ff_stOfflineTMTypes',
        _stOfflineTMTypes.map((x) => x.serialize()).toList());
  }

  void updateStOfflineTMTypesAtIndex(
    int index,
    DtTechnicalManualTypeStruct Function(DtTechnicalManualTypeStruct) updateFn,
  ) {
    stOfflineTMTypes[index] = updateFn(_stOfflineTMTypes[index]);
    prefs.setStringList('ff_stOfflineTMTypes',
        _stOfflineTMTypes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStOfflineTMTypes(
      int index, DtTechnicalManualTypeStruct value) {
    stOfflineTMTypes.insert(index, value);
    prefs.setStringList('ff_stOfflineTMTypes',
        _stOfflineTMTypes.map((x) => x.serialize()).toList());
  }

  String _stAppVersionDevice = '1.4.11';
  String get stAppVersionDevice => _stAppVersionDevice;
  set stAppVersionDevice(String value) {
    _stAppVersionDevice = value;
    prefs.setString('ff_stAppVersionDevice', value);
  }

  List<DtOrderVisitAssetStruct> _stAssetSelectedMovements = [];
  List<DtOrderVisitAssetStruct> get stAssetSelectedMovements =>
      _stAssetSelectedMovements;
  set stAssetSelectedMovements(List<DtOrderVisitAssetStruct> value) {
    _stAssetSelectedMovements = value;
  }

  void addToStAssetSelectedMovements(DtOrderVisitAssetStruct value) {
    stAssetSelectedMovements.add(value);
  }

  void removeFromStAssetSelectedMovements(DtOrderVisitAssetStruct value) {
    stAssetSelectedMovements.remove(value);
  }

  void removeAtIndexFromStAssetSelectedMovements(int index) {
    stAssetSelectedMovements.removeAt(index);
  }

  void updateStAssetSelectedMovementsAtIndex(
    int index,
    DtOrderVisitAssetStruct Function(DtOrderVisitAssetStruct) updateFn,
  ) {
    stAssetSelectedMovements[index] =
        updateFn(_stAssetSelectedMovements[index]);
  }

  void insertAtIndexInStAssetSelectedMovements(
      int index, DtOrderVisitAssetStruct value) {
    stAssetSelectedMovements.insert(index, value);
  }

  List<DtOrderTypeActivityStruct> _stOActivitiesSearchResults = [];
  List<DtOrderTypeActivityStruct> get stOActivitiesSearchResults =>
      _stOActivitiesSearchResults;
  set stOActivitiesSearchResults(List<DtOrderTypeActivityStruct> value) {
    _stOActivitiesSearchResults = value;
  }

  void addToStOActivitiesSearchResults(DtOrderTypeActivityStruct value) {
    stOActivitiesSearchResults.add(value);
  }

  void removeFromStOActivitiesSearchResults(DtOrderTypeActivityStruct value) {
    stOActivitiesSearchResults.remove(value);
  }

  void removeAtIndexFromStOActivitiesSearchResults(int index) {
    stOActivitiesSearchResults.removeAt(index);
  }

  void updateStOActivitiesSearchResultsAtIndex(
    int index,
    DtOrderTypeActivityStruct Function(DtOrderTypeActivityStruct) updateFn,
  ) {
    stOActivitiesSearchResults[index] =
        updateFn(_stOActivitiesSearchResults[index]);
  }

  void insertAtIndexInStOActivitiesSearchResults(
      int index, DtOrderTypeActivityStruct value) {
    stOActivitiesSearchResults.insert(index, value);
  }

  List<DtActivityStruct> _stActivitiesSearchResult = [];
  List<DtActivityStruct> get stActivitiesSearchResult =>
      _stActivitiesSearchResult;
  set stActivitiesSearchResult(List<DtActivityStruct> value) {
    _stActivitiesSearchResult = value;
  }

  void addToStActivitiesSearchResult(DtActivityStruct value) {
    stActivitiesSearchResult.add(value);
  }

  void removeFromStActivitiesSearchResult(DtActivityStruct value) {
    stActivitiesSearchResult.remove(value);
  }

  void removeAtIndexFromStActivitiesSearchResult(int index) {
    stActivitiesSearchResult.removeAt(index);
  }

  void updateStActivitiesSearchResultAtIndex(
    int index,
    DtActivityStruct Function(DtActivityStruct) updateFn,
  ) {
    stActivitiesSearchResult[index] =
        updateFn(_stActivitiesSearchResult[index]);
  }

  void insertAtIndexInStActivitiesSearchResult(
      int index, DtActivityStruct value) {
    stActivitiesSearchResult.insert(index, value);
  }

  DtFinancialOVProcessingApprovedStruct _stFinancialOVProcessingApproved =
      DtFinancialOVProcessingApprovedStruct();
  DtFinancialOVProcessingApprovedStruct get stFinancialOVProcessingApproved =>
      _stFinancialOVProcessingApproved;
  set stFinancialOVProcessingApproved(
      DtFinancialOVProcessingApprovedStruct value) {
    _stFinancialOVProcessingApproved = value;
  }

  void updateStFinancialOVProcessingApprovedStruct(
      Function(DtFinancialOVProcessingApprovedStruct) updateFn) {
    updateFn(_stFinancialOVProcessingApproved);
  }

  DtFinancialOVProcessingDraftStruct _stFinancialOVProcessingDraft =
      DtFinancialOVProcessingDraftStruct();
  DtFinancialOVProcessingDraftStruct get stFinancialOVProcessingDraft =>
      _stFinancialOVProcessingDraft;
  set stFinancialOVProcessingDraft(DtFinancialOVProcessingDraftStruct value) {
    _stFinancialOVProcessingDraft = value;
  }

  void updateStFinancialOVProcessingDraftStruct(
      Function(DtFinancialOVProcessingDraftStruct) updateFn) {
    updateFn(_stFinancialOVProcessingDraft);
  }

  DtFinancialOVProcessingDisapprovedStruct _stFinancialOVProcessingDisapproved =
      DtFinancialOVProcessingDisapprovedStruct();
  DtFinancialOVProcessingDisapprovedStruct
      get stFinancialOVProcessingDisapproved =>
          _stFinancialOVProcessingDisapproved;
  set stFinancialOVProcessingDisapproved(
      DtFinancialOVProcessingDisapprovedStruct value) {
    _stFinancialOVProcessingDisapproved = value;
  }

  void updateStFinancialOVProcessingDisapprovedStruct(
      Function(DtFinancialOVProcessingDisapprovedStruct) updateFn) {
    updateFn(_stFinancialOVProcessingDisapproved);
  }

  DtFinancialOVProcessingReportedStruct _stFinancialOVProcessingReported =
      DtFinancialOVProcessingReportedStruct();
  DtFinancialOVProcessingReportedStruct get stFinancialOVProcessingReported =>
      _stFinancialOVProcessingReported;
  set stFinancialOVProcessingReported(
      DtFinancialOVProcessingReportedStruct value) {
    _stFinancialOVProcessingReported = value;
  }

  void updateStFinancialOVProcessingReportedStruct(
      Function(DtFinancialOVProcessingReportedStruct) updateFn) {
    updateFn(_stFinancialOVProcessingReported);
  }

  DtFinancialOVProcessingRevisedStruct _stFinancialOVProcessingRevised =
      DtFinancialOVProcessingRevisedStruct();
  DtFinancialOVProcessingRevisedStruct get stFinancialOVProcessingRevised =>
      _stFinancialOVProcessingRevised;
  set stFinancialOVProcessingRevised(
      DtFinancialOVProcessingRevisedStruct value) {
    _stFinancialOVProcessingRevised = value;
  }

  void updateStFinancialOVProcessingRevisedStruct(
      Function(DtFinancialOVProcessingRevisedStruct) updateFn) {
    updateFn(_stFinancialOVProcessingRevised);
  }

  int _stFiltersServicesCount = 0;
  int get stFiltersServicesCount => _stFiltersServicesCount;
  set stFiltersServicesCount(int value) {
    _stFiltersServicesCount = value;
  }

  int _stFiltersAssetsCount = 0;
  int get stFiltersAssetsCount => _stFiltersAssetsCount;
  set stFiltersAssetsCount(int value) {
    _stFiltersAssetsCount = value;
  }

  bool _stFiltersAssetsIsSearching = false;
  bool get stFiltersAssetsIsSearching => _stFiltersAssetsIsSearching;
  set stFiltersAssetsIsSearching(bool value) {
    _stFiltersAssetsIsSearching = value;
  }

  String _stTokenFcmError = '';
  String get stTokenFcmError => _stTokenFcmError;
  set stTokenFcmError(String value) {
    _stTokenFcmError = value;
  }

  List<DtCompanyStruct> _stOFiltersResultsCompanies = [];
  List<DtCompanyStruct> get stOFiltersResultsCompanies =>
      _stOFiltersResultsCompanies;
  set stOFiltersResultsCompanies(List<DtCompanyStruct> value) {
    _stOFiltersResultsCompanies = value;
  }

  void addToStOFiltersResultsCompanies(DtCompanyStruct value) {
    stOFiltersResultsCompanies.add(value);
  }

  void removeFromStOFiltersResultsCompanies(DtCompanyStruct value) {
    stOFiltersResultsCompanies.remove(value);
  }

  void removeAtIndexFromStOFiltersResultsCompanies(int index) {
    stOFiltersResultsCompanies.removeAt(index);
  }

  void updateStOFiltersResultsCompaniesAtIndex(
    int index,
    DtCompanyStruct Function(DtCompanyStruct) updateFn,
  ) {
    stOFiltersResultsCompanies[index] =
        updateFn(_stOFiltersResultsCompanies[index]);
  }

  void insertAtIndexInStOFiltersResultsCompanies(
      int index, DtCompanyStruct value) {
    stOFiltersResultsCompanies.insert(index, value);
  }

  int _stAssetsSearchResultsPgNo = 1;
  int get stAssetsSearchResultsPgNo => _stAssetsSearchResultsPgNo;
  set stAssetsSearchResultsPgNo(int value) {
    _stAssetsSearchResultsPgNo = value;
  }

  int _stAssetsSearchResultsPgNoMax = 1;
  int get stAssetsSearchResultsPgNoMax => _stAssetsSearchResultsPgNoMax;
  set stAssetsSearchResultsPgNoMax(int value) {
    _stAssetsSearchResultsPgNoMax = value;
  }

  DtFiltersUnitsStruct _stFiltersUnits = DtFiltersUnitsStruct();
  DtFiltersUnitsStruct get stFiltersUnits => _stFiltersUnits;
  set stFiltersUnits(DtFiltersUnitsStruct value) {
    _stFiltersUnits = value;
    prefs.setString('ff_stFiltersUnits', value.serialize());
  }

  void updateStFiltersUnitsStruct(Function(DtFiltersUnitsStruct) updateFn) {
    updateFn(_stFiltersUnits);
    prefs.setString('ff_stFiltersUnits', _stFiltersUnits.serialize());
  }

  int _stFiltersUnitsCount = 0;
  int get stFiltersUnitsCount => _stFiltersUnitsCount;
  set stFiltersUnitsCount(int value) {
    _stFiltersUnitsCount = value;
  }

  List<DtUserStruct> _stImportUsers = [];
  List<DtUserStruct> get stImportUsers => _stImportUsers;
  set stImportUsers(List<DtUserStruct> value) {
    _stImportUsers = value;
  }

  void addToStImportUsers(DtUserStruct value) {
    stImportUsers.add(value);
  }

  void removeFromStImportUsers(DtUserStruct value) {
    stImportUsers.remove(value);
  }

  void removeAtIndexFromStImportUsers(int index) {
    stImportUsers.removeAt(index);
  }

  void updateStImportUsersAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stImportUsers[index] = updateFn(_stImportUsers[index]);
  }

  void insertAtIndexInStImportUsers(int index, DtUserStruct value) {
    stImportUsers.insert(index, value);
  }

  List<DtUserStruct> _stUsersSearchResults = [];
  List<DtUserStruct> get stUsersSearchResults => _stUsersSearchResults;
  set stUsersSearchResults(List<DtUserStruct> value) {
    _stUsersSearchResults = value;
  }

  void addToStUsersSearchResults(DtUserStruct value) {
    stUsersSearchResults.add(value);
  }

  void removeFromStUsersSearchResults(DtUserStruct value) {
    stUsersSearchResults.remove(value);
  }

  void removeAtIndexFromStUsersSearchResults(int index) {
    stUsersSearchResults.removeAt(index);
  }

  void updateStUsersSearchResultsAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stUsersSearchResults[index] = updateFn(_stUsersSearchResults[index]);
  }

  void insertAtIndexInStUsersSearchResults(int index, DtUserStruct value) {
    stUsersSearchResults.insert(index, value);
  }

  List<DtCompanyStruct> _stCompaniesSearchResults = [];
  List<DtCompanyStruct> get stCompaniesSearchResults =>
      _stCompaniesSearchResults;
  set stCompaniesSearchResults(List<DtCompanyStruct> value) {
    _stCompaniesSearchResults = value;
  }

  void addToStCompaniesSearchResults(DtCompanyStruct value) {
    stCompaniesSearchResults.add(value);
  }

  void removeFromStCompaniesSearchResults(DtCompanyStruct value) {
    stCompaniesSearchResults.remove(value);
  }

  void removeAtIndexFromStCompaniesSearchResults(int index) {
    stCompaniesSearchResults.removeAt(index);
  }

  void updateStCompaniesSearchResultsAtIndex(
    int index,
    DtCompanyStruct Function(DtCompanyStruct) updateFn,
  ) {
    stCompaniesSearchResults[index] =
        updateFn(_stCompaniesSearchResults[index]);
  }

  void insertAtIndexInStCompaniesSearchResults(
      int index, DtCompanyStruct value) {
    stCompaniesSearchResults.insert(index, value);
  }

  List<DtOrderVisitAssetMaterialStruct> _stOVSelectedMateriais = [];
  List<DtOrderVisitAssetMaterialStruct> get stOVSelectedMateriais =>
      _stOVSelectedMateriais;
  set stOVSelectedMateriais(List<DtOrderVisitAssetMaterialStruct> value) {
    _stOVSelectedMateriais = value;
  }

  void addToStOVSelectedMateriais(DtOrderVisitAssetMaterialStruct value) {
    stOVSelectedMateriais.add(value);
  }

  void removeFromStOVSelectedMateriais(DtOrderVisitAssetMaterialStruct value) {
    stOVSelectedMateriais.remove(value);
  }

  void removeAtIndexFromStOVSelectedMateriais(int index) {
    stOVSelectedMateriais.removeAt(index);
  }

  void updateStOVSelectedMateriaisAtIndex(
    int index,
    DtOrderVisitAssetMaterialStruct Function(DtOrderVisitAssetMaterialStruct)
        updateFn,
  ) {
    stOVSelectedMateriais[index] = updateFn(_stOVSelectedMateriais[index]);
  }

  void insertAtIndexInStOVSelectedMateriais(
      int index, DtOrderVisitAssetMaterialStruct value) {
    stOVSelectedMateriais.insert(index, value);
  }

  List<DtOrderCancelReasonStruct> _stOfflineOCancelReasons = [];
  List<DtOrderCancelReasonStruct> get stOfflineOCancelReasons =>
      _stOfflineOCancelReasons;
  set stOfflineOCancelReasons(List<DtOrderCancelReasonStruct> value) {
    _stOfflineOCancelReasons = value;
  }

  void addToStOfflineOCancelReasons(DtOrderCancelReasonStruct value) {
    stOfflineOCancelReasons.add(value);
  }

  void removeFromStOfflineOCancelReasons(DtOrderCancelReasonStruct value) {
    stOfflineOCancelReasons.remove(value);
  }

  void removeAtIndexFromStOfflineOCancelReasons(int index) {
    stOfflineOCancelReasons.removeAt(index);
  }

  void updateStOfflineOCancelReasonsAtIndex(
    int index,
    DtOrderCancelReasonStruct Function(DtOrderCancelReasonStruct) updateFn,
  ) {
    stOfflineOCancelReasons[index] = updateFn(_stOfflineOCancelReasons[index]);
  }

  void insertAtIndexInStOfflineOCancelReasons(
      int index, DtOrderCancelReasonStruct value) {
    stOfflineOCancelReasons.insert(index, value);
  }

  List<DtOrderVisitAssetStruct> _stAssetSelectedOVAssets = [];
  List<DtOrderVisitAssetStruct> get stAssetSelectedOVAssets =>
      _stAssetSelectedOVAssets;
  set stAssetSelectedOVAssets(List<DtOrderVisitAssetStruct> value) {
    _stAssetSelectedOVAssets = value;
  }

  void addToStAssetSelectedOVAssets(DtOrderVisitAssetStruct value) {
    stAssetSelectedOVAssets.add(value);
  }

  void removeFromStAssetSelectedOVAssets(DtOrderVisitAssetStruct value) {
    stAssetSelectedOVAssets.remove(value);
  }

  void removeAtIndexFromStAssetSelectedOVAssets(int index) {
    stAssetSelectedOVAssets.removeAt(index);
  }

  void updateStAssetSelectedOVAssetsAtIndex(
    int index,
    DtOrderVisitAssetStruct Function(DtOrderVisitAssetStruct) updateFn,
  ) {
    stAssetSelectedOVAssets[index] = updateFn(_stAssetSelectedOVAssets[index]);
  }

  void insertAtIndexInStAssetSelectedOVAssets(
      int index, DtOrderVisitAssetStruct value) {
    stAssetSelectedOVAssets.insert(index, value);
  }

  List<DtUserStruct> _stUserCurrentTeams = [];
  List<DtUserStruct> get stUserCurrentTeams => _stUserCurrentTeams;
  set stUserCurrentTeams(List<DtUserStruct> value) {
    _stUserCurrentTeams = value;
  }

  void addToStUserCurrentTeams(DtUserStruct value) {
    stUserCurrentTeams.add(value);
  }

  void removeFromStUserCurrentTeams(DtUserStruct value) {
    stUserCurrentTeams.remove(value);
  }

  void removeAtIndexFromStUserCurrentTeams(int index) {
    stUserCurrentTeams.removeAt(index);
  }

  void updateStUserCurrentTeamsAtIndex(
    int index,
    DtUserStruct Function(DtUserStruct) updateFn,
  ) {
    stUserCurrentTeams[index] = updateFn(_stUserCurrentTeams[index]);
  }

  void insertAtIndexInStUserCurrentTeams(int index, DtUserStruct value) {
    stUserCurrentTeams.insert(index, value);
  }

  List<DtOrderVisitExtraStruct> _stDBAdminOOVEFilters = [];
  List<DtOrderVisitExtraStruct> get stDBAdminOOVEFilters =>
      _stDBAdminOOVEFilters;
  set stDBAdminOOVEFilters(List<DtOrderVisitExtraStruct> value) {
    _stDBAdminOOVEFilters = value;
  }

  void addToStDBAdminOOVEFilters(DtOrderVisitExtraStruct value) {
    stDBAdminOOVEFilters.add(value);
  }

  void removeFromStDBAdminOOVEFilters(DtOrderVisitExtraStruct value) {
    stDBAdminOOVEFilters.remove(value);
  }

  void removeAtIndexFromStDBAdminOOVEFilters(int index) {
    stDBAdminOOVEFilters.removeAt(index);
  }

  void updateStDBAdminOOVEFiltersAtIndex(
    int index,
    DtOrderVisitExtraStruct Function(DtOrderVisitExtraStruct) updateFn,
  ) {
    stDBAdminOOVEFilters[index] = updateFn(_stDBAdminOOVEFilters[index]);
  }

  void insertAtIndexInStDBAdminOOVEFilters(
      int index, DtOrderVisitExtraStruct value) {
    stDBAdminOOVEFilters.insert(index, value);
  }

  List<DtOrderVisitExtraTeamUserStruct> _stOVESelectedTeamUsers = [];
  List<DtOrderVisitExtraTeamUserStruct> get stOVESelectedTeamUsers =>
      _stOVESelectedTeamUsers;
  set stOVESelectedTeamUsers(List<DtOrderVisitExtraTeamUserStruct> value) {
    _stOVESelectedTeamUsers = value;
  }

  void addToStOVESelectedTeamUsers(DtOrderVisitExtraTeamUserStruct value) {
    stOVESelectedTeamUsers.add(value);
  }

  void removeFromStOVESelectedTeamUsers(DtOrderVisitExtraTeamUserStruct value) {
    stOVESelectedTeamUsers.remove(value);
  }

  void removeAtIndexFromStOVESelectedTeamUsers(int index) {
    stOVESelectedTeamUsers.removeAt(index);
  }

  void updateStOVESelectedTeamUsersAtIndex(
    int index,
    DtOrderVisitExtraTeamUserStruct Function(DtOrderVisitExtraTeamUserStruct)
        updateFn,
  ) {
    stOVESelectedTeamUsers[index] = updateFn(_stOVESelectedTeamUsers[index]);
  }

  void insertAtIndexInStOVESelectedTeamUsers(
      int index, DtOrderVisitExtraTeamUserStruct value) {
    stOVESelectedTeamUsers.insert(index, value);
  }

  DtOrderVisitExtraStruct _stOVESelected = DtOrderVisitExtraStruct();
  DtOrderVisitExtraStruct get stOVESelected => _stOVESelected;
  set stOVESelected(DtOrderVisitExtraStruct value) {
    _stOVESelected = value;
  }

  void updateStOVESelectedStruct(Function(DtOrderVisitExtraStruct) updateFn) {
    updateFn(_stOVESelected);
  }

  List<DtOrderVisitExtraStruct> _stDBUsersOVEFilters = [];
  List<DtOrderVisitExtraStruct> get stDBUsersOVEFilters => _stDBUsersOVEFilters;
  set stDBUsersOVEFilters(List<DtOrderVisitExtraStruct> value) {
    _stDBUsersOVEFilters = value;
  }

  void addToStDBUsersOVEFilters(DtOrderVisitExtraStruct value) {
    stDBUsersOVEFilters.add(value);
  }

  void removeFromStDBUsersOVEFilters(DtOrderVisitExtraStruct value) {
    stDBUsersOVEFilters.remove(value);
  }

  void removeAtIndexFromStDBUsersOVEFilters(int index) {
    stDBUsersOVEFilters.removeAt(index);
  }

  void updateStDBUsersOVEFiltersAtIndex(
    int index,
    DtOrderVisitExtraStruct Function(DtOrderVisitExtraStruct) updateFn,
  ) {
    stDBUsersOVEFilters[index] = updateFn(_stDBUsersOVEFilters[index]);
  }

  void insertAtIndexInStDBUsersOVEFilters(
      int index, DtOrderVisitExtraStruct value) {
    stDBUsersOVEFilters.insert(index, value);
  }

  List<DtOrderVisitExtraStruct> _stDBAdminOVEFilters = [];
  List<DtOrderVisitExtraStruct> get stDBAdminOVEFilters => _stDBAdminOVEFilters;
  set stDBAdminOVEFilters(List<DtOrderVisitExtraStruct> value) {
    _stDBAdminOVEFilters = value;
  }

  void addToStDBAdminOVEFilters(DtOrderVisitExtraStruct value) {
    stDBAdminOVEFilters.add(value);
  }

  void removeFromStDBAdminOVEFilters(DtOrderVisitExtraStruct value) {
    stDBAdminOVEFilters.remove(value);
  }

  void removeAtIndexFromStDBAdminOVEFilters(int index) {
    stDBAdminOVEFilters.removeAt(index);
  }

  void updateStDBAdminOVEFiltersAtIndex(
    int index,
    DtOrderVisitExtraStruct Function(DtOrderVisitExtraStruct) updateFn,
  ) {
    stDBAdminOVEFilters[index] = updateFn(_stDBAdminOVEFilters[index]);
  }

  void insertAtIndexInStDBAdminOVEFilters(
      int index, DtOrderVisitExtraStruct value) {
    stDBAdminOVEFilters.insert(index, value);
  }

  double _stDBAdminOVEProcessingId1Hours = 0.0;
  double get stDBAdminOVEProcessingId1Hours => _stDBAdminOVEProcessingId1Hours;
  set stDBAdminOVEProcessingId1Hours(double value) {
    _stDBAdminOVEProcessingId1Hours = value;
  }

  double _stDBAdminOVEProcessingId2Hours = 0.0;
  double get stDBAdminOVEProcessingId2Hours => _stDBAdminOVEProcessingId2Hours;
  set stDBAdminOVEProcessingId2Hours(double value) {
    _stDBAdminOVEProcessingId2Hours = value;
  }

  double _stDBAdminOVEProcessingId3Hours = 0.0;
  double get stDBAdminOVEProcessingId3Hours => _stDBAdminOVEProcessingId3Hours;
  set stDBAdminOVEProcessingId3Hours(double value) {
    _stDBAdminOVEProcessingId3Hours = value;
  }

  double _stDBAdminOVEProcessingId4Hours = 0.0;
  double get stDBAdminOVEProcessingId4Hours => _stDBAdminOVEProcessingId4Hours;
  set stDBAdminOVEProcessingId4Hours(double value) {
    _stDBAdminOVEProcessingId4Hours = value;
  }

  double _stDBAdminOVEProcessingId5Hours = 0.0;
  double get stDBAdminOVEProcessingId5Hours => _stDBAdminOVEProcessingId5Hours;
  set stDBAdminOVEProcessingId5Hours(double value) {
    _stDBAdminOVEProcessingId5Hours = value;
  }

  DtFiltersOVEStruct _stFiltersOVE = DtFiltersOVEStruct();
  DtFiltersOVEStruct get stFiltersOVE => _stFiltersOVE;
  set stFiltersOVE(DtFiltersOVEStruct value) {
    _stFiltersOVE = value;
    prefs.setString('ff_stFiltersOVE', value.serialize());
  }

  void updateStFiltersOVEStruct(Function(DtFiltersOVEStruct) updateFn) {
    updateFn(_stFiltersOVE);
    prefs.setString('ff_stFiltersOVE', _stFiltersOVE.serialize());
  }

  double _stDbUsersOveProcessingId1Hours = 0.0;
  double get stDbUsersOveProcessingId1Hours => _stDbUsersOveProcessingId1Hours;
  set stDbUsersOveProcessingId1Hours(double value) {
    _stDbUsersOveProcessingId1Hours = value;
  }

  double _stDbUsersOveProcessingId2Hours = 0.0;
  double get stDbUsersOveProcessingId2Hours => _stDbUsersOveProcessingId2Hours;
  set stDbUsersOveProcessingId2Hours(double value) {
    _stDbUsersOveProcessingId2Hours = value;
  }

  double _stDbUsersOveProcessingId3Hours = 0.0;
  double get stDbUsersOveProcessingId3Hours => _stDbUsersOveProcessingId3Hours;
  set stDbUsersOveProcessingId3Hours(double value) {
    _stDbUsersOveProcessingId3Hours = value;
  }

  double _stDbUsersOveProcessingId4Hours = 0.0;
  double get stDbUsersOveProcessingId4Hours => _stDbUsersOveProcessingId4Hours;
  set stDbUsersOveProcessingId4Hours(double value) {
    _stDbUsersOveProcessingId4Hours = value;
  }

  double _stDbUsersOveProcessingId5Hours = 0.0;
  double get stDbUsersOveProcessingId5Hours => _stDbUsersOveProcessingId5Hours;
  set stDbUsersOveProcessingId5Hours(double value) {
    _stDbUsersOveProcessingId5Hours = value;
  }

  double _stDbAdminOveProcessingId5HoursFiled = 0.0;
  double get stDbAdminOveProcessingId5HoursFiled =>
      _stDbAdminOveProcessingId5HoursFiled;
  set stDbAdminOveProcessingId5HoursFiled(double value) {
    _stDbAdminOveProcessingId5HoursFiled = value;
  }

  int _stFiltersOveCount = 0;
  int get stFiltersOveCount => _stFiltersOveCount;
  set stFiltersOveCount(int value) {
    _stFiltersOveCount = value;
  }

  List<DtOrderVisitExtraFollowerStruct> _stUserOveFollowing = [];
  List<DtOrderVisitExtraFollowerStruct> get stUserOveFollowing =>
      _stUserOveFollowing;
  set stUserOveFollowing(List<DtOrderVisitExtraFollowerStruct> value) {
    _stUserOveFollowing = value;
  }

  void addToStUserOveFollowing(DtOrderVisitExtraFollowerStruct value) {
    stUserOveFollowing.add(value);
  }

  void removeFromStUserOveFollowing(DtOrderVisitExtraFollowerStruct value) {
    stUserOveFollowing.remove(value);
  }

  void removeAtIndexFromStUserOveFollowing(int index) {
    stUserOveFollowing.removeAt(index);
  }

  void updateStUserOveFollowingAtIndex(
    int index,
    DtOrderVisitExtraFollowerStruct Function(DtOrderVisitExtraFollowerStruct)
        updateFn,
  ) {
    stUserOveFollowing[index] = updateFn(_stUserOveFollowing[index]);
  }

  void insertAtIndexInStUserOveFollowing(
      int index, DtOrderVisitExtraFollowerStruct value) {
    stUserOveFollowing.insert(index, value);
  }

  List<DtOrderVisitExtraStruct> _stDbUserOveFollowing = [];
  List<DtOrderVisitExtraStruct> get stDbUserOveFollowing =>
      _stDbUserOveFollowing;
  set stDbUserOveFollowing(List<DtOrderVisitExtraStruct> value) {
    _stDbUserOveFollowing = value;
  }

  void addToStDbUserOveFollowing(DtOrderVisitExtraStruct value) {
    stDbUserOveFollowing.add(value);
  }

  void removeFromStDbUserOveFollowing(DtOrderVisitExtraStruct value) {
    stDbUserOveFollowing.remove(value);
  }

  void removeAtIndexFromStDbUserOveFollowing(int index) {
    stDbUserOveFollowing.removeAt(index);
  }

  void updateStDbUserOveFollowingAtIndex(
    int index,
    DtOrderVisitExtraStruct Function(DtOrderVisitExtraStruct) updateFn,
  ) {
    stDbUserOveFollowing[index] = updateFn(_stDbUserOveFollowing[index]);
  }

  void insertAtIndexInStDbUserOveFollowing(
      int index, DtOrderVisitExtraStruct value) {
    stDbUserOveFollowing.insert(index, value);
  }

  int _stOVEProcessingId = 1;
  int get stOVEProcessingId => _stOVEProcessingId;
  set stOVEProcessingId(int value) {
    _stOVEProcessingId = value;
    prefs.setInt('ff_stOVEProcessingId', value);
  }

  bool _stOVEIsArchived = false;
  bool get stOVEIsArchived => _stOVEIsArchived;
  set stOVEIsArchived(bool value) {
    _stOVEIsArchived = value;
    prefs.setBool('ff_stOVEIsArchived', value);
  }

  String _stDbAdminOVEFiltersModel = '';
  String get stDbAdminOVEFiltersModel => _stDbAdminOVEFiltersModel;
  set stDbAdminOVEFiltersModel(String value) {
    _stDbAdminOVEFiltersModel = value;
    prefs.setString('ff_stDbAdminOVEFiltersModel', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

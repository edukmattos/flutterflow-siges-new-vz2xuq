import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.Enum:
        data = (param is Enum) ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  Enum,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case CfgAppOfflineUpdatesRow:
            return CfgAppOfflineUpdatesRow(data);
          case VOrdersVisitsRow:
            return VOrdersVisitsRow(data);
          case CfgOrdersVisitsStatusesRow:
            return CfgOrdersVisitsStatusesRow(data);
          case CfgOrdersTypesRow:
            return CfgOrdersTypesRow(data);
          case VTechnicalsManualsTypesRow:
            return VTechnicalsManualsTypesRow(data);
          case CfgUnitsTypesRow:
            return CfgUnitsTypesRow(data);
          case CfgAssetsPrioritiesRow:
            return CfgAssetsPrioritiesRow(data);
          case VOrdersVisitsExtrasTeamsRow:
            return VOrdersVisitsExtrasTeamsRow(data);
          case TechnicalsManualsTypesRow:
            return TechnicalsManualsTypesRow(data);
          case VContractsRow:
            return VContractsRow(data);
          case CartsMaterialsRow:
            return CartsMaterialsRow(data);
          case AssetsFollowersRow:
            return AssetsFollowersRow(data);
          case VTeamsLeadersRow:
            return VTeamsLeadersRow(data);
          case VUnitsTypesParentRow:
            return VUnitsTypesParentRow(data);
          case VOrdersTypesActivitiesRow:
            return VOrdersTypesActivitiesRow(data);
          case VAssetsStatusesRow:
            return VAssetsStatusesRow(data);
          case CfgAppPagesRow:
            return CfgAppPagesRow(data);
          case OrdersRow:
            return OrdersRow(data);
          case CfgServicesRow:
            return CfgServicesRow(data);
          case CfgCompaniesRow:
            return CfgCompaniesRow(data);
          case CfgOrdersTypesSubsRow:
            return CfgOrdersTypesSubsRow(data);
          case VContractsServicesRow:
            return VContractsServicesRow(data);
          case CfgOrdersVisitsProcessingRow:
            return CfgOrdersVisitsProcessingRow(data);
          case VSystemsRow:
            return VSystemsRow(data);
          case CfgTeamsRow:
            return CfgTeamsRow(data);
          case OrdersVisitsAssetsRow:
            return OrdersVisitsAssetsRow(data);
          case VAssetsTypesRow:
            return VAssetsTypesRow(data);
          case VOrdersOpenRow:
            return VOrdersOpenRow(data);
          case VAssetsRow:
            return VAssetsRow(data);
          case CfgDepartmentsRow:
            return CfgDepartmentsRow(data);
          case TechnicalsManualsAssetsRow:
            return TechnicalsManualsAssetsRow(data);
          case VehiclesRow:
            return VehiclesRow(data);
          case VOrdersTypesSubsRow:
            return VOrdersTypesSubsRow(data);
          case CfgAppVersionsUpdateRow:
            return CfgAppVersionsUpdateRow(data);
          case CfgAssetsTypesRow:
            return CfgAssetsTypesRow(data);
          case VAssetsFollowersRow:
            return VAssetsFollowersRow(data);
          case AssetsMaterialsRow:
            return AssetsMaterialsRow(data);
          case VOrdersPrioritiesRow:
            return VOrdersPrioritiesRow(data);
          case VDashAdminOrdersParentFiltersOpenRow:
            return VDashAdminOrdersParentFiltersOpenRow(data);
          case CfgAssetsTagsSubsRow:
            return CfgAssetsTagsSubsRow(data);
          case CfgOrdersCausesReasonsRow:
            return CfgOrdersCausesReasonsRow(data);
          case VProfilesRow:
            return VProfilesRow(data);
          case VOrdersVisitsTeamsRow:
            return VOrdersVisitsTeamsRow(data);
          case AssetsRow:
            return AssetsRow(data);
          case OrdersVisitsRow:
            return OrdersVisitsRow(data);
          case CfgContractsStatusesRow:
            return CfgContractsStatusesRow(data);
          case VOrdersCausesReasonsRow:
            return VOrdersCausesReasonsRow(data);
          case VDashAdminOrdersFiltersOpenRow:
            return VDashAdminOrdersFiltersOpenRow(data);
          case CfgUsersStatusesRow:
            return CfgUsersStatusesRow(data);
          case VAssetsTagsSubsRow:
            return VAssetsTagsSubsRow(data);
          case ContractsRow:
            return ContractsRow(data);
          case VOrdersTypesRow:
            return VOrdersTypesRow(data);
          case VUnitsStatusesRow:
            return VUnitsStatusesRow(data);
          case VUnitsRow:
            return VUnitsRow(data);
          case CfgActivitiesRow:
            return CfgActivitiesRow(data);
          case OrdersVisitsExtrasRow:
            return OrdersVisitsExtrasRow(data);
          case VOrdersVisitsAssetsRow:
            return VOrdersVisitsAssetsRow(data);
          case CfgOrdersObjectsRow:
            return CfgOrdersObjectsRow(data);
          case VOrdersPlansRow:
            return VOrdersPlansRow(data);
          case CfgOrdersSuspendedReasonsRow:
            return CfgOrdersSuspendedReasonsRow(data);
          case VAssetsCouplingsModelsRow:
            return VAssetsCouplingsModelsRow(data);
          case PoliciesToCreateRow:
            return PoliciesToCreateRow(data);
          case CfgAssetsTagsRow:
            return CfgAssetsTagsRow(data);
          case CfgProfilesRow:
            return CfgProfilesRow(data);
          case VOrdersSuspendedReasonsRow:
            return VOrdersSuspendedReasonsRow(data);
          case OrdersVisitsTeamsRow:
            return OrdersVisitsTeamsRow(data);
          case VOrdersVisitsExtrasNoArchivedRow:
            return VOrdersVisitsExtrasNoArchivedRow(data);
          case UsersNotificationsRow:
            return UsersNotificationsRow(data);
          case CfgSystemsRow:
            return CfgSystemsRow(data);
          case VAppRow:
            return VAppRow(data);
          case VContractsManagersRow:
            return VContractsManagersRow(data);
          case CfgUnitsStatusesRow:
            return CfgUnitsStatusesRow(data);
          case OrdersStatusesLogsRow:
            return OrdersStatusesLogsRow(data);
          case ContractsServicesRow:
            return ContractsServicesRow(data);
          case ContractsManagersRow:
            return ContractsManagersRow(data);
          case TechnicalsManualsRow:
            return TechnicalsManualsRow(data);
          case VUsersRow:
            return VUsersRow(data);
          case VAppPagesRow:
            return VAppPagesRow(data);
          case UnitsRow:
            return UnitsRow(data);
          case OrdersFollowersRow:
            return OrdersFollowersRow(data);
          case VUnitsTypesRow:
            return VUnitsTypesRow(data);
          case VSystemsParentRow:
            return VSystemsParentRow(data);
          case CfgOrdersVisitsExtrasProcessingRow:
            return CfgOrdersVisitsExtrasProcessingRow(data);
          case VTeamsRow:
            return VTeamsRow(data);
          case VOrdersStatusesRow:
            return VOrdersStatusesRow(data);
          case VDepartmentsRow:
            return VDepartmentsRow(data);
          case CfgAssetsCouplingsModelsRow:
            return CfgAssetsCouplingsModelsRow(data);
          case VUsersNotificationsRow:
            return VUsersNotificationsRow(data);
          case CfgOrdersCounterRow:
            return CfgOrdersCounterRow(data);
          case MaterialsRow:
            return MaterialsRow(data);
          case VOrdersVisitsAssetsActivitiesRow:
            return VOrdersVisitsAssetsActivitiesRow(data);
          case VAppOfflineUpdatesRow:
            return VAppOfflineUpdatesRow(data);
          case CfgOrdersCancelReasonsRow:
            return CfgOrdersCancelReasonsRow(data);
          case CfgAssetsStatusesRow:
            return CfgAssetsStatusesRow(data);
          case VOrdersRow:
            return VOrdersRow(data);
          case VOrdersVisitsVehiclesRow:
            return VOrdersVisitsVehiclesRow(data);
          case OrdersVisitsAssetsActivitiesRow:
            return OrdersVisitsAssetsActivitiesRow(data);
          case VCompaniesRow:
            return VCompaniesRow(data);
          case CfgOrdersPlansRow:
            return CfgOrdersPlansRow(data);
          case OrdersVisitsServicesRow:
            return OrdersVisitsServicesRow(data);
          case CfgAppRow:
            return CfgAppRow(data);
          case VOrdersVisitsOpenRow:
            return VOrdersVisitsOpenRow(data);
          case VOrdersCancelReasonsRow:
            return VOrdersCancelReasonsRow(data);
          case VVehiclesRow:
            return VVehiclesRow(data);
          case VOrdersVisitsAssetsMaterialsRow:
            return VOrdersVisitsAssetsMaterialsRow(data);
          case VTechnicalsManualsRow:
            return VTechnicalsManualsRow(data);
          case CfgOrdersTypesActivitiesRow:
            return CfgOrdersTypesActivitiesRow(data);
          case LogsRow:
            return LogsRow(data);
          case VAssetsTagsRow:
            return VAssetsTagsRow(data);
          case VOrdersVisitsExtrasFollowersRow:
            return VOrdersVisitsExtrasFollowersRow(data);
          case CfgOrdersStatusesRow:
            return CfgOrdersStatusesRow(data);
          case N8nChatHistoriesRow:
            return N8nChatHistoriesRow(data);
          case OrdersVisitsExtrasFollowersRow:
            return OrdersVisitsExtrasFollowersRow(data);
          case CfgOrdersPrioritiesRow:
            return CfgOrdersPrioritiesRow(data);
          case OrdersVisitsAssetsMaterialsRow:
            return OrdersVisitsAssetsMaterialsRow(data);
          case VOrdersCounterRow:
            return VOrdersCounterRow(data);
          case VOrdersVisitsExtrasRow:
            return VOrdersVisitsExtrasRow(data);
          case UsersRow:
            return UsersRow(data);
          case JrAssetsRow:
            return JrAssetsRow(data);
          case VAssetsPrioritiesRow:
            return VAssetsPrioritiesRow(data);
          case VOrdersVisitsServicesRow:
            return VOrdersVisitsServicesRow(data);
          case VOrdersFollowersRow:
            return VOrdersFollowersRow(data);
          case VProfilesPermissionsRow:
            return VProfilesPermissionsRow(data);
          case OrdersVisitsVehiclesRow:
            return OrdersVisitsVehiclesRow(data);
          case JrUnitsRow:
            return JrUnitsRow(data);
          case OrdersVisitsExtrasTeamsRow:
            return OrdersVisitsExtrasTeamsRow(data);
          case UsersTrackerRow:
            return UsersTrackerRow(data);
          case JrOrdersVisitsExtrasRow:
            return JrOrdersVisitsExtrasRow(data);
          case CfgProfilesPermissionsRow:
            return CfgProfilesPermissionsRow(data);
          case VAssetsMaterialsRow:
            return VAssetsMaterialsRow(data);
          case VOrdersObjectsRow:
            return VOrdersObjectsRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      case ParamType.Enum:
        return deserializeEnum<T>(param);

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}

import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start apiCompanies Group Code

class ApiCompaniesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiCompaniesAllCall apiCompaniesAllCall = ApiCompaniesAllCall();
  static ApiCompanyByIdCall apiCompanyByIdCall = ApiCompanyByIdCall();
}

class ApiCompaniesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiCompaniesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiCompaniesAll',
      apiUrl: '${baseUrl}v_companies?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCompanyByIdCall {
  Future<ApiCallResponse> call({
    int? companyId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiCompaniesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiCompanyById',
      apiUrl: '${baseUrl}v_companies?id=eq.${companyId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiCompanies Group Code

/// Start apiDepartments Group Code

class ApiDepartmentsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiDepartmentsAllCall apiDepartmentsAllCall = ApiDepartmentsAllCall();
}

class ApiDepartmentsAllCall {
  Future<ApiCallResponse> call({
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiDepartmentsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiDepartmentsAll',
      apiUrl: '${baseUrl}v_departments?version=eq.${version}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiDepartments Group Code

/// Start apiAppPages Group Code

class ApiAppPagesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAppPagesAllCall apiAppPagesAllCall = ApiAppPagesAllCall();
}

class ApiAppPagesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAppPagesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAppPagesAll',
      apiUrl: '${baseUrl}v_app_pages?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAppPages Group Code

/// Start apiProfiles Group Code

class ApiProfilesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiProfilesAllCall apiProfilesAllCall = ApiProfilesAllCall();
}

class ApiProfilesAllCall {
  Future<ApiCallResponse> call({
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiProfilesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiProfilesAll',
      apiUrl: '${baseUrl}v_profiles?version=eq.${version}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiProfiles Group Code

/// Start apiCarts Group Code

class ApiCartsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiCartMaterialsByUserIdCall apiCartMaterialsByUserIdCall =
      ApiCartMaterialsByUserIdCall();
  static ApiCartMaterialsByOVAssetIdCall apiCartMaterialsByOVAssetIdCall =
      ApiCartMaterialsByOVAssetIdCall();
}

class ApiCartMaterialsByUserIdCall {
  Future<ApiCallResponse> call({
    String? versionMode = '',
    int? userId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiCartsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiCartMaterialsByUserId',
      apiUrl:
          '${baseUrl}v_carts_materials?user_id=eq.${userId}&version_mode=eq.${versionMode}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCartMaterialsByOVAssetIdCall {
  Future<ApiCallResponse> call({
    String? versionMode = '',
    int? ovaId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiCartsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiCartMaterialsByOVAssetId',
      apiUrl:
          '${baseUrl}v_carts_materials?ova_id=eq.${ovaId}&version_mode=eq.${versionMode}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiCarts Group Code

/// Start apiTeams Group Code

class ApiTeamsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiTeamsAllCall apiTeamsAllCall = ApiTeamsAllCall();
  static ApiTeamByIdCall apiTeamByIdCall = ApiTeamByIdCall();
  static ApiTeamsByCompanyIdCall apiTeamsByCompanyIdCall =
      ApiTeamsByCompanyIdCall();
  static ApiTeamsByDepartmentIdCall apiTeamsByDepartmentIdCall =
      ApiTeamsByDepartmentIdCall();
  static ApiTeamsDescendantsByIdCall apiTeamsDescendantsByIdCall =
      ApiTeamsDescendantsByIdCall();
}

class ApiTeamsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTeamsAll',
      apiUrl: '${baseUrl}v_teams?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTeamByIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTeamById',
      apiUrl: '${baseUrl}v_teams?id=eq.${teamId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTeamsByCompanyIdCall {
  Future<ApiCallResponse> call({
    int? companyId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTeamsByCompanyId',
      apiUrl: '${baseUrl}v_teams?company_id=eq.${companyId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTeamsByDepartmentIdCall {
  Future<ApiCallResponse> call({
    int? departmentId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTeamsByDepartmentId',
      apiUrl: '${baseUrl}v_teams?department_id=eq.${departmentId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTeamsDescendantsByIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "team_id": ${teamId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiTeamsDescendantsById',
      apiUrl: '${baseUrl}rpc/fc_team_descendants',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiTeams Group Code

/// Start apiActivities Group Code

class ApiActivitiesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiActivitiesSearchCall apiActivitiesSearchCall =
      ApiActivitiesSearchCall();
}

class ApiActivitiesSearchCall {
  Future<ApiCallResponse> call({
    String? srchTerms = '',
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiActivitiesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "srch_terms": "${srchTerms}",
  "srch_version_mode": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiActivitiesSearch',
      apiUrl: '${baseUrl}rpc/fc_activities_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiActivities Group Code

/// Start apiApp Group Code

class ApiAppGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAppByIdCall apiAppByIdCall = ApiAppByIdCall();
  static ApiAppOfflineUpdatesAllCall apiAppOfflineUpdatesAllCall =
      ApiAppOfflineUpdatesAllCall();
}

class ApiAppByIdCall {
  Future<ApiCallResponse> call({
    int? appId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAppGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAppById',
      apiUrl: '${baseUrl}v_app?id=eq.${appId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? resAppVersionServer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].version_app''',
      ));
}

class ApiAppOfflineUpdatesAllCall {
  Future<ApiCallResponse> call({
    int? appId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAppGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAppOfflineUpdatesAll',
      apiUrl: '${baseUrl}v_app_offline_updates?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? resVersionAppOffline(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].version_app_offline''',
      ));
}

/// End apiApp Group Code

/// Start apiUnits Group Code

class ApiUnitsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiUnitsAllCall apiUnitsAllCall = ApiUnitsAllCall();
  static ApiUnitsAllJsonCall apiUnitsAllJsonCall = ApiUnitsAllJsonCall();
  static ApiUnitCreateCall apiUnitCreateCall = ApiUnitCreateCall();
  static ApiUnitByIdCall apiUnitByIdCall = ApiUnitByIdCall();
  static ApiUnitsSearchCall apiUnitsSearchCall = ApiUnitsSearchCall();
  static ApiUnitsSearchFiltersCall apiUnitsSearchFiltersCall =
      ApiUnitsSearchFiltersCall();
  static ApiUnitUpdateDataCall apiUnitUpdateDataCall = ApiUnitUpdateDataCall();
  static ApiUnitUpdateLocationCall apiUnitUpdateLocationCall =
      ApiUnitUpdateLocationCall();
}

class ApiUnitsAllCall {
  Future<ApiCallResponse> call({
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitsAll',
      apiUrl: '${baseUrl}v_units?version_mode=eq.${versionMode}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitsAllJsonCall {
  Future<ApiCallResponse> call({
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitsAllJson',
      apiUrl: '${baseUrl}rpc/fc_units_json',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitCreateCall {
  Future<ApiCallResponse> call({
    int? companyId,
    int? systemParentId,
    int? systemId,
    String? unitTypeId = '',
    String? unitTypeParentId = '',
    String? code = '',
    String? description = '',
    String? descriptionFull = '',
    String? addressFull = '',
    int? providerCompanyId,
    int? statusId,
    double? latitude,
    double? longitude,
    int? createdUserId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
    "company_id":${companyId} ,
    "system_parent_id":${systemParentId},
    "system_id":${systemId},
    "unit_type_id":"${unitTypeId}",
    "unit_type_parent_id":"${unitTypeParentId}",
    "code":"${code}",
    "description":"${description}",
    "description_full":"${descriptionFull}",
    "address_full":"${addressFull}",
    "provider_company_id":${providerCompanyId},
    "status_id":${statusId},
    "latitude":${latitude},
    "longitude":${longitude},
    "created_user_id":${createdUserId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitCreate',
      apiUrl: '${baseUrl}units',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitByIdCall {
  Future<ApiCallResponse> call({
    int? unitId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitById',
      apiUrl: '${baseUrl}v_units?id=eq.${unitId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitsSearchCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    String? searchVersion = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "search_terms": "${searchTerms}",
  "search_version": "${searchVersion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitsSearch',
      apiUrl: '${baseUrl}rpc/fc_units_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitsSearchFiltersCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    String? versionMode = '',
    List<int>? systemsParentIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentIdsList,
    List<int>? unitsTypesIdsList,
    int? unitStatusId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final systemsParentIds = _serializeList(systemsParentIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentIds = _serializeList(unitsTypesParentIdsList);
    final unitsTypesIds = _serializeList(unitsTypesIdsList);

    final ffApiRequestBody = '''
{
  "search_terms": "${searchTerms}",
  "app_version_mode": "${versionMode}",
  "systems_parent_ids": ${systemsParentIds},
  "systems_ids": ${systemsIds},
  "units_types_parent_ids": ${unitsTypesParentIds},
  "units_types_ids": ${unitsTypesIds},
  "unit_status_id": ${unitStatusId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitsSearchFilters',
      apiUrl: '${baseUrl}rpc/fc_units_search_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitUpdateDataCall {
  Future<ApiCallResponse> call({
    int? unitId,
    String? code = '',
    int? systemParentId,
    int? unitTypeParentId,
    int? unitTypeId,
    int? statusId,
    String? description = '',
    int? systemId,
    int? updatedUserId,
    String? updatedAt = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${unitId},
  "code": "${code}",
  "system_parent_id": ${systemParentId},
  "system_id": ${systemId},
  "unit_type_parent_id": ${unitTypeParentId},
  "unit_type_id": ${unitTypeId},
  "status_id": ${statusId},
  "description": "${description}",
  "updated_user_id": ${updatedUserId},
  "updated_at": "${updatedAt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitUpdateData',
      apiUrl: '${baseUrl}units?id=eq.${unitId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitUpdateLocationCall {
  Future<ApiCallResponse> call({
    int? unitId,
    String? addressFull = '',
    double? latitude,
    double? longitude,
    int? streetComplement,
    int? updatedUserId,
    String? updatedAt = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${unitId},
  "address_full": "${addressFull}",
  "latitude": ${latitude},
  "longitude": ${longitude},
  "street_complement": ${streetComplement},
  "updated_user_id": ${updatedUserId},
  "updated_at": "${updatedAt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitUpdateLocation',
      apiUrl: '${baseUrl}units?id=eq.${unitId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiUnits Group Code

/// Start apiContracts Group Code

class ApiContractsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiContractsAllCall apiContractsAllCall = ApiContractsAllCall();
  static ApiContractByIdCall apiContractByIdCall = ApiContractByIdCall();
  static ApiContractsByClientCompanyIdCall apiContractsByClientCompanyIdCall =
      ApiContractsByClientCompanyIdCall();
  static ApiContractsByProviderCompanyIdCall
      apiContractsByProviderCompanyIdCall =
      ApiContractsByProviderCompanyIdCall();
}

class ApiContractsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiContractsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiContractsAll',
      apiUrl: '${baseUrl}v_contracts?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiContractByIdCall {
  Future<ApiCallResponse> call({
    int? contractId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiContractsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiContractById',
      apiUrl: '${baseUrl}v_contracts?id=eq.${contractId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiContractsByClientCompanyIdCall {
  Future<ApiCallResponse> call({
    int? companyId,
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiContractsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiContractsByClientCompanyId',
      apiUrl:
          '${baseUrl}v_contracts?client_company_id=eq.${companyId}&version=eq.${version}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiContractsByProviderCompanyIdCall {
  Future<ApiCallResponse> call({
    int? companyId,
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiContractsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiContractsByProviderCompanyId',
      apiUrl:
          '${baseUrl}v_contracts?provider_company_id=eq.${companyId}&version=eq.${version}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiContracts Group Code

/// Start apiContractsManagers Group Code

class ApiContractsManagersGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiManagersByContractIdCall apiManagersByContractIdCall =
      ApiManagersByContractIdCall();
}

class ApiManagersByContractIdCall {
  Future<ApiCallResponse> call({
    int? contractId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiContractsManagersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiManagersByContractId',
      apiUrl:
          '${baseUrl}v_contracts_managers?contract_id=eq.${contractId}&version_mode=eq.${versionMode}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiContractsManagers Group Code

/// Start apiContractsServices Group Code

class ApiContractsServicesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiSearchServicesByContractIdCall apiSearchServicesByContractIdCall =
      ApiSearchServicesByContractIdCall();
}

class ApiSearchServicesByContractIdCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    String? versionMode = '',
    int? contractId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiContractsServicesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "contract": ${contractId},
  "search_terms": "${searchTerms}",
  "app_version_mode": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiSearchServicesByContractId',
      apiUrl: '${baseUrl}rpc/fc_contracts_services_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiContractsServices Group Code

/// Start apiAssets Group Code

class ApiAssetsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsSearchFiltersCall apiAssetsSearchFiltersCall =
      ApiAssetsSearchFiltersCall();
  static ApiAssetsBySearchTermsAndTypeIdCall
      apiAssetsBySearchTermsAndTypeIdCall =
      ApiAssetsBySearchTermsAndTypeIdCall();
  static ApiAssetByIdCall apiAssetByIdCall = ApiAssetByIdCall();
  static ApiAssetByCodeCall apiAssetByCodeCall = ApiAssetByCodeCall();
  static ApiAssetByCodeUnitCall apiAssetByCodeUnitCall =
      ApiAssetByCodeUnitCall();
  static ApiAssetByCodeZeroAndUnitIdCall apiAssetByCodeZeroAndUnitIdCall =
      ApiAssetByCodeZeroAndUnitIdCall();
}

class ApiAssetsSearchFiltersCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    List<int>? unitsIdsList,
    List<int>? statusesIdsList,
    List<int>? tagsIdsList,
    List<int>? tagsSubsIdsList,
    List<int>? typesIdsList,
    String? versionMode = '',
    int? limit,
    int? offset,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final unitsIds = _serializeList(unitsIdsList);
    final statusesIds = _serializeList(statusesIdsList);
    final tagsIds = _serializeList(tagsIdsList);
    final tagsSubsIds = _serializeList(tagsSubsIdsList);
    final typesIds = _serializeList(typesIdsList);

    final ffApiRequestBody = '''
{
  "search_terms": "${searchTerms}",
  "units_ids": ${unitsIds},
  "statuses_ids": ${statusesIds},
  "tags_ids": ${tagsIds},
  "tags_subs_ids": ${tagsSubsIds},
  "types_ids": ${typesIds},
  "app_version_mode": "${versionMode}",
  "limit_value": ${limit},
  "offset_value": ${offset}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsSearchFilters',
      apiUrl: '${baseUrl}rpc/fc_assets_search_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? typeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ApiAssetsBySearchTermsAndTypeIdCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    int? typeId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "search_terms": "${searchTerms}",
  "asset_type_id": ${typeId},
  "app_version_mode": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsBySearchTermsAndTypeId',
      apiUrl: '${baseUrl}rpc/fc_assets_search_type',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? typeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ApiAssetByIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetById',
      apiUrl:
          '${baseUrl}v_assets?id=eq.${assetId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiAssetByCodeCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetByCode',
      apiUrl:
          '${baseUrl}v_assets?code=eq.${code}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiAssetByCodeUnitCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? versionMode = '',
    int? unitId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetByCodeUnit',
      apiUrl:
          '${baseUrl}v_assets?code=eq.${code}&unit_id=eq.${unitId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiAssetByCodeZeroAndUnitIdCall {
  Future<ApiCallResponse> call({
    int? unitId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetByCodeZeroAndUnitId',
      apiUrl:
          '${baseUrl}v_assets?code=eq.0&unit_id=eq.${unitId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssets Group Code

/// Start apiAssetsCouplingsModels Group Code

class ApiAssetsCouplingsModelsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsCouplingsModelsAllCall apiAssetsCouplingsModelsAllCall =
      ApiAssetsCouplingsModelsAllCall();
}

class ApiAssetsCouplingsModelsAllCall {
  Future<ApiCallResponse> call({
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsCouplingsModelsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsCouplingsModelsAll',
      apiUrl:
          '${baseUrl}v_assets_couplings_models?version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsCouplingsModels Group Code

/// Start apiAssetsTags Group Code

class ApiAssetsTagsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsTagsAllCall apiAssetsTagsAllCall = ApiAssetsTagsAllCall();
}

class ApiAssetsTagsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsTagsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsTagsAll',
      apiUrl: '${baseUrl}v_assets_tags?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsTags Group Code

/// Start apiAssetsTagsSubs Group Code

class ApiAssetsTagsSubsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsTagsSubsAllCall apiAssetsTagsSubsAllCall =
      ApiAssetsTagsSubsAllCall();
}

class ApiAssetsTagsSubsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsTagsSubsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsTagsSubsAll',
      apiUrl: '${baseUrl}v_assets_tags_subs?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsTagsSubs Group Code

/// Start apiAssetsTypes Group Code

class ApiAssetsTypesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsTypesAllCall apiAssetsTypesAllCall = ApiAssetsTypesAllCall();
}

class ApiAssetsTypesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsTypesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsTypesAll',
      apiUrl: '${baseUrl}v_assets_types?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsTypes Group Code

/// Start apiAssetsStatuses Group Code

class ApiAssetsStatusesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsStatusesAllCall apiAssetsStatusesAllCall =
      ApiAssetsStatusesAllCall();
}

class ApiAssetsStatusesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsStatusesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsStatusesAll',
      apiUrl: '${baseUrl}v_assets_statuses?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsStatuses Group Code

/// Start apiAssetsPriorities Group Code

class ApiAssetsPrioritiesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsPrioritiesAllCall apiAssetsPrioritiesAllCall =
      ApiAssetsPrioritiesAllCall();
}

class ApiAssetsPrioritiesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsPrioritiesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsPrioritiesAll',
      apiUrl: '${baseUrl}v_assets_priorities?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsPriorities Group Code

/// Start apiAssetsFollowers Group Code

class ApiAssetsFollowersGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static XapiAssetsFollowingCreateCall xapiAssetsFollowingCreateCall =
      XapiAssetsFollowingCreateCall();
  static ApiAssetsFollowingDeleteCall apiAssetsFollowingDeleteCall =
      ApiAssetsFollowingDeleteCall();
  static ApiFollowersByAssetIdCall apiFollowersByAssetIdCall =
      ApiFollowersByAssetIdCall();
  static ApiAssetsByFollowerCall apiAssetsByFollowerCall =
      ApiAssetsByFollowerCall();
}

class XapiAssetsFollowingCreateCall {
  Future<ApiCallResponse> call({
    int? assetId,
    int? userId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "search_terms": "<search_terms>",
  "units_ids": <units_ids>,
  "statuses_ids": <statuses_ids>,
  "tags_ids": <tags_ids>,
  "tags_subs_ids": <tags_subs_ids>,
  "types_ids": <types_ids>
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'XapiAssetsFollowingCreate',
      apiUrl: '${baseUrl}assetsFollowers',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiAssetsFollowingDeleteCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? assetId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsFollowingDelete',
      apiUrl:
          '${baseUrl}assetsFollowers?user_id=eq.${userId}&asset_id=eq.${assetId}',
      callType: ApiCallType.DELETE,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiFollowersByAssetIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiFollowersByAssetId',
      apiUrl:
          '${baseUrl}v_assets_followers?asset_id=eq.${assetId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiAssetsByFollowerCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsByFollower',
      apiUrl:
          '${baseUrl}v_assets_followers?user_id=eq.${userId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsFollowers Group Code

/// Start apiAssetsMaterials Group Code

class ApiAssetsMaterialsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiMaterialsByAssetIdCall apiMaterialsByAssetIdCall =
      ApiMaterialsByAssetIdCall();
}

class ApiMaterialsByAssetIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsMaterialsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiMaterialsByAssetId',
      apiUrl:
          '${baseUrl}v_assets_materials?asset_id=eq.${assetId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsMaterials Group Code

/// Start apiAssetsTechnicalsManuals Group Code

class ApiAssetsTechnicalsManualsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiTMsByAssetIdCall apiTMsByAssetIdCall = ApiTMsByAssetIdCall();
}

class ApiTMsByAssetIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAssetsTechnicalsManualsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTMsByAssetId',
      apiUrl:
          '${baseUrl}v_assets_technicals_manuals?asset_id=eq.${assetId}&tma_version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAssetsTechnicalsManuals Group Code

/// Start apiMaterials Group Code

class ApiMaterialsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiMaterialsSearchableCall apiMaterialsSearchableCall =
      ApiMaterialsSearchableCall();
}

class ApiMaterialsSearchableCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiMaterialsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "search_terms": "${searchTerms}",
  "app_version_mode": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiMaterialsSearchable',
      apiUrl: '${baseUrl}rpc/fc_materials_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiMaterials Group Code

/// Start apiOrders Group Code

class ApiOrdersGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrderByIdCall apiOrderByIdCall = ApiOrderByIdCall();
  static ApiOrderByMaskCall apiOrderByMaskCall = ApiOrderByMaskCall();
  static ApiOrdersOpenByLeaderIdCall apiOrdersOpenByLeaderIdCall =
      ApiOrdersOpenByLeaderIdCall();
  static ApiOrdersOpenByTeamIdCall apiOrdersOpenByTeamIdCall =
      ApiOrdersOpenByTeamIdCall();
  static ApiOrdersByParentIdCall apiOrdersByParentIdCall =
      ApiOrdersByParentIdCall();
  static ApiOPOpenDBFiltersCall apiOPOpenDBFiltersCall =
      ApiOPOpenDBFiltersCall();
  static ApiOOpenDBFiltersCall apiOOpenDBFiltersCall = ApiOOpenDBFiltersCall();
  static ApiOPImageUpdateCall apiOPImageUpdateCall = ApiOPImageUpdateCall();
  static ApiUpdateInProgressByOrderIdCall apiUpdateInProgressByOrderIdCall =
      ApiUpdateInProgressByOrderIdCall();
  static ApiUpdateStatusByOrderIdCall apiUpdateStatusByOrderIdCall =
      ApiUpdateStatusByOrderIdCall();
}

class ApiOrderByIdCall {
  Future<ApiCallResponse> call({
    int? orderId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrderById',
      apiUrl: '${baseUrl}v_orders?id=eq.${orderId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrderByMaskCall {
  Future<ApiCallResponse> call({
    String? orderMask = '',
    bool? isDev,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrderByMask',
      apiUrl:
          '${baseUrl}v_orders?order_mask=eq.${orderMask}&is_dev=eq.${isDev}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrdersOpenByLeaderIdCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersOpenByLeaderId',
      apiUrl:
          '${baseUrl}v_orders_open?team_leader_id=eq.${userId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrdersOpenByTeamIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersOpenByTeamId',
      apiUrl:
          '${baseUrl}v_orders_open?team_id=eq.${teamId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrdersByParentIdCall {
  Future<ApiCallResponse> call({
    int? parentId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersByParentId',
      apiUrl: '${baseUrl}v_orders?parent_id=eq.${parentId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOPOpenDBFiltersCall {
  Future<ApiCallResponse> call({
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? unitsIdsList,
    List<int>? ordersTypesIdsList,
    List<int>? unitsTypesIdsList,
    String? appVersionMode = '',
    List<int>? assetsTagsIdsList,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final ordersTypesIds = _serializeList(ordersTypesIdsList);
    final unitsTypesIds = _serializeList(unitsTypesIdsList);
    final assetsTagsIds = _serializeList(assetsTagsIdsList);

    final ffApiRequestBody = '''
{
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_ids": ${unitsTypesIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "units_ids": ${unitsIds},
  "orders_types_ids": ${ordersTypesIds},
  "assets_tags_ids": ${assetsTagsIds},
  "app_version_mode": "${appVersionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOPOpenDBFilters',
      apiUrl: '${baseUrl}rpc/fc_dash_admin_orders_parent_filters_open',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOOpenDBFiltersCall {
  Future<ApiCallResponse> call({
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? unitsIdsList,
    List<int>? ordersTypesIdsList,
    List<int>? ordersTypesSubsIdsList,
    List<int>? contractsIdsList,
    List<int>? companiesIdsList,
    List<int>? ordersPlansIdsList,
    List<int>? ordersObjectsIdsList,
    List<int>? teamsIdsList,
    String? appVersionMode = '',
    List<int>? assetsTagsIdsList,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final ordersTypesIds = _serializeList(ordersTypesIdsList);
    final ordersTypesSubsIds = _serializeList(ordersTypesSubsIdsList);
    final contractsIds = _serializeList(contractsIdsList);
    final companiesIds = _serializeList(companiesIdsList);
    final ordersPlansIds = _serializeList(ordersPlansIdsList);
    final ordersObjectsIds = _serializeList(ordersObjectsIdsList);
    final teamsIds = _serializeList(teamsIdsList);
    final assetsTagsIds = _serializeList(assetsTagsIdsList);

    final ffApiRequestBody = '''
{
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "units_ids": ${unitsIds},
  "orders_types_ids": ${ordersTypesIds},
  "orders_types_subs_ids": ${ordersTypesSubsIds},
  "contracts_ids": ${contractsIds},
  "companies_ids": ${companiesIds},
  "orders_plans_ids": ${ordersPlansIds},
  "orders_objects_ids": ${ordersObjectsIds},
  "teams_ids": ${teamsIds},
  "assets_tags_ids": ${assetsTagsIds},
  "app_version_mode": "${appVersionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOOpenDBFilters',
      apiUrl: '${baseUrl}rpc/fc_dash_admin_orders_filters_open',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOPImageUpdateCall {
  Future<ApiCallResponse> call({
    int? id,
    String? imgFilePath = '',
    String? imgFileName = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${id},
  "img_file_path": "${imgFilePath}",
  "img_file_name": "${imgFileName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOPImageUpdate',
      apiUrl: '${baseUrl}orders?id=eq.${id}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUpdateInProgressByOrderIdCall {
  Future<ApiCallResponse> call({
    int? oId,
    int? statusId,
    String? statusAt = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${oId},
  "status_id": ${statusId},
  "status_at": "${statusAt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUpdateInProgressByOrderId',
      apiUrl: '${baseUrl}orders?id=eq.${oId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUpdateStatusByOrderIdCall {
  Future<ApiCallResponse> call({
    int? oId,
    int? statusId,
    String? statusAt = '',
    int? suspendedReasonId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${oId},
  "status_id": ${statusId},
  "status_at": "${statusAt}",
  "suspended_reason_id": ${suspendedReasonId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUpdateStatusByOrderId',
      apiUrl: '${baseUrl}orders?id=eq.${oId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrders Group Code

/// Start apiOrdersTypes Group Code

class ApiOrdersTypesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersTypesAllCall apiOrdersTypesAllCall = ApiOrdersTypesAllCall();
}

class ApiOrdersTypesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersTypesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersTypesAll',
      apiUrl: '${baseUrl}v_orders_types?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersTypes Group Code

/// Start apiOrdersTypesSubs Group Code

class ApiOrdersTypesSubsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersTypesSubsAllCall apiOrdersTypesSubsAllCall =
      ApiOrdersTypesSubsAllCall();
}

class ApiOrdersTypesSubsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersTypesSubsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersTypesSubsAll',
      apiUrl: '${baseUrl}v_orders_types_subs?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersTypesSubs Group Code

/// Start apiOrdersTypesActivities Group Code

class ApiOrdersTypesActivitiesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersTypesAcivitiesAllCall apiOrdersTypesAcivitiesAllCall =
      ApiOrdersTypesAcivitiesAllCall();
  static ApiOTypesActivitiesSearchTermsCall apiOTypesActivitiesSearchTermsCall =
      ApiOTypesActivitiesSearchTermsCall();
}

class ApiOrdersTypesAcivitiesAllCall {
  Future<ApiCallResponse> call({
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersTypesActivitiesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersTypesAcivitiesAll',
      apiUrl:
          '${baseUrl}v_orders_types_activities?version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOTypesActivitiesSearchTermsCall {
  Future<ApiCallResponse> call({
    String? srchTerms = '',
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersTypesActivitiesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "srch_terms": "${srchTerms}",
  "srch_version_mode": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOTypesActivitiesSearchTerms',
      apiUrl: '${baseUrl}rpc/fc_orders_types_activities_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersTypesActivities Group Code

/// Start apiOrdersPriorities Group Code

class ApiOrdersPrioritiesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersPrioritiesAllCall apiOrdersPrioritiesAllCall =
      ApiOrdersPrioritiesAllCall();
}

class ApiOrdersPrioritiesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersPrioritiesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersPrioritiesAll',
      apiUrl: '${baseUrl}v_orders_priorities?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersPriorities Group Code

/// Start apiOrdersObjects Group Code

class ApiOrdersObjectsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersObjectsAllCall apiOrdersObjectsAllCall =
      ApiOrdersObjectsAllCall();
}

class ApiOrdersObjectsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersObjectsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersObjectsAll',
      apiUrl: '${baseUrl}v_orders_objects?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersObjects Group Code

/// Start apiOrdersStatuses Group Code

class ApiOrdersStatusesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersStatusesAllCall apiOrdersStatusesAllCall =
      ApiOrdersStatusesAllCall();
}

class ApiOrdersStatusesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersStatusesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersStatusesAll',
      apiUrl: '${baseUrl}v_orders_statuses?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersStatuses Group Code

/// Start apiOrdersPlans Group Code

class ApiOrdersPlansGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersPlansAllCall apiOrdersPlansAllCall = ApiOrdersPlansAllCall();
}

class ApiOrdersPlansAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersPlansGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersPlansAll',
      apiUrl: '${baseUrl}v_orders_plans?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersPlans Group Code

/// Start apiOrdersFollowers Group Code

class ApiOrdersFollowersGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiFollowersByOrderIdCall apiFollowersByOrderIdCall =
      ApiFollowersByOrderIdCall();
  static ApiOrdersByFollowerCall apiOrdersByFollowerCall =
      ApiOrdersByFollowerCall();
  static ApiCreateOrderFollowerCall apiCreateOrderFollowerCall =
      ApiCreateOrderFollowerCall();
  static ApiDeleteOrderFollowerCall apiDeleteOrderFollowerCall =
      ApiDeleteOrderFollowerCall();
  static ApiIdByUserOrderCopyCall apiIdByUserOrderCopyCall =
      ApiIdByUserOrderCopyCall();
}

class ApiFollowersByOrderIdCall {
  Future<ApiCallResponse> call({
    int? oId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiFollowersByOrderId',
      apiUrl: '${baseUrl}v_orders_followers?o_id=eq.${oId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrdersByFollowerCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersByFollower',
      apiUrl:
          '${baseUrl}v_orders_followers?user_id=eq.${userId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCreateOrderFollowerCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? orderId,
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "order_id": ${orderId},
  "version": "${version}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCreateOrderFollower',
      apiUrl: '${baseUrl}orders_followers',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiDeleteOrderFollowerCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? orderId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiDeleteOrderFollower',
      apiUrl:
          '${baseUrl}orders_followers?user_id=eq.${userId}&order_id=eq.${orderId}',
      callType: ApiCallType.DELETE,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiIdByUserOrderCopyCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? orderId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiIdByUserOrder Copy',
      apiUrl:
          '${baseUrl}v_orders_followers?user_id=eq.${userId}&order_id=eq.${orderId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersFollowers Group Code

/// Start apiOrdersVisitsExtrasFollowers Group Code

class ApiOrdersVisitsExtrasFollowersGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiFollowersByOrderIdCopyCall apiFollowersByOrderIdCopyCall =
      ApiFollowersByOrderIdCopyCall();
  static ApiOVEByFollowerCall apiOVEByFollowerCall = ApiOVEByFollowerCall();
  static ApiCreateOrderFollowerCopyCall apiCreateOrderFollowerCopyCall =
      ApiCreateOrderFollowerCopyCall();
  static ApiDeleteOrderFollowerCopyCall apiDeleteOrderFollowerCopyCall =
      ApiDeleteOrderFollowerCopyCall();
  static ApiIdByUserOrderCopyCopyCall apiIdByUserOrderCopyCopyCall =
      ApiIdByUserOrderCopyCopyCall();
}

class ApiFollowersByOrderIdCopyCall {
  Future<ApiCallResponse> call({
    int? oId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiFollowersByOrderId Copy',
      apiUrl: '${baseUrl}v_orders_followers?o_id=eq.${oId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVEByFollowerCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVEByFollower',
      apiUrl:
          '${baseUrl}v_orders_visits_extras_followers?user_id=eq.${userId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCreateOrderFollowerCopyCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? orderId,
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "order_id": ${orderId},
  "version": "${version}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCreateOrderFollower Copy',
      apiUrl: '${baseUrl}orders_followers',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiDeleteOrderFollowerCopyCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? orderId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiDeleteOrderFollower Copy',
      apiUrl:
          '${baseUrl}orders_followers?user_id=eq.${userId}&order_id=eq.${orderId}',
      callType: ApiCallType.DELETE,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiIdByUserOrderCopyCopyCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? orderId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasFollowersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiIdByUserOrder Copy Copy',
      apiUrl:
          '${baseUrl}v_orders_followers?user_id=eq.${userId}&order_id=eq.${orderId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsExtrasFollowers Group Code

/// Start ApiOrdersCounter Group Code

class ApiOrdersCounterGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOCounterCurrentOKCall apiOCounterCurrentOKCall =
      ApiOCounterCurrentOKCall();
  static ApiOrderCounterIncrementCall apiOrderCounterIncrementCall =
      ApiOrderCounterIncrementCall();
  static ApiOCounterRequestCall apiOCounterRequestCall =
      ApiOCounterRequestCall();
}

class ApiOCounterCurrentOKCall {
  Future<ApiCallResponse> call({
    int? companyId,
    int? year,
    bool? isDev,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersCounterGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOCounterCurrentOK',
      apiUrl:
          '${baseUrl}v_orders_counter?company_id=eq.${companyId}&year=eq.${year}&is_dev=eq.${isDev}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrderCounterIncrementCall {
  Future<ApiCallResponse> call({
    int? id,
    int? counter,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersCounterGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${id},
  "counter": ${counter}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOrderCounterIncrement',
      apiUrl: '${baseUrl}cfg_orders_counter?id=eq.${id}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOCounterRequestCall {
  Future<ApiCallResponse> call({
    int? companyId,
    int? year,
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersCounterGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
"p_company_id":${companyId},
"p_year":${year},
"p_version":"${version}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOCounterRequest',
      apiUrl: '${baseUrl}rpc/fc_order_counter_increment',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? counter(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.counter''',
      ));
}

/// End ApiOrdersCounter Group Code

/// Start apiOrdersVisits Group Code

class ApiOrdersVisitsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOVCreateCall apiOVCreateCall = ApiOVCreateCall();
  static ApiUpdateTeamAmountByOrderVisitIdCall
      apiUpdateTeamAmountByOrderVisitIdCall =
      ApiUpdateTeamAmountByOrderVisitIdCall();
  static ApiCloseOrderVisitCall apiCloseOrderVisitCall =
      ApiCloseOrderVisitCall();
  static ApiOVByIdCall apiOVByIdCall = ApiOVByIdCall();
  static ApiOVByOIdCall apiOVByOIdCall = ApiOVByOIdCall();
  static ApiOVOpenByUserIdCall apiOVOpenByUserIdCall = ApiOVOpenByUserIdCall();
  static ApiOVOpenByTeamIdCall apiOVOpenByTeamIdCall = ApiOVOpenByTeamIdCall();
  static ApiOVOpenByFiltersCall apiOVOpenByFiltersCall =
      ApiOVOpenByFiltersCall();
  static ApiJsonOVByIdCall apiJsonOVByIdCall = ApiJsonOVByIdCall();
}

class ApiOVCreateCall {
  Future<ApiCallResponse> call({
    int? oId,
    int? ovStatusId,
    int? ovProcessingId,
    String? ovStartedAt = '',
    int? ovTeamLearderId,
    int? ovCreatedUserId,
    String? ovCreatedAt = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "o_id": ${oId},
  "ov_status_id": ${ovStatusId},
  "ov_processing_id": ${ovProcessingId},
  "ov_started_at": "${ovStartedAt}",
  "ov_team_leader_id": ${ovTeamLearderId},
  "ov_created_user_id": ${ovCreatedUserId},
  "ov_created_at": "${ovCreatedAt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOVCreate',
      apiUrl: '${baseUrl}orders_visits?select=\'*\'',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
        'Prefer': 'return=representation',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class ApiUpdateTeamAmountByOrderVisitIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    int? teamAmount,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "team_amount": ${teamAmount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUpdateTeamAmountByOrderVisitId',
      apiUrl: '${baseUrl}orders_visits?id=eq.${ovId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCloseOrderVisitCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? ovEndedAt = '',
    int? ovStatusId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${ovId},
  "ov_ended_at": "${ovEndedAt}",
  "ov_status_id": ${ovStatusId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCloseOrderVisit',
      apiUrl: '${baseUrl}orders_visits?id=eq.${ovId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVByIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVById',
      apiUrl: '${baseUrl}v_orders_visits?id=eq.${ovId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVByOIdCall {
  Future<ApiCallResponse> call({
    int? oId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVByOId',
      apiUrl: '${baseUrl}v_orders_visits?o_id=eq.${oId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVOpenByUserIdCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVOpenByUserId',
      apiUrl:
          '${baseUrl}v_orders_visits_open?ov_team_leader_id=eq.${userId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVOpenByTeamIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVOpenByTeamId',
      apiUrl:
          '${baseUrl}v_orders_visits_open?o_team_id=eq.${teamId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVOpenByFiltersCall {
  Future<ApiCallResponse> call({
    List<int>? ordersTypesIdsList,
    List<int>? processingIdsList,
    List<int>? unitsIdsList,
    List<int>? ordersTypesSubsIdsList,
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? contractsIdsList,
    List<int>? ordersObjectsIdsList,
    List<int>? ordersPlansIdsList,
    String? versionMode = '',
    List<int>? teamsIdsList,
    List<int>? assetsTagsIdsList,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final ordersTypesIds = _serializeList(ordersTypesIdsList);
    final processingIds = _serializeList(processingIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final ordersTypesSubsIds = _serializeList(ordersTypesSubsIdsList);
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final contractsIds = _serializeList(contractsIdsList);
    final ordersObjectsIds = _serializeList(ordersObjectsIdsList);
    final ordersPlansIds = _serializeList(ordersPlansIdsList);
    final teamsIds = _serializeList(teamsIdsList);
    final assetsTagsIds = _serializeList(assetsTagsIdsList);

    final ffApiRequestBody = '''
{
  "orders_types_ids": ${ordersTypesIds},
  "orders_types_subs_ids": ${ordersTypesSubsIds},
  "processing_ids": ${processingIds},
  "units_ids": ${unitsIds},
  "assets_tags_ids": ${assetsTagsIds},
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "contracts_ids": ${contractsIds},
  "orders_objects_ids": ${ordersObjectsIds},
  "orders_plans_ids": ${ordersPlansIds},
  "teams_ids": ${teamsIds},
  "app_version_mode": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOVOpenByFilters',
      apiUrl: '${baseUrl}rpc/fc_orders_visits_open_search_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiJsonOVByIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "srch_ov_id":${ovId} 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiJsonOVById',
      apiUrl: '${baseUrl}rpc/fc_order_visit_json',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

/// End apiOrdersVisits Group Code

/// Start apiOrdersVisitsExtras Group Code

class ApiOrdersVisitsExtrasGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOVEByIdCall apiOVEByIdCall = ApiOVEByIdCall();
  static ApiOveNoFiledByTeamLeaderIdCall apiOveNoFiledByTeamLeaderIdCall =
      ApiOveNoFiledByTeamLeaderIdCall();
  static ApiOveAllCall apiOveAllCall = ApiOveAllCall();
  static ApiOveAllCopyCall apiOveAllCopyCall = ApiOveAllCopyCall();
  static ApiOveAllByIdDescCall apiOveAllByIdDescCall = ApiOveAllByIdDescCall();
  static ApiOveNoFiledAllCall apiOveNoFiledAllCall = ApiOveNoFiledAllCall();
  static ApiOveNoFiledFiltersCall apiOveNoFiledFiltersCall =
      ApiOveNoFiledFiltersCall();
  static ApiOVEFiltersCall apiOVEFiltersCall = ApiOVEFiltersCall();
}

class ApiOVEByIdCall {
  Future<ApiCallResponse> call({
    int? oveId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVEById',
      apiUrl: '${baseUrl}v_orders_visits_extras?id=eq.${oveId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOveNoFiledByTeamLeaderIdCall {
  Future<ApiCallResponse> call({
    int? teamLeaderId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOveNoFiledByTeamLeaderId',
      apiUrl:
          '${baseUrl}v_orders_visits_extras_no_filed?team_leader_id=eq.${teamLeaderId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOveAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOveAll',
      apiUrl: '${baseUrl}v_orders_visits_extras?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOveAllCopyCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOveAll Copy',
      apiUrl:
          '${baseUrl}v_orders_visits_extras?started_at=.gte(\'2025-03-30 00:00:00\')&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOveAllByIdDescCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOveAllByIdDesc',
      apiUrl: '${baseUrl}v_orders_visits_extras_by_id_desc?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOveNoFiledAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOveNoFiledAll',
      apiUrl: '${baseUrl}v_orders_visits_extras_no_filed?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOveNoFiledFiltersCall {
  Future<ApiCallResponse> call({
    List<int>? oTypesIdsList,
    List<int>? teamsIdsList,
    List<int>? unitsIdsList,
    List<int>? assetsTagsIdsList,
    List<int>? oTypesSubsIdsList,
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? unitsTypesIdsList,
    List<int>? oCausesReasonsIdsList,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final oTypesIds = _serializeList(oTypesIdsList);
    final teamsIds = _serializeList(teamsIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final assetsTagsIds = _serializeList(assetsTagsIdsList);
    final oTypesSubsIds = _serializeList(oTypesSubsIdsList);
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final unitsTypesIds = _serializeList(unitsTypesIdsList);
    final oCausesReasonsIds = _serializeList(oCausesReasonsIdsList);

    final ffApiRequestBody = '''
{
  "o_types_ids": ${oTypesIds},
  "o_types_subs_ids": ${oTypesSubsIds},
  "teams_ids": ${teamsIds},
  "units_ids": ${unitsIds},
  "assets_tags_ids": ${assetsTagsIds},
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "units_types_ids": ${unitsTypesIds},
  "o_causes_reasons_ids": ${oCausesReasonsIds}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOveNoFiledFilters',
      apiUrl: '${baseUrl}rpc/fc_dash_admin_orders_extras_no_filed_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVEFiltersCall {
  Future<ApiCallResponse> call({
    List<int>? oTypesIdsList,
    List<int>? teamsIdsList,
    List<int>? unitsIdsList,
    List<int>? assetsTagsIdsList,
    String? dateStart = '',
    String? dateEnd = '',
    List<int>? oTypesSubsIdsList,
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? unitsTypesIdsList,
    List<int>? oCausesReasonsIdsList,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final oTypesIds = _serializeList(oTypesIdsList);
    final teamsIds = _serializeList(teamsIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final assetsTagsIds = _serializeList(assetsTagsIdsList);
    final oTypesSubsIds = _serializeList(oTypesSubsIdsList);
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final unitsTypesIds = _serializeList(unitsTypesIdsList);
    final oCausesReasonsIds = _serializeList(oCausesReasonsIdsList);

    final ffApiRequestBody = '''
{
  "date_start": "${escapeStringForJson(dateStart)}",
  "date_end": "${escapeStringForJson(dateEnd)}",
  "o_types_ids": ${oTypesIds},
  "o_types_subs_ids": ${oTypesSubsIds},
  "teams_ids": ${teamsIds},
  "units_ids": ${unitsIds},
  "assets_tags_ids": ${assetsTagsIds},
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "units_types_ids": ${unitsTypesIds},
  "o_causes_reasons_ids": ${oCausesReasonsIds}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOVEFilters',
      apiUrl: '${baseUrl}rpc/fc_dash_admin_orders_extras_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsExtras Group Code

/// Start apiOrdersVisitsFinancial Group Code

class ApiOrdersVisitsFinancialGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOVFinancialFiltersCall apiOVFinancialFiltersCall =
      ApiOVFinancialFiltersCall();
}

class ApiOVFinancialFiltersCall {
  Future<ApiCallResponse> call({
    List<int>? ordersTypesIdsList,
    List<int>? processingIdsList,
    List<int>? unitsIdsList,
    List<int>? ordersTypesSubsIdsList,
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? contractsIdsList,
    List<int>? ordersObjectsIdsList,
    List<int>? ordersPlansIdsList,
    String? versionMode = '',
    List<int>? teamsIdsList,
    String? dateStart = '',
    String? dateEnd = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsFinancialGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final ordersTypesIds = _serializeList(ordersTypesIdsList);
    final processingIds = _serializeList(processingIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final ordersTypesSubsIds = _serializeList(ordersTypesSubsIdsList);
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final contractsIds = _serializeList(contractsIdsList);
    final ordersObjectsIds = _serializeList(ordersObjectsIdsList);
    final ordersPlansIds = _serializeList(ordersPlansIdsList);
    final teamsIds = _serializeList(teamsIdsList);

    final ffApiRequestBody = '''
{
  "orders_types_ids": ${ordersTypesIds},
  "orders_types_subs_ids": ${ordersTypesSubsIds},
  "processing_ids": ${processingIds},
  "units_ids": ${unitsIds},
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "contracts_ids": ${contractsIds},
  "orders_objects_ids": ${ordersObjectsIds},
  "orders_plans_ids": ${ordersPlansIds},
  "teams_ids": ${teamsIds},
  "app_version_mode": "${versionMode}",
  "srch_date_start": "${dateStart}",
  "srch_date_end": "${dateEnd}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOVFinancialFilters',
      apiUrl: '${baseUrl}rpc/fc_orders_visits_financial_search_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsFinancial Group Code

/// Start apiOrdersVisitsVehicles Group Code

class ApiOrdersVisitsVehiclesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiCreateVehicleByOrderVisitCall apiCreateVehicleByOrderVisitCall =
      ApiCreateVehicleByOrderVisitCall();
  static ApiOrderVisitVehicleByIdCall apiOrderVisitVehicleByIdCall =
      ApiOrderVisitVehicleByIdCall();
  static ApiVehiclesByOrderVisitIdCall apiVehiclesByOrderVisitIdCall =
      ApiVehiclesByOrderVisitIdCall();
}

class ApiCreateVehicleByOrderVisitCall {
  Future<ApiCallResponse> call({
    int? ovId,
    int? vehicleId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsVehiclesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "ov_id": ${ovId},
  "vehicle_id": ${vehicleId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCreateVehicleByOrderVisit',
      apiUrl: '${baseUrl}orders_visits_vehicles',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrderVisitVehicleByIdCall {
  Future<ApiCallResponse> call({
    int? id,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsVehiclesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrderVisitVehicleById',
      apiUrl: '${baseUrl}v_orders_visits_vehicles?id=eq.${id}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiVehiclesByOrderVisitIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsVehiclesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiVehiclesByOrderVisitId',
      apiUrl:
          '${baseUrl}v_orders_visits_vehicles?ov_id=eq.${ovId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsVehicles Group Code

/// Start apiOrdersVisitsAssets Group Code

class ApiOrdersVisitsAssetsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOVAssetIdByOVIdAssetIdCall apiOVAssetIdByOVIdAssetIdCall =
      ApiOVAssetIdByOVIdAssetIdCall();
  static ApiMovementsByAssetIdCall apiMovementsByAssetIdCall =
      ApiMovementsByAssetIdCall();
  static ApiOVAssetByIdCall apiOVAssetByIdCall = ApiOVAssetByIdCall();
  static ApiOVAssetByAssetIdCall apiOVAssetByAssetIdCall =
      ApiOVAssetByAssetIdCall();
  static ApiOVAssetsByOVIdCall apiOVAssetsByOVIdCall = ApiOVAssetsByOVIdCall();
  static ApiOVAssetsActivitiesByAssetIdCall apiOVAssetsActivitiesByAssetIdCall =
      ApiOVAssetsActivitiesByAssetIdCall();
}

class ApiOVAssetIdByOVIdAssetIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    int? assetId,
    String? version = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVAssetIdByOVIdAssetId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets?ov_id=eq.${ovId}&asset_id=eq.${assetId}&version=eq.${version}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiMovementsByAssetIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiMovementsByAssetId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets?asset_id=eq.${assetId}&is_moved=eq.true&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVAssetByIdCall {
  Future<ApiCallResponse> call({
    int? id,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVAssetById',
      apiUrl:
          '${baseUrl}v_orders_visits_assets?id=eq.${id}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVAssetByAssetIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVAssetByAssetId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets?asset_id=eq.${assetId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVAssetsByOVIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOVAssetsByOVId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets?ov_id=eq.${ovId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOVAssetsActivitiesByAssetIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
    String? versionMode = 'live',
    String? activities = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "search_asset_id": ${assetId},
  "search_terms": "${activities}",
  "search_version": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiOVAssetsActivitiesByAssetId',
      apiUrl: '${baseUrl}rpc/fc_asset_activities_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsAssets Group Code

/// Start apiOrdersVisitsAssetsActivities Group Code

class ApiOrdersVisitsAssetsActivitiesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiActivitiesByAssetIdCall apiActivitiesByAssetIdCall =
      ApiActivitiesByAssetIdCall();
}

class ApiActivitiesByAssetIdCall {
  Future<ApiCallResponse> call({
    int? ovaId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsActivitiesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiActivitiesByAssetId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets_activities?ova_id=eq.${ovaId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsAssetsActivities Group Code

/// Start apiOrdersVisitsAssetsMaterials Group Code

class ApiOrdersVisitsAssetsMaterialsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiMaterialsByOVIdAndAssetIdCall apiMaterialsByOVIdAndAssetIdCall =
      ApiMaterialsByOVIdAndAssetIdCall();
  static ApiMaterialsByOVAssetIdCall apiMaterialsByOVAssetIdCall =
      ApiMaterialsByOVAssetIdCall();
}

class ApiMaterialsByOVIdAndAssetIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? versionMode = '',
    int? assetId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsMaterialsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiMaterialsByOVIdAndAssetId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets_materials?ov_id=eq.${ovId}&asset_id=eq.${assetId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiMaterialsByOVAssetIdCall {
  Future<ApiCallResponse> call({
    int? ovaId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsAssetsMaterialsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiMaterialsByOVAssetId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets_materials?ova_id=eq.${ovaId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsAssetsMaterials Group Code

/// Start apiOrdersVisitsMaterials Group Code

class ApiOrdersVisitsMaterialsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiMaterialsByOVIdCall apiMaterialsByOVIdCall =
      ApiMaterialsByOVIdCall();
}

class ApiMaterialsByOVIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsMaterialsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiMaterialsByOVId',
      apiUrl:
          '${baseUrl}v_orders_visits_assets_materials?ov_id=eq.${ovId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsMaterials Group Code

/// Start apiOrdersVisitsTeams Group Code

class ApiOrdersVisitsTeamsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiCreateTeamByOrderVisitCall apiCreateTeamByOrderVisitCall =
      ApiCreateTeamByOrderVisitCall();
  static ApiOrderVisitTeamByIdCall apiOrderVisitTeamByIdCall =
      ApiOrderVisitTeamByIdCall();
  static ApiTeamUsersByOVIdCall apiTeamUsersByOVIdCall =
      ApiTeamUsersByOVIdCall();
}

class ApiCreateTeamByOrderVisitCall {
  Future<ApiCallResponse> call({
    int? ovId,
    int? userId,
    bool? isLeader,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "ov_id": ${ovId},
  "user_id": ${userId},
  "is_leader": ${isLeader}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCreateTeamByOrderVisit',
      apiUrl: '${baseUrl}orders_visits_teams',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiOrderVisitTeamByIdCall {
  Future<ApiCallResponse> call({
    int? id,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrderVisitTeamById',
      apiUrl: '${baseUrl}v_orders_visits_teams?id=eq.${id}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTeamUsersByOVIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTeamUsersByOVId',
      apiUrl: '${baseUrl}v_orders_visits_teams?ov_id=eq.${ovId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsTeams Group Code

/// Start apiOrdersVisitsExtrasTeams Group Code

class ApiOrdersVisitsExtrasTeamsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrderVisitTeamExtraByIdCall apiOrderVisitTeamExtraByIdCall =
      ApiOrderVisitTeamExtraByIdCall();
  static ApiTeamUsersByOVEIdCall apiTeamUsersByOVEIdCall =
      ApiTeamUsersByOVEIdCall();
}

class ApiOrderVisitTeamExtraByIdCall {
  Future<ApiCallResponse> call({
    int? oveId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrderVisitTeamExtraById',
      apiUrl:
          '${baseUrl}v_orders_visits_extras_teams?ove_id=eq.${oveId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTeamUsersByOVEIdCall {
  Future<ApiCallResponse> call({
    int? oveId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsExtrasTeamsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTeamUsersByOVEId',
      apiUrl:
          '${baseUrl}v_orders_visits_extras_teams?ove_id=eq.${oveId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsExtrasTeams Group Code

/// Start apiOrdersVisitsServices Group Code

class ApiOrdersVisitsServicesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiServicesByOVIdCall apiServicesByOVIdCall = ApiServicesByOVIdCall();
}

class ApiServicesByOVIdCall {
  Future<ApiCallResponse> call({
    int? ovId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersVisitsServicesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiServicesByOVId',
      apiUrl:
          '${baseUrl}v_orders_visits_services?ov_id=eq.${ovId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsServices Group Code

/// Start apiOrdersSuspendedReasons Group Code

class ApiOrdersSuspendedReasonsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersSuspendedReasonsAllCall apiOrdersSuspendedReasonsAllCall =
      ApiOrdersSuspendedReasonsAllCall();
}

class ApiOrdersSuspendedReasonsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersSuspendedReasonsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersSuspendedReasonsAll',
      apiUrl:
          '${baseUrl}v_orders_suspended_reasons?is_deleted=eq.false&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersSuspendedReasons Group Code

/// Start apiOrdersCancelReasons Group Code

class ApiOrdersCancelReasonsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersCancelReasonsAllCall apiOrdersCancelReasonsAllCall =
      ApiOrdersCancelReasonsAllCall();
}

class ApiOrdersCancelReasonsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersCancelReasonsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersCancelReasonsAll',
      apiUrl:
          '${baseUrl}v_orders_cancel_reasons?is_deleted=eq.false&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersCancelReasons Group Code

/// Start apiOrdersCausesReasons Group Code

class ApiOrdersCausesReasonsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiOrdersCausesReasonsAllCall apiOrdersCausesReasonsAllCall =
      ApiOrdersCausesReasonsAllCall();
}

class ApiOrdersCausesReasonsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiOrdersCausesReasonsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiOrdersCausesReasonsAll',
      apiUrl: '${baseUrl}v_orders_causes_reasons?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersCausesReasons Group Code

/// Start apiUnitsTypes Group Code

class ApiUnitsTypesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiUnitsTypesAllCall apiUnitsTypesAllCall = ApiUnitsTypesAllCall();
  static ApiUnitTypeByIdCall apiUnitTypeByIdCall = ApiUnitTypeByIdCall();
}

class ApiUnitsTypesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsTypesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitsTypesAll',
      apiUrl: '${baseUrl}v_units_types?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitTypeByIdCall {
  Future<ApiCallResponse> call({
    int? unitTypeId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsTypesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitTypeById',
      apiUrl: '${baseUrl}v_units_types?id=eq.${unitTypeId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiUnitsTypes Group Code

/// Start apiSystems Group Code

class ApiSystemsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiSystemsAllCall apiSystemsAllCall = ApiSystemsAllCall();
  static ApiSystemByIdCall apiSystemByIdCall = ApiSystemByIdCall();
}

class ApiSystemsAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiSystemsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiSystemsAll',
      apiUrl: '${baseUrl}v_systems?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiSystemByIdCall {
  Future<ApiCallResponse> call({
    int? systemId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiSystemsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiSystemById',
      apiUrl: '${baseUrl}v_systems?id=eq.${systemId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiSystems Group Code

/// Start apiSystemsParent Group Code

class ApiSystemsParentGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiSystemsParentAllCall apiSystemsParentAllCall =
      ApiSystemsParentAllCall();
  static ApiSystemParentByIdCall apiSystemParentByIdCall =
      ApiSystemParentByIdCall();
}

class ApiSystemsParentAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiSystemsParentGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiSystemsParentAll',
      apiUrl: '${baseUrl}v_systems_parent?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiSystemParentByIdCall {
  Future<ApiCallResponse> call({
    int? systemId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiSystemsParentGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiSystemParentById',
      apiUrl: '${baseUrl}v_systems_parent?id=eq.${systemId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiSystemsParent Group Code

/// Start apiUnitsTypesParent Group Code

class ApiUnitsTypesParentGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiUnitsTypesParentAllCall apiUnitsTypesParentAllCall =
      ApiUnitsTypesParentAllCall();
  static ApiUnitTypeParentByIdCall apiUnitTypeParentByIdCall =
      ApiUnitTypeParentByIdCall();
}

class ApiUnitsTypesParentAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsTypesParentGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitsTypesParentAll',
      apiUrl: '${baseUrl}v_units_types_parent?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnitTypeParentByIdCall {
  Future<ApiCallResponse> call({
    int? unitTypeId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsTypesParentGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitTypeParentById',
      apiUrl: '${baseUrl}v_units_types_parent?id=eq.${unitTypeId}&select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiUnitsTypesParent Group Code

/// Start apiUnitsStatuses Group Code

class ApiUnitsStatusesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiUnitsStatusesAllCall apiUnitsStatusesAllCall =
      ApiUnitsStatusesAllCall();
}

class ApiUnitsStatusesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUnitsStatusesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUnitsStatusesAll',
      apiUrl: '${baseUrl}v_units_statuses?select=\"*\"',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiUnitsStatuses Group Code

/// Start apiProfilesPermissions Group Code

class ApiProfilesPermissionsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiPermissionsByProfileIdCall apiPermissionsByProfileIdCall =
      ApiPermissionsByProfileIdCall();
}

class ApiPermissionsByProfileIdCall {
  Future<ApiCallResponse> call({
    int? profileId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiProfilesPermissionsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiPermissionsByProfileId',
      apiUrl:
          '${baseUrl}v_profiles_permissions?profile_id=eq.${profileId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiProfilesPermissions Group Code

/// Start apiTechnicalsManuals Group Code

class ApiTechnicalsManualsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiTMByIdCall apiTMByIdCall = ApiTMByIdCall();
  static ApiTMsBySearchTermsAndAssetTypeIdCall
      apiTMsBySearchTermsAndAssetTypeIdCall =
      ApiTMsBySearchTermsAndAssetTypeIdCall();
}

class ApiTMByIdCall {
  Future<ApiCallResponse> call({
    int? tmId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTechnicalsManualsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiTMById',
      apiUrl:
          '${baseUrl}v_technicals_manuals?id=eq.${tmId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTMsBySearchTermsAndAssetTypeIdCall {
  Future<ApiCallResponse> call({
    int? assetTypeId,
    String? versionMode = '',
    String? searchTerms = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTechnicalsManualsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "src_asset_type_id": ${assetTypeId},
  "search_terms": "${searchTerms}",
  "src_version_mode": "${versionMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiTMsBySearchTermsAndAssetTypeId',
      apiUrl: '${baseUrl}rpc/fc_tm_assets_types_search_terms',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiTechnicalsManuals Group Code

/// Start apiTechnicalsManualsAssets Group Code

class ApiTechnicalsManualsAssetsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAssetsByTMIdCall apiAssetsByTMIdCall = ApiAssetsByTMIdCall();
}

class ApiAssetsByTMIdCall {
  Future<ApiCallResponse> call({
    int? tmId,
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTechnicalsManualsAssetsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAssetsByTMId',
      apiUrl:
          '${baseUrl}v_technicals_manuals_assets?tm_id=eq.${tmId}&version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiTechnicalsManualsAssets Group Code

/// Start apiTechnicalsManualsTypes Group Code

class ApiTechnicalsManualsTypesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiAllTMTypesCall apiAllTMTypesCall = ApiAllTMTypesCall();
}

class ApiAllTMTypesCall {
  Future<ApiCallResponse> call({
    String? versionMode = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiTechnicalsManualsTypesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiAllTMTypes',
      apiUrl:
          '${baseUrl}v_technicals_manuals_types?version_mode=eq.${versionMode}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiTechnicalsManualsTypes Group Code

/// Start apiUsers Group Code

class ApiUsersGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiUserByEmailCall apiUserByEmailCall = ApiUserByEmailCall();
  static ApiUsersAllCall apiUsersAllCall = ApiUsersAllCall();
  static ApiUsersByCompanyIdCall apiUsersByCompanyIdCall =
      ApiUsersByCompanyIdCall();
  static ApiUserByIdCall apiUserByIdCall = ApiUserByIdCall();
  static ApiUserByUuidCall apiUserByUuidCall = ApiUserByUuidCall();
  static ApiUsersLeadersByTeamIdCall apiUsersLeadersByTeamIdCall =
      ApiUsersLeadersByTeamIdCall();
  static ApiUsersByOVIdInProgressCall apiUsersByOVIdInProgressCall =
      ApiUsersByOVIdInProgressCall();
  static ApiUsersTeamsLeadersAllCall apiUsersTeamsLeadersAllCall =
      ApiUsersTeamsLeadersAllCall();
  static ApiUsersNotificationAmountUpdateCall
      apiUsersNotificationAmountUpdateCall =
      ApiUsersNotificationAmountUpdateCall();
  static ApiUsersByTeamIdCall apiUsersByTeamIdCall = ApiUsersByTeamIdCall();
  static ApiUsersByDepartmentIdCall apiUsersByDepartmentIdCall =
      ApiUsersByDepartmentIdCall();
  static ApiUserUpdateOVInProgressCloseCall apiUserUpdateOVInProgressCloseCall =
      ApiUserUpdateOVInProgressCloseCall();
  static XXapiUsersLeadersSearchFiltersInProgressCall
      xXapiUsersLeadersSearchFiltersInProgressCall =
      XXapiUsersLeadersSearchFiltersInProgressCall();
  static ApiUsersSearchByNameFullCall apiUsersSearchByNameFullCall =
      ApiUsersSearchByNameFullCall();
}

class ApiUserByEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUserByEmail',
      apiUrl: '${baseUrl}v_users?email=eq.${email}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersAll',
      apiUrl: '${baseUrl}v_users?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersByCompanyIdCall {
  Future<ApiCallResponse> call({
    int? companyId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersByCompanyId',
      apiUrl: '${baseUrl}v_users?company_id=eq.${companyId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUserByIdCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUserById',
      apiUrl: '${baseUrl}v_users?id=eq.${userId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUserByUuidCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUserByUuid',
      apiUrl: '${baseUrl}v_users?uuid=eq.${uuid}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersLeadersByTeamIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersLeadersByTeamId',
      apiUrl:
          '${baseUrl}/v_users?team_id=eq.${teamId}&is_team_leader=eq.true&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersByOVIdInProgressCall {
  Future<ApiCallResponse> call({
    int? ovIdInProgress,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersByOVIdInProgress',
      apiUrl:
          '${baseUrl}v_users?ov_id_in_progress=eq.${ovIdInProgress}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersTeamsLeadersAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersTeamsLeadersAll',
      apiUrl: '${baseUrl}v_teams_leaders?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersNotificationAmountUpdateCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? notificationAmount,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "notification_amount": ${notificationAmount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersNotificationAmountUpdate',
      apiUrl: '${baseUrl}users?id=eq.${userId}\'',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersByTeamIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersByTeamId',
      apiUrl:
          '${baseUrl}v_users?team_id=eq.${teamId}&status_id=eq.2&order=name_short&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersByDepartmentIdCall {
  Future<ApiCallResponse> call({
    int? departmentId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersByDepartmentId',
      apiUrl: '${baseUrl}v_users?department_id=eq.${departmentId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUserUpdateOVInProgressCloseCall {
  Future<ApiCallResponse> call({
    int? ovIdInProgress,
    int? oIdInProgress,
    int? opIdInProgress,
    int? ovInProgressLeaderId,
    bool? isAvailable,
    bool? isOvInProgress,
    int? oContractIdInProgress,
    int? oTypeIdInProgress,
    int? oTypeSubIdInProgress,
    int? oPlanIdInProgress,
    int? oAssetTagIdInProgress,
    int? oUnitIdInProgress,
    int? oSystemIdInProgress,
    int? oSystemParentIdInProgress,
    int? oUnitTypeIdInProgress,
    int? oUnitTypeParentIdInProgress,
    int? oObjectIdInProgress,
    int? userId,
    String? email = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${userId},
"email":"${email}",
  "ov_id_in_progress": ${ovIdInProgress},
  "o_id_in_progress": ${oIdInProgress},
  "op_id_in_progress": ${opIdInProgress},
  "ov_in_progress_leader_id": ${ovInProgressLeaderId},
  "is_available": ${isAvailable},
  "is_ov_in_progress": ${isOvInProgress},
  "o_contract_id_in_progress": ${oContractIdInProgress},
  "o_type_id_in_progress": ${oTypeIdInProgress},
  "o_type_sub_id_in_progress": ${oTypeSubIdInProgress},
  "o_plan_id_in_progress": ${oPlanIdInProgress},
  "o_asset_tag_id_in_progress": ${oAssetTagIdInProgress},
  "o_unit_id_in_progress": ${oUnitIdInProgress},
  "o_system_id_in_progress": ${oSystemIdInProgress},
  "o_system_parent_id_in_progress": ${oSystemParentIdInProgress},
  "o_unit_type_id_in_progress": ${oUnitTypeIdInProgress},
  "o_unit_type_parent_id_in_progress": ${oUnitTypeParentIdInProgress},
  "o_object_id_in_progress": ${oObjectIdInProgress}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUserUpdateOVInProgressClose',
      apiUrl: '${baseUrl}users?id=eq.${userId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class XXapiUsersLeadersSearchFiltersInProgressCall {
  Future<ApiCallResponse> call({
    List<int>? contractsIdsList,
    List<int>? ordersTypesIdsList,
    List<int>? unitsIdsList,
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? ordersObjectsIdsList,
    List<int>? ordersPlansIdsList,
    List<int>? unitsTypesIdsList,
    List<int>? ordersTypesSubsIdsList,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final contractsIds = _serializeList(contractsIdsList);
    final ordersTypesIds = _serializeList(ordersTypesIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final ordersObjectsIds = _serializeList(ordersObjectsIdsList);
    final ordersPlansIds = _serializeList(ordersPlansIdsList);
    final unitsTypesIds = _serializeList(unitsTypesIdsList);
    final ordersTypesSubsIds = _serializeList(ordersTypesSubsIdsList);

    final ffApiRequestBody = '''
{
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "units_types_ids": ${unitsTypesIds},
  "units_ids": ${unitsIds},
  "orders_types_ids": ${ordersTypesIds},
  "orders_types_subs_ids": ${ordersTypesSubsIds},
  "orders_objects_ids": ${ordersObjectsIds},
  "contracts_ids": ${contractsIds},
  "orders_plans_ids": ${ordersPlansIds}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'XXapiUsersLeadersSearchFiltersInProgress',
      apiUrl: '${baseUrl}rpc/fc_users_leaders_search_filters_in_progress',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersSearchByNameFullCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "search_terms": "${searchTerms}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersSearchByNameFull',
      apiUrl: '${baseUrl}rpc/fc_users_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiUsers Group Code

/// Start apiImports Group Code

class ApiImportsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiImportUsersAllCall apiImportUsersAllCall = ApiImportUsersAllCall();
  static ApiUserByIdCopyCall apiUserByIdCopyCall = ApiUserByIdCopyCall();
  static ApiUserByUuidCopyCall apiUserByUuidCopyCall = ApiUserByUuidCopyCall();
  static ApiUsersLeadersByTeamIdCopyCall apiUsersLeadersByTeamIdCopyCall =
      ApiUsersLeadersByTeamIdCopyCall();
  static ApiUsersByOVIdInProgressCopyCall apiUsersByOVIdInProgressCopyCall =
      ApiUsersByOVIdInProgressCopyCall();
  static ApiUsersTeamsLeadersAllCopyCall apiUsersTeamsLeadersAllCopyCall =
      ApiUsersTeamsLeadersAllCopyCall();
  static ApiUsersNotificationAmountUpdateCopyCall
      apiUsersNotificationAmountUpdateCopyCall =
      ApiUsersNotificationAmountUpdateCopyCall();
  static ApiUsersByTeamIdCopyCall apiUsersByTeamIdCopyCall =
      ApiUsersByTeamIdCopyCall();
  static ApiUserUpdateOVInProgressCloseCopyCall
      apiUserUpdateOVInProgressCloseCopyCall =
      ApiUserUpdateOVInProgressCloseCopyCall();
  static XXapiUsersLeadersSearchFiltersInProgressCopyCall
      xXapiUsersLeadersSearchFiltersInProgressCopyCall =
      XXapiUsersLeadersSearchFiltersInProgressCopyCall();
  static ApiUsersSearchByNameFullCopyCall apiUsersSearchByNameFullCopyCall =
      ApiUsersSearchByNameFullCopyCall();
}

class ApiImportUsersAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiImportUsersAll',
      apiUrl: '${baseUrl}import_users?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUserByIdCopyCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUserById Copy',
      apiUrl: '${baseUrl}v_users?id=eq.${userId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUserByUuidCopyCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUserByUuid Copy',
      apiUrl: '${baseUrl}v_users?uuid=eq.${uuid}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersLeadersByTeamIdCopyCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersLeadersByTeamId Copy',
      apiUrl:
          '${baseUrl}/v_users?team_id=eq.${teamId}&is_team_leader=eq.true&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersByOVIdInProgressCopyCall {
  Future<ApiCallResponse> call({
    int? ovIdInProgress,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersByOVIdInProgress Copy',
      apiUrl:
          '${baseUrl}v_users?ov_id_in_progress=eq.${ovIdInProgress}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersTeamsLeadersAllCopyCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersTeamsLeadersAll Copy',
      apiUrl: '${baseUrl}v_teams_leaders?&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersNotificationAmountUpdateCopyCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? notificationAmount,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "notification_amount": ${notificationAmount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersNotificationAmountUpdate Copy',
      apiUrl: '${baseUrl}users?id=eq.${userId}\'',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersByTeamIdCopyCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersByTeamId Copy',
      apiUrl:
          '${baseUrl}v_users?team_id=eq.${teamId}&status_id=eq.2&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUserUpdateOVInProgressCloseCopyCall {
  Future<ApiCallResponse> call({
    int? ovIdInProgress,
    int? oIdInProgress,
    int? opIdInProgress,
    int? ovInProgressLeaderId,
    bool? isAvailable,
    bool? isOvInProgress,
    int? oContractIdInProgress,
    int? oTypeIdInProgress,
    int? oTypeSubIdInProgress,
    int? oPlanIdInProgress,
    int? oAssetTagIdInProgress,
    int? oUnitIdInProgress,
    int? oSystemIdInProgress,
    int? oSystemParentIdInProgress,
    int? oUnitTypeIdInProgress,
    int? oUnitTypeParentIdInProgress,
    int? oObjectIdInProgress,
    int? userId,
    String? email = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "id": ${userId},
"email":"${email}",
  "ov_id_in_progress": ${ovIdInProgress},
  "o_id_in_progress": ${oIdInProgress},
  "op_id_in_progress": ${opIdInProgress},
  "ov_in_progress_leader_id": ${ovInProgressLeaderId},
  "is_available": ${isAvailable},
  "is_ov_in_progress": ${isOvInProgress},
  "o_contract_id_in_progress": ${oContractIdInProgress},
  "o_type_id_in_progress": ${oTypeIdInProgress},
  "o_type_sub_id_in_progress": ${oTypeSubIdInProgress},
  "o_plan_id_in_progress": ${oPlanIdInProgress},
  "o_asset_tag_id_in_progress": ${oAssetTagIdInProgress},
  "o_unit_id_in_progress": ${oUnitIdInProgress},
  "o_system_id_in_progress": ${oSystemIdInProgress},
  "o_system_parent_id_in_progress": ${oSystemParentIdInProgress},
  "o_unit_type_id_in_progress": ${oUnitTypeIdInProgress},
  "o_unit_type_parent_id_in_progress": ${oUnitTypeParentIdInProgress},
  "o_object_id_in_progress": ${oObjectIdInProgress}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUserUpdateOVInProgressClose Copy',
      apiUrl: '${baseUrl}users?id=eq.${userId}',
      callType: ApiCallType.PUT,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class XXapiUsersLeadersSearchFiltersInProgressCopyCall {
  Future<ApiCallResponse> call({
    List<int>? contractsIdsList,
    List<int>? ordersTypesIdsList,
    List<int>? unitsIdsList,
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? ordersObjectsIdsList,
    List<int>? ordersPlansIdsList,
    List<int>? unitsTypesIdsList,
    List<int>? ordersTypesSubsIdsList,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );
    final contractsIds = _serializeList(contractsIdsList);
    final ordersTypesIds = _serializeList(ordersTypesIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final ordersObjectsIds = _serializeList(ordersObjectsIdsList);
    final ordersPlansIds = _serializeList(ordersPlansIdsList);
    final unitsTypesIds = _serializeList(unitsTypesIdsList);
    final ordersTypesSubsIds = _serializeList(ordersTypesSubsIdsList);

    final ffApiRequestBody = '''
{
  "systems_parents_ids": ${systemsParentsIds},
  "systems_ids": ${systemsIds},
  "units_types_parents_ids": ${unitsTypesParentsIds},
  "units_types_ids": ${unitsTypesIds},
  "units_ids": ${unitsIds},
  "orders_types_ids": ${ordersTypesIds},
  "orders_types_subs_ids": ${ordersTypesSubsIds},
  "orders_objects_ids": ${ordersObjectsIds},
  "contracts_ids": ${contractsIds},
  "orders_plans_ids": ${ordersPlansIds}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'XXapiUsersLeadersSearchFiltersInProgress Copy',
      apiUrl: '${baseUrl}rpc/fc_users_leaders_search_filters_in_progress',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUsersSearchByNameFullCopyCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiImportsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "search_terms": "${searchTerms}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiUsersSearchByNameFull Copy',
      apiUrl: '${baseUrl}rpc/fc_users_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiImports Group Code

/// Start apiUsersNotifications Group Code

class ApiUsersNotificationsGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiNotificationsByUserIdCall apiNotificationsByUserIdCall =
      ApiNotificationsByUserIdCall();
  static ApiDeleteNotificationByIdCall apiDeleteNotificationByIdCall =
      ApiDeleteNotificationByIdCall();
  static ApiCreateNotificationCall apiCreateNotificationCall =
      ApiCreateNotificationCall();
}

class ApiNotificationsByUserIdCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersNotificationsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiNotificationsByUserId',
      apiUrl:
          '${baseUrl}v_users_notifications?user_id_to=eq.${userId}&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiDeleteNotificationByIdCall {
  Future<ApiCallResponse> call({
    int? notificationId,
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersNotificationsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiDeleteNotificationById',
      apiUrl: '${baseUrl}users_notifications?id=eq.${notificationId}',
      callType: ApiCallType.DELETE,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCreateNotificationCall {
  Future<ApiCallResponse> call({
    int? userIdTo,
    int? userIdFrom,
    String? userFromNameShort = '',
    String? tokenFcm = '',
    int? companyId,
    int? oId,
    String? type = '',
    String? title = '',
    String? body = '',
    String? createdAt = '',
    String? imgUrl = '',
    String? pageTarget = '',
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiUsersNotificationsGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "created_at": "${createdAt}",
  "user_id_to": ${userIdTo},
  "user_id_from": ${userIdFrom},
  "title": "${title}",
  "body": "${body}",
  "type": "${type}",
  "o_id": ${oId},
  "company_id": ${companyId},
  "token_fcm": "${tokenFcm}",
  "user_from_name_short": "${userFromNameShort}",
  "img_url": "${imgUrl}",
  "page_target": "${pageTarget}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCreateNotification',
      apiUrl: '${baseUrl}users_notifications',
      callType: ApiCallType.POST,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiUsersNotifications Group Code

/// Start apiVehicles Group Code

class ApiVehiclesGroup {
  static String getBaseUrl({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}/rest/v1/';
  }

  static Map<String, String> headers = {
    'apiKey': '[api_key]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static ApiVehiclesAllCall apiVehiclesAllCall = ApiVehiclesAllCall();
}

class ApiVehiclesAllCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? accessToken,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    accessToken ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiVehiclesGroup.getBaseUrl(
      apiKey: apiKey,
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiVehiclesAll',
      apiUrl: '${baseUrl}v_vehicles?select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiVehicles Group Code

/// Start apiAuth Group Code

class ApiAuthGroup {
  static String getBaseUrl({
    String? apiKey,
    String? apiUrl,
  }) {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    return '${apiUrl}';
  }

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'apiKey': '[api_key]',
  };
  static ApiAuthSigninCall apiAuthSigninCall = ApiAuthSigninCall();
  static ApiAuthSignupCall apiAuthSignupCall = ApiAuthSignupCall();
  static ApiAuthLogoutCall apiAuthLogoutCall = ApiAuthLogoutCall();
  static ApiAuthRefreshTokenCall apiAuthRefreshTokenCall =
      ApiAuthRefreshTokenCall();
  static ApiAuthRecoverPasswordCall apiAuthRecoverPasswordCall =
      ApiAuthRecoverPasswordCall();
  static ApiAuthPasswordUpdateCall apiAuthPasswordUpdateCall =
      ApiAuthPasswordUpdateCall();
}

class ApiAuthSigninCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? apiKey,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAuthGroup.getBaseUrl(
      apiKey: apiKey,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAuthSignin',
      apiUrl: '${baseUrl}/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey': '${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? tokenAccess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  int? tokenExpiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_in''',
      ));
  int? tokenExpiresAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_at''',
      ));
  String? tokenRefresh(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
}

class ApiAuthSignupCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? apiKey,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAuthGroup.getBaseUrl(
      apiKey: apiKey,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAuthSignup',
      apiUrl: '${baseUrl}auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey': '${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? tokenExpiresAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_at''',
      ));
  int? tokenExpiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_in''',
      ));
  String? tokenRefresh(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  String? userUuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? tokenAccess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class ApiAuthLogoutCall {
  Future<ApiCallResponse> call({
    String? tokenAccess = '',
    String? apiKey,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAuthGroup.getBaseUrl(
      apiKey: apiKey,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "email": "<email>",
  "password": "<password>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAuthLogout',
      apiUrl: '${baseUrl}auth/v1/logout',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey': '${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiAuthRefreshTokenCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? accessToken = '',
    String? apiKey,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAuthGroup.getBaseUrl(
      apiKey: apiKey,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "uuid": "${uuid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAuthRefreshToken',
      apiUrl: '${baseUrl}/rest/v1/rpc/fc_refresh_token_by_user_id',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? tokenAccess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  int? tokenExpiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_in''',
      ));
  int? tokenExpiresAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_at''',
      ));
  String? tokenRefresh(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
}

class ApiAuthRecoverPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? apiKey,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAuthGroup.getBaseUrl(
      apiKey: apiKey,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAuthRecoverPassword',
      apiUrl: '${baseUrl}/auth/v1/recover',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey': '${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiAuthPasswordUpdateCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? accessToken = '',
    String? apiKey,
    String? apiUrl,
  }) async {
    apiKey ??= FFDevEnvironmentValues().envApiKey;
    apiUrl ??= FFDevEnvironmentValues().envApiUrl;
    final baseUrl = ApiAuthGroup.getBaseUrl(
      apiKey: apiKey,
      apiUrl: apiUrl,
    );

    final ffApiRequestBody = '''
{
  "email": "<email>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAuthPasswordUpdate',
      apiUrl: '${baseUrl}/auth/v1/user',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey': '${apiKey}',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiAuth Group Code

/// Start apiStorage Group Code

class ApiStorageGroup {
  static String getBaseUrl({
    String? accessKey,
    String? secretKey,
    String? storageUrl,
    String? storageBucket,
  }) {
    accessKey ??= FFDevEnvironmentValues().envStorageAccessKey;
    secretKey ??= FFDevEnvironmentValues().envStorageSecretKey;
    storageUrl ??= FFDevEnvironmentValues().envStorageUrl;
    storageBucket ??= FFDevEnvironmentValues().envStorageBucket;
    return '${storageUrl}/${storageBucket}';
  }

  static Map<String, String> headers = {
    'x-amz-access-id': '[access_key]',
    'x-amz-secret': '[secret_key]',
    'Content-Type': 'application/octet-stream',
  };
  static ApiStorageUploadCall apiStorageUploadCall = ApiStorageUploadCall();
  static ApiStorageDeleteCall apiStorageDeleteCall = ApiStorageDeleteCall();
}

class ApiStorageUploadCall {
  Future<ApiCallResponse> call({
    String? filePath = '',
    String? fileName = '',
    FFUploadedFile? fileUploaded,
    String? accessKey,
    String? secretKey,
    String? storageUrl,
    String? storageBucket,
  }) async {
    accessKey ??= FFDevEnvironmentValues().envStorageAccessKey;
    secretKey ??= FFDevEnvironmentValues().envStorageSecretKey;
    storageUrl ??= FFDevEnvironmentValues().envStorageUrl;
    storageBucket ??= FFDevEnvironmentValues().envStorageBucket;
    final baseUrl = ApiStorageGroup.getBaseUrl(
      accessKey: accessKey,
      secretKey: secretKey,
      storageUrl: storageUrl,
      storageBucket: storageBucket,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiStorageUpload',
      apiUrl: '${baseUrl}/${filePath}/${fileName}',
      callType: ApiCallType.PUT,
      headers: {
        'x-amz-access-id': '${accessKey}',
        'x-amz-secret': '${secretKey}',
        'Content-Type': 'application/octet-stream',
      },
      params: {
        'file': fileUploaded,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiStorageDeleteCall {
  Future<ApiCallResponse> call({
    String? filePath = '',
    String? fileName = '',
    String? accessKey,
    String? secretKey,
    String? storageUrl,
    String? storageBucket,
  }) async {
    accessKey ??= FFDevEnvironmentValues().envStorageAccessKey;
    secretKey ??= FFDevEnvironmentValues().envStorageSecretKey;
    storageUrl ??= FFDevEnvironmentValues().envStorageUrl;
    storageBucket ??= FFDevEnvironmentValues().envStorageBucket;
    final baseUrl = ApiStorageGroup.getBaseUrl(
      accessKey: accessKey,
      secretKey: secretKey,
      storageUrl: storageUrl,
      storageBucket: storageBucket,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiStorageDelete',
      apiUrl: '${baseUrl}/${filePath}/${fileName}',
      callType: ApiCallType.DELETE,
      headers: {
        'x-amz-access-id': '${accessKey}',
        'x-amz-secret': '${secretKey}',
        'Content-Type': 'application/octet-stream',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiStorage Group Code

/// Start apiFaceDetection Group Code

class ApiFaceDetectionGroup {
  static String getBaseUrl() => 'https://face-detection13.p.rapidapi.com/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'X-RapidAPI-Key': '7bff578209msh36bf7ee646c8496p1cb1a9jsne6dca85cae02',
    'X-RapidAPI-Host': 'face-detection13.p.rapidapi.com',
  };
  static ApiFaceDetectionCall apiFaceDetectionCall = ApiFaceDetectionCall();
}

class ApiFaceDetectionCall {
  Future<ApiCallResponse> call({
    String? fileUrl = '',
  }) async {
    final baseUrl = ApiFaceDetectionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "url": "${fileUrl}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiFaceDetection',
      apiUrl: '${baseUrl}face-detection',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-RapidAPI-Key': '7bff578209msh36bf7ee646c8496p1cb1a9jsne6dca85cae02',
        'X-RapidAPI-Host': 'face-detection13.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic probability(dynamic response) => getJsonField(
        response,
        r'''$[:].probability''',
      );
}

/// End apiFaceDetection Group Code

/// Start apiNEightN Group Code

class ApiNEightNGroup {
  static String getBaseUrl() =>
      'https://automacao-n8n.n4rbtj.easypanel.host/webhook';
  static Map<String, String> headers = {};
  static ApiRecoveryPasswordSendEmailCall apiRecoveryPasswordSendEmailCall =
      ApiRecoveryPasswordSendEmailCall();
}

class ApiRecoveryPasswordSendEmailCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? email = '',
  }) async {
    final baseUrl = ApiNEightNGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "${escapeStringForJson(uuid)}",
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiRecoveryPasswordSendEmail',
      apiUrl: '${baseUrl}/recovery_password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiNEightN Group Code

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

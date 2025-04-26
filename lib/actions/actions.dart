import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/md_o_v_to_approve/md_o_v_to_approve_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

Future abAppOfflineUpdatesTablesCompanies(
  BuildContext context, {
  bool? abIsAvailable,
}) async {
  ApiCallResponse? resCompanies;

  resCompanies = await ApiCompaniesGroup.apiCompaniesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: FFDevEnvironmentValues().envApiKey,
    apiUrl: FFDevEnvironmentValues().envApiUrl,
  );

  if ((resCompanies.succeeded ?? true)) {
    FFAppState().stOfflineCompanies = ((resCompanies.jsonBody ?? '')
            .toList()
            .map<DtCompanyStruct?>(DtCompanyStruct.maybeFromMap)
            .toList() as Iterable<DtCompanyStruct?>)
        .withoutNulls
        .toList()
        .cast<DtCompanyStruct>();
    FFAppState().update(() {});
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text((resCompanies?.exceptionMessage ?? '')),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível sincronizar as Empresas.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abCompanySelected(
  BuildContext context, {
  DtCompanyStruct? abCompanyDt,
  int? abCompanyId,
}) async {
  ApiCallResponse? resCompanySelected;

  if (abCompanyDt != null) {
    FFAppState().stCompanySelected = abCompanyDt;
    FFAppState().update(() {});
  } else {
    resCompanySelected = await ApiCompaniesGroup.apiCompanyByIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: FFDevEnvironmentValues().envApiKey,
      companyId: abCompanyId,
    );

    if ((resCompanySelected.succeeded ?? true)) {
      FFAppState().stCompanySelected = ((resCompanySelected.jsonBody ?? '')
              .toList()
              .map<DtCompanyStruct?>(DtCompanyStruct.maybeFromMap)
              .toList() as Iterable<DtCompanyStruct?>)
          .withoutNulls
          .firstOrNull!;
      FFAppState().update(() {});
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Ops ..'),
            content: Text('Ocorreu um erro (AbCompanySelected)'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }
}

Future abAppOfflineUpdatesTablesTeams(BuildContext context) async {
  ApiCallResponse? resTeams;

  resTeams = await ApiTeamsGroup.apiTeamsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    apiUrl: FFDevEnvironmentValues().envApiUrl,
  );

  if ((resTeams.succeeded ?? true)) {
    FFAppState().stOfflineTeams = ((resTeams.jsonBody ?? '')
            .toList()
            .map<DtTeamStruct?>(DtTeamStruct.maybeFromMap)
            .toList() as Iterable<DtTeamStruct?>)
        .withoutNulls
        .toList()
        .cast<DtTeamStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível sincronizar as Empresas.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abUserUpdate(
  BuildContext context, {
  required String? abEmail,
}) async {
  ApiCallResponse? resUserCurrent;
  ApiCallResponse? resUserPermissions;

  resUserCurrent = await ApiUsersGroup.apiUserByEmailCall.call(
    email: abEmail,
  );

  if ((resUserCurrent.succeeded ?? true)) {
    FFAppState().stUserCurrent = ((resUserCurrent.jsonBody ?? '')
            .toList()
            .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
            .toList() as Iterable<DtUserStruct?>)
        .withoutNulls
        .firstOrNull!;
    FFAppState().update(() {});
    if (!FFAppState().stUserCurrent.isAdminSuper) {
      if (FFAppState().stUserCurrent.companyIsAvailable) {
        await Future.wait([
          Future(() async {
            resUserPermissions = await ApiProfilesPermissionsGroup
                .apiPermissionsByProfileIdCall
                .call(
              apiKey: FFDevEnvironmentValues().envApiKey,
              accessToken: currentJwtToken,
              profileId: FFAppState().stUserCurrent.profileId,
            );

            if ((resUserPermissions?.succeeded ?? true)) {
              FFAppState().stPermissions =
                  ((resUserPermissions?.jsonBody ?? '')
                          .toList()
                          .map<DtPermissionStruct?>(
                              DtPermissionStruct.maybeFromMap)
                          .toList() as Iterable<DtPermissionStruct?>)
                      .withoutNulls
                      .toList()
                      .cast<DtPermissionStruct>();
              FFAppState().update(() {});
            } else {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Ops ...'),
                    content: Text('Permissões de acesso NÃO localizados.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text('Ok'),
                      ),
                    ],
                  );
                },
              );
              return;
            }
          }),
          Future(() async {
            await action_blocks.abUserCurrentTeam(
              context,
              abDtUser: FFAppState().stUserCurrent,
            );
          }),
        ]);
            } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'A sua Empresa encontra-se Indisponível.',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).info,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        return;
      }
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('22'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possivel identificar você.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).primaryBtnText,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future<bool> abGuardian(
  BuildContext context, {
  int? abPgRequestedId,
}) async {
  if (FFAppState().stUserCurrent.isAdminSuper) {
    return true;
  }

  if (abPgRequestedId == 0) {
    return true;
  }

  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = FFAppState().stPermissions.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    if (FFAppState()
            .stPermissions
            .elementAtOrNull(FFAppState().stCounterLoop)
            ?.appPageId ==
        abPgRequestedId) {
      return true;
    }
    FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
  }
  return false;
}

Future abUnitSelected(
  BuildContext context, {
  int? abUnitId,
  DtUnitStruct? abUnitDt,
}) async {
  ApiCallResponse? resUnitSelected;

  FFAppState().stUnitSelected = DtUnitStruct();
  if (abUnitDt != null) {
    FFAppState().stUnitSelected = abUnitDt;
  } else {
    FFAppState().stUnitSelected = FFAppState()
        .stOfflineUnits
        .where((e) => e.id == abUnitId)
        .toList()
        .firstOrNull!;
    if (!(FFAppState().stUnitSelected != null)) {
      resUnitSelected = await ApiUnitsGroup.apiUnitByIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        unitId: abUnitId,
      );

      if ((resUnitSelected.succeeded ?? true)) {
        FFAppState().stUnitSelected =
            DtUnitStruct.maybeFromMap((resUnitSelected.jsonBody ?? ''))!;
        FFAppState().update(() {});
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ops ..'),
              content: Text('Ocorreu um erro (AbUnitSelected)'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return;
      }
    }
  }
}

Future abAppOfflineUpdatesTablesUnitsTypes(BuildContext context) async {
  ApiCallResponse? resUnitsTypes;

  resUnitsTypes = await ApiUnitsTypesGroup.apiUnitsTypesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resUnitsTypes.succeeded ?? true)) {
    FFAppState().stOfflineUnitsTypes = ((resUnitsTypes.jsonBody ?? '')
            .toList()
            .map<DtUnitTypeStruct?>(DtUnitTypeStruct.maybeFromMap)
            .toList() as Iterable<DtUnitTypeStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUnitTypeStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia UnitTypes',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesUnitsTypesParent(BuildContext context) async {
  ApiCallResponse? resUnitsTypesParent;

  resUnitsTypesParent =
      await ApiUnitsTypesParentGroup.apiUnitsTypesParentAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resUnitsTypesParent.succeeded ?? true)) {
    FFAppState().stOfflineUnitsTypesParent =
        ((resUnitsTypesParent.jsonBody ?? '')
                .toList()
                .map<DtUnitTypeStruct?>(DtUnitTypeStruct.maybeFromMap)
                .toList() as Iterable<DtUnitTypeStruct?>)
            .withoutNulls
            .toList()
            .cast<DtUnitTypeStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia UnitTypesParent',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesSystems(BuildContext context) async {
  ApiCallResponse? resSystems;

  resSystems = await ApiSystemsGroup.apiSystemsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resSystems.succeeded ?? true)) {
    FFAppState().stOfflineSystems = ((resSystems.jsonBody ?? '')
            .toList()
            .map<DtSystemStruct?>(DtSystemStruct.maybeFromMap)
            .toList() as Iterable<DtSystemStruct?>)
        .withoutNulls
        .toList()
        .cast<DtSystemStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia Systems',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesSystemsParent(BuildContext context) async {
  ApiCallResponse? resSystemsParent;

  resSystemsParent = await ApiSystemsParentGroup.apiSystemsParentAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resSystemsParent.succeeded ?? true)) {
    FFAppState().stOfflineSystemsParent = ((resSystemsParent.jsonBody ?? '')
            .toList()
            .map<DtSystemStruct?>(DtSystemStruct.maybeFromMap)
            .toList() as Iterable<DtSystemStruct?>)
        .withoutNulls
        .toList()
        .cast<DtSystemStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia SystemsParent',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTables(
  BuildContext context, {
  required String? abTableName,
}) async {
  if (abTableName == 'units') {
    await action_blocks.abAppOfflineUpdatesTablesUnits(context);
  } else if (abTableName == 'systems') {
    await action_blocks.abAppOfflineUpdatesTablesSystemsParent(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Sistemas atualizados: ${valueOrDefault<String>(
            FFAppState().stOfflineSystemsParent.length.toString(),
            '0',
          )}',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
      ),
    );
    await action_blocks.abAppOfflineUpdatesTablesSystems(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Sub-sistemas atualizados: ${valueOrDefault<String>(
            FFAppState().stOfflineSystems.length.toString(),
            '0',
          )}',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
      ),
    );
  } else if (abTableName == 'units_types') {
    await action_blocks.abAppOfflineUpdatesTablesUnitsTypes(context);
    await action_blocks.abAppOfflineUpdatesTablesUnitsTypesParent(context);
  } else if (abTableName == 'assets_tags') {
    await action_blocks.abAppOfflineUpdatesTablesAssetsTags(context);
  } else if (abTableName == 'assets_tags_subs') {
    await action_blocks.abAppOfflineUpdatesTablesAssetsTagsSubs(context);
  } else if (abTableName == 'assets_statuses') {
    await action_blocks.abAppOfflineUpdatesTablesAssetsStatuses(context);
  } else if (abTableName == 'assets_types') {
    await action_blocks.abAppOfflineUpdatesTablesAssetsTypes(context);
  } else if (abTableName == 'assets_priorities') {
    await action_blocks.abAppOfflineUpdatesTablesAssetsPriorities(context);
  } else if (abTableName == 'orders_priorities') {
    await action_blocks.abAppOfflineUpdatesTablesOPriorities(context);
  } else if (abTableName == 'orders_types') {
    await action_blocks.abAppOfflineUpdatesTablesOTypes(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Tipos OS\'s atualizadas: ${valueOrDefault<String>(
            FFAppState().stOfflineOTypes.length.toString(),
            '0',
          )}',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
      ),
    );
  } else if (abTableName == 'orders_types_subs') {
    await action_blocks.abAppOfflineUpdatesTablesOTypesSubs(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Espécies OS\'s atualizadas: ${valueOrDefault<String>(
            FFAppState().stOfflineOTypesSubs.length.toString(),
            '0',
          )}',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
      ),
    );
  } else if (abTableName == 'orders_objects') {
    await action_blocks.abAppOfflineUpdatesTablesOObjects(context);
  } else if (abTableName == 'contracts') {
    await action_blocks.abAppOfflineUpdatesTablesContracts(context);
  } else if (abTableName == 'orders_plans') {
    await action_blocks.abAppOfflineUpdatesTablesOPlans(context);
  } else if (abTableName == 'orders_statuses') {
    await action_blocks.abAppOfflineUpdatesTablesOStatuses(context);
  } else if (abTableName == 'teams_leaders') {
    await action_blocks.abAppOfflineUpdatesTablesTeamsLeaders(context);
  } else if (abTableName == 'units_statuses') {
    await action_blocks.abAppOfflineUpdatesTablesUnitsStatuses(context);
  } else if (abTableName == 'teams') {
    await action_blocks.abAppOfflineUpdatesTablesTeams(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Equipes atualizadas: ${valueOrDefault<String>(
            FFAppState().stOfflineTeams.length.toString(),
            '0',
          )}',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
      ),
    );
  } else if (abTableName == 'orders_suspended_reasons') {
    await action_blocks.abAppOfflineUpdatesTablesOSuspendedReasons(context);
  } else if (abTableName == 'vehicles') {
    await action_blocks.abAppOfflineUpdatesTablesVehicles(context);
  } else if (abTableName == 'departments') {
    await action_blocks.abAppOfflineUpdatesTablesDepartments(context);
  } else if (abTableName == 'profiles') {
    await action_blocks.abAppOfflineUpdatesTablesProfiles(context);
  } else if (abTableName == 'app_pages') {
    await action_blocks.abAppOfflineUpdatesTablesAppPages(context);
  } else if (abTableName == 'orders_types_activities') {
    await action_blocks.abAppOfflineUpdatesTablesOTypesActivities(context);
  } else if (abTableName == 'orders_causes_reasons') {
    await action_blocks.abAppOfflineUpdatesTablesOCausesReasons(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Motivos atualizados: ${valueOrDefault<String>(
            FFAppState().stOfflineOCausesReasons.length.toString(),
            '0',
          )}',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
      ),
    );
  } else if (abTableName == 'assets_couplings_models') {
    await action_blocks.abAppOfflineUpdatesTablesAssetsCouplingsModels(context);
  } else if (abTableName == 'tm_types') {
    await action_blocks.abAppOfflineUpdatesTablesTMTypes(context);
  } else if (abTableName == 'orders_cancel_reasons') {
    await action_blocks.abAppOfflineUpdatesTablesOCancelReasons(context);
  }
}

Future abAssetSelected(
  BuildContext context, {
  DtAssetStruct? abAssetDt,
  int? abAssetId,
}) async {
  ApiCallResponse? resAssetSelected;

  if (abAssetDt != null) {
    FFAppState().stAssetSelected = abAssetDt;
    FFAppState().update(() {});
    FFAppState().updateStAssetSelectedStruct(
      (e) => e
        ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
            FFAppState().stAssetSelected.statusAt)
        ..acquisitionDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
            FFAppState().stAssetSelected.acquisitionAt),
    );
    FFAppState().update(() {});
  } else {
    resAssetSelected = await ApiAssetsGroup.apiAssetByIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      assetId: abAssetId,
      versionMode: FFAppState().stAppVersionMode?.name,
    );

    if ((resAssetSelected.succeeded ?? true)) {
      FFAppState().stAssetSelected = ((resAssetSelected.jsonBody ?? '')
              .toList()
              .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
              .toList() as Iterable<DtAssetStruct?>)
          .withoutNulls
          .firstOrNull!;
      FFAppState().update(() {});
      FFAppState().updateStAssetSelectedStruct(
        (e) => e
          ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState().stAssetSelected.statusAt)
          ..acquisitionDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState().stAssetSelected.acquisitionAt),
      );
      FFAppState().update(() {});
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Ops ..'),
            content: Text('Ocorreu um erro (AbAssetSelected)'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }
}

Future xabAssetsFollowing(
  BuildContext context, {
  required int? abUserId,
  required int? abAssetId,
  String? abOperation,
}) async {
  ApiCallResponse? resAssetsFollowing;

  if (abOperation == 'create') {
    await ApiAssetsFollowersGroup.xapiAssetsFollowingCreateCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      assetId: abAssetId,
      userId: abUserId,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ativo adicionado aos favoritos.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).primaryBtnText,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).success,
      ),
    );
  } else {
    if (abOperation == 'delete') {
      await ApiAssetsFollowersGroup.apiAssetsFollowingDeleteCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        userId: abUserId,
        assetId: abAssetId,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Ativo removido dos favoritos.',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryBtnText,
            ),
          ),
          duration: Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
  }

  resAssetsFollowing =
      await ApiAssetsFollowersGroup.apiAssetsByFollowerCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    userId: abUserId,
  );

  if ((resAssetsFollowing.succeeded ?? true)) {
    FFAppState().XstAssetsFollowing = ((resAssetsFollowing.jsonBody ?? '')
            .toList()
            .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
            .toList() as Iterable<DtAssetStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Erro abAssetsFollowing',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).primaryBtnText,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abVersionOfflineUpdates(
  BuildContext context, {
  required String? tableName,
  required String? versionOffline,
}) async {
  List<CfgAppOfflineUpdatesRow>? resAppOfflineUpdatedTable;

  await CfgAppOfflineUpdatesTable().update(
    data: {
      'version_offline': versionOffline,
    },
    matchingRows: (rows) => rows.eqOrNull(
      'table_name',
      tableName,
    ),
  );
}

Future abAppOfflineUpdatesCheck(BuildContext context) async {
  ApiCallResponse? resAppOfflineUpdatesServer;

  resAppOfflineUpdatesServer =
      await ApiAppGroup.apiAppOfflineUpdatesAllCall.call(
    accessToken: currentJwtToken,
    appId: 1,
  );

  FFAppState()
      .stAppOfflineUpdatesServer = ((resAppOfflineUpdatesServer.jsonBody ?? '')
          .toList()
          .map<DtAppOfflineUpdateStruct?>(DtAppOfflineUpdateStruct.maybeFromMap)
          .toList() as Iterable<DtAppOfflineUpdateStruct?>)
      .withoutNulls
      .toList()
      .cast<DtAppOfflineUpdateStruct>();
  FFAppState().update(() {});
  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal =
      FFAppState().stAppOfflineUpdatesServer.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    if (functions.cfContainInList(
        FFAppState().stAppOfflineUpdatesUser.map((e) => e.id).toList().toList(),
        FFAppState()
            .stAppOfflineUpdatesServer
            .elementAtOrNull(FFAppState().stCounterLoop)!
            .id)!) {
      if (FFAppState()
              .stAppOfflineUpdatesUser
              .where((e) =>
                  e.versionOffline ==
                  FFAppState()
                      .stAppOfflineUpdatesServer
                      .elementAtOrNull(FFAppState().stCounterLoop)
                      ?.versionOffline)
              .toList()
              .length !=
          1) {
        await action_blocks.abAppOfflineUpdatesTables(
          context,
          abTableName: FFAppState()
              .stAppOfflineUpdatesServer
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.tableName,
        );
        FFAppState().updateStAppOfflineUpdatesUserAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..versionOffline = FFAppState()
                .stAppOfflineUpdatesServer
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.versionOffline,
        );
      }
    } else {
      FFAppState().insertAtIndexInStAppOfflineUpdatesUser(
          FFAppState().stCounterLoop,
          FFAppState()
              .stAppOfflineUpdatesServer
              .elementAtOrNull(FFAppState().stCounterLoop)!);
      await action_blocks.abAppOfflineUpdatesTables(
        context,
        abTableName: FFAppState()
            .stAppOfflineUpdatesServer
            .elementAtOrNull(FFAppState().stCounterLoop)
            ?.tableName,
      );
    }

    FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
  }
}

Future abAppOfflineUpdatesTablesUnits(BuildContext context) async {
  ApiCallResponse? resUnits;

  resUnits = await ApiUnitsGroup.apiUnitsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  if ((resUnits.succeeded ?? true)) {
    FFAppState().stOfflineUnits = ((resUnits.jsonBody ?? '')
            .toList()
            .map<DtUnitStruct?>(DtUnitStruct.maybeFromMap)
            .toList() as Iterable<DtUnitStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUnitStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia Units',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAuthSignOut(BuildContext context) async {
  // appOfflineUpdates
  FFAppState().stAppOfflineUpdatesUser = [];
  FFAppState().update(() {});
  FFAppState().stFiltersServices = DtFiltersServicesStruct();
  FFAppState().update(() {});
}

Future abAppOfflineUpdatesTablesAssetsTags(BuildContext context) async {
  ApiCallResponse? resAssetsTags;

  resAssetsTags = await ApiAssetsTagsGroup.apiAssetsTagsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resAssetsTags.succeeded ?? true)) {
    FFAppState().stOfflineAssetsTags = ((resAssetsTags.jsonBody ?? '')
            .toList()
            .map<DtAssetTagStruct?>(DtAssetTagStruct.maybeFromMap)
            .toList() as Iterable<DtAssetTagStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetTagStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia AssetsTags',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesAssetsTagsSubs(BuildContext context) async {
  ApiCallResponse? resAssetsTagsSubs;

  resAssetsTagsSubs =
      await ApiAssetsTagsSubsGroup.apiAssetsTagsSubsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resAssetsTagsSubs.succeeded ?? true)) {
    FFAppState().stOfflineAssetsTagsSubs = ((resAssetsTagsSubs.jsonBody ?? '')
            .toList()
            .map<DtAssetTagSubStruct?>(DtAssetTagSubStruct.maybeFromMap)
            .toList() as Iterable<DtAssetTagSubStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetTagSubStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia AssetsTagsSubs',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesAssetsStatuses(BuildContext context) async {
  ApiCallResponse? resAssetsStatuses;

  resAssetsStatuses =
      await ApiAssetsStatusesGroup.apiAssetsStatusesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resAssetsStatuses.succeeded ?? true)) {
    FFAppState().stOfflineAssetsStatuses = ((resAssetsStatuses.jsonBody ?? '')
            .toList()
            .map<DtAssetStatusStruct?>(DtAssetStatusStruct.maybeFromMap)
            .toList() as Iterable<DtAssetStatusStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetStatusStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia AssetsStatuses',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesAssetsTypes(BuildContext context) async {
  ApiCallResponse? resAssetsTypes;

  resAssetsTypes = await ApiAssetsTypesGroup.apiAssetsTypesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resAssetsTypes.succeeded ?? true)) {
    FFAppState().stOfflineAssetsTypes = ((resAssetsTypes.jsonBody ?? '')
            .toList()
            .map<DtAssetTypeStruct?>(DtAssetTypeStruct.maybeFromMap)
            .toList() as Iterable<DtAssetTypeStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetTypeStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível sincronizar AssetsTypes.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAssetsSearchFilters(
  BuildContext context, {
  List<int>? abUnits,
  List<int>? abStatuses,
  List<int>? abTags,
  List<int>? abTagsSubs,
  required String? abSearchTerms,
  required List<int>? abTypes,
  required int? abLimit,
  required int? abOffset,
}) async {
  ApiCallResponse? resAssets;

  FFAppState().stAssetsSearchResults = [];
  FFAppState().update(() {});
  if (abTypes?.length == 1) {
    resAssets = await ApiAssetsGroup.apiAssetsSearchFiltersCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      searchTerms: abSearchTerms,
      unitsIdsList: abUnits,
      statusesIdsList: abStatuses,
      tagsIdsList: abTags,
      tagsSubsIdsList: abTagsSubs,
      typesIdsList: abTypes,
      versionMode: FFAppState().stAppVersionMode?.name,
      limit: abLimit,
      offset: abOffset,
    );

    if ((resAssets.succeeded ?? true)) {
      FFAppState().stAssetsSearchResults = ((resAssets.jsonBody ?? '')
              .toList()
              .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
              .toList() as Iterable<DtAssetStruct?>)
          .withoutNulls
          .toList()
          .cast<DtAssetStruct>();
      FFAppState().stCounterLoop = 0;
      FFAppState().stCounterLoopFinal =
          FFAppState().stAssetsSearchResults.length;
      FFAppState().update(() {});
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text(FFAppState().stCounterLoop.toString()),
            content: Text(FFAppState().stCounterLoopFinal.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok1'),
              ),
            ],
          );
        },
      );
      while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text(FFAppState().stCounterLoop.toString()),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        FFAppState().updateStAssetsSearchResultsAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stAssetsSearchResults
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .statusAt),
        );
        FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      }
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('55555'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Ops ...'),
          content: Text('Selecione UM tipo de Ativo apenas.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesAssetsPriorities(BuildContext context) async {
  ApiCallResponse? resAssetsPriorities;

  resAssetsPriorities =
      await ApiAssetsPrioritiesGroup.apiAssetsPrioritiesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resAssetsPriorities.succeeded ?? true)) {
    FFAppState().stOfflineAssetsPriorities =
        ((resAssetsPriorities.jsonBody ?? '')
                .toList()
                .map<DtAssetPriorityStruct?>(DtAssetPriorityStruct.maybeFromMap)
                .toList() as Iterable<DtAssetPriorityStruct?>)
            .withoutNulls
            .toList()
            .cast<DtAssetPriorityStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia AssetsStatuses',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAuthRefreshToken(BuildContext context) async {}

Future abUserTokenFcmUpdate(BuildContext context) async {
  if (isAndroid) {
    await UsersTable().update(
      data: {
        'token_fcm': FFAppState().stTokenFcm,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState().stUserCurrent.id,
      ),
    );
  } else {
    return;
  }
}

Future abAppOfflineUpdatesTablesOTypes(BuildContext context) async {
  ApiCallResponse? resOrdersTypes;

  resOrdersTypes = await ApiOrdersTypesGroup.apiOrdersTypesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOrdersTypes.succeeded ?? true)) {
    FFAppState().stOfflineOTypes = ((resOrdersTypes.jsonBody ?? '')
            .toList()
            .map<DtOrderTypeStruct?>(DtOrderTypeStruct.maybeFromMap)
            .toList() as Iterable<DtOrderTypeStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderTypeStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersTypes',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesOPriorities(BuildContext context) async {
  ApiCallResponse? resOrdersPriorities;

  resOrdersPriorities =
      await ApiOrdersPrioritiesGroup.apiOrdersPrioritiesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOrdersPriorities.succeeded ?? true)) {
    FFAppState().stOfflineOPriorities = ((resOrdersPriorities.jsonBody ?? '')
            .toList()
            .map<DtOrderPriorityStruct?>(DtOrderPriorityStruct.maybeFromMap)
            .toList() as Iterable<DtOrderPriorityStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderPriorityStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersPriorities',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abIsConnected(BuildContext context) async {
  bool? abIsConnected;

  abIsConnected = await actions.caCheckConnectivity();
  if (abIsConnected) {
    FFAppState().stIsConnected = abIsConnected;
    FFAppState().update(() {});
  } else {
    FFAppState().stIsConnected = abIsConnected;
    FFAppState().update(() {});
  }
}

Future<DtUnitStruct?> abOfflineUnitSelected(
  BuildContext context, {
  required int? abId,
}) async {
  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = FFAppState().stOfflineUnits.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    if (abId ==
        FFAppState()
            .stOfflineUnits
            .elementAtOrNull(FFAppState().stCounterLoop)
            ?.id) {
      return FFAppState()
          .stOfflineUnits
          .elementAtOrNull(FFAppState().stCounterLoop);
    } else {
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  }

  return null;
}

Future<DtOrderTypeStruct?> abOfflineOTypeSelected(
  BuildContext context, {
  required int? abId,
}) async {
  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = FFAppState().stOfflineOTypes.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    if (abId ==
        FFAppState()
            .stOfflineOTypes
            .elementAtOrNull(FFAppState().stCounterLoop)
            ?.id) {
      return FFAppState()
          .stOfflineOTypes
          .elementAtOrNull(FFAppState().stCounterLoop);
    } else {
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  }

  return null;
}

Future abOSelected(
  BuildContext context, {
  int? abOId,
  DtOrderStruct? abODt,
  required bool? abIsParent,
  required bool? abIsNew,
}) async {
  ApiCallResponse? resONew;
  ApiCallResponse? resOP;
  ApiCallResponse? resOsByParent;
  ApiCallResponse? resO;
  ApiCallResponse? resOOvs;

  if (abIsNew!) {
    resONew = await ApiOrdersGroup.apiOrderByIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      orderId: abOId,
    );

    if ((resONew.succeeded ?? true)) {
      if (abIsParent!) {
        FFAppState().addToStOPFiltersResults(((resONew.jsonBody ?? '')
                .toList()
                .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                .toList() as Iterable<DtOrderStruct?>)
            .withoutNulls
            .firstOrNull!);
        FFAppState().update(() {});
        FFAppState().stOPSelected = ((resONew.jsonBody ?? '')
                .toList()
                .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                .toList() as Iterable<DtOrderStruct?>)
            .withoutNulls
            .firstOrNull!;
        FFAppState().update(() {});
        FFAppState().updateStOPSelectedStruct(
          (e) => e
            ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOPSelected.statusAt)
            ..requestedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOPSelected.requestedAt),
        );
        FFAppState().update(() {});
        FFAppState().stOSelectedContractManagers = [];
        FFAppState().update(() {});
      } else {
        FFAppState().addToStOFiltersResults(((resONew.jsonBody ?? '')
                .toList()
                .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                .toList() as Iterable<DtOrderStruct?>)
            .withoutNulls
            .firstOrNull!);
        FFAppState().update(() {});
        FFAppState().stOSelected = ((resONew.jsonBody ?? '')
                .toList()
                .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                .toList() as Iterable<DtOrderStruct?>)
            .withoutNulls
            .firstOrNull!;
        FFAppState().update(() {});
        FFAppState().updateStOSelectedStruct(
          (e) => e
            ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOSelected.statusAt)
            ..requestedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOSelected.requestedAt),
        );
        FFAppState().update(() {});
        await action_blocks.abOSelectedContractManagers(
          context,
          abContractId: FFAppState().stOSelected.contractId,
        );
      }
    }
  } else {
    if (abODt != null) {
      if (abIsParent!) {
        FFAppState().stOPSelected = abODt;
        FFAppState().update(() {});
        FFAppState().updateStOPSelectedStruct(
          (e) => e
            ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOPSelected.statusAt)
            ..requestedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOPSelected.requestedAt),
        );
        FFAppState().update(() {});
        FFAppState().stOSelectedContractManagers = [];
        FFAppState().update(() {});
      } else {
        FFAppState().stOSelected = abODt;
        FFAppState().update(() {});
        FFAppState().updateStOSelectedStruct(
          (e) => e
            ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOSelected.statusAt)
            ..requestedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOSelected.requestedAt),
        );
        FFAppState().update(() {});
        await action_blocks.abOSelectedContractManagers(
          context,
          abContractId: FFAppState().stOSelected.contractId,
        );
        if (FFAppState().stOSelected.statusId >= 3) {
          await action_blocks.abUserSelected(
            context,
            abUserId: FFAppState().stOSelected.teamLeaderId,
          );
        }
      }
    } else {
      if (abIsParent!) {
        resOP = await ApiOrdersGroup.apiOrderByIdCall.call(
          apiKey: FFDevEnvironmentValues().envApiKey,
          accessToken: currentJwtToken,
          orderId: abOId,
        );

        if ((resOP.succeeded ?? true)) {
          FFAppState().stOPSelected = ((resOP.jsonBody ?? '')
                  .toList()
                  .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                  .toList() as Iterable<DtOrderStruct?>)
              .withoutNulls
              .firstOrNull!;
          FFAppState().update(() {});
          FFAppState().updateStOPSelectedStruct(
            (e) => e
              ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                  FFAppState().stOPSelected.statusAt),
          );
          FFAppState().update(() {});
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Ops ... Nao foi possivel atualizar OS (abOSelected3)',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );
          return;
        }

        FFAppState().stOPSelectedOs = [];
        resOsByParent = await ApiOrdersGroup.apiOrdersByParentIdCall.call(
          apiKey: FFDevEnvironmentValues().envApiKey,
          accessToken: currentJwtToken,
          parentId: abOId,
        );

        if ((resOsByParent.succeeded ?? true)) {
          FFAppState().stOPSelectedOs = ((resOsByParent.jsonBody ?? '')
                  .toList()
                  .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                  .toList() as Iterable<DtOrderStruct?>)
              .withoutNulls
              .toList()
              .cast<DtOrderStruct>();
          FFAppState().update(() {});
          FFAppState().stCounterLoop = 0;
          FFAppState().stCounterLoopFinal = FFAppState().stOPSelectedOs.length;
          while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
            FFAppState().updateStOPSelectedOsAtIndex(
              FFAppState().stCounterLoop,
              (e) => e
                ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                    FFAppState()
                        .stOPSelectedOs
                        .elementAtOrNull(FFAppState().stCounterLoop)!
                        .statusAt),
            );
            FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
          }
        }
        FFAppState().stOSelectedContractManagers = [];
        FFAppState().update(() {});
      } else {
        resO = await ApiOrdersGroup.apiOrderByIdCall.call(
          apiKey: FFDevEnvironmentValues().envApiKey,
          accessToken: currentJwtToken,
          orderId: abOId,
        );

        if ((resO.succeeded ?? true)) {
          FFAppState().stOSelected = ((resO.jsonBody ?? '')
                  .toList()
                  .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                  .toList() as Iterable<DtOrderStruct?>)
              .withoutNulls
              .firstOrNull!;
          FFAppState().update(() {});
          FFAppState().updateStOSelectedStruct(
            (e) => e
              ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                  FFAppState().stOSelected.statusAt)
              ..requestedDatetime =
                  functions.cfConvDatetimeBrStringToDatetimeEn(
                      FFAppState().stOSelected.requestedAt),
          );
          FFAppState().update(() {});
          if (FFAppState().stOSelected.statusId >= 3) {
            await action_blocks.abUserSelected(
              context,
              abUserId: FFAppState().stOSelected.teamLeaderId,
            );
          }
          await action_blocks.abOSelectedContractManagers(
            context,
            abContractId: FFAppState().stOSelected.contractId,
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Ops ... Nao foi possivel atualizar OS (abOSelected1)',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );
          return;
        }

        resOOvs = await ApiOrdersVisitsGroup.apiOVByOIdCall.call(
          apiKey: FFDevEnvironmentValues().envApiKey,
          accessToken: currentJwtToken,
          oId: abOId,
        );

        if ((resOOvs.succeeded ?? true)) {
          FFAppState().stOSelectedOVs = ((resOOvs.jsonBody ?? '')
                  .toList()
                  .map<DtOrderVisitStruct?>(DtOrderVisitStruct.maybeFromMap)
                  .toList() as Iterable<DtOrderVisitStruct?>)
              .withoutNulls
              .toList()
              .cast<DtOrderVisitStruct>();
          FFAppState().update(() {});
          FFAppState().stCounterLoop = 0;
          FFAppState().stCounterLoopFinal = FFAppState().stOSelectedOVs.length;
          while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
            if (FFAppState()
                    .stOSelectedOVs
                    .elementAtOrNull(FFAppState().stCounterLoop)
                    ?.ovStatusId ==
                1) {
              FFAppState().updateStOSelectedOVsAtIndex(
                FFAppState().stCounterLoop,
                (e) => e
                  ..ovStartedDatetime =
                      functions.cfConvDatetimeBrStringToDatetimeEn(FFAppState()
                          .stOSelectedOVs
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovStartedAt),
              );
            } else {
              FFAppState().updateStOSelectedOVsAtIndex(
                FFAppState().stCounterLoop,
                (e) => e
                  ..ovStartedDatetime =
                      functions.cfConvDatetimeBrStringToDatetimeEn(FFAppState()
                          .stOSelectedOVs
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovStartedAt)
                  ..ovEndedDatetime =
                      functions.cfConvDatetimeBrStringToDatetimeEn(FFAppState()
                          .stOSelectedOVs
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovEndedAt),
              );
            }

            FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
          }
        }
      }
    }
  }
}

Future abDBAdminOFilters(
  BuildContext context, {
  List<int>? abSystemsParent,
  List<int>? abSystems,
  List<int>? abUnits,
  List<int>? abOTypesSubs,
  List<int>? abContracts,
  List<int>? abCompanies,
  List<int>? abOPlans,
  List<int>? abOObjects,
  List<int>? abTeams,
  List<int>? abUnitsTypesParent,
  List<int>? abUnitsTypes,
  List<int>? abAssetsTags,
  List<int>? abOTypes,
}) async {
  ApiCallResponse? apiResulthfuT;
  ApiCallResponse? apiResulthfuToo;

  await Future.wait([
    Future(() async {
      apiResulthfuT = await ApiOrdersGroup.apiOPOpenDBFiltersCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        systemsParentsIdsList: abSystemsParent,
        systemsIdsList: abSystems,
        unitsTypesParentsIdsList: abUnitsTypesParent,
        unitsIdsList: abUnits,
        ordersTypesIdsList: abOTypes,
        unitsTypesIdsList: abUnitsTypes,
        appVersionMode: FFAppState().stAppVersionMode?.name,
        assetsTagsIdsList: abAssetsTags,
      );

      if ((apiResulthfuT?.succeeded ?? true)) {
        FFAppState().stOPFiltersResults = ((apiResulthfuT?.jsonBody ?? '')
                .toList()
                .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                .toList() as Iterable<DtOrderStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderStruct>();
        FFAppState().update(() {});
        FFAppState().stCounterLoop = 0;
        FFAppState().stCounterLoopFinal =
            FFAppState().stOPFiltersResults.length;
        while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
          FFAppState().updateStOPFiltersResultsAtIndex(
            FFAppState().stCounterLoop,
            (e) => e
              ..requestedDatetime =
                  functions.cfConvDatetimeBrStringToDatetimeEn(FFAppState()
                      .stOPFiltersResults
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .requestedAt)
              ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                  FFAppState()
                      .stOPFiltersResults
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .statusAt),
          );
          FFAppState().update(() {});
          FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Não foi possivel filtrar as SS\'s.',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).info,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        return;
      }
    }),
    Future(() async {
      apiResulthfuToo = await ApiOrdersGroup.apiOOpenDBFiltersCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        systemsParentsIdsList: abSystemsParent,
        systemsIdsList: abSystems,
        unitsTypesParentsIdsList: abUnitsTypesParent,
        unitsIdsList: abUnits,
        ordersTypesIdsList: abOTypes,
        ordersTypesSubsIdsList: abOTypesSubs,
        contractsIdsList: abContracts,
        companiesIdsList: abCompanies,
        ordersPlansIdsList: abOPlans,
        ordersObjectsIdsList: abOObjects,
        teamsIdsList: abTeams,
        appVersionMode: FFAppState().stAppVersionMode?.name,
        assetsTagsIdsList: abAssetsTags,
      );

      if ((apiResulthfuToo?.succeeded ?? true)) {
        FFAppState().stOFiltersResultsCompanies = [];
        FFAppState().stOFiltersResults = ((apiResulthfuToo?.jsonBody ?? '')
                .toList()
                .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
                .toList() as Iterable<DtOrderStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderStruct>();
        FFAppState().update(() {});
        FFAppState().stCounterLoop = 0;
        FFAppState().stCounterLoopFinal = FFAppState().stOFiltersResults.length;
        FFAppState().stDBAdminOFiltersInProgress = [];
        FFAppState().stOFiltersResultsCompanies = [];
        while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
          FFAppState().updateStOFiltersResultsAtIndex(
            FFAppState().stCounterLoop,
            (e) => e
              ..unitLatLng = functions.cfConvToLatLng(
                  FFAppState()
                      .stOFiltersResults
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .unitLatitude,
                  FFAppState()
                      .stOFiltersResults
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .unitLongitude)
              ..requestedDatetime =
                  functions.cfConvDatetimeBrStringToDatetimeEn(FFAppState()
                      .stOFiltersResults
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .requestedAt)
              ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                  FFAppState()
                      .stOFiltersResults
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .statusAt),
          );
          FFAppState().update(() {});
          if (FFAppState()
                  .stOFiltersResults
                  .elementAtOrNull(FFAppState().stCounterLoop)
                  ?.statusId ==
              5) {
            FFAppState().addToStDBAdminOFiltersInProgress(FFAppState()
                .stOFiltersResults
                .elementAtOrNull(FFAppState().stCounterLoop)!);
            FFAppState().update(() {});
          }
          if (!functions.cfContainInList(
              FFAppState()
                  .stOFiltersResultsCompanies
                  .map((e) => e.id)
                  .toList()
                  .toList(),
              FFAppState()
                  .stOFiltersResults
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .providerCompanyId)!) {
            FFAppState().addToStOFiltersResultsCompanies(functions.cfDtCompany(
                FFAppState()
                    .stOFiltersResults
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .providerCompanyId,
                FFAppState().stOfflineCompanies.toList()));
            FFAppState().update(() {});
          }
          FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Não foi possivel filtrar as OS\'s.',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).info,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        return;
      }
    }),
  ]);
}

Future abAppOfflineUpdatesTablesOTypesSubs(BuildContext context) async {
  ApiCallResponse? resOrdersTypesSubs;

  resOrdersTypesSubs =
      await ApiOrdersTypesSubsGroup.apiOrdersTypesSubsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOrdersTypesSubs.succeeded ?? true)) {
    FFAppState().stOfflineOTypesSubs = ((resOrdersTypesSubs.jsonBody ?? '')
            .toList()
            .map<DtOrderTypeSubStruct?>(DtOrderTypeSubStruct.maybeFromMap)
            .toList() as Iterable<DtOrderTypeSubStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderTypeSubStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersTypesSubs',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesOObjects(BuildContext context) async {
  ApiCallResponse? resOrdersObjects;

  resOrdersObjects = await ApiOrdersObjectsGroup.apiOrdersObjectsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOrdersObjects.succeeded ?? true)) {
    FFAppState().stOfflineOObjetcs = ((resOrdersObjects.jsonBody ?? '')
            .toList()
            .map<DtOrderObjectStruct?>(DtOrderObjectStruct.maybeFromMap)
            .toList() as Iterable<DtOrderObjectStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderObjectStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersObjects',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesContracts(BuildContext context) async {
  ApiCallResponse? resContracts;

  resContracts = await ApiContractsGroup.apiContractsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resContracts.succeeded ?? true)) {
    FFAppState().stOfflineContracts = ((resContracts.jsonBody ?? '')
            .toList()
            .map<DtContractStruct?>(DtContractStruct.maybeFromMap)
            .toList() as Iterable<DtContractStruct?>)
        .withoutNulls
        .toList()
        .cast<DtContractStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia Contracts',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abContractSelected(
  BuildContext context, {
  int? abContractId,
  DtContractStruct? abContractDt,
}) async {
  ApiCallResponse? resContractSelected;

  FFAppState().stContractSelected = DtContractStruct();
  if (abContractDt != null) {
    FFAppState().stContractSelected = abContractDt;
    FFAppState().update(() {});
  } else {
    FFAppState().stContractSelected = FFAppState()
        .stOfflineContracts
        .where((e) => abContractId == e.id)
        .toList()
        .firstOrNull!;
    FFAppState().update(() {});
    if (!(FFAppState().stContractSelected != null)) {
      resContractSelected = await ApiContractsGroup.apiContractByIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        contractId: abContractId,
      );

      if ((resContractSelected.succeeded ?? true)) {
        FFAppState().stContractSelected = ((resContractSelected.jsonBody ?? '')
                .toList()
                .map<DtContractStruct?>(DtContractStruct.maybeFromMap)
                .toList() as Iterable<DtContractStruct?>)
            .withoutNulls
            .firstOrNull!;
        FFAppState().update(() {});
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ops ..'),
              content: Text('Ocorreu um erro (AbContractSelected)'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return;
      }
    }
  }
}

Future abOPEvents(
  BuildContext context, {
  required int? abOPId,
  required String? abTitle,
  required String? abBody,
  required int? abOId,
  String? abImgUrl,
  String? abPageTarget,
}) async {
  ApiCallResponse? resOFollowers;
  List<VUsersRow>? resUserTo;

  resOFollowers = await ApiOrdersFollowersGroup.apiFollowersByOrderIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    oId: abOPId,
  );

  if ((resOFollowers.succeeded ?? true)) {
    FFAppState().stUserOFollowing = ((resOFollowers.jsonBody ?? '')
            .toList()
            .map<DtOrderFollowerStruct?>(DtOrderFollowerStruct.maybeFromMap)
            .toList() as Iterable<DtOrderFollowerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderFollowerStruct>();
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stUserOFollowing.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState()
              .stUserOFollowing
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.userId !=
          FFAppState().stUserCurrent.id) {
        resUserTo = await VUsersTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id',
            FFAppState()
                .stUserOFollowing
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.userId,
          ),
        );
        await UsersTable().update(
          data: {
            'notifications_amount':
                (resUserTo.firstOrNull!.notificationsAmount!) + 1,
          },
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            FFAppState()
                .stUserOFollowing
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.userId,
          ),
        );
        await action_blocks.abUsersNotificationsAdd(
          context,
          abType: 'orderAuthorized',
          abTitle: abTitle,
          abBody: abBody,
          abUserIdFrom: FFAppState().stUserCurrent.id,
          abUserIdTo: FFAppState()
              .stUserOFollowing
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.userId,
          abOId: abOId,
          abTokenFcm: resUserTo.firstOrNull?.tokenFcm,
          abUserFromNameShort: FFAppState().stUserCurrent.nameShort,
          abNotificationAmount:
              (resUserTo.firstOrNull!.notificationsAmount!) + 1,
          abMobileWhatsapp: resUserTo
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.mobileWhatsapp,
        );
      }
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    return;
  }
}

Future abUsersNotificationsAdd(
  BuildContext context, {
  required String? abType,
  required String? abTitle,
  required String? abBody,
  required int? abUserIdFrom,
  required int? abUserIdTo,
  String? abImgUrl,
  int? abOId,
  required String? abTokenFcm,
  required String? abUserFromNameShort,
  required int? abNotificationAmount,
  String? abPageTarget,
  required String? abMobileWhatsapp,
}) async {
  UsersNotificationsRow? resUserNotificationAdded;

  if (abType == 'AccountActivated') {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Usuário notificado',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  } else {
    if (abType == 'orderAuthorized') {}
  }

  resUserNotificationAdded = await UsersNotificationsTable().insert({
    'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
    'user_id_to': abUserIdTo,
    'user_id_from': abUserIdFrom,
    'title': abTitle,
    'body': abBody,
    'type': abType,
    'o_id': abOId,
    'company_id': FFAppState().stUserCurrent.companyId,
    'token_fcm': abTokenFcm,
    'user_from_name_short': FFAppState().stUserCurrent.nameShort,
    'version_mode': FFAppState().stAppVersionMode?.name,
    'user_to_whatsapp': abMobileWhatsapp,
  });
}

Future abAppOfflineUpdatesTablesOPlans(BuildContext context) async {
  ApiCallResponse? resOrdersPlans;

  resOrdersPlans = await ApiOrdersPlansGroup.apiOrdersPlansAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOrdersPlans.succeeded ?? true)) {
    FFAppState().stOfflineOPlans = ((resOrdersPlans.jsonBody ?? '')
            .toList()
            .map<DtOrderPlanStruct?>(DtOrderPlanStruct.maybeFromMap)
            .toList() as Iterable<DtOrderPlanStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderPlanStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersPlans.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesOStatuses(BuildContext context) async {
  ApiCallResponse? resOrdersStatuses;

  resOrdersStatuses =
      await ApiOrdersStatusesGroup.apiOrdersStatusesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOrdersStatuses.succeeded ?? true)) {
    FFAppState().stOfflineOStatuses = ((resOrdersStatuses.jsonBody ?? '')
            .toList()
            .map<DtOrderStatusStruct?>(DtOrderStatusStruct.maybeFromMap)
            .toList() as Iterable<DtOrderStatusStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderStatusStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersStatuses',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesTeamsLeaders(BuildContext context) async {
  ApiCallResponse? resTeamsLeaders;

  resTeamsLeaders = await ApiUsersGroup.apiUsersTeamsLeadersAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resTeamsLeaders.succeeded ?? true)) {
    FFAppState().stOfflineTeamsLeaders = ((resTeamsLeaders.jsonBody ?? '')
            .toList()
            .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
            .toList() as Iterable<DtUserStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUserStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível sincronizar TeamsLeaders.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abUserSelected(
  BuildContext context, {
  required int? abUserId,
}) async {
  ApiCallResponse? resUserSelected;

  resUserSelected = await ApiUsersGroup.apiUserByIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    userId: abUserId,
  );

  if ((resUserSelected.succeeded ?? true)) {
    FFAppState().stUserSelected = ((resUserSelected.jsonBody ?? '')
            .toList()
            .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
            .toList() as Iterable<DtUserStruct?>)
        .withoutNulls
        .firstOrNull!;
    FFAppState().update(() {});
  }
}

Future abUserOFollowing(BuildContext context) async {
  ApiCallResponse? resOFollower;

  resOFollower = await ApiOrdersFollowersGroup.apiOrdersByFollowerCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    userId: FFAppState().stUserCurrent.id,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  if ((resOFollower.succeeded ?? true)) {
    FFAppState().stUserOFollowing = ((resOFollower.jsonBody ?? '')
            .toList()
            .map<DtOrderFollowerStruct?>(DtOrderFollowerStruct.maybeFromMap)
            .toList() as Iterable<DtOrderFollowerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderFollowerStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersFollowing',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abDBUserOOpen(BuildContext context) async {
  ApiCallResponse? resOOpen;

  resOOpen = await ApiOrdersGroup.apiOrdersOpenByTeamIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    teamId: FFAppState().stUserCurrent.teamId,
  );

  if ((resOOpen.succeeded ?? true)) {
    FFAppState().stDBUserOOpen = ((resOOpen.jsonBody ?? '')
            .toList()
            .map<DtOrderStruct?>(DtOrderStruct.maybeFromMap)
            .toList() as Iterable<DtOrderStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stDBUserOOpen.length;
    FFAppState().update(() {});
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      FFAppState().updateStDBUserOOpenAtIndex(
        FFAppState().stCounterLoop,
        (e) => e
          ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState()
                  .stDBUserOOpen
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .statusAt)
          ..requestedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState()
                  .stDBUserOOpen
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .requestedAt),
      );
      FFAppState().update(() {});
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      FFAppState().update(() {});
    }
  }
}

Future<bool> abIsGpsOn(BuildContext context) async {
  if (!isWeb) {
    await requestPermission(locationPermission);
    if (await getPermissionStatus(locationPermission)) {
      return true;
    }

    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Ops ...'),
          content: Text('Ativar GPS.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    return false;
  }
  return true;
}

Future abUserNotifications(
  BuildContext context, {
  required int? abUserId,
}) async {
  ApiCallResponse? resNotifications;

  resNotifications =
      await ApiUsersNotificationsGroup.apiNotificationsByUserIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    userId: abUserId,
  );

  if ((resNotifications.succeeded ?? true)) {
    FFAppState().stUserNotifications = ((resNotifications.jsonBody ?? '')
            .toList()
            .map<DtUserNotificationStruct?>(
                DtUserNotificationStruct.maybeFromMap)
            .toList() as Iterable<DtUserNotificationStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUserNotificationStruct>();
    FFAppState().update(() {});
  }
}

Future abAppOfflineUpdatesTablesUnitsStatuses(BuildContext context) async {
  ApiCallResponse? resUnitsStatuses;

  resUnitsStatuses = await ApiUnitsStatusesGroup.apiUnitsStatusesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resUnitsStatuses.succeeded ?? true)) {
    FFAppState().stOfflineUnitsStatuses = ((resUnitsStatuses.jsonBody ?? '')
            .toList()
            .map<DtUnitStatusStruct?>(DtUnitStatusStruct.maybeFromMap)
            .toList() as Iterable<DtUnitStatusStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUnitStatusStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia UnisStatuses',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abOVSelected(
  BuildContext context, {
  DtOrderVisitStruct? abOVDt,
  int? abOVId,
}) async {
  ApiCallResponse? resOVSelected;

  if (abOVDt != null) {
    FFAppState().stOVSelected = abOVDt;
    FFAppState().update(() {});
    if (FFAppState().stOVSelected.ovStatusId == 1) {
      FFAppState().updateStOVSelectedStruct(
        (e) => e
          ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState().stOVSelected.ovStartedAt),
      );
      FFAppState().update(() {});
    } else {
      FFAppState().updateStOVSelectedStruct(
        (e) => e
          ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState().stOVSelected.ovStartedAt)
          ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState().stOVSelected.ovEndedAt),
      );
      FFAppState().update(() {});
    }
  } else {
    resOVSelected = await ApiOrdersVisitsGroup.apiOVByIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      ovId: abOVId,
    );

    if ((resOVSelected.succeeded ?? true)) {
      FFAppState().stOVSelected = ((resOVSelected.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitStruct?>(DtOrderVisitStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitStruct?>)
          .withoutNulls
          .firstOrNull!;
      FFAppState().update(() {});
      if (FFAppState().stOVSelected.ovStatusId == 1) {
        FFAppState().updateStOVSelectedStruct(
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOVSelected.ovStartedAt),
        );
        FFAppState().update(() {});
      } else {
        FFAppState().updateStOVSelectedStruct(
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOVSelected.ovStartedAt)
            ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState().stOVSelected.ovEndedAt),
        );
        FFAppState().update(() {});
      }
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Ops ..'),
            content: Text('Ocorreu um erro (AbOVSelected1)'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }

  await action_blocks.abOVSelectedTeamUsers(
    context,
    abOVId: abOVId,
  );
  await action_blocks.abOVSelectedVehicles(
    context,
    abOVId: abOVId,
  );
  await action_blocks.abOVSelectedAssetsUpdate(
    context,
    abOVId: abOVId,
  );
  await action_blocks.abOSelected(
    context,
    abOId: FFAppState().stOVSelected.oId,
    abIsParent: false,
    abIsNew: false,
  );
}

Future abAppOfflineUpdatesTablesOSuspendedReasons(BuildContext context) async {
  ApiCallResponse? resOSuspendedReasons;

  resOSuspendedReasons = await ApiOrdersSuspendedReasonsGroup
      .apiOrdersSuspendedReasonsAllCall
      .call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOSuspendedReasons.succeeded ?? true)) {
    FFAppState().stOfflineOSuspendedReasons =
        ((resOSuspendedReasons.jsonBody ?? '')
                .toList()
                .map<DtOrderSuspendedReasonStruct?>(
                    DtOrderSuspendedReasonStruct.maybeFromMap)
                .toList() as Iterable<DtOrderSuspendedReasonStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderSuspendedReasonStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersSuspendedReasons.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future<bool> abOVSelectedVehiclesCheck(
  BuildContext context, {
  required int? abOVId,
}) async {
  ApiCallResponse? resOrderVisitVehicles;

  resOrderVisitVehicles =
      await ApiOrdersVisitsVehiclesGroup.apiVehiclesByOrderVisitIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    ovId: FFAppState().stOVSelected.id,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  if ((resOrderVisitVehicles.succeeded ?? true)) {
    FFAppState().stOVVehicles = ((resOrderVisitVehicles.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitVehicleStruct?>(
                DtOrderVisitVehicleStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitVehicleStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitVehicleStruct>();
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stOVVehicles.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState()
              .stOVVehicles
              .elementAtOrNull(FFAppState().stCounterLoop)!
              .amount <=
          0.0) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ops ...'),
              content: Text(
                  'Verificar os registros iniciais e finais dos tranportes utilizados.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
    return true;
  } else {
    return false;
  }
}

Future abAppOfflineUpdatesTablesVehicles(BuildContext context) async {
  ApiCallResponse? resVehicles;

  resVehicles = await ApiVehiclesGroup.apiVehiclesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resVehicles.succeeded ?? true)) {
    FFAppState().stOfflineVehicles = ((resVehicles.jsonBody ?? '')
            .toList()
            .map<DtVehicleStruct?>(DtVehicleStruct.maybeFromMap)
            .toList() as Iterable<DtVehicleStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVehicleStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersPriorities',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abDBAdminUsersAvailable(
  BuildContext context, {
  List<int>? abSystemsParent,
  List<int>? abSystems,
  List<int>? abUnits,
  List<int>? abOTypesSubs,
  List<int>? abUnitsTypesParent,
  List<int>? abContracts,
  List<int>? abOTypes,
  List<int>? abOPlans,
  List<int>? abOObjects,
}) async {
  ApiCallResponse? resUsersAvailable;

  resUsersAvailable = await ApiUsersGroup.apiUsersTeamsLeadersAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    apiUrl: FFDevEnvironmentValues().envApiUrl,
  );

  if ((resUsersAvailable.succeeded ?? true)) {
    FFAppState().stDBAdminUsersAvailabe = ((resUsersAvailable.jsonBody ?? '')
            .toList()
            .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
            .toList() as Iterable<DtUserStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUserStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível identicar Líders disponíveis.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abTeamUsersUpdate(
  BuildContext context, {
  int? abOVId,
  required int? abUserSelected,
  required String? abOperation,
}) async {
  List<VUsersRow>? resUserSelected;
  OrdersVisitsTeamsRow? resOrderTeamAdded;

  resUserSelected = await VUsersTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      abUserSelected,
    ),
  );
  FFAppState().stTeamUserSelected = DtUserStruct(
    id: abUserSelected,
    teamId: resUserSelected.firstOrNull?.teamId,
    teamIdPrevious: resUserSelected.firstOrNull?.teamIdPrevious,
  );
  if (abOVId! > 0) {
    if (abOperation == 'add') {
      resOrderTeamAdded = await OrdersVisitsTeamsTable().insert({
        'ov_id': abOVId,
        'user_id': FFAppState().stTeamUserSelected.id,
        'is_leader': false,
      });
      await UsersTable().update(
        data: {
          'op_id_in_progress': FFAppState().stUserCurrent.opIdInProgress,
          'o_id_in_progress': FFAppState().stUserCurrent.oIdInProgress,
          'ov_id_in_progress': FFAppState().stUserCurrent.ovIdInProgress,
          'ov_in_progress_leader_id':
              FFAppState().stUserCurrent.ovInProgressLeaderId,
          'is_available': FFAppState().stUserCurrent.isAvailable,
          'is_ov_in_progress': FFAppState().stUserCurrent.isOvInProgress,
          'team_id_previous': resUserSelected.firstOrNull?.teamId,
          'o_contract_id_in_progress':
              FFAppState().stUserCurrent.oContractIdInProgress,
          'o_type_id_in_progress': FFAppState().stUserCurrent.oTypeIdInProgress,
          'o_type_sub_id_in_progress':
              FFAppState().stUserCurrent.oTypeSubIdInProgress,
          'o_plan_id_in_progress': FFAppState().stUserCurrent.oPlanIdInProgress,
          'o_asset_tag_id_in_progress':
              FFAppState().stUserCurrent.oAssetTagIdInProgress,
          'o_unit_id_in_progress': FFAppState().stUserCurrent.oUnitIdInProgress,
          'o_system_id_in_progress':
              FFAppState().stUserCurrent.oSystemIdInProgress,
          'o_system_parent_id_in_progress':
              FFAppState().stUserCurrent.oSystemParentIdInProgress,
          'o_unit_type_id_in_progress':
              FFAppState().stUserCurrent.oUnitTypeIdInProgress,
          'o_unit_type_parent_id_in_progress':
              FFAppState().stUserCurrent.oUnitTypeParentIdInProgress,
          'o_object_id_in_progress':
              FFAppState().stUserCurrent.oObjectIdInProgress,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
      await UsersTable().update(
        data: {
          'team_id': FFAppState().stUserCurrent.teamId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
    } else {
      await OrdersVisitsTeamsTable().delete(
        matchingRows: (rows) => rows
            .eqOrNull(
              'ov_id',
              abOVId,
            )
            .eqOrNull(
              'user_id',
              FFAppState().stTeamUserSelected.id,
            ),
      );
      await UsersTable().update(
        data: {
          'op_id_in_progress': null,
          'o_id_in_progress': null,
          'ov_id_in_progress': null,
          'ov_in_progress_leader_id': null,
          'is_available': true,
          'is_ov_in_progress': false,
          'team_id': resUserSelected.firstOrNull?.teamIdPrevious,
          'o_contract_id_in_progress': null,
          'o_type_id_in_progress': null,
          'o_type_sub_id_in_progress': null,
          'o_plan_id_in_progress': null,
          'o_asset_tag_id_in_progress': null,
          'o_unit_id_in_progress': null,
          'o_system_id_in_progress': null,
          'o_system_parent_id_in_progress': null,
          'o_unit_type_id_in_progress': null,
          'o_unit_type_parent_id_in_progress': null,
          'o_object_id_in_progress': null,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
      await UsersTable().update(
        data: {
          'team_id_previous': FFAppState().stUserCurrent.teamId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
    }

    await action_blocks.abOVSelectedTeamUsers(
      context,
      abOVId: abOVId,
    );
  } else {
    if (abOperation == 'add') {
      await UsersTable().update(
        data: {
          'team_id_previous': FFAppState().stTeamUserSelected.teamId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
      await UsersTable().update(
        data: {
          'is_available': FFAppState().stUserCurrent.isAvailable,
          'is_ov_in_progress': FFAppState().stUserCurrent.isOvInProgress,
          'team_id_previous': resUserSelected.firstOrNull?.teamId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
      await UsersTable().update(
        data: {
          'team_id': FFAppState().stUserCurrent.teamId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
    } else {
      await UsersTable().update(
        data: {
          'team_id': FFAppState().stTeamUserSelected.teamIdPrevious,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
      await UsersTable().update(
        data: {
          'is_available': true,
          'is_ov_in_progress': false,
          'team_id': resUserSelected.firstOrNull?.teamIdPrevious,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
      await UsersTable().update(
        data: {
          'team_id_previous': FFAppState().stUserCurrent.teamId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().stTeamUserSelected.id,
        ),
      );
    }
  }

  FFAppState().stTeamUserSelected = DtUserStruct();
  FFAppState().update(() {});
  await action_blocks.abUserCurrentTeam(
    context,
    abDtUser: FFAppState().stUserCurrent,
  );
}

Future abAppOfflineUpdatesTablesDepartments(BuildContext context) async {
  ApiCallResponse? resDepartments;

  resDepartments = await ApiDepartmentsGroup.apiDepartmentsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    version: FFAppState().stAppVersionMode?.name,
  );

  if ((resDepartments.succeeded ?? true)) {
    FFAppState().stOfflineDepartments = ((resDepartments.jsonBody ?? '')
            .toList()
            .map<DtDepartmentStruct?>(DtDepartmentStruct.maybeFromMap)
            .toList() as Iterable<DtDepartmentStruct?>)
        .withoutNulls
        .toList()
        .cast<DtDepartmentStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível sincronizar os Departamentos.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesProfiles(BuildContext context) async {
  ApiCallResponse? resProfiles;

  resProfiles = await ApiProfilesGroup.apiProfilesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    version: FFAppState().stAppVersionMode?.name,
  );

  if ((resProfiles.succeeded ?? true)) {
    FFAppState().stOfflineProfiles = ((resProfiles.jsonBody ?? '')
            .toList()
            .map<DtProfileStruct?>(DtProfileStruct.maybeFromMap)
            .toList() as Iterable<DtProfileStruct?>)
        .withoutNulls
        .toList()
        .cast<DtProfileStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível sincronizar os Perfis.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesAppPages(BuildContext context) async {
  ApiCallResponse? resAppPages;

  resAppPages = await ApiAppPagesGroup.apiAppPagesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resAppPages.succeeded ?? true)) {
    FFAppState().stOfflineAppPages = ((resAppPages.jsonBody ?? '')
            .toList()
            .map<DtAppPageStruct?>(DtAppPageStruct.maybeFromMap)
            .toList() as Iterable<DtAppPageStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAppPageStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Não foi possível sincronizar as Páginas.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abOVSelectedTeamUsers(
  BuildContext context, {
  required int? abOVId,
}) async {
  ApiCallResponse? resOVTeamUsers;

  resOVTeamUsers = await ApiOrdersVisitsTeamsGroup.apiTeamUsersByOVIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    ovId: abOVId,
  );

  FFAppState().stOVSelectedTeamUsers = ((resOVTeamUsers.jsonBody ?? '')
          .toList()
          .map<DtOrderVisitTeamUserStruct?>(
              DtOrderVisitTeamUserStruct.maybeFromMap)
          .toList() as Iterable<DtOrderVisitTeamUserStruct?>)
      .withoutNulls
      .toList()
      .cast<DtOrderVisitTeamUserStruct>();
  FFAppState().update(() {});
}

Future abOVSelectedVehicles(
  BuildContext context, {
  required int? abOVId,
}) async {
  ApiCallResponse? resOVVehicles;

  resOVVehicles =
      await ApiOrdersVisitsVehiclesGroup.apiVehiclesByOrderVisitIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    ovId: abOVId,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  FFAppState().stOVSelectedVehicles = ((resOVVehicles.jsonBody ?? '')
          .toList()
          .map<DtOrderVisitVehicleStruct?>(
              DtOrderVisitVehicleStruct.maybeFromMap)
          .toList() as Iterable<DtOrderVisitVehicleStruct?>)
      .withoutNulls
      .toList()
      .cast<DtOrderVisitVehicleStruct>();
  FFAppState().update(() {});
}

Future abOVAssetIsExist(
  BuildContext context, {
  required int? abOVId,
}) async {
  List<OrdersVisitsAssetsRow>? apiResultnbj;

  apiResultnbj = await OrdersVisitsAssetsTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'ov_id',
          abOVId,
        )
        .eqOrNull(
          'version_mode',
          FFAppState().stAppVersionMode?.name,
        )
        .eqOrNull(
          'is_deleted',
          false,
        ),
  );
  FFAppState().stRowsSelected =
      apiResultnbj.map((e) => e.assetId).toList().toList().cast<int>();
  FFAppState().update(() {});
}

Future abOVSelectedAsset(
  BuildContext context, {
  int? abOVAssetId,
  DtOrderVisitAssetStruct? abOVAssetDt,
}) async {
  ApiCallResponse? resOVAssetSelected;

  if (abOVAssetDt != null) {
    FFAppState().stOVSelectedAsset = abOVAssetDt;
    FFAppState().update(() {});
  } else {
    resOVAssetSelected =
        await ApiOrdersVisitsAssetsGroup.apiOVAssetByIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      id: abOVAssetId,
    );

    if ((resOVAssetSelected.succeeded ?? true)) {
      FFAppState().stOVSelectedAsset = ((resOVAssetSelected.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitAssetStruct?>(
                  DtOrderVisitAssetStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitAssetStruct?>)
          .withoutNulls
          .firstOrNull!;
      FFAppState().update(() {});
      await action_blocks.abAssetSelected(
        context,
        abAssetId: FFAppState().stOVSelectedAsset.assetId,
      );
      await action_blocks.abOVSelectedAssetActivities(
        context,
        abOVAssetId: FFAppState().stOVSelectedAsset.id,
      );
      await action_blocks.abOVSelectedAssetMaterials(
        context,
        abOVId: abOVAssetDt?.ovId,
        abAssetId: abOVAssetId,
      );
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Ops ..'),
            content: Text('Ocorreu um erro (AbOVSelectedAsset)'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }
}

Future abAppOfflineUpdatesTablesOTypesActivities(BuildContext context) async {
  ApiCallResponse? resOTypesActivities;

  resOTypesActivities =
      await ApiOrdersTypesActivitiesGroup.apiOrdersTypesAcivitiesAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  if ((resOTypesActivities.succeeded ?? true)) {
    FFAppState().stOfflineOTypesActivities =
        ((resOTypesActivities.jsonBody ?? '')
                .toList()
                .map<DtOrderTypeActivityStruct?>(
                    DtOrderTypeActivityStruct.maybeFromMap)
                .toList() as Iterable<DtOrderTypeActivityStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderTypeActivityStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersSuspendedReasons.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abOVSelectedAssetActivities(
  BuildContext context, {
  required int? abOVAssetId,
}) async {
  ApiCallResponse? resOVAssetActivities;

  resOVAssetActivities = await ApiOrdersVisitsAssetsActivitiesGroup
      .apiActivitiesByAssetIdCall
      .call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    ovaId: abOVAssetId,
  );

  if ((resOVAssetActivities.succeeded ?? true)) {
    FFAppState().stOVSelectedAssetActivities =
        ((resOVAssetActivities.jsonBody ?? '')
                .toList()
                .map<DtOrderVisitAssetActivityStruct?>(
                    DtOrderVisitAssetActivityStruct.maybeFromMap)
                .toList() as Iterable<DtOrderVisitAssetActivityStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderVisitAssetActivityStruct>();
    FFAppState().update(() {});
    FFAppState().stRowsSelected = FFAppState()
        .stOVSelectedAssetActivities
        .map((e) => e.activityId)
        .toList()
        .toList()
        .cast<int>();
    FFAppState().update(() {});
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Ops ..'),
          content: Text('Ocorreu um erro (AbOVSelectedAssetActivities)'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    return;
  }
}

Future<bool> abOVSelectedAssetImgCheck(BuildContext context) async {
  if (FFAppState().stOVSelectedAsset.beforeImgFileName == '') {
    return false;
  } else if (FFAppState().stOVSelectedAsset.afterImgFileName == '') {
    return false;
  }

  return true;
}

Future<bool?> abOSelectedContractManagerCheck(
  BuildContext context, {
  required int? abContractId,
  required int? abManagerId,
}) async {
  if (FFAppState().stUserCurrent.isAdminSuper) {
    return true;
  }

  if (FFAppState()
          .stOSelectedContractManagers
          .where((e) => e.managerId == FFAppState().stUserCurrent.id)
          .toList()
          .length ==
      1) {
    return true;
  }

  return false;
}

Future abCartMaterialsUpdate(
  BuildContext context, {
  required String? abOperation,
  required int? abUserId,
  int? abMaterialId,
  double? abMaterialAmount,
  int? abOVAssetId,
}) async {
  CartsMaterialsRow? resCartMaterialAdded;
  ApiCallResponse? apiResult49d22;
  ApiCallResponse? apiResult49d;

  if (abOperation == 'add') {
    resCartMaterialAdded = await CartsMaterialsTable().insert({
      'user_id': abUserId,
      'material_id': abMaterialId,
      'amount': abMaterialAmount,
      'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
      'cart_id': 0,
      'version_mode': FFAppState().stAppVersionMode?.name,
      'ova_id': abOVAssetId,
      'created_user_id': FFAppState().stUserCurrent.id,
    });
    FFAppState().updateStOVSelectedAssetStruct(
      (e) => e
        ..cartMaterialsAmount =
            FFAppState().stOVSelectedAsset.cartMaterialsAmount + 1,
    );
    FFAppState().update(() {});
    await OrdersVisitsAssetsTable().update(
      data: {
        'cart_materials_amount':
            FFAppState().stOVSelectedAsset.cartMaterialsAmount,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        abOVAssetId,
      ),
    );
  } else if (abOperation == 'remove') {
    await CartsMaterialsTable().delete(
      matchingRows: (rows) => rows
          .eqOrNull(
            'user_id',
            abUserId,
          )
          .eqOrNull(
            'material_id',
            abMaterialId,
          )
          .eqOrNull(
            'version_mode',
            FFAppState().stAppVersionMode?.name,
          ),
    );
    FFAppState().XstCartMaterialsAmount =
        FFAppState().XstCartMaterialsAmount + -1;
    FFAppState().update(() {});
    apiResult49d22 = await ApiCartsGroup.apiCartMaterialsByUserIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      userId: abUserId,
    );

    if ((apiResult49d22.succeeded ?? true)) {
      FFAppState().stCartMaterials = ((apiResult49d22.jsonBody ?? '')
              .toList()
              .map<DtCartMaterialStruct?>(DtCartMaterialStruct.maybeFromMap)
              .toList() as Iterable<DtCartMaterialStruct?>)
          .withoutNulls
          .toList()
          .cast<DtCartMaterialStruct>();
      FFAppState().update(() {});
      FFAppState().XstCartMaterialsAmount = FFAppState().stCartMaterials.length;
      FFAppState().update(() {});
    }
  } else if (abOperation == 'amount') {
    apiResult49d = await ApiCartsGroup.apiCartMaterialsByUserIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      userId: abUserId,
    );

    if ((apiResult49d.succeeded ?? true)) {
      FFAppState().stCartMaterials = ((apiResult49d.jsonBody ?? '')
              .toList()
              .map<DtCartMaterialStruct?>(DtCartMaterialStruct.maybeFromMap)
              .toList() as Iterable<DtCartMaterialStruct?>)
          .withoutNulls
          .toList()
          .cast<DtCartMaterialStruct>();
      FFAppState().update(() {});
      FFAppState().XstCartMaterialsAmount = FFAppState().stCartMaterials.length;
      FFAppState().update(() {});
    }
  }
}

Future abOVSelectedAssetsUpdate(
  BuildContext context, {
  required int? abOVId,
}) async {
  ApiCallResponse? resOVAssets;

  resOVAssets = await ApiOrdersVisitsAssetsGroup.apiOVAssetsByOVIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    ovId: abOVId,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  FFAppState().stOVSelectedAssets = ((resOVAssets.jsonBody ?? '')
          .toList()
          .map<DtOrderVisitAssetStruct?>(DtOrderVisitAssetStruct.maybeFromMap)
          .toList() as Iterable<DtOrderVisitAssetStruct?>)
      .withoutNulls
      .toList()
      .cast<DtOrderVisitAssetStruct>();
  FFAppState().update(() {});
}

Future abOVSelectedProcessingCheck(
  BuildContext context, {
  required int? abOVId,
}) async {
  ApiCallResponse? apiResultojo;
  bool? resIsManager1;

  apiResultojo = await ApiOrdersVisitsAssetsGroup.apiOVAssetsByOVIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    ovId: abOVId,
  );

  if ((apiResultojo.succeeded ?? true)) {
    FFAppState().stOVSelectedAssets = ((apiResultojo.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitAssetStruct?>(DtOrderVisitAssetStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitAssetStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitAssetStruct>();
    if (FFAppState().stOVSelectedAssets.length > 0) {
      FFAppState().stCounterLoop = 0;
      FFAppState().stCounterLoopFinal = FFAppState().stOVSelectedAssets.length;
      FFAppState().stOVSelectedAssetsAmount =
          FFAppState().stOVSelectedAssets.length;
      FFAppState().stOVSelectedAssetsDraftAmount = 0;
      FFAppState().stOVSelectedAssetsReportedAmount = 0;
      FFAppState().stOVSelectedAssetsDisapprovedAmount = 0;
      FFAppState().stOVSelectedAssetsApprovedAmount = 0;
      FFAppState().stOVSelectedAssetsRevisedAmount = 0;
      FFAppState().update(() {});
      while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
        if (FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.processingId ==
            1) {
          FFAppState().stOVSelectedAssetsDraftAmount =
              FFAppState().stOVSelectedAssetsDraftAmount + 1;
        } else {
          if (FFAppState()
                  .stOVSelectedAssets
                  .elementAtOrNull(FFAppState().stCounterLoop)
                  ?.processingId ==
              2) {
            FFAppState().stOVSelectedAssetsReportedAmount =
                FFAppState().stOVSelectedAssetsReportedAmount + 1;
          } else {
            if (FFAppState()
                    .stOVSelectedAssets
                    .elementAtOrNull(FFAppState().stCounterLoop)
                    ?.processingId ==
                3) {
              FFAppState().stOVSelectedAssetsRevisedAmount =
                  FFAppState().stOVSelectedAssetsRevisedAmount + 1;
            } else {
              if (FFAppState()
                      .stOVSelectedAssets
                      .elementAtOrNull(FFAppState().stCounterLoop)
                      ?.processingId ==
                  4) {
                FFAppState().stOVSelectedAssetsDisapprovedAmount =
                    FFAppState().stOVSelectedAssetsDisapprovedAmount + 1;
              } else {
                if (FFAppState()
                        .stOVSelectedAssets
                        .elementAtOrNull(FFAppState().stCounterLoop)
                        ?.processingId ==
                    5) {
                  FFAppState().stOVSelectedAssetsApprovedAmount =
                      FFAppState().stOVSelectedAssetsApprovedAmount + 1;
                } else {
                  return;
                }
              }
            }
          }
        }

        FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
        FFAppState().update(() {});
      }
      await OrdersVisitsTable().update(
        data: {
          'ov_assets_amount': FFAppState().stOVSelectedAssetsAmount,
          'ov_assets_draft_amount': FFAppState().stOVSelectedAssetsDraftAmount,
          'ov_assets_reported_amount':
              FFAppState().stOVSelectedAssetsReportedAmount,
          'ov_assets_disapproved_amount':
              FFAppState().stOVSelectedAssetsDisapprovedAmount,
          'ov_assets_approved_amount':
              FFAppState().stOVSelectedAssetsApprovedAmount,
          'ov_assets_revised_amount':
              FFAppState().stOVSelectedAssetsRevisedAmount,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          abOVId,
        ),
      );
      await action_blocks.abOVSelected(
        context,
        abOVId: FFAppState().stOVSelected.id,
      );
      if (FFAppState().stOVSelected.ovStatusId == 2) {
        if (FFAppState().stOVSelectedAssetsDraftAmount > 0) {
          await OrdersVisitsTable().update(
            data: {
              'ov_processing_id': 1,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              abOVId,
            ),
          );
          await action_blocks.abOVSelected(
            context,
            abOVId: abOVId,
          );
          return;
        } else if ((FFAppState().stOVSelectedAssetsAmount ==
                FFAppState().stOVSelectedAssetsReportedAmount) &&
            (FFAppState().stOVSelected.ovProcessingId != 2) &&
            (FFAppState().stOVSelectedAssetsAmount > 0)) {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Reportar ATENDIMENTO ?'),
                    content: Text('TODAS atividades estão reportadas.'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: Text('Confirmar'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            await OrdersVisitsTable().update(
              data: {
                'ov_processing_id': 2,
                'ov_reported_user_id': FFAppState().stUserCurrent.id,
                'ov_reported_at': supaSerialize<DateTime>(getCurrentTimestamp),
              },
              matchingRows: (rows) => rows.eqOrNull(
                'id',
                abOVId,
              ),
            );
            await action_blocks.abOVSelected(
              context,
              abOVId: abOVId,
            );
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Atendimento'),
                  content: Text('Reportado com sucesso.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                );
              },
            );
            return;
          } else {
            return;
          }
        } else if ((FFAppState().stOVSelectedAssetsReportedAmount > 0) &&
            (FFAppState().stOVSelectedAssetsAmount == 0) &&
            (FFAppState().stOVSelectedAssetsDisapprovedAmount == 0) &&
            (FFAppState().stOVSelected.ovProcessingId != 2)) {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Reportar ATENDIMENTO ?'),
                    content: Text('TODAS atividades estão reportadas.'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: Text('Confirmar'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            await OrdersVisitsTable().update(
              data: {
                'ov_processing_id': 2,
                'ov_reported_user_id': FFAppState().stUserCurrent.id,
                'ov_reported_at': supaSerialize<DateTime>(getCurrentTimestamp),
              },
              matchingRows: (rows) => rows.eqOrNull(
                'id',
                abOVId,
              ),
            );
            await action_blocks.abOVSelected(
              context,
              abOVId: abOVId,
            );
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Atendimento'),
                  content: Text('Reportado com sucesso.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                );
              },
            );
            return;
          } else {
            return;
          }
        } else if ((FFAppState().stOVSelectedAssetsAmount ==
                FFAppState().stOVSelectedAssetsApprovedAmount) &&
            !FFAppState().stOVSelected.ovIsFiled &&
            (FFAppState().stOVSelectedAssetsAmount > 0)) {
          resIsManager1 = await action_blocks.abOSelectedContractManagerCheck(
            context,
            abContractId: FFAppState().stOSelected.contractId,
            abManagerId: FFAppState().stUserCurrent.id,
          );
          if (resIsManager1!) {
            var confirmDialogResponse = await showDialog<bool>(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('ARQUIVAR atendimento ?'),
                      content: Text('TODAS atividades serão arquivadas.'),
                      actions: [
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(alertDialogContext, false),
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(alertDialogContext, true),
                          child: Text('Confirmar'),
                        ),
                      ],
                    );
                  },
                ) ??
                false;
            if (confirmDialogResponse) {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: MdOVToApproveWidget(),
                  );
                },
              );
            } else {
              return;
            }
          } else {
            return;
          }
        } else if (FFAppState().stOVSelectedAssetsDisapprovedAmount > 0) {
          await OrdersVisitsTable().update(
            data: {
              'ov_processing_id': 4,
              'ov_disapproved_user_id': FFAppState().stUserCurrent.id,
              'ov_disapproved_at': supaSerialize<DateTime>(getCurrentTimestamp),
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              abOVId,
            ),
          );
          await action_blocks.abOVSelected(
            context,
            abOVId: abOVId,
          );
          return;
        } else if ((FFAppState().stOVSelectedAssetsDraftAmount == 0) &&
            (FFAppState().stOVSelectedAssetsReportedAmount > 0)) {
          await OrdersVisitsTable().update(
            data: {
              'ov_processing_id': 2,
              'ov_reported_user_id': FFAppState().stUserCurrent.id,
              'ov_reported_at': supaSerialize<DateTime>(getCurrentTimestamp),
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              abOVId,
            ),
          );
          await action_blocks.abOVSelected(
            context,
            abOVId: abOVId,
          );
          return;
        } else if (FFAppState().stOVSelectedAssetsAmount ==
            FFAppState().stOVSelectedAssetsRevisedAmount) {
          if (FFAppState().stOVSelected.ovProcessingId != 3) {
            var confirmDialogResponse = await showDialog<bool>(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('Atendimento REVISADO ?'),
                      content: Text('TODAS atividades estão revisadas.'),
                      actions: [
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(alertDialogContext, false),
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(alertDialogContext, true),
                          child: Text('Confirmar'),
                        ),
                      ],
                    );
                  },
                ) ??
                false;
            if (confirmDialogResponse) {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Atendimento'),
                    content: Text('REVISADO com sucesso.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text('Ok'),
                      ),
                    ],
                  );
                },
              );
              await OrdersVisitsTable().update(
                data: {
                  'ov_processing_id': 3,
                  'ov_revised_user_id': FFAppState().stUserCurrent.id,
                  'ov_revised_at': supaSerialize<DateTime>(getCurrentTimestamp),
                },
                matchingRows: (rows) => rows.eqOrNull(
                  'id',
                  abOVId,
                ),
              );
              await action_blocks.abOVSelected(
                context,
                abOVId: abOVId,
              );
              return;
            } else {
              return;
            }
          } else {
            return;
          }
        } else {
          return;
        }
      } else {
        return;
      }
    } else {
      return;
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Ops ...'),
          content: Text(
              'Não foi possível verificar a situação do processamento desta visita.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesOCausesReasons(BuildContext context) async {
  ApiCallResponse? resOCausesReasons;

  resOCausesReasons =
      await ApiOrdersCausesReasonsGroup.apiOrdersCausesReasonsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOCausesReasons.succeeded ?? true)) {
    FFAppState().stOfflineOCausesReasons = ((resOCausesReasons.jsonBody ?? '')
            .toList()
            .map<DtOrderCauseReasonStruct?>(
                DtOrderCauseReasonStruct.maybeFromMap)
            .toList() as Iterable<DtOrderCauseReasonStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderCauseReasonStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersCausesReasons.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abOVSelectedIsMoved(
  BuildContext context, {
  required int? abOVId,
  required DateTime? abOVDateEnd,
}) async {
  ApiCallResponse? resOVAssets;

  resOVAssets = await ApiOrdersVisitsAssetsGroup.apiOVAssetsByOVIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    ovId: abOVId,
  );

  if ((resOVAssets.succeeded ?? true)) {
    FFAppState().stOVSelectedAssets = ((resOVAssets.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitAssetStruct?>(DtOrderVisitAssetStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitAssetStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitAssetStruct>();
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stOVSelectedAssets.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState()
          .stOVSelectedAssets
          .elementAtOrNull(FFAppState().stCounterLoop)!
          .isMoved) {
        await OrdersVisitsAssetsTable().update(
          data: {
            'after_status_at': supaSerialize<DateTime>(abOVDateEnd),
          },
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.id,
          ),
        );
        await AssetsTable().update(
          data: {
            'unit_id': FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.afterUnitId,
            'status_id': FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.afterStatusId,
            'tag_id': FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.afterTagId,
            'tag_sub_id': FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.afterTagSubId,
            'status_at': supaSerialize<DateTime>(abOVDateEnd),
            'priority_id': FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.afterPriorityId,
          },
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            FFAppState()
                .stOVSelectedAssets
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.assetId,
          ),
        );
      }
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    return;
  }
}

Future abDBAdminOVFilters(
  BuildContext context, {
  List<int>? abSystemsParent,
  List<int>? abSystems,
  List<int>? abUnitsTypesParent,
  List<int>? abUnits,
  List<int>? abOrdersTypes,
  List<int>? abOrdersTypesSubs,
  List<int>? abOrdersVisitsProcessing,
  List<int>? abOrdersObjects,
  List<int>? abContracts,
  List<int>? abOrdersPlans,
  List<int>? abTeams,
  List<int>? abAssetsTags,
}) async {
  ApiCallResponse? resOrdersVisits;

  resOrdersVisits = await ApiOrdersVisitsGroup.apiOVOpenByFiltersCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    ordersTypesIdsList: abOrdersTypes,
    processingIdsList: abOrdersVisitsProcessing,
    unitsIdsList: abUnits,
    ordersTypesSubsIdsList: abOrdersTypesSubs,
    systemsParentsIdsList: abSystemsParent,
    systemsIdsList: abSystems,
    unitsTypesParentsIdsList: abUnitsTypesParent,
    contractsIdsList: abContracts,
    ordersObjectsIdsList: abOrdersObjects,
    ordersPlansIdsList: abOrdersPlans,
    teamsIdsList: abTeams,
  );

  if ((resOrdersVisits.succeeded ?? true)) {
    FFAppState().stDBAdminOVFilters = ((resOrdersVisits.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitStruct?>(DtOrderVisitStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stDBAdminOVFilters.length;
    FFAppState().update(() {});
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      FFAppState().updateStDBAdminOVFiltersAtIndex(
        FFAppState().stCounterLoop,
        (e) => e
          ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState()
                  .stDBAdminOVFilters
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .ovStartedAt),
      );
      FFAppState().update(() {});
      if (FFAppState()
              .stDBAdminOVFilters
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.ovStatusId ==
          1) {
        FFAppState().updateStDBAdminOVFiltersAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt),
        );
        FFAppState().update(() {});
      } else {
        FFAppState().updateStDBAdminOVFiltersAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt)
            ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovEndedAt),
        );
        FFAppState().update(() {});
      }

      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      FFAppState().update(() {});
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Não foi possivel filtrar os Atendimentos.',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abDBUserOVOpen(
  BuildContext context, {
  required int? abTeamId,
}) async {
  ApiCallResponse? resOVOpen;

  resOVOpen = await ApiOrdersVisitsGroup.apiOVOpenByTeamIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    teamId: abTeamId,
  );

  if ((resOVOpen.succeeded ?? true)) {
    FFAppState().stDBUserOVOpen = ((resOVOpen.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitStruct?>(DtOrderVisitStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stDBUserOVOpen.length;
    FFAppState().update(() {});
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState()
              .stDBUserOVOpen
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.oStatusId ==
          1) {
        FFAppState().updateStDBUserOVOpenAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBUserOVOpen
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt),
        );
      } else {
        FFAppState().updateStDBUserOVOpenAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBUserOVOpen
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt)
            ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBUserOVOpen
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovEndedAt),
        );
      }

      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      FFAppState().update(() {});
    }
  }
}

Future abOSelectedContractManagers(
  BuildContext context, {
  required int? abContractId,
}) async {
  ApiCallResponse? resOContractManagers;

  resOContractManagers =
      await ApiContractsManagersGroup.apiManagersByContractIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    contractId: abContractId,
  );

  if ((resOContractManagers.succeeded ?? true)) {
    FFAppState()
        .stOSelectedContractManagers = ((resOContractManagers.jsonBody ?? '')
            .toList()
            .map<DtContractManagerStruct?>(DtContractManagerStruct.maybeFromMap)
            .toList() as Iterable<DtContractManagerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtContractManagerStruct>();
    FFAppState().update(() {});
    return;
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Houve erro em abContractManagers',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abOVSelectedAssetMaterials(
  BuildContext context, {
  required int? abOVId,
  required int? abAssetId,
}) async {
  ApiCallResponse? resOVAssetMaterials;

  resOVAssetMaterials = await ApiOrdersVisitsAssetsMaterialsGroup
      .apiMaterialsByOVIdAndAssetIdCall
      .call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    ovId: abOVId,
    assetId: abAssetId,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  if ((resOVAssetMaterials.succeeded ?? true)) {
    FFAppState().stOVSelectedAssetMaterials =
        ((resOVAssetMaterials.jsonBody ?? '')
                .toList()
                .map<DtOrderVisitAssetMaterialStruct?>(
                    DtOrderVisitAssetMaterialStruct.maybeFromMap)
                .toList() as Iterable<DtOrderVisitAssetMaterialStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderVisitAssetMaterialStruct>();
    FFAppState().update(() {});
  }
}

Future abContractSelectedServices(
  BuildContext context, {
  required int? abContractId,
}) async {
  ApiCallResponse? resContractServices;

  resContractServices =
      await ApiOrdersVisitsServicesGroup.apiServicesByOVIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    ovId: FFAppState().stOVSelectedAsset.ovId,
  );

  if ((resContractServices.succeeded ?? true)) {
    FFAppState().stContractSelectedServices = ((resContractServices.jsonBody ??
                '')
            .toList()
            .map<DtContractServiceStruct?>(DtContractServiceStruct.maybeFromMap)
            .toList() as Iterable<DtContractServiceStruct?>)
        .withoutNulls
        .toList()
        .cast<DtContractServiceStruct>();
    FFAppState().update(() {});
  }
}

Future abOVSelectedServices(
  BuildContext context, {
  required int? abOVId,
}) async {
  ApiCallResponse? resOVServices;

  resOVServices = await ApiOrdersVisitsServicesGroup.apiServicesByOVIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    ovId: abOVId,
  );

  if ((resOVServices.succeeded ?? true)) {
    FFAppState().stOVSelectedServices = ((resOVServices.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitServiceStruct?>(
                DtOrderVisitServiceStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitServiceStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitServiceStruct>();
    FFAppState().update(() {});
  }
}

Future xabAssetFollowing(
  BuildContext context, {
  required int? abUserId,
}) async {
  ApiCallResponse? resAssetsFollowing;

  resAssetsFollowing =
      await ApiAssetsFollowersGroup.apiAssetsByFollowerCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    userId: abUserId,
  );

  if ((resAssetsFollowing.succeeded ?? true)) {
    FFAppState().stAssetsFollowers = ((resAssetsFollowing.jsonBody ?? '')
            .toList()
            .map<DtAssetFollowerStruct?>(DtAssetFollowerStruct.maybeFromMap)
            .toList() as Iterable<DtAssetFollowerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetFollowerStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro em abAssetsFollowers',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abUserAssetsFollowing(
  BuildContext context, {
  required int? abUserId,
  required String? abOperation,
}) async {
  ApiCallResponse? resAssetsFollowing;
  ApiCallResponse? resAssetLoop;

  if (abOperation == 'update') {
    FFAppState().stUserAssetsFollowing = [];
    FFAppState().update(() {});
  } else {
    FFAppState().stAssetsSearchResults = [];
    FFAppState().update(() {});
  }

  resAssetsFollowing =
      await ApiAssetsFollowersGroup.apiAssetsByFollowerCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    userId: abUserId,
  );

  if ((resAssetsFollowing.succeeded ?? true)) {
    FFAppState().stAssetsFollowers = ((resAssetsFollowing.jsonBody ?? '')
            .toList()
            .map<DtAssetFollowerStruct?>(DtAssetFollowerStruct.maybeFromMap)
            .toList() as Iterable<DtAssetFollowerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetFollowerStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stAssetsFollowers.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      resAssetLoop = await ApiAssetsGroup.apiAssetByIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        versionMode: FFAppState().stAppVersionMode?.name,
        assetId: (((resAssetsFollowing.jsonBody ?? '')
                    .toList()
                    .map<DtAssetFollowerStruct?>(
                        DtAssetFollowerStruct.maybeFromMap)
                    .toList() as Iterable<DtAssetFollowerStruct?>)
                .withoutNulls
                .elementAtOrNull(FFAppState().stCounterLoop))
            ?.assetId,
      );

      if ((resAssetLoop.succeeded ?? true)) {
        if (abOperation == 'update') {
          FFAppState().insertAtIndexInStUserAssetsFollowing(
              FFAppState().stCounterLoop,
              ((resAssetLoop.jsonBody ?? '')
                      .toList()
                      .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
                      .toList() as Iterable<DtAssetStruct?>)
                  .withoutNulls
                  .firstOrNull!);
          FFAppState().update(() {});
          FFAppState().updateStUserAssetsFollowingAtIndex(
            FFAppState().stCounterLoop,
            (e) => e
              ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                  FFAppState()
                      .stUserAssetsFollowing
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .statusAt),
          );
          FFAppState().update(() {});
        } else {
          FFAppState().insertAtIndexInStAssetsSearchResults(
              FFAppState().stCounterLoop,
              ((resAssetLoop.jsonBody ?? '')
                      .toList()
                      .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
                      .toList() as Iterable<DtAssetStruct?>)
                  .withoutNulls
                  .firstOrNull!);
          FFAppState().update(() {});
          FFAppState().updateStAssetsSearchResultsAtIndex(
            FFAppState().stCounterLoop,
            (e) => e
              ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                  FFAppState()
                      .stAssetsSearchResults
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .statusAt),
          );
          FFAppState().update(() {});
        }

        FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      }
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro em abAssetsFollowers',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppOfflineUpdatesTablesAssetsCouplingsModels(
    BuildContext context) async {
  ApiCallResponse? resAssetsCouplingsModels;

  resAssetsCouplingsModels =
      await ApiAssetsCouplingsModelsGroup.apiAssetsCouplingsModelsAllCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  if ((resAssetsCouplingsModels.succeeded ?? true)) {
    FFAppState().stOfflineAssetsCouplingsModels =
        ((resAssetsCouplingsModels.jsonBody ?? '')
                .toList()
                .map<DtAssetCouplingModelStruct?>(
                    DtAssetCouplingModelStruct.maybeFromMap)
                .toList() as Iterable<DtAssetCouplingModelStruct?>)
            .withoutNulls
            .toList()
            .cast<DtAssetCouplingModelStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia AssetsCouplingsModels',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAssetSelectedMaterials(
  BuildContext context, {
  required int? abAssetId,
}) async {
  ApiCallResponse? resAssetMaterials;

  resAssetMaterials =
      await ApiAssetsMaterialsGroup.apiMaterialsByAssetIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    assetId: abAssetId,
  );

  if ((resAssetMaterials.succeeded ?? true)) {
    FFAppState().stAssetSelectedMaterials = ((resAssetMaterials.jsonBody ?? '')
            .toList()
            .map<DtAssetMaterialStruct?>(DtAssetMaterialStruct.maybeFromMap)
            .toList() as Iterable<DtAssetMaterialStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetMaterialStruct>();
    FFAppState().update(() {});
  }
}

Future abTMSelected(
  BuildContext context, {
  DtTechnicalManualStruct? abTMDt,
  int? abTMId,
}) async {
  ApiCallResponse? resTMSelected;

  if (abTMDt != null) {
    FFAppState().stTMSelected = abTMDt;
    FFAppState().update(() {});
  } else {
    resTMSelected = await ApiTechnicalsManualsGroup.apiTMByIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      tmId: abTMId,
    );

    if ((resTMSelected.succeeded ?? true)) {
      FFAppState().stTMSelected = ((resTMSelected.jsonBody ?? '')
              .toList()
              .map<DtTechnicalManualStruct?>(
                  DtTechnicalManualStruct.maybeFromMap)
              .toList() as Iterable<DtTechnicalManualStruct?>)
          .withoutNulls
          .firstOrNull!;
      FFAppState().update(() {});
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Ops ..'),
            content: Text('Ocorreu um erro (AbTMSelected)'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }
}

Future abTMSelectedAssets(
  BuildContext context, {
  required int? abTMId,
}) async {
  ApiCallResponse? resTMAssets;

  resTMAssets = await ApiTechnicalsManualsAssetsGroup.apiAssetsByTMIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    tmId: abTMId,
  );

  if ((resTMAssets.succeeded ?? true)) {
    FFAppState().stTMSelectedAssets = ((resTMAssets.jsonBody ?? '')
            .toList()
            .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
            .toList() as Iterable<DtAssetStruct?>)
        .withoutNulls
        .toList()
        .cast<DtAssetStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stTMSelectedAssets.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      FFAppState().updateStTMSelectedAssetsAtIndex(
        FFAppState().stCounterLoop,
        (e) => e
          ..statusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState()
                  .stTMSelectedAssets
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .statusAt),
      );
      FFAppState().update(() {});
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro em abTMSelectedAssets',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAssetSelectedTMs(
  BuildContext context, {
  required int? abAssetId,
}) async {
  ApiCallResponse? resAssetTms;

  resAssetTms = await ApiAssetsTechnicalsManualsGroup.apiTMsByAssetIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    assetId: abAssetId,
  );

  if ((resAssetTms.succeeded ?? true)) {
    FFAppState().stTMSearchResults = ((resAssetTms.jsonBody ?? '')
            .toList()
            .map<DtTechnicalManualStruct?>(DtTechnicalManualStruct.maybeFromMap)
            .toList() as Iterable<DtTechnicalManualStruct?>)
        .withoutNulls
        .toList()
        .cast<DtTechnicalManualStruct>();
    FFAppState().update(() {});
  }
}

Future abAppOfflineUpdatesTablesTMTypes(BuildContext context) async {
  ApiCallResponse? resTMTypes;

  resTMTypes = await ApiTechnicalsManualsTypesGroup.apiAllTMTypesCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
  );

  if ((resTMTypes.succeeded ?? true)) {
    FFAppState().stOfflineTMTypes = ((resTMTypes.jsonBody ?? '')
            .toList()
            .map<DtTechnicalManualTypeStruct?>(
                DtTechnicalManualTypeStruct.maybeFromMap)
            .toList() as Iterable<DtTechnicalManualTypeStruct?>)
        .withoutNulls
        .toList()
        .cast<DtTechnicalManualTypeStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia TMTypes',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAppVersionCheck(BuildContext context) async {
  ApiCallResponse? resApp;

  if (!isWeb) {
    resApp = await ApiAppGroup.apiAppByIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      appId: 1,
    );

    if (FFAppState().stAppVersionDevice !=
        ApiAppGroup.apiAppByIdCall.resAppVersionServer(
          (resApp.jsonBody ?? ''),
        )) {
      context.pushNamed(PgAppVersionNewReleaseWidget.routeName);
    }
  }
}

Future abAssetSelectedMovements(
  BuildContext context, {
  required int? abAssetId,
}) async {
  ApiCallResponse? resAssetMovs;

  resAssetMovs =
      await ApiOrdersVisitsAssetsGroup.apiMovementsByAssetIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    assetId: abAssetId,
  );

  if ((resAssetMovs.succeeded ?? true)) {
    FFAppState().stAssetSelectedMovements = ((resAssetMovs.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitAssetStruct?>(DtOrderVisitAssetStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitAssetStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitAssetStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal =
        FFAppState().stAssetSelectedMovements.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      FFAppState().updateStAssetSelectedMovementsAtIndex(
        FFAppState().stCounterLoop,
        (e) => e
          ..beforeStatusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState()
                  .stAssetSelectedMovements
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .beforeStatusAt)
          ..afterStatusDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
              FFAppState()
                  .stAssetSelectedMovements
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .afterStatusAt),
      );
      FFAppState().update(() {});
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  }
}

Future abOVSelectedAssetCart(
  BuildContext context, {
  required String? abOperation,
  int? abUserId,
  int? abMaterialId,
  double? abMaterialAmount,
  int? abOVAssetId,
}) async {
  CartsMaterialsRow? resCartMaterialAdded;
  ApiCallResponse? apiResult49d22;
  ApiCallResponse? apiResult49d;
  ApiCallResponse? resOVAssetCartMaterials;

  if (abOperation == 'add') {
    resCartMaterialAdded = await CartsMaterialsTable().insert({
      'user_id': abUserId,
      'material_id': abMaterialId,
      'amount': abMaterialAmount,
      'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
      'cart_id': 0,
      'version_mode': FFAppState().stAppVersionMode?.name,
      'ova_id': abOVAssetId,
      'created_user_id': FFAppState().stUserCurrent.id,
    });
    FFAppState().updateStOVSelectedAssetStruct(
      (e) => e
        ..cartMaterialsAmount =
            FFAppState().stOVSelectedAsset.cartMaterialsAmount + 1,
    );
    FFAppState().update(() {});
    await OrdersVisitsAssetsTable().update(
      data: {
        'cart_materials_amount':
            FFAppState().stOVSelectedAsset.cartMaterialsAmount,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        abOVAssetId,
      ),
    );
  } else if (abOperation == 'remove') {
    await CartsMaterialsTable().delete(
      matchingRows: (rows) => rows
          .eqOrNull(
            'user_id',
            abUserId,
          )
          .eqOrNull(
            'material_id',
            abMaterialId,
          )
          .eqOrNull(
            'version_mode',
            FFAppState().stAppVersionMode?.name,
          ),
    );
    FFAppState().XstCartMaterialsAmount =
        FFAppState().XstCartMaterialsAmount + -1;
    FFAppState().update(() {});
    apiResult49d22 = await ApiCartsGroup.apiCartMaterialsByUserIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      userId: abUserId,
    );

    if ((apiResult49d22.succeeded ?? true)) {
      FFAppState().stCartMaterials = ((apiResult49d22.jsonBody ?? '')
              .toList()
              .map<DtCartMaterialStruct?>(DtCartMaterialStruct.maybeFromMap)
              .toList() as Iterable<DtCartMaterialStruct?>)
          .withoutNulls
          .toList()
          .cast<DtCartMaterialStruct>();
      FFAppState().update(() {});
      FFAppState().XstCartMaterialsAmount = FFAppState().stCartMaterials.length;
      FFAppState().update(() {});
    }
  } else if (abOperation == 'amount') {
    apiResult49d = await ApiCartsGroup.apiCartMaterialsByUserIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      userId: abUserId,
    );

    if ((apiResult49d.succeeded ?? true)) {
      FFAppState().stCartMaterials = ((apiResult49d.jsonBody ?? '')
              .toList()
              .map<DtCartMaterialStruct?>(DtCartMaterialStruct.maybeFromMap)
              .toList() as Iterable<DtCartMaterialStruct?>)
          .withoutNulls
          .toList()
          .cast<DtCartMaterialStruct>();
      FFAppState().update(() {});
      FFAppState().XstCartMaterialsAmount = FFAppState().stCartMaterials.length;
      FFAppState().update(() {});
    }
  } else if (abOperation == 'cart_items') {
    resOVAssetCartMaterials =
        await ApiCartsGroup.apiCartMaterialsByOVAssetIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      ovaId: FFAppState().stOVSelectedAsset.id,
    );

    if ((resOVAssetCartMaterials.succeeded ?? true)) {
      FFAppState().stCartMaterials = ((resOVAssetCartMaterials.jsonBody ?? '')
              .toList()
              .map<DtCartMaterialStruct?>(DtCartMaterialStruct.maybeFromMap)
              .toList() as Iterable<DtCartMaterialStruct?>)
          .withoutNulls
          .toList()
          .cast<DtCartMaterialStruct>();
      FFAppState().update(() {});
    }
  }
}

Future abDBAdminOVFiltersFinancial(BuildContext context) async {
  ApiCallResponse? resOrdersVisits;

  FFAppState().stFinancialOVProcessingDraft =
      DtFinancialOVProcessingDraftStruct();
  FFAppState().stFinancialOVProcessingReported =
      DtFinancialOVProcessingReportedStruct();
  FFAppState().stFinancialOVProcessingRevised =
      DtFinancialOVProcessingRevisedStruct();
  FFAppState().stFinancialOVProcessingDisapproved =
      DtFinancialOVProcessingDisapprovedStruct();
  FFAppState().stFinancialOVProcessingApproved =
      DtFinancialOVProcessingApprovedStruct();
  FFAppState().update(() {});
  resOrdersVisits =
      await ApiOrdersVisitsFinancialGroup.apiOVFinancialFiltersCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    dateStart: FFAppState().stFiltersServices.dateStart?.toString(),
    dateEnd: FFAppState().stFiltersServices.dateEnd?.toString(),
  );

  if ((resOrdersVisits.succeeded ?? true)) {
    FFAppState().stDBAdminOVFilters = ((resOrdersVisits.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitStruct?>(DtOrderVisitStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stDBAdminOVFilters.length;
    FFAppState().update(() {});
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState()
              .stDBAdminOVFilters
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.ovStatusId ==
          1) {
        FFAppState().updateStDBAdminOVFiltersAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt),
        );
        FFAppState().update(() {});
      } else {
        FFAppState().updateStDBAdminOVFiltersAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt)
            ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovEndedAt),
        );
        FFAppState().update(() {});
      }

      if (FFAppState()
              .stDBAdminOVFilters
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.ovProcessingId ==
          1) {
        FFAppState().updateStFinancialOVProcessingDraftStruct(
          (e) => e
            ..servicesValue =
                FFAppState().stFinancialOVProcessingDraft.servicesValue +
                    FFAppState()
                        .stDBAdminOVFilters
                        .elementAtOrNull(FFAppState().stCounterLoop)!
                        .ovServicesValue
            ..materialsValue =
                FFAppState().stFinancialOVProcessingDraft.materialsValue +
                    FFAppState()
                        .stDBAdminOVFilters
                        .elementAtOrNull(FFAppState().stCounterLoop)!
                        .ovMaterialsValue
            ..vehiclesValue =
                FFAppState().stFinancialOVProcessingDraft.vehiclesValue +
                    FFAppState()
                        .stDBAdminOVFilters
                        .elementAtOrNull(FFAppState().stCounterLoop)!
                        .ovVehiclesValue
            ..totalValue =
                FFAppState().stFinancialOVProcessingDraft.totalValue +
                    FFAppState()
                        .stDBAdminOVFilters
                        .elementAtOrNull(FFAppState().stCounterLoop)!
                        .ovTotalValue
            ..updateOvIds(
              (e) => e.add(FFAppState()
                  .stDBAdminOVFilters
                  .elementAtOrNull(FFAppState().stCounterLoop)!
                  .id),
            )
            ..ovsCounter = valueOrDefault<int>(
              FFAppState().stFinancialOVProcessingDraft.ovsCounter + 1,
              0,
            ),
        );
        FFAppState().update(() {});
      } else {
        if (FFAppState()
                .stDBAdminOVFilters
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.ovProcessingId ==
            2) {
          FFAppState().updateStFinancialOVProcessingReportedStruct(
            (e) => e
              ..servicesValue = valueOrDefault<double>(
                    FFAppState().stFinancialOVProcessingReported.servicesValue,
                    0.0,
                  ) +
                  FFAppState()
                      .stDBAdminOVFilters
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .ovServicesValue
              ..materialsValue = valueOrDefault<double>(
                    FFAppState().stFinancialOVProcessingReported.materialsValue,
                    0.0,
                  ) +
                  FFAppState()
                      .stDBAdminOVFilters
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .ovMaterialsValue
              ..vehiclesValue = valueOrDefault<double>(
                    FFAppState().stFinancialOVProcessingReported.vehiclesValue,
                    0.0,
                  ) +
                  FFAppState()
                      .stDBAdminOVFilters
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .ovVehiclesValue
              ..totalValue = valueOrDefault<double>(
                    FFAppState().stFinancialOVProcessingReported.totalValue,
                    0.0,
                  ) +
                  FFAppState()
                      .stDBAdminOVFilters
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .ovTotalValue
              ..updateOvIds(
                (e) => e.add(FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .id),
              )
              ..ovsCounter = valueOrDefault<int>(
                FFAppState().stFinancialOVProcessingReported.ovsCounter + 1,
                0,
              ),
          );
          FFAppState().update(() {});
        } else {
          if (FFAppState()
                  .stDBAdminOVFilters
                  .elementAtOrNull(FFAppState().stCounterLoop)
                  ?.ovProcessingId ==
              3) {
            FFAppState().updateStFinancialOVProcessingRevisedStruct(
              (e) => e
                ..servicesValue = valueOrDefault<double>(
                  FFAppState().stFinancialOVProcessingRevised.servicesValue +
                      FFAppState()
                          .stDBAdminOVFilters
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovServicesValue,
                  0.0,
                )
                ..materialsValue = valueOrDefault<double>(
                  FFAppState().stFinancialOVProcessingRevised.materialsValue +
                      FFAppState()
                          .stDBAdminOVFilters
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovMaterialsValue,
                  0.0,
                )
                ..vehiclesValue = valueOrDefault<double>(
                  FFAppState().stFinancialOVProcessingRevised.vehiclesValue +
                      FFAppState()
                          .stDBAdminOVFilters
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovVehiclesValue,
                  0.0,
                )
                ..totalValue = valueOrDefault<double>(
                      FFAppState().stFinancialOVProcessingRevised.totalValue,
                      0.0,
                    ) +
                    FFAppState()
                        .stDBAdminOVFilters
                        .elementAtOrNull(FFAppState().stCounterLoop)!
                        .ovTotalValue
                ..updateOvIds(
                  (e) => e.add(FFAppState()
                      .stDBAdminOVFilters
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .id),
                )
                ..ovsCounter = valueOrDefault<int>(
                  FFAppState().stFinancialOVProcessingRevised.ovsCounter + 1,
                  0,
                ),
            );
            FFAppState().update(() {});
          } else {
            if (FFAppState()
                    .stDBAdminOVFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)
                    ?.ovProcessingId ==
                4) {
              FFAppState().updateStFinancialOVProcessingDisapprovedStruct(
                (e) => e
                  ..servicesValue = valueOrDefault<double>(
                        FFAppState()
                            .stFinancialOVProcessingDisapproved
                            .servicesValue,
                        0.0,
                      ) +
                      FFAppState()
                          .stDBAdminOVFilters
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovServicesValue
                  ..materialsValue = FFAppState()
                          .stFinancialOVProcessingDisapproved
                          .materialsValue +
                      FFAppState()
                          .stDBAdminOVFilters
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .ovMaterialsValue
                  ..vehiclesValue = valueOrDefault<double>(
                        FFAppState()
                            .stFinancialOVProcessingDisapproved
                            .vehiclesValue,
                        0.0,
                      ) +
                      valueOrDefault<double>(
                        FFAppState()
                            .stDBAdminOVFilters
                            .elementAtOrNull(FFAppState().stCounterLoop)
                            ?.ovVehiclesValue,
                        0.0,
                      )
                  ..totalValue = valueOrDefault<double>(
                        FFAppState()
                            .stFinancialOVProcessingDisapproved
                            .totalValue,
                        0.0,
                      ) +
                      valueOrDefault<double>(
                        FFAppState()
                            .stDBAdminOVFilters
                            .elementAtOrNull(FFAppState().stCounterLoop)
                            ?.ovTotalValue,
                        0.0,
                      )
                  ..updateOvIds(
                    (e) => e.add(FFAppState()
                        .stDBAdminOVFilters
                        .elementAtOrNull(FFAppState().stCounterLoop)!
                        .id),
                  )
                  ..ovsCounter = valueOrDefault<int>(
                    FFAppState().stFinancialOVProcessingDisapproved.ovsCounter +
                        1,
                    0,
                  ),
              );
              FFAppState().update(() {});
            } else {
              if (FFAppState()
                      .stDBAdminOVFilters
                      .elementAtOrNull(FFAppState().stCounterLoop)
                      ?.ovProcessingId ==
                  5) {
                FFAppState().updateStFinancialOVProcessingApprovedStruct(
                  (e) => e
                    ..servicesValue = valueOrDefault<double>(
                          FFAppState()
                              .stFinancialOVProcessingApproved
                              .servicesValue,
                          0.0,
                        ) +
                        FFAppState()
                            .stDBAdminOVFilters
                            .elementAtOrNull(FFAppState().stCounterLoop)!
                            .ovServicesValue
                    ..materialsValue = valueOrDefault<double>(
                          FFAppState()
                              .stFinancialOVProcessingApproved
                              .materialsValue,
                          0.0,
                        ) +
                        FFAppState()
                            .stDBAdminOVFilters
                            .elementAtOrNull(FFAppState().stCounterLoop)!
                            .ovMaterialsValue
                    ..vehiclesValue = valueOrDefault<double>(
                          FFAppState()
                              .stFinancialOVProcessingApproved
                              .vehiclesValue,
                          0.0,
                        ) +
                        valueOrDefault<double>(
                          FFAppState()
                              .stDBAdminOVFilters
                              .elementAtOrNull(FFAppState().stCounterLoop)
                              ?.ovVehiclesValue,
                          0.0,
                        )
                    ..totalValue = valueOrDefault<double>(
                          FFAppState()
                              .stFinancialOVProcessingApproved
                              .totalValue,
                          0.0,
                        ) +
                        valueOrDefault<double>(
                          FFAppState()
                              .stDBAdminOVFilters
                              .elementAtOrNull(FFAppState().stCounterLoop)
                              ?.ovTotalValue,
                          0.0,
                        )
                    ..ovsCounter = valueOrDefault<int>(
                      valueOrDefault<int>(
                            FFAppState()
                                .stFinancialOVProcessingApproved
                                .ovsCounter,
                            0,
                          ) +
                          1,
                      0,
                    )
                    ..updateOvIds(
                      (e) => e.add(FFAppState()
                          .stDBAdminOVFilters
                          .elementAtOrNull(FFAppState().stCounterLoop)!
                          .id),
                    ),
                );
                FFAppState().update(() {});
              }
            }
          }
        }
      }

      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Não foi possivel filtrar os Atendimentos.',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abUsersByTeam(
  BuildContext context, {
  required int? abTeamId,
}) async {
  ApiCallResponse? resUsersAvailableByTeam;

  resUsersAvailableByTeam = await ApiUsersGroup.apiUsersByTeamIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    teamId: abTeamId,
  );

  if ((resUsersAvailableByTeam.succeeded ?? true)) {
    FFAppState().stUsersByTeam = ((resUsersAvailableByTeam.jsonBody ?? '')
            .toList()
            .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
            .toList() as Iterable<DtUserStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUserStruct>();
    FFAppState().update(() {});
  }
}

Future abFiltersServicesCount(BuildContext context) async {
  FFAppState().stFiltersServicesCount = 0;
  FFAppState().update(() {});
  if (FFAppState().stFiltersServices.systemsParent.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.systems.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.unitsTypesParent.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.unitsTypes.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.assetsTags.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.ordersTypes.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.ordersTypesSubs.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.ordersPriorities.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.ordersPlans.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.ordersObjects.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.contracts.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.units.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
  if (FFAppState().stFiltersServices.teams.length > 0) {
    FFAppState().stFiltersServicesCount =
        FFAppState().stFiltersServicesCount + 1;
  }
}

Future abFiltersAssetsCount(BuildContext context) async {
  FFAppState().stFiltersAssetsCount = 0;
  FFAppState().update(() {});
  if (FFAppState().stFiltersAssets.units.length > 0) {
    FFAppState().stFiltersAssetsCount = FFAppState().stFiltersAssetsCount + 1;
  }
  if (FFAppState().stFiltersAssets.tags.length > 0) {
    FFAppState().stFiltersAssetsCount = FFAppState().stFiltersAssetsCount + 1;
  }
  if (FFAppState().stFiltersAssets.units.length > 0) {
    FFAppState().stFiltersAssetsCount = FFAppState().stFiltersAssetsCount + 1;
  }
  if (FFAppState().stFiltersAssets.types.length > 0) {
    FFAppState().stFiltersAssetsCount = FFAppState().stFiltersAssetsCount + 1;
  }
  if (FFAppState().stFiltersAssets.searchTerms != '') {
    FFAppState().stFiltersAssetsCount = FFAppState().stFiltersAssetsCount + 1;
  }
}

Future abAssetsSearchFiltersResultsOutput(
  BuildContext context, {
  required String? abOutput,
  List<DtAssetStruct>? abAssets,
  required String? abUserUuid,
  required int? abUserId,
  String? abRptSubTitle,
}) async {
  JrAssetsRow? resAssetAdded;

  await JrAssetsTable().delete(
    matchingRows: (rows) => rows.eqOrNull(
      'user_uuid',
      abUserUuid,
    ),
  );
  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = abAssets!.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    resAssetAdded = await JrAssetsTable().insert({
      'user_uuid': abUserUuid,
      'description':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))?.description,
      'tag_description': (abAssets.elementAtOrNull(FFAppState().stCounterLoop))
          ?.tagDescription,
      'tag_sub_description':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))
              ?.tagSubDescription,
      'location':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))?.location,
      'unit_description':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))
              ?.unitDescription,
      'status_code':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))?.statusCode,
      'status_description':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))
              ?.statusDescription,
      'status_at': supaSerialize<DateTime>(
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))
              ?.statusDatetime),
      'type_description':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))
              ?.typeDescription,
      'priority_code':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))?.priorityCode,
      'priority_description':
          (abAssets.elementAtOrNull(FFAppState().stCounterLoop))
              ?.priorityDescription,
      'code': (abAssets.elementAtOrNull(FFAppState().stCounterLoop))?.code,
      'user_id': FFAppState().stUserCurrent.id,
    });
    FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
  }
  await launchURL(
      '${FFDevEnvironmentValues().envJSReport}/assets/assets_list.${abOutput}?rpt_sub_title=${abRptSubTitle}&user_uuid=${abUserUuid}&j_username=${FFDevEnvironmentValues().envJSReportUser}&j_password=${FFDevEnvironmentValues().envJSReportPassword}');
}

Future abFiltersUnitsCount(BuildContext context) async {
  FFAppState().stFiltersUnitsCount = 0;
  FFAppState().update(() {});
  if (FFAppState().stFiltersUnits.systemsParent.length > 0) {
    FFAppState().stFiltersUnitsCount = FFAppState().stFiltersUnitsCount + 1;
  }
  if (FFAppState().stFiltersUnits.systems.length > 0) {
    FFAppState().stFiltersUnitsCount = FFAppState().stFiltersUnitsCount + 1;
  }
  if (FFAppState().stFiltersUnits.unitsTypesParent.length > 0) {
    FFAppState().stFiltersUnitsCount = FFAppState().stFiltersUnitsCount + 1;
  }
  if (FFAppState().stFiltersUnits.unitsTypes.length > 0) {
    FFAppState().stFiltersUnitsCount = FFAppState().stFiltersUnitsCount + 1;
  }
  if (FFAppState().stFiltersUnits.searchTerms != '') {
    FFAppState().stFiltersUnitsCount = FFAppState().stFiltersUnitsCount + 1;
    FFAppState().update(() {});
  }
}

Future abUnitsSearchFilters(
  BuildContext context, {
  List<int>? abSystemsParents,
  List<int>? abSystems,
  List<int>? abUnitsTypesParent,
  List<int>? abUnitsTypes,
  required int? abUnitStatusId,
  required String? abSearchTerms,
}) async {
  ApiCallResponse? resUnits;

  FFAppState().stUnitsSearchResults = [];
  FFAppState().update(() {});
  if (abSystemsParents?.length == 1) {
    resUnits = await ApiUnitsGroup.apiUnitsSearchFiltersCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      systemsParentIdsList: abSystemsParents,
      systemsIdsList: abSystems,
      unitsTypesParentIdsList: abUnitsTypesParent,
      unitsTypesIdsList: abUnitsTypes,
      unitStatusId: abUnitStatusId,
      searchTerms: abSearchTerms,
    );

    if ((resUnits.succeeded ?? true)) {
      FFAppState().stUnitsSearchResults = ((resUnits.jsonBody ?? '')
              .toList()
              .map<DtUnitStruct?>(DtUnitStruct.maybeFromMap)
              .toList() as Iterable<DtUnitStruct?>)
          .withoutNulls
          .toList()
          .cast<DtUnitStruct>();
      FFAppState().update(() {});
      if (FFAppState().stUnitsSearchResults.length > 0) {
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ops ...'),
              content: Text('Sua pesquisa não retornou nenhum registro.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      }
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Ops ...'),
            content: Text('Ocorreu um erro na Pesquisa de Unidades.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Ops ...'),
          content: Text('Selecione UM Sistema apenas.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    return;
  }
}

Future abUnitsSearchFiltersResultsOutput(
  BuildContext context, {
  required String? abOutput,
  required List<DtUnitStruct>? abUnits,
  required String? abUserUuid,
  int? abUserId,
  String? abRptSubTitle,
}) async {
  JrUnitsRow? resUnitAdded;

  await JrUnitsTable().delete(
    matchingRows: (rows) => rows.eqOrNull(
      'user_uuid',
      abUserUuid,
    ),
  );
  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = abUnits!.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    resUnitAdded = await JrUnitsTable().insert({
      'user_uuid': abUserUuid,
      'unit_type_description':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))
              ?.systemChildDescription,
      'code': (abUnits.elementAtOrNull(FFAppState().stCounterLoop))?.code,
      'description':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))?.description,
      'latitude':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))?.latitude,
      'longitude':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))?.longitude,
      'description_full': (abUnits.elementAtOrNull(FFAppState().stCounterLoop))
          ?.descriptionFull,
      'unit_type_parent_description':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))
              ?.unitTypeParentDescription,
      'system_parent_description':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))
              ?.systemParentDescription,
      'system_description':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))
              ?.systemChildDescription,
      'address_full':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))?.addressFull,
      'status_description':
          (abUnits.elementAtOrNull(FFAppState().stCounterLoop))
              ?.statusDescription,
      'unit_type_code': (abUnits.elementAtOrNull(FFAppState().stCounterLoop))
          ?.unitTypeChildCode,
    });
    FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
  }
  await launchURL(
      '${FFDevEnvironmentValues().envJSReport}/units/units_list.${abOutput}?rpt_sub_title=${abRptSubTitle}&user_uuid=${abUserUuid}&j_username=${FFDevEnvironmentValues().envJSReportUser}&j_password=${FFDevEnvironmentValues().envJSReportPassword}');
}

Future abReportExtension(
  BuildContext context, {
  required String? abOutput,
  required String? abRptName,
}) async {
  if (abRptName == 'assets_list') {
    await action_blocks.abAssetsSearchFiltersResultsOutput(
      context,
      abOutput: abOutput,
      abAssets: FFAppState().stAssetsSearchResults,
      abUserUuid: currentUserUid,
      abUserId: FFAppState().stUserCurrent.id,
    );
  } else if (abRptName == 'units_list') {
    await action_blocks.abUnitsSearchFiltersResultsOutput(
      context,
      abOutput: abOutput,
      abUnits: FFAppState().stUnitsSearchResults,
      abUserUuid: currentUserUid,
      abUserId: FFAppState().stUserCurrent.id,
      abRptSubTitle: '',
    );
  } else if (abRptName == 'tm_assets_list') {
    await action_blocks.abAppOfflineUpdatesTablesCompanies(
      context,
      abIsAvailable: false,
    );
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Reunindo dados para o documento ...',
        style: TextStyle(),
      ),
      duration: Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).primary,
    ),
  );
}

Future<bool> abOVSelectedAssetCUD(
  BuildContext context, {
  required String? abOperation,
  required int? abOVId,
  required int? abAssetId,
}) async {
  OrdersVisitsAssetsRow? resOVAssetAdded;
  bool? resBeforeIsFileMoved;
  bool? resAfterIsFileMoved;

  await action_blocks.abOVAssetIsExist(
    context,
    abOVId: abOVId,
  );
  if ((abOperation == 'create') || (abOperation == 'update')) {
    if (functions.cfContainInList(
        FFAppState().stRowsSelected.toList(), abAssetId!)!) {
      FFAppState().addToStRowsSelected(abAssetId);
      FFAppState().update(() {});
      FFAppState().stOVAssetsSearchFilters = [];
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'ATIVO já associado.',
            style: TextStyle(),
          ),
          duration: Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
        ),
      );
      return false;
    } else {
      await action_blocks.abAssetSelected(
        context,
        abAssetId: abAssetId,
      );
      if (abOperation == 'create') {
        resOVAssetAdded = await OrdersVisitsAssetsTable().insert({
          'ov_id': abOVId,
          'asset_id': abAssetId,
          'before_unit_id': FFAppState().stAssetSelected.unitId,
          'before_tag_id': FFAppState().stAssetSelected.tagId,
          'before_tag_sub_id': FFAppState().stAssetSelected.tagSubId,
          'before_status_id': FFAppState().stAssetSelected.statusId,
          'before_status_at': supaSerialize<DateTime>(
              FFAppState().stAssetSelected.statusDatetime),
          'before_priority_id': FFAppState().stAssetSelected.priorityId,
          'after_unit_id': FFAppState().stAssetSelected.unitId,
          'after_tag_id': FFAppState().stAssetSelected.tagId,
          'after_tag_sub_id': FFAppState().stAssetSelected.tagSubId,
          'after_status_id': FFAppState().stAssetSelected.statusId,
          'after_status_at': supaSerialize<DateTime>(
              FFAppState().stAssetSelected.statusDatetime),
          'after_priority_id': FFAppState().stAssetSelected.priorityId,
          'is_moved': false,
          'processing_id': 1,
          'created_user_id': FFAppState().stUserCurrent.id,
          'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
          'is_deleted': false,
          'version_mode': FFAppState().stAppVersionMode?.name,
          'o_id': FFAppState().stOVSelected.oId,
          'op_id': FFAppState().stOVSelected.opId,
        });
        await action_blocks.abOVSelectedAsset(
          context,
          abOVAssetId: resOVAssetAdded.id,
        );
        FFAppState().stOVAssetsSearchFilters = [];
      } else {
        var confirmDialogResponse = await showDialog<bool>(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Ops ...'),
                  content: Text('Deseja realmente substituir o Ativo ? '),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, false),
                      child: Text('Cancelar'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, true),
                      child: Text('Confirmar'),
                    ),
                  ],
                );
              },
            ) ??
            false;
        if (confirmDialogResponse) {
          resBeforeIsFileMoved = await actions.caStorageMoveFile(
            FFDevEnvironmentValues().envStorageBucket,
            '${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}',
            'version-${FFAppState().stAppVersionMode?.name}/companies/1/assets/${FFAppState().stAssetSelected.id.toString()}/${FFAppState().stOVSelectedAsset.beforeImgFileName}',
          );
          if (resBeforeIsFileMoved) {
            resAfterIsFileMoved = await actions.caStorageMoveFile(
              FFDevEnvironmentValues().envStorageBucket,
              '${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}',
              'version-${FFAppState().stAppVersionMode?.name}/companies/1/assets/${FFAppState().stAssetSelected.id.toString()}/${FFAppState().stOVSelectedAsset.afterImgFileName}',
            );
            if (!resAfterIsFileMoved) {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Ops ...'),
                    content:
                        Text('Não foi possivel a imagem da condição DEPOIS.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text('Ok'),
                      ),
                    ],
                  );
                },
              );
              return false;
            }
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Ops ...'),
                  content: Text('Não foi possivel a imagem da condição Antes.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                );
              },
            );
            return false;
          }

          await OrdersVisitsAssetsTable().update(
            data: {
              'asset_id': abAssetId,
              'before_unit_id': FFAppState().stAssetSelected.unitId,
              'before_tag_sub_id': FFAppState().stAssetSelected.tagSubId,
              'before_tag_id': FFAppState().stAssetSelected.tagId,
              'before_status_id': FFAppState().stAssetSelected.statusId,
              'before_status_at': supaSerialize<DateTime>(
                  FFAppState().stAssetSelected.statusDatetime),
              'before_img_file_path':
                  'version-${FFAppState().stAppVersionMode?.name}/companies/1/assets/${FFAppState().stAssetSelected.id.toString()}',
              'before_priority_id': FFAppState().stAssetSelected.priorityId,
              'is_moved': false,
              'after_unit_id': FFAppState().stAssetSelected.unitId,
              'after_tag_id': FFAppState().stAssetSelected.tagId,
              'after_tag_sub_id': FFAppState().stAssetSelected.tagSubId,
              'after_status_id': FFAppState().stAssetSelected.statusId,
              'after_status_at': supaSerialize<DateTime>(
                  FFAppState().stAssetSelected.statusDatetime),
              'after_img_file_path':
                  'version-${FFAppState().stAppVersionMode?.name}/companies/1/assets/${FFAppState().stAssetSelected.id.toString()}',
              'after_priority_id': FFAppState().stAssetSelected.priorityId,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              FFAppState().stOVSelectedAsset.id,
            ),
          );
          await action_blocks.abOVSelectedAsset(
            context,
            abOVAssetId: FFAppState().stOVSelectedAsset.id,
          );
          FFAppState().stAssetsSearchResults = [];
          FFAppState().stAssetNavBarOption = 'switch';
          FFAppState().update(() {});
        } else {
          return false;
        }
      }

      return true;
    }
  } else {
    return false;
  }
}

Future abOVSelectedMateriais(
  BuildContext context, {
  required int? abOVId,
}) async {
  ApiCallResponse? resOVMaterials;

  resOVMaterials =
      await ApiOrdersVisitsMaterialsGroup.apiMaterialsByOVIdCall.call(
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    versionMode: FFAppState().stAppVersionMode?.name,
    ovId: abOVId,
  );

  if ((resOVMaterials.succeeded ?? true)) {
    FFAppState().stOVSelectedMateriais = ((resOVMaterials.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitAssetMaterialStruct?>(
                DtOrderVisitAssetMaterialStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitAssetMaterialStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitAssetMaterialStruct>();
    FFAppState().update(() {});
  }
}

Future abUsersSearchResults(
  BuildContext context, {
  required String? abFilter,
}) async {
  ApiCallResponse? apiResultinw;

  if (abFilter == 'company') {
    apiResultinw = await ApiUsersGroup.apiUsersByCompanyIdCall.call(
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      companyId: FFAppState().stCompanySelected.id,
    );

    if ((apiResultinw.succeeded ?? true)) {
      FFAppState().stUsersSearchResults = ((apiResultinw.jsonBody ?? '')
              .toList()
              .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
              .toList() as Iterable<DtUserStruct?>)
          .withoutNulls
          .toList()
          .cast<DtUserStruct>();
      FFAppState().update(() {});
    }
  }
}

Future abAppOfflineUpdatesTablesOCancelReasons(BuildContext context) async {
  ApiCallResponse? resOCancelReasons;

  resOCancelReasons =
      await ApiOrdersCancelReasonsGroup.apiOrdersCancelReasonsAllCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resOCancelReasons.succeeded ?? true)) {
    FFAppState().stOfflineOCancelReasons = ((resOCancelReasons.jsonBody ?? '')
            .toList()
            .map<DtOrderCancelReasonStruct?>(
                DtOrderCancelReasonStruct.maybeFromMap)
            .toList() as Iterable<DtOrderCancelReasonStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderCancelReasonStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersCancelReasons.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abAssetSelectedActivities(
  BuildContext context, {
  required int? abAssetId,
  String? abSearchTerms,
}) async {
  ApiCallResponse? apiResult3t9;
  ApiCallResponse? resOVAssets;

  if (abSearchTerms != null && abSearchTerms != '') {
    apiResult3t9 = await ApiOrdersVisitsAssetsGroup
        .apiOVAssetsActivitiesByAssetIdCall
        .call(
      apiUrl: FFDevEnvironmentValues().envApiUrl,
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      assetId: FFAppState().stAssetSelected.id,
      activities: abSearchTerms,
    );

    if ((apiResult3t9.succeeded ?? true)) {
      FFAppState().stAssetSelectedOVAssets = ((apiResult3t9.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitAssetStruct?>(
                  DtOrderVisitAssetStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitAssetStruct?>)
          .withoutNulls
          .toList()
          .cast<DtOrderVisitAssetStruct>();
      FFAppState().update(() {});
      FFAppState().stCounterLoop = 0;
      FFAppState().stCounterLoopFinal = valueOrDefault<int>(
        FFAppState().stAssetSelectedOVAssets.length,
        0,
      );
      while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
        FFAppState().updateStAssetSelectedOVAssetsAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stAssetSelectedOVAssets
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt)
            ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stAssetSelectedOVAssets
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovEndedAt),
        );
        FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      }
    }
  } else {
    resOVAssets = await ApiOrdersVisitsAssetsGroup.apiOVAssetByAssetIdCall.call(
      apiUrl: FFDevEnvironmentValues().envApiUrl,
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      versionMode: FFAppState().stAppVersionMode?.name,
      assetId: abAssetId,
    );

    if ((resOVAssets.succeeded ?? true)) {
      FFAppState().stAssetSelectedOVAssets = ((resOVAssets.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitAssetStruct?>(
                  DtOrderVisitAssetStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitAssetStruct?>)
          .withoutNulls
          .toList()
          .cast<DtOrderVisitAssetStruct>();
      FFAppState().update(() {});
      FFAppState().stCounterLoop = 0;
      FFAppState().stCounterLoopFinal = valueOrDefault<int>(
        FFAppState().stAssetSelectedOVAssets.length,
        0,
      );
      while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
        FFAppState().updateStAssetSelectedOVAssetsAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..ovStartedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stAssetSelectedOVAssets
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovStartedAt)
            ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                FFAppState()
                    .stAssetSelectedOVAssets
                    .elementAtOrNull(FFAppState().stCounterLoop)!
                    .ovEndedAt),
        );
        FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      }
    }
  }
}

Future abUserCurrentTeam(
  BuildContext context, {
  required DtUserStruct? abDtUser,
}) async {
  ApiCallResponse? apiResult5bb;

  apiResult5bb = await ApiUsersGroup.apiUsersByTeamIdCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    teamId: abDtUser?.teamId,
  );

  if ((apiResult5bb.succeeded ?? true)) {
    FFAppState().stUserCurrentTeams = ((apiResult5bb.jsonBody ?? '')
            .toList()
            .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
            .toList() as Iterable<DtUserStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUserStruct>();
    FFAppState().update(() {});
  }
}

Future abDBAdminOOVENoFiledAll(BuildContext context) async {
  ApiCallResponse? resDBAdminOVExtras;

  resDBAdminOVExtras =
      await ApiOrdersVisitsExtrasGroup.apiOveNoFiledAllCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
  );

  if ((resDBAdminOVExtras.succeeded ?? true)) {
    FFAppState().stDBAdminOOVEFilters = ((resDBAdminOVExtras.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraStruct?>(DtOrderVisitExtraStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitExtraStruct>();
    FFAppState().update(() {});
  }
}

Future abOVESelected(
  BuildContext context, {
  required int? abOVEId,
}) async {
  ApiCallResponse? resOVExtra;

  resOVExtra = await ApiOrdersVisitsExtrasGroup.apiOVEByIdCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    oveId: abOVEId,
  );

  if ((resOVExtra.succeeded ?? true)) {
    FFAppState().stOVESelected = ((resOVExtra.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraStruct?>(DtOrderVisitExtraStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraStruct?>)
        .withoutNulls
        .firstOrNull!;
    FFAppState().update(() {});
    await action_blocks.abOVESelectedTeamUsers(
      context,
      abOVEId: FFAppState().stOVESelected.id,
    );
  }
}

Future abOVESelectedTeamUsers(
  BuildContext context, {
  required int? abOVEId,
}) async {
  ApiCallResponse? resOVETeamUsers;

  resOVETeamUsers =
      await ApiOrdersVisitsExtrasTeamsGroup.apiTeamUsersByOVEIdCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    oveId: abOVEId,
  );

  FFAppState().stOVESelectedTeamUsers = ((resOVETeamUsers.jsonBody ?? '')
          .toList()
          .map<DtOrderVisitExtraTeamUserStruct?>(
              DtOrderVisitExtraTeamUserStruct.maybeFromMap)
          .toList() as Iterable<DtOrderVisitExtraTeamUserStruct?>)
      .withoutNulls
      .toList()
      .cast<DtOrderVisitExtraTeamUserStruct>();
  FFAppState().update(() {});
}

Future abDbUsersOVEFilters(BuildContext context) async {
  ApiCallResponse? resTeamsDescendants;
  ApiCallResponse? resDbUserOve;

  FFAppState().stDBUserNavBarOption = 'orders_visits_extras';
  FFAppState().stFiltersOVE = DtFiltersOVEStruct();
  resTeamsDescendants = await ApiTeamsGroup.apiTeamsDescendantsByIdCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    teamId: FFAppState().stUserCurrent.teamId,
  );

  if ((resTeamsDescendants.succeeded ?? true)) {
    FFAppState().updateStFiltersOVEStruct(
      (e) => e
        ..teamsIds = ((resTeamsDescendants?.jsonBody ?? '')
                .toList()
                .map<DtTeamDescendantStruct?>(
                    DtTeamDescendantStruct.maybeFromMap)
                .toList() as Iterable<DtTeamDescendantStruct?>)
            .withoutNulls
            .map((e) => e.id)
            .toList()
            .toList(),
    );
    FFAppState().update(() {});
    resDbUserOve =
        await ApiOrdersVisitsExtrasGroup.apiOveNoFiledFiltersCall.call(
      apiUrl: FFDevEnvironmentValues().envApiUrl,
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      teamsIdsList: FFAppState().stFiltersOVE.teamsIds,
    );

    if ((resDbUserOve.succeeded ?? true)) {
      FFAppState().stDBUsersOVEFilters = ((resDbUserOve.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitExtraStruct?>(
                  DtOrderVisitExtraStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitExtraStruct?>)
          .withoutNulls
          .toList()
          .cast<DtOrderVisitExtraStruct>();
      FFAppState().update(() {});
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Error abDbUsersOVEFilters',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
    return;
  }

  FFAppState().stFiltersOVE = DtFiltersOVEStruct();
  FFAppState().update(() {});
}

Future abDBAdminOVEFilters(BuildContext context) async {
  ApiCallResponse? resDBAdminOVExtras;

  resDBAdminOVExtras = await ApiOrdersVisitsExtrasGroup.apiOVEFiltersCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    oTypesIdsList: FFAppState().stFiltersOVE.oTypesIds,
    teamsIdsList: FFAppState().stFiltersOVE.teamsIds,
    unitsIdsList: FFAppState().stFiltersOVE.unitsIds,
    assetsTagsIdsList: FFAppState().stFiltersOVE.assetsTagsIds,
    dateStart: functions
        .cfConvDatetimeENToString(FFAppState().stFiltersOVE.dateStart!),
    dateEnd:
        functions.cfConvDatetimeENToString(FFAppState().stFiltersOVE.dateEnd!),
    systemsParentsIdsList: FFAppState().stFiltersOVE.systemsParentsIds,
    systemsIdsList: FFAppState().stFiltersOVE.systemsIds,
    unitsTypesParentsIdsList: FFAppState().stFiltersOVE.unitsTypesParentsIds,
    unitsTypesIdsList: FFAppState().stFiltersOVE.unitsTypesIds,
    oCausesReasonsIdsList: FFAppState().stFiltersOVE.oCausesReasonsIds,
  );

  if ((resDBAdminOVExtras.succeeded ?? true)) {
    FFAppState().stDBAdminOVEProcessingId1Hours = 0.0;
    FFAppState().stDBAdminOVEProcessingId2Hours = 0.0;
    FFAppState().stDBAdminOVEProcessingId3Hours = 0.0;
    FFAppState().stDBAdminOVEProcessingId4Hours = 00.0;
    FFAppState().stDBAdminOVEProcessingId5Hours = 0.0;
    FFAppState().stDbAdminOveProcessingId5HoursFiled = 0.0;
    FFAppState().stDBAdminOVEFilters = ((resDBAdminOVExtras.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraStruct?>(DtOrderVisitExtraStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitExtraStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = valueOrDefault<int>(
      FFAppState().stDBAdminOVEFilters.length,
      0,
    );
    FFAppState().update(() {});
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState()
              .stDBAdminOVEFilters
              .elementAtOrNull(FFAppState().stCounterLoop)
              ?.processingId ==
          1) {
        FFAppState().stDBAdminOVEProcessingId1Hours =
            FFAppState().stDBAdminOVEProcessingId1Hours +
                valueOrDefault<double>(
                  valueOrDefault<double>(
                        FFAppState()
                            .stDBAdminOVEFilters
                            .elementAtOrNull(FFAppState().stCounterLoop)
                            ?.durationHours,
                        0.0,
                      ) *
                      valueOrDefault<int>(
                        FFAppState()
                            .stDBAdminOVEFilters
                            .elementAtOrNull(FFAppState().stCounterLoop)
                            ?.teamAmount,
                        0,
                      ),
                  0.0,
                );
        FFAppState().update(() {});
      } else {
        if (FFAppState()
                .stDBAdminOVEFilters
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.processingId ==
            2) {
          FFAppState().stDBAdminOVEProcessingId2Hours =
              FFAppState().stDBAdminOVEProcessingId2Hours +
                  valueOrDefault<double>(
                    valueOrDefault<double>(
                          FFAppState()
                              .stDBAdminOVEFilters
                              .elementAtOrNull(FFAppState().stCounterLoop)
                              ?.durationHours,
                          0.0,
                        ) *
                        valueOrDefault<int>(
                          FFAppState()
                              .stDBAdminOVEFilters
                              .elementAtOrNull(FFAppState().stCounterLoop)
                              ?.teamAmount,
                          0,
                        ),
                    0.0,
                  );
          FFAppState().update(() {});
        } else {
          if (FFAppState()
                  .stDBAdminOVEFilters
                  .elementAtOrNull(FFAppState().stCounterLoop)
                  ?.processingId ==
              3) {
            FFAppState().stDBAdminOVEProcessingId3Hours =
                FFAppState().stDBAdminOVEProcessingId3Hours +
                    valueOrDefault<double>(
                      valueOrDefault<double>(
                            FFAppState()
                                .stDBAdminOVEFilters
                                .elementAtOrNull(FFAppState().stCounterLoop)
                                ?.durationHours,
                            0.0,
                          ) *
                          valueOrDefault<int>(
                            FFAppState()
                                .stDBAdminOVEFilters
                                .elementAtOrNull(FFAppState().stCounterLoop)
                                ?.teamAmount,
                            0,
                          ),
                      0.0,
                    );
            FFAppState().update(() {});
          } else {
            if (FFAppState()
                    .stDBAdminOVEFilters
                    .elementAtOrNull(FFAppState().stCounterLoop)
                    ?.processingId ==
                4) {
              FFAppState().stDBAdminOVEProcessingId4Hours =
                  FFAppState().stDBAdminOVEProcessingId4Hours +
                      valueOrDefault<double>(
                        valueOrDefault<double>(
                              FFAppState()
                                  .stDBAdminOVEFilters
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.durationHours,
                              0.0,
                            ) *
                            valueOrDefault<int>(
                              FFAppState()
                                  .stDBAdminOVEFilters
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.teamAmount,
                              0,
                            ),
                        0.0,
                      );
              FFAppState().update(() {});
            } else {
              if (FFAppState()
                      .stDBAdminOVEFilters
                      .elementAtOrNull(FFAppState().stCounterLoop)
                      ?.processingId ==
                  5) {
                if (FFAppState()
                        .stDBAdminOVEFilters
                        .elementAtOrNull(FFAppState().stCounterLoop)
                        ?.isArchived ==
                    false) {
                  FFAppState().stDBAdminOVEProcessingId5Hours = FFAppState()
                          .stDBAdminOVEProcessingId5Hours +
                      valueOrDefault<double>(
                        valueOrDefault<double>(
                              FFAppState()
                                  .stDBAdminOVEFilters
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.durationHours,
                              0.0,
                            ) *
                            valueOrDefault<int>(
                              FFAppState()
                                  .stDBAdminOVEFilters
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.teamAmount,
                              0,
                            ),
                        0.0,
                      );
                  FFAppState().update(() {});
                } else {
                  FFAppState()
                      .stDbAdminOveProcessingId5HoursFiled = FFAppState()
                          .stDbAdminOveProcessingId5HoursFiled +
                      valueOrDefault<double>(
                        valueOrDefault<double>(
                              FFAppState()
                                  .stDBAdminOVEFilters
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.durationHours,
                              0.0,
                            ) *
                            valueOrDefault<int>(
                              FFAppState()
                                  .stDBAdminOVEFilters
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.teamAmount,
                              0,
                            ),
                        0.0,
                      );
                }
              }
            }
          }
        }
      }

      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('2'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    return;
  }
}

Future abOVEProcessing(
  BuildContext context, {
  required int? abOVEId,
  String? abOMask,
  required String? abStartedAt,
  required String? abEndedAt,
  required int? abUserId,
  required DateTime? abUpdatedAt,
  required int? abUnitId,
  required int? abOTypeId,
  required int? abAssetTagId,
  required int? abPriorityId,
  required String? abRequestedServices,
  required int? abProcessingId,
  bool? abIsFiled,
  String? abDisapprovedComments,
  required int? abOTypeSubId,
  required int? abOCauseReasonId,
  int? abUnblockedUserId,
}) async {
  List<VUnitsRow>? resUnit;
  ApiCallResponse? apiResultsue;

  resUnit = await VUnitsTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      abUnitId,
    ),
  );
  await OrdersVisitsExtrasTable().update(
    data: {
      'o_mask': abOMask,
      'started_at': supaSerialize<DateTime>(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt!)),
      'ended_at': supaSerialize<DateTime>(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt!)),
      'duration_hours': functions.cfGetDifDecHoursBetweenDates(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt),
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt),
          2),
      'unit_id': abUnitId,
      'o_type_id': abOTypeId,
      'asset_tag_id': abAssetTagId,
      'priority_id': abPriorityId,
      'requested_services': abRequestedServices,
      'system_parent_id': valueOrDefault<int>(
        resUnit.firstOrNull?.systemParentId,
        0,
      ),
      'system_id': valueOrDefault<int>(
        resUnit.firstOrNull?.systemId,
        0,
      ),
      'unit_type_parent_id': valueOrDefault<int>(
        resUnit.firstOrNull?.unitTypeParentId,
        0,
      ),
      'unit_type_id': valueOrDefault<int>(
        resUnit.firstOrNull?.unitTypeId,
        0,
      ),
      'started_at_date': supaSerialize<DateTime>(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt)),
      'started_at_hour_min': supaSerialize<PostgresTime>(PostgresTime(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt))),
      'ended_at_date': supaSerialize<DateTime>(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt)),
      'ended_at_hour_min': supaSerialize<PostgresTime>(PostgresTime(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt))),
      'o_type_sub_id': abOTypeSubId,
      'o_cause_reason_id': abOCauseReasonId,
    },
    matchingRows: (rows) => rows.eqOrNull(
      'id',
      abOVEId,
    ),
  );
  apiResultsue =
      await ApiOrdersVisitsExtrasTeamsGroup.apiOrderVisitTeamExtraByIdCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    oveId: abOVEId,
  );

  if ((apiResultsue.succeeded ?? true)) {
    FFAppState().stOVESelectedTeamUsers = ((apiResultsue.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraTeamUserStruct?>(
                DtOrderVisitExtraTeamUserStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraTeamUserStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitExtraTeamUserStruct>();
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = valueOrDefault<int>(
      FFAppState().stOVESelectedTeamUsers.length,
      0,
    );
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      await OrdersVisitsExtrasTeamsTable().update(
        data: {
          'duration_hours': functions.cfGetDifDecHoursBetweenDates(
              functions
                  .cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt),
              functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt),
              2),
          'started_at_date': supaSerialize<DateTime>(functions
              .cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt)),
          'started_at_hour_min': supaSerialize<PostgresTime>(PostgresTime(
              functions
                  .cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt))),
          'ended_at_date': supaSerialize<DateTime>(functions
              .cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt)),
          'ended_at_hour_min': supaSerialize<PostgresTime>(PostgresTime(
              functions
                  .cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt))),
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          valueOrDefault<int>(
            FFAppState()
                .stOVESelectedTeamUsers
                .elementAtOrNull(FFAppState().stCounterLoop)
                ?.id,
            0,
          ),
        ),
      );
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    return;
  }

  if (abProcessingId == 1) {
    await OrdersVisitsExtrasTable().update(
      data: {
        'updated_user_id': abUserId,
        'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'processing_id': abProcessingId,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        abOVEId,
      ),
    );
  } else if (abProcessingId == 2) {
    if (functions.cfConvDatetimeBrStringToDatetimeEn(abStartedAt)! >=
        getCurrentTimestamp) {
      await OrdersVisitsExtrasTable().update(
        data: {
          'reported_user_id': abUserId,
          'reported_at': supaSerialize<DateTime>(getCurrentTimestamp),
          'processing_id': abProcessingId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          abOVEId,
        ),
      );
    } else {
      if (functions.cfIsIntervalGreaterDifIntDaysBetweenDates(
          functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt),
          getCurrentTimestamp,
          1)) {
        if (abUnblockedUserId! > 0) {
          await OrdersVisitsExtrasTable().update(
            data: {
              'reported_user_id': abUserId,
              'reported_at': supaSerialize<DateTime>(getCurrentTimestamp),
              'processing_id': abProcessingId,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              abOVEId,
            ),
          );
        } else {
          await OrdersVisitsExtrasTable().update(
            data: {
              'is_blocked': true,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              abOVEId,
            ),
          );
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: Text('Ops...'),
                content: Text(
                    'Serviço Extraordinário foi bloqueado por estar fora do prazo de comunicacao.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
        }
      } else {
        await OrdersVisitsExtrasTable().update(
          data: {
            'reported_user_id': abUserId,
            'reported_at': supaSerialize<DateTime>(getCurrentTimestamp),
            'processing_id': abProcessingId,
          },
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            abOVEId,
          ),
        );
      }
    }
  } else if (abProcessingId == 3) {
    await OrdersVisitsExtrasTable().update(
      data: {
        'revised_user_id': abUserId,
        'revised_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'processing_id': abProcessingId,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        abOVEId,
      ),
    );
  } else if (abProcessingId == 4) {
    await OrdersVisitsExtrasTable().update(
      data: {
        'disapproved_user_id': abUserId,
        'disapproved_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'processing_id': abProcessingId,
        'disapproved_comments': abDisapprovedComments,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        abOVEId,
      ),
    );
  } else if (abProcessingId == 5) {
    if (!abIsFiled!) {
      await OrdersVisitsExtrasTable().update(
        data: {
          'approved_user_id': abUserId,
          'approved_at': supaSerialize<DateTime>(getCurrentTimestamp),
          'processing_id': abProcessingId,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          abOVEId,
        ),
      );
    } else {
      await OrdersVisitsExtrasTable().update(
        data: {
          'archived_at': supaSerialize<DateTime>(getCurrentTimestamp),
          'archived_user_id': FFAppState().stUserCurrent.id,
          'is_archived': true,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          abOVEId,
        ),
      );
    }
  } else {
    await OrdersVisitsExtrasTable().update(
      data: {
        'deleted_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'deleted_user_id': FFAppState().stUserCurrent.id,
        'is_deleted': true,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        abOVEId,
      ),
    );
  }

  await action_blocks.abOVESelectedTeamUsers(
    context,
    abOVEId: abOVEId,
  );
  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = valueOrDefault<int>(
    FFAppState().stOVESelectedTeamUsers.length,
    0,
  );
  FFAppState().update(() {});
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    await OrdersVisitsExtrasTeamsTable().update(
      data: {
        'duration_hours': functions.cfGetDifDecHoursBetweenDates(
            functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abStartedAt),
            functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(abEndedAt),
            2),
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState()
            .stOVESelectedTeamUsers
            .elementAtOrNull(FFAppState().stCounterLoop)
            ?.id,
      ),
    );
    FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
  }
  await OrdersVisitsExtrasTable().update(
    data: {
      'team_amount': valueOrDefault<int>(
        FFAppState().stOVESelectedTeamUsers.length,
        0,
      ),
    },
    matchingRows: (rows) => rows.eqOrNull(
      'id',
      abOVEId,
    ),
  );
}

Future abFiltersOveCount(BuildContext context) async {
  FFAppState().stFiltersOveCount = 0;
  FFAppState().update(() {});
  if (FFAppState().stFiltersOVE.teamsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.unitsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.oTypesIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.assetsTagsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.oTypesSubsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.systemsParentsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.systemsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.unitsTypesParentsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.unitsTypesIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
  if (FFAppState().stFiltersOVE.oCausesReasonsIds.length > 0) {
    FFAppState().stFiltersOveCount = FFAppState().stFiltersOveCount + 1;
  }
}

Future abUserOveFollowing(BuildContext context) async {
  ApiCallResponse? resUserOveFollowin;
  ApiCallResponse? resOveFollowing;

  FFAppState().stDbUserOveFollowing = [];
  resUserOveFollowin =
      await ApiOrdersVisitsExtrasFollowersGroup.apiOVEByFollowerCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    userId: FFAppState().stUserCurrent.id,
  );

  if ((resUserOveFollowin.succeeded ?? true)) {
    FFAppState().stUserOveFollowing = ((resUserOveFollowin.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraFollowerStruct?>(
                DtOrderVisitExtraFollowerStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraFollowerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitExtraFollowerStruct>();
    FFAppState().update(() {});
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stUserOveFollowing.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      resOveFollowing = await ApiOrdersVisitsExtrasGroup.apiOVEByIdCall.call(
        apiUrl: FFDevEnvironmentValues().envApiUrl,
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        oveId: FFAppState()
            .stUserOveFollowing
            .elementAtOrNull(FFAppState().stCounterLoop)
            ?.oveId,
      );

      if ((resOveFollowing.succeeded ?? true)) {
        FFAppState().addToStDbUserOveFollowing(
            ((resOveFollowing.jsonBody ?? '')
                    .toList()
                    .map<DtOrderVisitExtraStruct?>(
                        DtOrderVisitExtraStruct.maybeFromMap)
                    .toList() as Iterable<DtOrderVisitExtraStruct?>)
                .withoutNulls
                .firstOrNull!);
        FFAppState().update(() {});
      }
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Ops ... Ocorreu um erro de sincronia OrdersVisitsExtrasFollowers',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abDbAdminOOVENoFiledFilters(BuildContext context) async {
  ApiCallResponse? resDBAdminOVExtras;

  resDBAdminOVExtras =
      await ApiOrdersVisitsExtrasGroup.apiOveNoFiledFiltersCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    oTypesIdsList: FFAppState().stFiltersOVE.oTypesIds,
    teamsIdsList: FFAppState().stFiltersOVE.teamsIds,
    unitsIdsList: FFAppState().stFiltersOVE.unitsIds,
    assetsTagsIdsList: FFAppState().stFiltersOVE.assetsTagsIds,
    systemsParentsIdsList: FFAppState().stFiltersOVE.systemsParentsIds,
    systemsIdsList: FFAppState().stFiltersOVE.systemsIds,
    unitsTypesParentsIdsList: FFAppState().stFiltersOVE.unitsTypesParentsIds,
    unitsTypesIdsList: FFAppState().stFiltersOVE.unitsTypesIds,
    oCausesReasonsIdsList: FFAppState().stFiltersOVE.oCausesReasonsIds,
  );

  if ((resDBAdminOVExtras.succeeded ?? true)) {
    FFAppState().stDBAdminOOVEFilters = ((resDBAdminOVExtras.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraStruct?>(DtOrderVisitExtraStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitExtraStruct>();
    FFAppState().update(() {});
  } else {
    return;
  }
}

Future abOVESearchById(
  BuildContext context, {
  required int? abOveId,
}) async {
  ApiCallResponse? resOve;

  FFAppState().stDBAdminOOVEFilters = [];
  FFAppState().stDBAdminOVEFilters = [];
  resOve = await ApiOrdersVisitsExtrasGroup.apiOVEByIdCall.call(
    apiUrl: FFDevEnvironmentValues().envApiUrl,
    apiKey: FFDevEnvironmentValues().envApiKey,
    accessToken: currentJwtToken,
    oveId: abOveId,
  );

  if ((resOve.succeeded ?? true)) {
    FFAppState().stDBAdminOOVEFilters = ((resOve.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraStruct?>(DtOrderVisitExtraStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitExtraStruct>();
    FFAppState().stDBAdminOVEFilters = ((resOve.jsonBody ?? '')
            .toList()
            .map<DtOrderVisitExtraStruct?>(DtOrderVisitExtraStruct.maybeFromMap)
            .toList() as Iterable<DtOrderVisitExtraStruct?>)
        .withoutNulls
        .toList()
        .cast<DtOrderVisitExtraStruct>();
    FFAppState().update(() {});
    if (FFAppState().stDBAdminOOVEFilters.length > 0) {
      FFAppState().stOVEProcessingId = valueOrDefault<int>(
        FFAppState().stDBAdminOOVEFilters.firstOrNull?.processingId,
        1,
      );
      FFAppState().stOVEIsFiled = valueOrDefault<bool>(
        FFAppState().stDBAdminOOVEFilters.firstOrNull?.isArchived,
        false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Ops... Nenhum registro localizado.',
            style: TextStyle(),
          ),
          duration: Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
      return;
    }
  }
}

import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_users_list_item_model.dart';
export 'cp_users_list_item_model.dart';

class CpUsersListItemWidget extends StatefulWidget {
  const CpUsersListItemWidget({
    super.key,
    required this.cpUserDt,
  });

  final DtUserStruct? cpUserDt;

  @override
  State<CpUsersListItemWidget> createState() => _CpUsersListItemWidgetState();
}

class _CpUsersListItemWidgetState extends State<CpUsersListItemWidget> {
  late CpUsersListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpUsersListItemModel());

    _model.switchValue1 = widget.cpUserDt!.isAdmin;
    _model.switchValue2 = widget.cpUserDt!.isTeamLeader;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await action_blocks.abUserSelected(
            context,
            abUserId: widget.cpUserDt?.id,
          );

          context.pushNamed(PgSettingsUserEditWidget.routeName);
        },
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.cpUserPicProfileModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpUserPicProfileWidget(
                              cpSize: 70,
                              imgUrl:
                                  '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpUserDt?.imgFilePath}/${widget.cpUserDt?.imgFileName}',
                              toolTip: widget.cpUserDt!.nameShort,
                              isAvailable: false,
                              isOrderVisitIdInProgress: false,
                              displayAvailable: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        widget.cpUserDt?.nameFull,
                                        'Nome',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      '(${valueOrDefault<String>(
                                        widget.cpUserDt?.nameShort,
                                        'Apelido NI',
                                      )})',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      if (widget.cpUserDt?.statusId == 1) {
                                        return FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius: 20.0,
                                          borderWidth: 6.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          icon: Icon(
                                            Icons.thumb_up,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Ativação de Conta'),
                                                          content: Text(
                                                              'Deseja realmente Ativar ?'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: Text(
                                                                  'Cancelar'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child: Text(
                                                                  'Confirmar'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                            if (confirmDialogResponse) {
                                              await UsersTable().update(
                                                data: {
                                                  'status_id': 2,
                                                },
                                                matchingRows: (rows) =>
                                                    rows.eqOrNull(
                                                  'id',
                                                  widget.cpUserDt?.id,
                                                ),
                                              );
                                              await action_blocks
                                                  .abUsersSearchResults(
                                                context,
                                                abFilter: 'company',
                                              );
                                              safeSetState(() {});
                                              await action_blocks
                                                  .abUsersNotificationsAdd(
                                                context,
                                                abType: 'AccountActivated',
                                                abTitle: 'Conta ATIVADA !',
                                                abBody:
                                                    'Agora vc já pode acessar a sua conta no Siges.',
                                                abUserIdFrom: FFAppState()
                                                    .stUserCurrent
                                                    .id,
                                                abUserIdTo:
                                                    widget.cpUserDt?.id,
                                                abTokenFcm: widget.cpUserDt?.id
                                                    .toString(),
                                                abUserFromNameShort:
                                                    FFAppState()
                                                        .stUserCurrent
                                                        .nameShort,
                                                abNotificationAmount:
                                                    widget.cpUserDt!.id + 1,
                                                abMobileWhatsapp: widget
                                                    .cpUserDt?.id
                                                    .toString(),
                                              );
                                            }
                                          },
                                        );
                                      } else if (widget.cpUserDt?.statusId ==
                                          3) {
                                        return FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius: 16.0,
                                          borderWidth: 6.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          icon: Icon(
                                            Icons.thumb_up,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Ativação de Conta'),
                                                          content: Text(
                                                              'Deseja realmente Ativar ?'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: Text(
                                                                  'Cancelar'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child: Text(
                                                                  'Confirmar'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                            if (confirmDialogResponse) {
                                              await UsersTable().update(
                                                data: {
                                                  'status_id': 2,
                                                },
                                                matchingRows: (rows) =>
                                                    rows.eqOrNull(
                                                  'id',
                                                  widget.cpUserDt?.id,
                                                ),
                                              );
                                              await action_blocks
                                                  .abUsersSearchResults(
                                                context,
                                                abFilter: 'company',
                                              );
                                              safeSetState(() {});
                                              await action_blocks
                                                  .abUsersNotificationsAdd(
                                                context,
                                                abType: 'AccountActivated',
                                                abTitle: 'Conta ATIVADA !',
                                                abBody:
                                                    'Agora vc já pode acessar a sua conta no Siges.',
                                                abUserIdFrom: FFAppState()
                                                    .stUserCurrent
                                                    .id,
                                                abUserIdTo:
                                                    widget.cpUserDt?.id,
                                                abTokenFcm: widget.cpUserDt?.id
                                                    .toString(),
                                                abUserFromNameShort:
                                                    FFAppState()
                                                        .stUserCurrent
                                                        .nameShort,
                                                abNotificationAmount:
                                                    widget.cpUserDt!.id + 1,
                                                abMobileWhatsapp: widget
                                                    .cpUserDt?.id
                                                    .toString(),
                                              );
                                            }
                                          },
                                        );
                                      } else {
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            borderRadius: 16.0,
                                            borderWidth: 6.0,
                                            buttonSize: 50.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                            icon: Icon(
                                              Icons.thumb_down,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Ativação de Conta'),
                                                            content: Text(
                                                                'Deseja realmente DESAtivar ?'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        false),
                                                                child: Text(
                                                                    'Cancelar'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        true),
                                                                child: Text(
                                                                    'Confirmar'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                await UsersTable().update(
                                                  data: {
                                                    'status_id': 3,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.cpUserDt?.id,
                                                  ),
                                                );
                                                await action_blocks
                                                    .abUsersSearchResults(
                                                  context,
                                                  abFilter: 'company',
                                                );
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget.cpUserDt?.email,
                                    'e-mail',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.cpUserDt?.teamCode,
                                'Equipe',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              '${valueOrDefault<String>(
                                widget.cpUserDt?.profileDescription,
                                'Perfil NI',
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Text(
                          '${valueOrDefault<String>(
                            widget.cpUserDt?.mobileMask,
                            'Celular NI',
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AlignedTooltip(
                          content: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'o4wlwru8' /* Admin */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          offset: 4.0,
                          preferredDirection: AxisDirection.down,
                          borderRadius: BorderRadius.circular(8.0),
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          elevation: 4.0,
                          tailBaseWidth: 24.0,
                          tailLength: 12.0,
                          waitDuration: Duration(milliseconds: 100),
                          showDuration: Duration(milliseconds: 1500),
                          triggerMode: TooltipTriggerMode.tap,
                          child: Switch.adaptive(
                            value: _model.switchValue1!,
                            onChanged: (widget.cpUserDt?.statusId != 2)
                                ? null
                                : (newValue) async {
                                    safeSetState(
                                        () => _model.switchValue1 = newValue);
                                    if (newValue) {
                                      await UsersTable().update(
                                        data: {
                                          'is_admin': _model.switchValue1,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.cpUserDt?.id,
                                        ),
                                      );
                                    } else {
                                      await UsersTable().update(
                                        data: {
                                          'is_admin': _model.switchValue1,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.cpUserDt?.id,
                                        ),
                                      );
                                    }
                                  },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor: FlutterFlowTheme.of(context).info,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                        AlignedTooltip(
                          content: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'ntjqjmys' /* Líder */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          offset: 4.0,
                          preferredDirection: AxisDirection.down,
                          borderRadius: BorderRadius.circular(8.0),
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          elevation: 4.0,
                          tailBaseWidth: 24.0,
                          tailLength: 12.0,
                          waitDuration: Duration(milliseconds: 100),
                          showDuration: Duration(milliseconds: 1500),
                          triggerMode: TooltipTriggerMode.tap,
                          child: Switch.adaptive(
                            value: _model.switchValue2!,
                            onChanged: (widget.cpUserDt?.statusId != 2)
                                ? null
                                : (newValue) async {
                                    safeSetState(
                                        () => _model.switchValue2 = newValue);
                                    if (newValue) {
                                      FFAppState().stUsersLeadersByTeam = [];
                                      safeSetState(() {});
                                      _model.resUsersLeadersTeamSelected =
                                          await ApiUsersGroup
                                              .apiUsersLeadersByTeamIdCall
                                              .call(
                                        apiKey:
                                            FFDevEnvironmentValues().envApiKey,
                                        accessToken: currentJwtToken,
                                        teamId: widget.cpUserDt?.teamId,
                                      );

                                      if ((_model.resUsersLeadersTeamSelected
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().stUsersLeadersByTeam =
                                            ((_model.resUsersLeadersTeamSelected
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<DtUserStruct?>(
                                                            DtUserStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<DtUserStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<DtUserStruct>();
                                        FFAppState().update(() {});
                                      }
                                      await UsersTable().update(
                                        data: {
                                          'is_team_leader': true,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.cpUserDt?.id,
                                        ),
                                      );
                                      await CfgAppOfflineUpdatesTable().update(
                                        data: {
                                          'version_offline': getCurrentTimestamp
                                              .secondsSinceEpoch
                                              .toString(),
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'table_name',
                                          'teams_leaders',
                                        ),
                                      );
                                      await action_blocks
                                          .abAppOfflineUpdatesTablesTeamsLeaders(
                                              context);

                                      safeSetState(() {});
                                    } else {
                                      await UsersTable().update(
                                        data: {
                                          'is_team_leader': false,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.cpUserDt?.id,
                                        ),
                                      );
                                      await CfgAppOfflineUpdatesTable().update(
                                        data: {
                                          'version_offline': getCurrentTimestamp
                                              .secondsSinceEpoch
                                              .toString(),
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'table_name',
                                          'teams_leaders',
                                        ),
                                      );
                                      await action_blocks
                                          .abAppOfflineUpdatesTablesTeamsLeaders(
                                              context);
                                    }
                                  },
                            activeColor: FlutterFlowTheme.of(context).success,
                            activeTrackColor: FlutterFlowTheme.of(context).info,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ),
        ),
      ),
    );
  }
}

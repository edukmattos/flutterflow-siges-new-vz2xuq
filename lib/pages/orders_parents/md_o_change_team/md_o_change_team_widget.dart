import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import '/pages/components/cp_dropdown_users_teams/cp_dropdown_users_teams_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_o_change_team_model.dart';
export 'md_o_change_team_model.dart';

class MdOChangeTeamWidget extends StatefulWidget {
  const MdOChangeTeamWidget({super.key});

  @override
  State<MdOChangeTeamWidget> createState() => _MdOChangeTeamWidgetState();
}

class _MdOChangeTeamWidgetState extends State<MdOChangeTeamWidget> {
  late MdOChangeTeamModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOChangeTeamModel());

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

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        _model.apiResult1vl = await ApiUsersGroup.apiUsersByTeamIdCall.call(
          apiKey: FFDevEnvironmentValues().envApiKey,
          accessToken: currentJwtToken,
          teamId: _model
              .cpDropdownTeamsDepartmentModel.dropdownTeamsDepartmentValue,
        );

        if ((_model.apiResult1vl?.succeeded ?? true)) {
          FFAppState().stUsersByTeam = ((_model.apiResult1vl?.jsonBody ?? '')
                  .toList()
                  .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
                  .toList() as Iterable<DtUserStruct?>)
              .withoutNulls
              .toList()
              .cast<DtUserStruct>();
          FFAppState().update(() {});
        }

        safeSetState(() {});
      },
      child: Container(
        width: 500.0,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Container(
                      width: 600.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'co220bjn' /* Encaminhar */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 25.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                icon: Icon(
                                                  Icons.close_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 30.0,
                                                ),
                                                onPressed: () async {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 4.0,
                                          thickness: 1.0,
                                          color: Color(0xFFE0E3E7),
                                        ),
                                        Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              wrapWithModel(
                                                model: _model
                                                    .cpDropdownTeamsDepartmentModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                updateOnChange: true,
                                                child:
                                                    CpDropdownTeamsDepartmentWidget(
                                                  cpDepartmentId: FFAppState()
                                                      .stOSelected
                                                      .providerDepartmentId,
                                                  cpHintText: 'Equipe ?',
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.apiResult1vlCopy =
                                                      await ApiUsersGroup
                                                          .apiUsersByTeamIdCall
                                                          .call(
                                                    apiKey:
                                                        FFDevEnvironmentValues()
                                                            .envApiKey,
                                                    accessToken:
                                                        currentJwtToken,
                                                    teamId: _model
                                                        .cpDropdownTeamsDepartmentModel
                                                        .dropdownTeamsDepartmentValue,
                                                  );

                                                  if ((_model.apiResult1vlCopy
                                                          ?.succeeded ??
                                                      true)) {
                                                    FFAppState()
                                                        .stUsersByTeam = ((_model
                                                                        .apiResult1vlCopy
                                                                        ?.jsonBody ??
                                                                    '')
                                                                .toList()
                                                                .map<DtUserStruct?>(
                                                                    DtUserStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                DtUserStruct?>)
                                                        .withoutNulls
                                                        .toList()
                                                        .cast<DtUserStruct>();
                                                    FFAppState().update(() {});
                                                  }

                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model
                                                      .cpDropdownUsersTeamsModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  updateOnChange: true,
                                                  child:
                                                      CpDropdownUsersTeamsWidget(
                                                    cpHintText:
                                                        'Lider/Integrante',
                                                  ),
                                                ),
                                              ),
                                            ]
                                                .divide(SizedBox(height: 12.0))
                                                .addToEnd(
                                                    SizedBox(height: 24.0)),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.resValidForm = true;
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      safeSetState(() =>
                                                          _model.resValidForm =
                                                              false);
                                                      return;
                                                    }
                                                    if (_model
                                                            .cpDropdownTeamsDepartmentModel
                                                            .dropdownTeamsDepartmentValue ==
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar uma Equipe.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      _model.resValidForm =
                                                          false;
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                    await Future.wait([
                                                      Future(() async {
                                                        await Future.wait([
                                                          Future(() async {
                                                            await OrdersTable()
                                                                .update(
                                                              data: {
                                                                'team_id': _model
                                                                    .cpDropdownTeamsDepartmentModel
                                                                    .dropdownTeamsDepartmentValue,
                                                                'team_leader_id': _model
                                                                    .cpDropdownUsersTeamsModel
                                                                    .dropdownUsersAvailableTeamsValue,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                FFAppState()
                                                                    .stOSelected
                                                                    .id,
                                                              ),
                                                            );
                                                          }),
                                                          Future(() async {
                                                            FFAppState()
                                                                .updateStOSelectedStruct(
                                                              (e) => e
                                                                ..teamId = _model
                                                                    .cpDropdownTeamsDepartmentModel
                                                                    .dropdownTeamsDepartmentValue
                                                                ..teamCode = functions
                                                                    .cfDtTeam(
                                                                        _model
                                                                            .cpDropdownTeamsDepartmentModel
                                                                            .dropdownTeamsDepartmentValue!,
                                                                        FFAppState()
                                                                            .stOfflineTeams
                                                                            .toList())
                                                                    .code
                                                                ..teamDescription = functions
                                                                    .cfDtTeam(
                                                                        _model
                                                                            .cpDropdownTeamsDepartmentModel
                                                                            .dropdownTeamsDepartmentValue!,
                                                                        FFAppState()
                                                                            .stOfflineTeams
                                                                            .toList())
                                                                    .description
                                                                ..teamLeaderId = _model
                                                                    .cpDropdownUsersTeamsModel
                                                                    .dropdownUsersAvailableTeamsValue
                                                                ..teamLeaderNameShort = functions
                                                                    .cfDtTeamLeader(
                                                                        _model
                                                                            .cpDropdownUsersTeamsModel
                                                                            .dropdownUsersAvailableTeamsValue!,
                                                                        FFAppState()
                                                                            .stOfflineTeamsLeaders
                                                                            .toList())
                                                                    .nameShort,
                                                            );
                                                            safeSetState(() {});
                                                          }),
                                                        ]);
                                                      }),
                                                      Future(() async {}),
                                                    ]);
                                                    await action_blocks
                                                        .abOPEvents(
                                                      context,
                                                      abOPId: FFAppState()
                                                          .stOSelected
                                                          .parentId,
                                                      abTitle:
                                                          'OS ${FFAppState().stOSelected.orderMask}: Autorizada.',
                                                      abBody:
                                                          '${FFAppState().stOSelected.unitDescription}\\n${FFAppState().stOSelected.requestedServices}',
                                                      abOId: FFAppState()
                                                          .stOSelected
                                                          .id,
                                                      abPageTarget: 'pgOShow',
                                                    );
                                                    await action_blocks
                                                        .abUserSelected(
                                                      context,
                                                      abUserId: _model
                                                          .cpDropdownUsersTeamsModel
                                                          .dropdownUsersAvailableTeamsValue,
                                                    );
                                                    await action_blocks
                                                        .abUsersNotificationsAdd(
                                                      context,
                                                      abType: 'orderAuthorized',
                                                      abTitle:
                                                          'Serviço Autorizado.',
                                                      abBody:
                                                          'OS ${FFAppState().stOSelected.orderMask}<br>${FFAppState().stOSelected.unitDescription}<br>${FFAppState().stOSelected.requestedServices}',
                                                      abUserIdFrom: FFAppState()
                                                          .stUserCurrent
                                                          .id,
                                                      abUserIdTo: _model
                                                          .cpDropdownUsersTeamsModel
                                                          .dropdownUsersAvailableTeamsValue,
                                                      abImgUrl: null,
                                                      abOId: FFAppState()
                                                          .stOSelected
                                                          .id,
                                                      abTokenFcm: FFAppState()
                                                          .stUserSelected
                                                          .tokenFcm,
                                                      abUserFromNameShort:
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .nameShort,
                                                      abNotificationAmount:
                                                          FFAppState()
                                                                  .stUserSelected
                                                                  .notificationsAmount +
                                                              1,
                                                      abPageTarget: 'pgOShow',
                                                      abMobileWhatsapp:
                                                          FFAppState()
                                                              .stUserSelected
                                                              .mobileWhatsapp,
                                                    );
                                                    Navigator.pop(context);

                                                    safeSetState(() {});
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'l19dderm' /* CONFIRMAR */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                    elevation: 5.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 6.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 6.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

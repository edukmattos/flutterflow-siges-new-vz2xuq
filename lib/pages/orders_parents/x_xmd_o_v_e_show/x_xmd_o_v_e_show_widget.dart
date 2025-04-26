import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_button1/cp_o_v_e_button1_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_processing/cp_o_v_e_processing_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_extras/cp_ove_menu_extras_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_options/cp_ove_menu_options_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'x_xmd_o_v_e_show_model.dart';
export 'x_xmd_o_v_e_show_model.dart';

class XXmdOVEShowWidget extends StatefulWidget {
  const XXmdOVEShowWidget({super.key});

  @override
  State<XXmdOVEShowWidget> createState() => _XXmdOVEShowWidgetState();
}

class _XXmdOVEShowWidgetState extends State<XXmdOVEShowWidget>
    with TickerProviderStateMixin {
  late XXmdOVEShowModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => XXmdOVEShowModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          minWidth: 100.0,
                          maxWidth: 200.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: wrapWithModel(
                          model: _model.cpOVEButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpOVEButton1Widget(
                            cpIsRedirect: false,
                            cpDtOVE: FFAppState().stOVESelected,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.cpOveMenuExtrasModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpOveMenuExtrasWidget(
                              cpDtOve: FFAppState().stOVESelected,
                              cpSize: 60,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpOVEProcessingModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpOVEProcessingWidget(
                              cpProcessingDescription: FFAppState()
                                  .stOVESelected
                                  .processingDescription,
                              cpProcessingId:
                                  FFAppState().stOVESelected.processingId,
                              cpBorderWidth: 0,
                              cpSize: 60,
                              cpShowLoadingIndicator: false,
                              cpDisabled: true,
                              cpIsFiled: FFAppState().stOVESelected.isArchived,
                              cpOveId: FFAppState().stOVESelected.id,
                            ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                valueOrDefault<String>(
                                  FFAppState().stOVESelected.unitDescription,
                                  'Unidade',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState().stOVESelected.assetTagDescription,
                                'Setor',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState().stOVESelected.requestedServices,
                                'Serviços a realizar',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState()
                                    .stOVESelected
                                    .oCauseReasonDescription,
                                'Motivo N/I',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${functions.cfConvDatetimeEnStringToDatetimeBrString(FFAppState().stOVESelected.startedAt)}h',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                      Text(
                        '(${functions.cfConvDoubleToCurrency2Decimals(FFAppState().stOVESelected.durationHours.toString(), 2)}h )',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: FlutterFlowTheme.of(context).bodySmall,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                      Text(
                        '${functions.cfConvDatetimeEnStringToDatetimeBrString(FFAppState().stOVESelected.endedAt)}h',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation3']!),
                    ],
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFAppState().stOVESelected.teamDescription,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation4']!),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: 65.0,
                              height: 90.0,
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final gcOVETeamUsers = FFAppState()
                                      .stOVESelectedTeamUsers
                                      .map((e) => e)
                                      .toList()
                                      .sortedList(
                                          keyOf: (e) => e.orderBy, desc: false)
                                      .toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: gcOVETeamUsers.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(width: 2.0),
                                    itemBuilder:
                                        (context, gcOVETeamUsersIndex) {
                                      final gcOVETeamUsersItem =
                                          gcOVETeamUsers[gcOVETeamUsersIndex];
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Container(
                                          width: 80.0,
                                          height: 85.0,
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CpUserPicProfileWidget(
                                                    key: Key(
                                                        'Key1ee_${gcOVETeamUsersIndex}_of_${gcOVETeamUsers.length}'),
                                                    cpSize: 60,
                                                    imgUrl:
                                                        '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcOVETeamUsersItem.imgFilePath}/${gcOVETeamUsersItem.imgFileName}',
                                                    toolTip: gcOVETeamUsersItem
                                                        .nameShort,
                                                    isAvailable:
                                                        gcOVETeamUsersItem
                                                            .isAvailable,
                                                    isOrderVisitIdInProgress:
                                                        gcOVETeamUsersItem
                                                            .isOvInProgress,
                                                    displayAvailable: false,
                                                    cpBorderWidth: 0,
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed:
                                                        FFAppState()
                                                                .stOVESelected
                                                                .isArchived
                                                            ? null
                                                            : () async {
                                                                _model.resTeamLeader =
                                                                    await VUsersTable()
                                                                        .queryRows(
                                                                  queryFn: (q) =>
                                                                      q.eqOrNull(
                                                                    'id',
                                                                    valueOrDefault<
                                                                        int>(
                                                                      gcOVETeamUsersItem
                                                                          .userId,
                                                                      0,
                                                                    ),
                                                                  ),
                                                                );
                                                                await OrdersVisitsExtrasTable()
                                                                    .update(
                                                                  data: {
                                                                    'team_leader_id':
                                                                        gcOVETeamUsersItem
                                                                            .userId,
                                                                    'team_id': _model
                                                                        .resTeamLeader
                                                                        ?.firstOrNull
                                                                        ?.teamId,
                                                                  },
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eqOrNull(
                                                                    'id',
                                                                    FFAppState()
                                                                        .stOVESelected
                                                                        .id,
                                                                  ),
                                                                );
                                                                _model.apiResulthyl =
                                                                    await ApiOrdersVisitsExtrasTeamsGroup
                                                                        .apiTeamUsersByOVEIdCall
                                                                        .call(
                                                                  apiUrl: FFDevEnvironmentValues()
                                                                      .envApiUrl,
                                                                  apiKey: FFDevEnvironmentValues()
                                                                      .envApiKey,
                                                                  accessToken:
                                                                      currentJwtToken,
                                                                  oveId: FFAppState()
                                                                      .stOVESelected
                                                                      .id,
                                                                );

                                                                if ((_model
                                                                        .apiResulthyl
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .stOVESelectedTeamUsers = ((_model.apiResulthyl?.jsonBody ??
                                                                              '')
                                                                          .toList()
                                                                          .map<DtOrderVisitExtraTeamUserStruct?>(
                                                                              DtOrderVisitExtraTeamUserStruct.maybeFromMap)
                                                                          .toList() as Iterable<DtOrderVisitExtraTeamUserStruct?>)
                                                                      .withoutNulls
                                                                      .toList()
                                                                      .cast<DtOrderVisitExtraTeamUserStruct>();
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                      .stCounterLoop = 0;
                                                                  FFAppState()
                                                                          .stCounterLoopFinal =
                                                                      FFAppState()
                                                                          .stOVESelectedTeamUsers
                                                                          .length;
                                                                  safeSetState(
                                                                      () {});
                                                                  while (FFAppState()
                                                                          .stCounterLoop <
                                                                      FFAppState()
                                                                          .stCounterLoopFinal) {
                                                                    if (gcOVETeamUsersItem
                                                                            .userId ==
                                                                        FFAppState()
                                                                            .stOVESelectedTeamUsers
                                                                            .elementAtOrNull(FFAppState().stCounterLoop)
                                                                            ?.userId) {
                                                                      await OrdersVisitsExtrasTeamsTable()
                                                                          .update(
                                                                        data: {
                                                                          'is_leader':
                                                                              true,
                                                                          'order_by':
                                                                              0,
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          FFAppState()
                                                                              .stOVESelectedTeamUsers
                                                                              .elementAtOrNull(FFAppState().stCounterLoop)
                                                                              ?.id,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      await OrdersVisitsExtrasTeamsTable()
                                                                          .update(
                                                                        data: {
                                                                          'is_leader':
                                                                              false,
                                                                          'order_by':
                                                                              FFAppState().stCounterLoop + 1,
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          FFAppState()
                                                                              .stOVESelectedTeamUsers
                                                                              .elementAtOrNull(FFAppState().stCounterLoop)
                                                                              ?.id,
                                                                        ),
                                                                      );
                                                                    }

                                                                    FFAppState()
                                                                            .stCounterLoop =
                                                                        FFAppState().stCounterLoop +
                                                                            1;
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                }
                                                                await action_blocks
                                                                    .abOVESelected(
                                                                  context,
                                                                  abOVEId:
                                                                      FFAppState()
                                                                          .stOVESelected
                                                                          .id,
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                                await action_blocks
                                                                    .abOVSelectedTeamUsers(
                                                                  context,
                                                                  abOVId: FFAppState()
                                                                      .stOVSelected
                                                                      .id,
                                                                );
                                                                safeSetState(
                                                                    () {});

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                    text: gcOVETeamUsersItem
                                                        .nameShort,
                                                    options: FFButtonOptions(
                                                      height: 20.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0x00FFFFFF),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color: FFAppState()
                                                                    .stOVESelected
                                                                    .teamLeaderId ==
                                                                gcOVETeamUsersItem
                                                                    .userId
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText
                                                            : Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                              if (!FFAppState()
                                                      .stOVESelected
                                                      .isArchived &&
                                                  (gcOVETeamUsersItem.userId !=
                                                      FFAppState()
                                                          .stOVESelected
                                                          .teamLeaderId))
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                    borderRadius: 16.0,
                                                    borderWidth: 2.0,
                                                    buttonSize: 30.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons
                                                          .solidTrashAlt,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 14.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Ops ...'),
                                                                    content: Text(
                                                                        'Deseja realmente EXCLUIR ?'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: Text(
                                                                            'Cancelar'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
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
                                                        await OrdersVisitsExtrasTeamsTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) =>
                                                                  rows.eqOrNull(
                                                            'id',
                                                            gcOVETeamUsersItem
                                                                .id,
                                                          ),
                                                        );
                                                        await action_blocks
                                                            .abOVESelectedTeamUsers(
                                                          context,
                                                          abOVEId: FFAppState()
                                                              .stOVESelected
                                                              .id,
                                                        );
                                                        safeSetState(() {});
                                                        await OrdersVisitsExtrasTable()
                                                            .update(
                                                          data: {
                                                            'team_amount':
                                                                valueOrDefault<
                                                                    int>(
                                                              FFAppState()
                                                                  .stOVESelectedTeamUsers
                                                                  .length,
                                                              1,
                                                            ),
                                                          },
                                                          matchingRows:
                                                              (rows) =>
                                                                  rows.eqOrNull(
                                                            'id',
                                                            FFAppState()
                                                                .stOVESelected
                                                                .id,
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: wrapWithModel(
                              model: _model.cpCompanyLogoModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpCompanyLogoWidget(
                                cpSize: 60,
                                cpImgUrl:
                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVESelected.providerCompanyImgFilePath}/${FFAppState().stOVESelected.providerCompanyImgFileName}',
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (FFAppState().stOVESelected.isArchived == false)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: 200.0,
                                height: 50.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.cpDropdownUsersDepartmentModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpDropdownUsersDepartmentWidget(
                                    cpDepartmentId:
                                        FFAppState().stUserCurrent.departmentId,
                                    cpHintText: 'Novo integrante',
                                  ),
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 16.0,
                              borderWidth: 6.0,
                              buttonSize: 50.0,
                              icon: FaIcon(
                                FontAwesomeIcons.plusCircle,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              showLoadingIndicator: true,
                              onPressed: (_model.cpDropdownUsersDepartmentModel
                                          .dropdownUsersDepartmentValue ==
                                      null)
                                  ? null
                                  : () async {
                                      var _shouldSetState = false;
                                      if (functions.cfContainInList(
                                          FFAppState()
                                              .stOVESelectedTeamUsers
                                              .map((e) => e.userId)
                                              .toList(),
                                          _model.cpDropdownUsersDepartmentModel
                                              .dropdownUsersDepartmentValue!)!) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Ops ... Já associado !',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        _model.resTeamUserAdded =
                                            await OrdersVisitsExtrasTeamsTable()
                                                .insert({
                                          'ove_id':
                                              FFAppState().stOVESelected.id,
                                          'user_id': _model
                                              .cpDropdownUsersDepartmentModel
                                              .dropdownUsersDepartmentValue,
                                          'is_leader': false,
                                          'version_mode': FFAppState()
                                              .stAppVersionMode
                                              ?.name,
                                          'duration_hours': FFAppState()
                                              .stOVESelected
                                              .durationHours,
                                          'started_at_date':
                                              supaSerialize<DateTime>(functions
                                                  .cfConvDatetimeEnStringToDatetimeEn(
                                                      FFAppState()
                                                          .stOVESelected
                                                          .startedAt)),
                                          'started_at_hour_min': supaSerialize<
                                                  PostgresTime>(
                                              PostgresTime(functions
                                                  .cfConvDatetimeEnStringToDatetimeEn(
                                                      FFAppState()
                                                          .stOVESelected
                                                          .startedAt))),
                                          'ended_at_date':
                                              supaSerialize<DateTime>(functions
                                                  .cfConvDatetimeEnStringToDatetimeEn(
                                                      FFAppState()
                                                          .stOVESelected
                                                          .endedAt)),
                                          'ended_at_hour_min': supaSerialize<
                                                  PostgresTime>(
                                              PostgresTime(functions
                                                  .cfConvDatetimeEnStringToDatetimeEn(
                                                      FFAppState()
                                                          .stOVESelected
                                                          .endedAt))),
                                        });
                                        _shouldSetState = true;
                                        await action_blocks
                                            .abOVESelectedTeamUsers(
                                          context,
                                          abOVEId:
                                              FFAppState().stOVESelected.id,
                                        );
                                        safeSetState(() {});
                                        await OrdersVisitsExtrasTable().update(
                                          data: {
                                            'team_amount': valueOrDefault<int>(
                                              FFAppState()
                                                  .stOVESelectedTeamUsers
                                                  .length,
                                              1,
                                            ),
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            FFAppState().stOVESelected.id,
                                          ),
                                        );
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      if (false)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.cpOveMenuOptionsModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpOveMenuOptionsWidget(
                                cpDtOve: FFAppState().stOVESelected,
                                cpSize: 50,
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}

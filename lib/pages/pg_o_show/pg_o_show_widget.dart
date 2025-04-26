import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_show/cp_o_show_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item1/cp_o_v_asset_list_item1_widget.dart';
import '/pages/orders_parents/cp_o_v_card_mini/cp_o_v_card_mini_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_o_show_model.dart';
export 'pg_o_show_model.dart';

class PgOShowWidget extends StatefulWidget {
  const PgOShowWidget({
    super.key,
    required this.ppIsRedirect,
  });

  final bool? ppIsRedirect;

  static String routeName = 'pgOShow';
  static String routePath = 'pgOShow';

  @override
  State<PgOShowWidget> createState() => _PgOShowWidgetState();
}

class _PgOShowWidgetState extends State<PgOShowWidget>
    with TickerProviderStateMixin {
  late PgOShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stOVSelectedAssets = [];
      safeSetState(() {});
      _model.resOVs = await ApiOrdersVisitsGroup.apiOVByOIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        oId: FFAppState().stOSelected.id,
      );

      FFAppState().stOSelectedOVs = ((_model.resOVs?.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitStruct?>(DtOrderVisitStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitStruct?>)
          .withoutNulls
          .toList()
          .cast<DtOrderVisitStruct>();
      safeSetState(() {});
      FFAppState().stCounterLoop = 0;
      FFAppState().stCounterLoopFinal = FFAppState().stOSelectedOVs.length;
      safeSetState(() {});
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
          safeSetState(() {});
        } else {
          FFAppState().updateStOSelectedOVsAtIndex(
            FFAppState().stCounterLoop,
            (e) => e
              ..ovStartedDatetime =
                  functions.cfConvDatetimeBrStringToDatetimeEn(FFAppState()
                      .stOSelectedOVs
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .ovStartedAt)
              ..ovEndedDatetime = functions.cfConvDatetimeBrStringToDatetimeEn(
                  FFAppState()
                      .stOSelectedOVs
                      .elementAtOrNull(FFAppState().stCounterLoop)!
                      .ovEndedAt),
          );
          safeSetState(() {});
        }

        FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
        safeSetState(() {});
      }
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuModel,
            updateCallback: () => safeSetState(() {}),
            child: CpMenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '57lzchfm' /* OS */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: FlutterFlowTheme.of(context).headlineMedium,
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await action_blocks.abOSelected(
                    context,
                    abOId: FFAppState().stOSelected.parentId,
                    abIsParent: true,
                    abIsNew: false,
                  );

                  context.pushNamed(
                    PgOPShowWidget.routeName,
                    queryParameters: {
                      'ppOPMenuOptions': serializeParam(
                        true,
                        ParamType.bool,
                      ),
                    }.withoutNulls,
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'gw024chb' /* SS */,
                ),
                options: FFButtonOptions(
                  width: 40.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        font: FlutterFlowTheme.of(context).titleMedium,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).info,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: 'teste',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                minWidth:
                                    FFAppConstants.cfgPgWidthMin.toDouble(),
                                maxWidth:
                                    FFAppConstants.cfgPgWidthMax.toDouble(),
                              ),
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.cpOShowModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpOShowWidget(
                                  cpODt: FFAppState().stOSelected,
                                  cpIsRedirect: widget.ppIsRedirect!,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 0.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'zkx1e9ku' /* Atendimentos */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (FFAppState()
                                              .stUserSelected
                                              .isAvailable &&
                                          (FFAppState().stUserCurrent.teamId ==
                                              FFAppState().stOSelected.teamId))
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 16.0,
                                          borderWidth: 6.0,
                                          buttonSize: 50.0,
                                          icon: FaIcon(
                                            FontAwesomeIcons.plusCircle,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 26.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {
                                            var _shouldSetState = false;
                                            _model.isGpsOn = await action_blocks
                                                .abIsGpsOn(context);
                                            _shouldSetState = true;
                                            if (_model.isGpsOn!) {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Atendimento'),
                                                            content: Text(
                                                                'Deseja realmente iniciar ?'),
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
                                                await OrdersTable().update(
                                                  data: {
                                                    'status_id': 5,
                                                    'ov_counter': FFAppState()
                                                            .stOSelected
                                                            .ovCounter +
                                                        1,
                                                    'status_at': supaSerialize<
                                                            DateTime>(
                                                        getCurrentTimestamp),
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    FFAppState().stOSelected.id,
                                                  ),
                                                );
                                                _shouldSetState = true;
                                                _model.resOVCreated =
                                                    await OrdersVisitsTable()
                                                        .insert({
                                                  'o_id': FFAppState()
                                                      .stOSelected
                                                      .id,
                                                  'ov_status_id': 1,
                                                  'ov_processing_id': 1,
                                                  'ov_started_at':
                                                      supaSerialize<DateTime>(
                                                          getCurrentTimestamp),
                                                  'ov_team_leader_id':
                                                      FFAppState()
                                                          .stUserSelected
                                                          .id,
                                                  'ov_created_user_id':
                                                      FFAppState()
                                                          .stUserCurrent
                                                          .id,
                                                  'ov_created_at':
                                                      supaSerialize<DateTime>(
                                                          getCurrentTimestamp),
                                                  'version_mode': FFAppState()
                                                      .stAppVersionMode
                                                      ?.name,
                                                  'ov_mask':
                                                      '${FFAppState().stOSelected.orderMask}.${functions.cfConvIntToString2Digits(FFAppState().stOSelected.ovCounter + 1)}',
                                                });
                                                _shouldSetState = true;
                                                await action_blocks
                                                    .abOVSelected(
                                                  context,
                                                  abOVId:
                                                      _model.resOVCreated?.id,
                                                );
                                                await Future.wait([
                                                  Future(() async {
                                                    await Future.wait([
                                                      Future(() async {
                                                        if (FFAppState()
                                                                .stUserSelected
                                                                .vehicleId >
                                                            0) {
                                                          await OrdersVisitsVehiclesTable()
                                                              .insert({
                                                            'ov_id': FFAppState()
                                                                .stOVSelected
                                                                .id,
                                                            'vehicle_id':
                                                                FFAppState()
                                                                    .stUserCurrent
                                                                    .vehicleId,
                                                            'created_user_id':
                                                                FFAppState()
                                                                    .stUserCurrent
                                                                    .id,
                                                            'created_at':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                            'version_mode':
                                                                FFAppState()
                                                                    .stAppVersionMode
                                                                    ?.name,
                                                          });
                                                          await action_blocks
                                                              .abOVSelectedVehicles(
                                                            context,
                                                            abOVId: FFAppState()
                                                                .stOVSelected
                                                                .id,
                                                          );
                                                          safeSetState(() {});
                                                        }
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }),
                                                      Future(() async {
                                                        if (FFAppState()
                                                            .stUserSelected
                                                            .isTeamLeader) {
                                                          _model.resUsersTeamCurrent =
                                                              await ApiUsersGroup
                                                                  .apiUsersByTeamIdCall
                                                                  .call(
                                                            apiKey:
                                                                FFDevEnvironmentValues()
                                                                    .envApiKey,
                                                            accessToken:
                                                                currentJwtToken,
                                                            teamId: FFAppState()
                                                                .stUserCurrent
                                                                .teamId,
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          FFAppState()
                                                              .stOVOpenTeamUsers = ((_model
                                                                          .resUsersTeamCurrent
                                                                          ?.jsonBody ??
                                                                      '')
                                                                  .toList()
                                                                  .map<DtUserStruct?>(
                                                                      DtUserStruct
                                                                          .maybeFromMap)
                                                                  .toList() as Iterable<DtUserStruct?>)
                                                              .withoutNulls
                                                              .toList()
                                                              .cast<DtUserStruct>();
                                                          safeSetState(() {});
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      1000));
                                                          FFAppState()
                                                              .stCounterLoop = 0;
                                                          FFAppState()
                                                                  .stCounterLoopFinal =
                                                              FFAppState()
                                                                  .stOVOpenTeamUsers
                                                                  .length;
                                                          safeSetState(() {});
                                                          while (FFAppState()
                                                                  .stCounterLoop <
                                                              FFAppState()
                                                                  .stCounterLoopFinal) {
                                                            if (FFAppState()
                                                                    .stOVOpenTeamUsers
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .stCounterLoop)
                                                                    ?.id ==
                                                                FFAppState()
                                                                    .stUserCurrent
                                                                    .id) {
                                                              await OrdersVisitsTeamsTable()
                                                                  .insert({
                                                                'ov_id':
                                                                    FFAppState()
                                                                        .stOVSelected
                                                                        .id,
                                                                'user_id':
                                                                    FFAppState()
                                                                        .stUserCurrent
                                                                        .id,
                                                                'is_leader':
                                                                    true,
                                                                'version_mode':
                                                                    FFAppState()
                                                                        .stAppVersionMode
                                                                        ?.name,
                                                                'order_id': 0,
                                                              });
                                                            } else {
                                                              if (FFAppState()
                                                                  .stOVOpenTeamUsers
                                                                  .elementAtOrNull(
                                                                      FFAppState()
                                                                          .stCounterLoop)!
                                                                  .isAvailable) {
                                                                await OrdersVisitsTeamsTable()
                                                                    .insert({
                                                                  'ov_id':
                                                                      FFAppState()
                                                                          .stOVSelected
                                                                          .id,
                                                                  'user_id': FFAppState()
                                                                      .stOVOpenTeamUsers
                                                                      .elementAtOrNull(
                                                                          FFAppState()
                                                                              .stCounterLoop)
                                                                      ?.id,
                                                                  'is_leader':
                                                                      false,
                                                                  'version_mode':
                                                                      FFAppState()
                                                                          .stAppVersionMode
                                                                          ?.name,
                                                                  'order_id':
                                                                      FFAppState()
                                                                          .stCounterLoop,
                                                                });
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            1000));
                                                                await UsersTable()
                                                                    .update(
                                                                  data: {
                                                                    'is_available':
                                                                        false,
                                                                    'is_ov_in_progress':
                                                                        true,
                                                                    'ov_id_in_progress':
                                                                        FFAppState()
                                                                            .stOVSelected
                                                                            .id,
                                                                    'o_id_in_progress':
                                                                        FFAppState()
                                                                            .stOVSelected
                                                                            .oId,
                                                                    'op_id_in_progress':
                                                                        FFAppState()
                                                                            .stOVSelected
                                                                            .opId,
                                                                    'o_contract_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .contractId,
                                                                    'o_type_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .typeId,
                                                                    'ov_in_progress_leader_id':
                                                                        FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                    'o_type_sub_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .typeSubId,
                                                                    'o_plan_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .planId,
                                                                    'o_asset_tag_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .assetTagId,
                                                                    'o_unit_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .unitId,
                                                                    'o_system_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .systemId,
                                                                    'o_system_parent_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .systemParentId,
                                                                    'o_unit_type_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .unitTypeId,
                                                                    'o_unit_type_parent_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .unitTypeParentId,
                                                                    'o_object_id_in_progress':
                                                                        FFAppState()
                                                                            .stOSelected
                                                                            .objectId,
                                                                  },
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eqOrNull(
                                                                    'id',
                                                                    FFAppState()
                                                                        .stOVOpenTeamUsers
                                                                        .elementAtOrNull(
                                                                            FFAppState().stCounterLoop)
                                                                        ?.id,
                                                                  ),
                                                                );
                                                              }
                                                            }

                                                            FFAppState()
                                                                    .stCounterLoop =
                                                                FFAppState()
                                                                        .stCounterLoop +
                                                                    1;
                                                            safeSetState(() {});
                                                          }
                                                          FFAppState()
                                                              .updateStUserCurrentStruct(
                                                            (e) => e
                                                              ..ovIdInProgress =
                                                                  FFAppState()
                                                                      .stOVSelected
                                                                      .id
                                                              ..isAvailable =
                                                                  false
                                                              ..isOvInProgress =
                                                                  true
                                                              ..oIdInProgress =
                                                                  FFAppState()
                                                                      .stOVSelected
                                                                      .oId
                                                              ..opIdInProgress =
                                                                  FFAppState()
                                                                      .stOVSelected
                                                                      .opId,
                                                          );
                                                          safeSetState(() {});
                                                        } else {
                                                          await OrdersVisitsTeamsTable()
                                                              .insert({
                                                            'ov_id': FFAppState()
                                                                .stOVSelected
                                                                .id,
                                                            'user_id': FFAppState()
                                                                .stUserSelected
                                                                .id,
                                                            'is_leader': true,
                                                            'version_mode':
                                                                FFAppState()
                                                                    .stAppVersionMode
                                                                    ?.name,
                                                          });
                                                          await UsersTable()
                                                              .update(
                                                            data: {
                                                              'is_available':
                                                                  false,
                                                              'is_ov_in_progress':
                                                                  true,
                                                              'ov_id_in_progress':
                                                                  FFAppState()
                                                                      .stOVSelected
                                                                      .id,
                                                              'o_id_in_progress':
                                                                  FFAppState()
                                                                      .stOVSelected
                                                                      .oId,
                                                              'op_id_in_progress':
                                                                  FFAppState()
                                                                      .stOVSelected
                                                                      .opId,
                                                              'o_contract_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .contractId,
                                                              'o_type_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .typeId,
                                                              'ov_in_progress_leader_id':
                                                                  FFAppState()
                                                                      .stUserSelected
                                                                      .id,
                                                              'o_type_sub_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .typeSubId,
                                                              'o_plan_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .planId,
                                                              'o_asset_tag_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .assetTagId,
                                                              'o_unit_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .unitId,
                                                              'o_system_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .systemId,
                                                              'o_system_parent_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .systemParentId,
                                                              'o_unit_type_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .unitTypeId,
                                                              'o_unit_type_parent_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .unitTypeParentId,
                                                              'o_object_id_in_progress':
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .objectId,
                                                            },
                                                            matchingRows:
                                                                (rows) => rows
                                                                    .eqOrNull(
                                                              'id',
                                                              FFAppState()
                                                                  .stUserSelected
                                                                  .id,
                                                            ),
                                                          );
                                                        }

                                                        await action_blocks
                                                            .abOVSelectedTeamUsers(
                                                          context,
                                                          abOVId: FFAppState()
                                                              .stOVSelected
                                                              .id,
                                                        );
                                                        safeSetState(() {});
                                                      }),
                                                    ]);
                                                    await action_blocks
                                                        .abOPEvents(
                                                      context,
                                                      abOPId: FFAppState()
                                                          .stOSelected
                                                          .parentId,
                                                      abTitle:
                                                          'Atendimento em Aberto.',
                                                      abBody:
                                                          '${FFAppState().stUserSelected.nameShort} iniciou o atendimento: ${'\n'}OS ${FFAppState().stOSelected.orderMask}: ${FFAppState().stOSelected.statusDescription}${'\n'}${FFAppState().stOSelected.unitDescription}${'\n'}${FFAppState().stOSelected.assetTagDescription}${'\n'}${FFAppState().stOSelected.requestedServices}',
                                                      abOId: FFAppState()
                                                          .stOSelected
                                                          .id,
                                                    );

                                                    context.pushNamed(
                                                        PgOVShowWidget
                                                            .routeName);
                                                  }),
                                                  Future(() async {
                                                    await UsersTable().update(
                                                      data: {
                                                        'is_available': false,
                                                        'is_ov_in_progress':
                                                            true,
                                                        'o_id_in_progress':
                                                            FFAppState()
                                                                .stOVSelected
                                                                .oId,
                                                        'op_id_in_progress':
                                                            FFAppState()
                                                                .stOVSelected
                                                                .opId,
                                                        'ov_id_in_progress':
                                                            FFAppState()
                                                                .stOVSelected
                                                                .id,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        FFAppState()
                                                            .stUserSelected
                                                            .id,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }),
                                                ]);
                                              } else {
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Ops ...'),
                                                    content:
                                                        Text('Ativar GPS.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                          },
                                        ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ],
                              ),
                            ),
                            if (!true)
                              Builder(
                                builder: (context) {
                                  final gcOVs = FFAppState()
                                      .stOSelectedOVs
                                      .sortedList(
                                          keyOf: (e) => e.id, desc: false)
                                      .toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: gcOVs.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder: (context, gcOVsIndex) {
                                      final gcOVsItem = gcOVs[gcOVsIndex];
                                      return Container(
                                        height: 180.0,
                                        decoration: BoxDecoration(),
                                        child: CpOVCardMiniWidget(
                                          key: Key(
                                              'Key5yp_${gcOVsIndex}_of_${gcOVs.length}'),
                                          cpOVDt: gcOVsItem,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 6.0),
                                    child: Container(
                                      width: double.infinity,
                                      constraints: BoxConstraints(
                                        minHeight: 150.0,
                                        maxHeight: 310.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Builder(
                                        builder: (context) {
                                          final gcOVss = FFAppState()
                                              .stOSelectedOVs
                                              .sortedList(
                                                  keyOf: (e) => e.id,
                                                  desc: false)
                                              .toList();

                                          return ListView.separated(
                                            padding: EdgeInsets.fromLTRB(
                                              0.0,
                                              0,
                                              0,
                                              0,
                                            ),
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: gcOVss.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(width: 12.0),
                                            itemBuilder:
                                                (context, gcOVssIndex) {
                                              final gcOVssItem =
                                                  gcOVss[gcOVssIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Container(
                                                  width: 450.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcOVssItem.id)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x00000000),
                                                      width: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcOVssItem.id)
                                                          ? 6.0
                                                          : 0.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      FFAppState()
                                                          .stRowsSelected = [];
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .addToStRowsSelected(
                                                              gcOVssItem.id);
                                                      safeSetState(() {});
                                                      await action_blocks
                                                          .abOVSelected(
                                                        context,
                                                        abOVId: gcOVssItem.id,
                                                      );
                                                      await action_blocks
                                                          .abOVSelectedAssetsUpdate(
                                                        context,
                                                        abOVId: gcOVssItem.id,
                                                      );
                                                    },
                                                    child: CpOVCardMiniWidget(
                                                      key: Key(
                                                          'Keygbz_${gcOVssIndex}_of_${gcOVss.length}'),
                                                      cpOVDt: gcOVssItem,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 450.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 450.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            final gcOVAssets = FFAppState()
                                                .stOVSelectedAssets
                                                .map((e) => e)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: gcOVAssets.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 12.0),
                                              itemBuilder:
                                                  (context, gcOVAssetsIndex) {
                                                final gcOVAssetsItem =
                                                    gcOVAssets[gcOVAssetsIndex];
                                                return Container(
                                                  width: 450.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcOVAssetsItem
                                                                      .assetId)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x00000000),
                                                      width: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcOVAssetsItem
                                                                      .assetId)
                                                          ? 6.0
                                                          : 0.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {},
                                                    child:
                                                        CpOVAssetListItem1Widget(
                                                      key: Key(
                                                          'Keydrw_${gcOVAssetsIndex}_of_${gcOVAssets.length}'),
                                                      cpOVAssetDt:
                                                          gcOVAssetsItem,
                                                    ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation']!);
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}

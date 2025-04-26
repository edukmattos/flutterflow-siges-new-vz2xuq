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
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:utility_functions_library_8g4bud/flutter_flow/custom_functions.dart'
    as utility_functions_library_8g4bud_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_db_admin_ove_card_model.dart';
export 'cp_db_admin_ove_card_model.dart';

class CpDbAdminOveCardWidget extends StatefulWidget {
  const CpDbAdminOveCardWidget({
    super.key,
    required this.cpDtOVE,
  });

  final DtOrderVisitExtraStruct? cpDtOVE;

  @override
  State<CpDbAdminOveCardWidget> createState() => _CpDbAdminOveCardWidgetState();
}

class _CpDbAdminOveCardWidgetState extends State<CpDbAdminOveCardWidget>
    with TickerProviderStateMixin {
  late CpDbAdminOveCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDbAdminOveCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

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
            begin: Offset(0.0, 30.0),
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
            begin: Offset(0.0, 30.0),
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
            begin: Offset(0.0, 30.0),
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
      width: 430.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          alignment: AlignmentDirectional(0.0, -1.0),
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Icon(
                Icons.threesixty_sharp,
                color: FlutterFlowTheme.of(context).alternate,
                size: 150.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 180.0,
                                height: 60.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.cpOVEButton1Model,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpOVEButton1Widget(
                                    cpIsRedirect: false,
                                    cpDtOVE: widget.cpDtOVE,
                                    cpHeight: 60,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.cpOveMenuExtrasModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpOveMenuExtrasWidget(
                                cpSize: 60,
                                cpDtOve: widget.cpDtOVE!,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpOVEProcessingModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpOVEProcessingWidget(
                              cpProcessingDescription:
                                  widget.cpDtOVE?.processingDescription,
                              cpProcessingId: widget.cpDtOVE!.processingId,
                              cpBorderWidth: 0,
                              cpSize: 60,
                              cpShowLoadingIndicator: false,
                              cpDisabled: false,
                              cpIsFiled: widget.cpDtOVE!.isArchived,
                              cpOveId: widget.cpDtOVE!.id,
                            ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                                          widget.cpDtOVE?.unitDescription,
                                          'Unidade N/I',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .titleMedium,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.cpDtOVE?.assetTagDescription,
                                        'Setor N/I',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    SelectionArea(
                                        child: Text(
                                      valueOrDefault<String>(
                                        widget.cpDtOVE?.requestedServices,
                                        'Serviços a realizar N/I',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                            letterSpacing: 0.0,
                                          ),
                                    )),
                                    Text(
                                      valueOrDefault<String>(
                                        widget
                                            .cpDtOVE?.oCauseReasonDescription,
                                        'Motivo N/I',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodySmall,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${dateTimeFormat(
                                        "dd/MM/y HH:mm",
                                        utility_functions_library_8g4bud_functions
                                            .convertStringToDateTime(
                                                widget.cpDtOVE!.startedAt),
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}h',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                    Text(
                                      '(${functions.cfConvDoubleToCurrency2Decimals(widget.cpDtOVE!.durationHours.toString(), 2)}h )',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation2']!),
                                    Text(
                                      '${dateTimeFormat(
                                        "dd/MM/y HH:mm",
                                        utility_functions_library_8g4bud_functions
                                            .convertStringToDateTime(
                                                widget.cpDtOVE!.endedAt),
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}h',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation3']!),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        widget.cpDtOVE?.teamDescription,
                                        'Equipe',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: FutureBuilder<
                                              List<
                                                  VOrdersVisitsExtrasTeamsRow>>(
                                            future:
                                                VOrdersVisitsExtrasTeamsTable()
                                                    .queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'ove_id',
                                                widget.cpDtOVE?.id,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<VOrdersVisitsExtrasTeamsRow>
                                                  containerTeamVOrdersVisitsExtrasTeamsRowList =
                                                  snapshot.data!;

                                              return Container(
                                                width: 65.0,
                                                height: 90.0,
                                                decoration: BoxDecoration(),
                                                child: Builder(
                                                  builder: (context) {
                                                    final gcOVETeamUsers =
                                                        containerTeamVOrdersVisitsExtrasTeamsRowList
                                                            .map((e) => e)
                                                            .toList()
                                                            .sortedList(
                                                                keyOf: (e) =>
                                                                    e.orderBy!,
                                                                desc: false)
                                                            .toList();

                                                    return ListView.separated(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          gcOVETeamUsers.length,
                                                      separatorBuilder: (_,
                                                              __) =>
                                                          SizedBox(width: 2.0),
                                                      itemBuilder: (context,
                                                          gcOVETeamUsersIndex) {
                                                        final gcOVETeamUsersItem =
                                                            gcOVETeamUsers[
                                                                gcOVETeamUsersIndex];
                                                        return Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 1.0),
                                                          child: Container(
                                                            width: 80.0,
                                                            height: 85.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CpUserPicProfileWidget(
                                                                      key: Key(
                                                                          'Keybjr_${gcOVETeamUsersIndex}_of_${gcOVETeamUsers.length}'),
                                                                      cpSize:
                                                                          60,
                                                                      imgUrl:
                                                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcOVETeamUsersItem.imgFilePath}/${gcOVETeamUsersItem.imgFileName}',
                                                                      toolTip:
                                                                          gcOVETeamUsersItem
                                                                              .nameShort!,
                                                                      isAvailable:
                                                                          gcOVETeamUsersItem
                                                                              .isAvailable!,
                                                                      isOrderVisitIdInProgress:
                                                                          gcOVETeamUsersItem
                                                                              .isOvInProgress!,
                                                                      displayAvailable:
                                                                          false,
                                                                      cpBorderWidth:
                                                                          0,
                                                                    ),
                                                                    FFButtonWidget(
                                                                      onPressed: (widget.cpDtOVE!.isArchived ||
                                                                              (widget.cpDtOVE?.teamLeaderId == gcOVETeamUsersItem.userId))
                                                                          ? null
                                                                          : () async {
                                                                              _model.resTeamLeader = await VUsersTable().queryRows(
                                                                                queryFn: (q) => q.eqOrNull(
                                                                                  'id',
                                                                                  valueOrDefault<int>(
                                                                                    gcOVETeamUsersItem.userId,
                                                                                    0,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                              await OrdersVisitsExtrasTable().update(
                                                                                data: {
                                                                                  'team_leader_id': gcOVETeamUsersItem.userId,
                                                                                  'team_id': _model.resTeamLeader?.firstOrNull?.teamId,
                                                                                },
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'id',
                                                                                  widget.cpDtOVE?.id,
                                                                                ),
                                                                              );

                                                                              safeSetState(() {});
                                                                            },
                                                                      text: gcOVETeamUsersItem
                                                                          .nameShort!,
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            20.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: Color(
                                                                            0x00FFFFFF),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).bodySmall,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: widget.cpDtOVE?.teamLeaderId == gcOVETeamUsersItem.userId
                                                                              ? FlutterFlowTheme.of(context).secondaryText
                                                                              : Color(0x00000000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                                if (!widget
                                                                        .cpDtOVE!
                                                                        .isArchived &&
                                                                    (gcOVETeamUsersItem
                                                                            .userId !=
                                                                        widget
                                                                            .cpDtOVE
                                                                            ?.teamLeaderId))
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .error,
                                                                      borderRadius:
                                                                          16.0,
                                                                      borderWidth:
                                                                          2.0,
                                                                      buttonSize:
                                                                          30.0,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .error,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .solidTrashAlt,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            14.0,
                                                                      ),
                                                                      showLoadingIndicator:
                                                                          true,
                                                                      onPressed:
                                                                          () async {
                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Ops ...'),
                                                                                  content: Text('Deseja realmente EXCLUIR ?'),
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
                                                                          await OrdersVisitsExtrasTeamsTable()
                                                                              .delete(
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              gcOVETeamUsersItem.id,
                                                                            ),
                                                                          );
                                                                          await _model
                                                                              .aBcLOveSelectedTeamUsers(
                                                                            context,
                                                                            abOveId:
                                                                                widget.cpDtOVE?.id,
                                                                          );
                                                                          await OrdersVisitsExtrasTable()
                                                                              .update(
                                                                            data: {
                                                                              'team_amount': widget.cpDtOVE!.teamAmount - 1,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              widget.cpDtOVE?.id,
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
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.cpCompanyLogoModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpCompanyLogoWidget(
                                              cpSize: 60,
                                              cpImgUrl:
                                                  '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpDtOVE?.providerCompanyImgFilePath}/${widget.cpDtOVE?.providerCompanyImgFileName}',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 20.0)),
                      ),
                      if (widget.cpDtOVE?.isArchived == false)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 170.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model:
                                        _model.cpDropdownUsersDepartmentModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDropdownUsersDepartmentWidget(
                                      cpDepartmentId: FFAppState()
                                          .stUserCurrent
                                          .departmentId,
                                      cpHintText: 'Integrante',
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 16.0,
                                  borderWidth: 6.0,
                                  buttonSize: 50.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.plusCircle,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    if (functions.cfContainInList(
                                        _model.lcsvOVETeamUsers
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
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      _model.resTeamUserAdded =
                                          await OrdersVisitsExtrasTeamsTable()
                                              .insert({
                                        'ove_id': widget.cpDtOVE?.id,
                                        'user_id': _model
                                            .cpDropdownUsersDepartmentModel
                                            .dropdownUsersDepartmentValue,
                                        'is_leader': false,
                                        'version_mode':
                                            FFAppState().stAppVersionMode?.name,
                                        'duration_hours':
                                            widget.cpDtOVE?.durationHours,
                                        'started_at_date':
                                            supaSerialize<DateTime>(functions
                                                .cfConvDatetimeEnStringToDatetimeEn(
                                                    widget
                                                        .cpDtOVE!.startedAt)),
                                        'started_at_hour_min': supaSerialize<
                                                PostgresTime>(
                                            PostgresTime(functions
                                                .cfConvDatetimeEnStringToDatetimeEn(
                                                    widget
                                                        .cpDtOVE!.startedAt))),
                                        'ended_at_date':
                                            supaSerialize<DateTime>(functions
                                                .cfConvDatetimeEnStringToDatetimeEn(
                                                    widget.cpDtOVE!.endedAt)),
                                        'ended_at_hour_min': supaSerialize<
                                                PostgresTime>(
                                            PostgresTime(functions
                                                .cfConvDatetimeEnStringToDatetimeEn(
                                                    widget.cpDtOVE!.endedAt))),
                                      });
                                      _shouldSetState = true;
                                      await _model.aBcLOveSelectedTeamUsers(
                                        context,
                                        abOveId: widget.cpDtOVE?.id,
                                      );
                                      await OrdersVisitsExtrasTable().update(
                                        data: {
                                          'team_amount':
                                              widget.cpDtOVE!.teamAmount + 1,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.cpDtOVE?.id,
                                        ),
                                      );
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.cpOveMenuOptionsModel,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: CpOveMenuOptionsWidget(
                                    cpDtOve: widget.cpDtOVE!,
                                    cpSize: 50,
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

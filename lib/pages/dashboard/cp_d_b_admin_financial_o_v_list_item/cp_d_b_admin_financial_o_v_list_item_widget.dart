import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_parents/cp_o_priority/cp_o_priority_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_d_b_admin_financial_o_v_list_item_model.dart';
export 'cp_d_b_admin_financial_o_v_list_item_model.dart';

class CpDBAdminFinancialOVListItemWidget extends StatefulWidget {
  const CpDBAdminFinancialOVListItemWidget({
    super.key,
    required this.cpOVDt,
  });

  final DtOrderVisitStruct? cpOVDt;

  @override
  State<CpDBAdminFinancialOVListItemWidget> createState() =>
      _CpDBAdminFinancialOVListItemWidgetState();
}

class _CpDBAdminFinancialOVListItemWidgetState
    extends State<CpDBAdminFinancialOVListItemWidget>
    with TickerProviderStateMixin {
  late CpDBAdminFinancialOVListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDBAdminFinancialOVListItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultj2z =
          await ApiOrdersVisitsTeamsGroup.apiTeamUsersByOVIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        ovId: widget.cpOVDt?.id,
      );

      if ((_model.apiResultj2z?.succeeded ?? true)) {
        _model.lcsvOVTeamUsers = ((_model.apiResultj2z?.jsonBody ?? '')
                .toList()
                .map<DtOrderVisitTeamUserStruct?>(
                    DtOrderVisitTeamUserStruct.maybeFromMap)
                .toList() as Iterable<DtOrderVisitTeamUserStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderVisitTeamUserStruct>();
        safeSetState(() {});
      }
      if (widget.cpOVDt == null) {
        await action_blocks.abOSelected(
          context,
          abOId: widget.cpOVDt?.oId,
          abIsParent: false,
          abIsNew: false,
        );
      } else {
        return;
      }
    });

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
      'textOnPageLoadAnimation5': AnimationInfo(
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
      'buttonOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation6': AnimationInfo(
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
      'textOnPageLoadAnimation7': AnimationInfo(
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
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'OS ${widget.cpOVDt?.oMask}',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '${widget.cpOVDt?.oTypeCode}/${widget.cpOVDt?.oTypeSubCode}/${widget.cpOVDt?.oObjectCode}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation1']!),
                                          ],
                                        ),
                                      ],
                                    ),
                                    wrapWithModel(
                                      model: _model.cpOPriorityModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CpOPriorityWidget(
                                        cpOPriorityId:
                                            widget.cpOVDt!.oPriorityId,
                                        cpOPriorityDscription: widget
                                            .cpOVDt!.oPriorityDescription,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.cpOProgressModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpOProgressWidget(
                                          cpValue: valueOrDefault<double>(
                                            widget.cpOVDt?.ovOProgress,
                                            0.0,
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.cpOStatusModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpOStatusWidget(
                                          cpOStatusId:
                                              widget.cpOVDt!.oStatusId,
                                          cpOStatusDescription: widget
                                              .cpOVDt!.oStatusDescription,
                                          cpBadge: 0,
                                          cpBorderWidth: 0,
                                          cpSize: 50,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Text(
                                    widget
                                        .cpOVDt!.ovOSuspendedReasonDescription,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await action_blocks.abUnitSelected(
                                      context,
                                      abUnitId: widget.cpOVDt?.oUnitId,
                                    );

                                    context
                                        .pushNamed(PgUnitShowWidget.routeName);
                                  },
                                  child: Text(
                                    widget.cpOVDt!.oUnitDescription,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .headlineMedium,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!),
                              ),
                              Text(
                                widget.cpOVDt!.oAssetTagDescription,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .bodyLarge,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation3']!),
                              Text(
                                widget.cpOVDt!.oRequestedServices,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation4']!),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Text(
                            widget.cpOVDt!.oCauseReasonDescription,
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  font: FlutterFlowTheme.of(context).labelSmall,
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation5']!),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    await action_blocks.abOVSelected(
                                      context,
                                      abOVId: widget.cpOVDt?.id,
                                    );

                                    context.pushNamed(PgOVShowWidget.routeName);
                                  },
                                  text: 'AT ${widget.cpOVDt?.ovMask}',
                                  options: FFButtonOptions(
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 6.0, 12.0, 6.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .titleSmall,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).info,
                                      width: 6.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation']!),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AutoSizeText(
                                  '${dateTimeFormat(
                                    "dd/MM/y HH:mm",
                                    widget.cpOVDt?.ovStartedDatetime,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )}h'
                                      .maybeHandleOverflow(
                                    maxChars: 16,
                                  ),
                                  minFontSize: 12.0,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        letterSpacing: 0.0,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation6']!),
                                if (widget.cpOVDt?.ovStatusId == 2)
                                  AutoSizeText(
                                    '${dateTimeFormat(
                                      "dd/MM/y HH:mm",
                                      widget.cpOVDt?.ovEndedDatetime,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )}h'
                                        .maybeHandleOverflow(
                                      maxChars: 16,
                                    ),
                                    minFontSize: 12.0,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation7']!),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (widget.cpOVDt?.ovStatusId == 2)
                                  AutoSizeText(
                                    '(${functions.cfConvDoubleToCurrency2Decimals(formatNumber(
                                              widget.cpOVDt!.ovDurationHours,
                                              formatType: FormatType.custom,
                                              format: '0.0#',
                                              locale: '',
                                            ), 2)}h )'
                                        .maybeHandleOverflow(
                                      maxChars: 16,
                                    ),
                                    minFontSize: 12.0,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .labelSmall,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                              ],
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.cpOVProcessingModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpOVProcessingWidget(
                                    cpProcessingDescription:
                                        widget.cpOVDt?.ovProcessingDescription,
                                    cpProcessingId:
                                        widget.cpOVDt!.ovProcessingId,
                                    cpBorderWidth: 0,
                                    cpSize: 50,
                                    cpShowLoadingIndicator: false,
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: 65.0,
                                          height: 90.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Builder(
                                            builder: (context) {
                                              final gcTeamUsers = _model
                                                  .lcsvOVTeamUsers
                                                  .map((e) => e)
                                                  .toList();

                                              return ListView.separated(
                                                padding: EdgeInsets.zero,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: gcTeamUsers.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(width: 2.0),
                                                itemBuilder: (context,
                                                    gcTeamUsersIndex) {
                                                  final gcTeamUsersItem =
                                                      gcTeamUsers[
                                                          gcTeamUsersIndex];
                                                  return Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      height: 80.0,
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
                                                                    'Key4ix_${gcTeamUsersIndex}_of_${gcTeamUsers.length}'),
                                                                cpSize: 60,
                                                                imgUrl:
                                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcTeamUsersItem.imgFilePath}/${gcTeamUsersItem.imgFileName}',
                                                                toolTip:
                                                                    gcTeamUsersItem
                                                                        .nameShort,
                                                                isAvailable:
                                                                    gcTeamUsersItem
                                                                        .isAvailable,
                                                                isOrderVisitIdInProgress:
                                                                    gcTeamUsersItem
                                                                        .isOvInProgress,
                                                                displayAvailable:
                                                                    false,
                                                                cpBorderWidth:
                                                                    0,
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  gcTeamUsersItem
                                                                      .nameShort,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          if (!widget.cpOVDt!
                                                                  .ovIsFiled &&
                                                              !gcTeamUsersItem
                                                                  .isLeader)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                borderRadius:
                                                                    16.0,
                                                                borderWidth:
                                                                    2.0,
                                                                buttonSize:
                                                                    30.0,
                                                                fillColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidTrashAlt,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 14.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed:
                                                                    () async {
                                                                  await OrdersVisitsTeamsTable()
                                                                      .delete(
                                                                    matchingRows: (rows) => rows
                                                                        .eqOrNull(
                                                                          'ov_id',
                                                                          FFAppState()
                                                                              .stOVSelected
                                                                              .id,
                                                                        )
                                                                        .eqOrNull(
                                                                          'user_id',
                                                                          gcTeamUsersItem
                                                                              .userId,
                                                                        )
                                                                        .eqOrNull(
                                                                          'version_mode',
                                                                          FFAppState()
                                                                              .stAppVersionMode
                                                                              ?.name,
                                                                        ),
                                                                  );
                                                                  if (FFAppState()
                                                                          .stOVSelected
                                                                          .ovStatusId ==
                                                                      1) {
                                                                    await UsersTable()
                                                                        .update(
                                                                      data: {
                                                                        'ov_in_progress_leader_id':
                                                                            0,
                                                                        'o_contract_id_in_progress':
                                                                            0,
                                                                        'o_type_id_in_progress':
                                                                            0,
                                                                        'o_type_sub_id_in_progress':
                                                                            0,
                                                                        'o_plan_id_in_progress':
                                                                            0,
                                                                        'o_asset_tag_id_in_progress':
                                                                            0,
                                                                        'o_unit_id_in_progress':
                                                                            0,
                                                                        'o_system_id_in_progress':
                                                                            0,
                                                                        'o_system_parent_id_in_progress':
                                                                            0,
                                                                        'o_unit_type_id_in_progress':
                                                                            0,
                                                                        'o_unit_type_parent_id_in_progress':
                                                                            0,
                                                                        'o_object_id_in_progress':
                                                                            0,
                                                                        'ov_id_in_progress':
                                                                            0,
                                                                        'o_id_in_progress':
                                                                            0,
                                                                        'op_id_in_progress':
                                                                            0,
                                                                        'is_available':
                                                                            true,
                                                                        'is_ov_in_progress':
                                                                            false,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eqOrNull(
                                                                        'id',
                                                                        gcTeamUsersItem
                                                                            .userId,
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
                                                                  safeSetState(
                                                                      () {});

                                                                  safeSetState(
                                                                      () {});
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
                                    ],
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.truck,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                if (widget.cpOVDt!.ovVehiclesValue > 0.0)
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.lcsvOVFinancialViewOption ==
                                          'vehicles') {
                                        _model.lcsvOVFinancialViewOption = null;
                                        safeSetState(() {});
                                      } else {
                                        _model.lcsvOVFinancialViewOption =
                                            'vehicles';
                                        safeSetState(() {});
                                        await action_blocks
                                            .abOVSelectedVehicles(
                                          context,
                                          abOVId: widget.cpOVDt?.id,
                                        );
                                      }
                                    },
                                    child: Text(
                                      valueOrDefault<String>(
                                        formatNumber(
                                          widget.cpOVDt?.ovVehiclesValue,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .titleMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                if (widget.cpOVDt?.ovVehiclesValue == 0.0)
                                  Text(
                                    valueOrDefault<String>(
                                      formatNumber(
                                        widget.cpOVDt?.ovVehiclesValue,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.commaDecimal,
                                        currency: 'R\$ ',
                                      ),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                              ],
                            ),
                            FaIcon(
                              FontAwesomeIcons.plus,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.dolly,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                if (widget.cpOVDt!.ovMaterialsValue > 0.0)
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {},
                                    child: Text(
                                      valueOrDefault<String>(
                                        formatNumber(
                                          widget.cpOVDt?.ovMaterialsValue,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .titleMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                if (widget.cpOVDt?.ovMaterialsValue == 0.0)
                                  Text(
                                    valueOrDefault<String>(
                                      formatNumber(
                                        widget.cpOVDt?.ovMaterialsValue,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.commaDecimal,
                                        currency: 'R\$ ',
                                      ),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                              ],
                            ),
                            FaIcon(
                              FontAwesomeIcons.plus,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.tools,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                if (widget.cpOVDt!.ovServicesValue > 0.0)
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.lcsvOVFinancialViewOption ==
                                          'services') {
                                        _model.lcsvOVFinancialViewOption = null;
                                        safeSetState(() {});
                                      } else {
                                        _model.lcsvOVFinancialViewOption =
                                            'services';
                                        safeSetState(() {});
                                        await action_blocks
                                            .abOVSelectedServices(
                                          context,
                                          abOVId: widget.cpOVDt?.id,
                                        );
                                      }
                                    },
                                    child: Text(
                                      valueOrDefault<String>(
                                        formatNumber(
                                          widget.cpOVDt?.ovServicesValue,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .titleMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                if (widget.cpOVDt?.ovServicesValue == 0.0)
                                  Text(
                                    valueOrDefault<String>(
                                      formatNumber(
                                        widget.cpOVDt?.ovServicesValue,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.commaDecimal,
                                        currency: 'R\$ ',
                                      ),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                              ],
                            ),
                            FaIcon(
                              FontAwesomeIcons.equals,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.moneyBillAlt,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    formatNumber(
                                      widget.cpOVDt?.ovTotalValue,
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.commaDecimal,
                                      currency: 'R\$ ',
                                    ),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .titleMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Builder(
                builder: (context) {
                  if (_model.lcsvOVFinancialViewOption == 'vehicles') {
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                      child: Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        child: Builder(
                          builder: (context) {
                            final gcOVVehicles = FFAppState()
                                .stOVSelectedVehicles
                                .map((e) => e)
                                .toList();

                            return FlutterFlowDataTable<
                                DtOrderVisitVehicleStruct>(
                              controller: _model.paginatedDataTableController1,
                              data: gcOVVehicles,
                              numRows: gcOVVehicles.length,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ssoa3hbk' /* Placas */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'w4xoh00o' /* Distância */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'z94sygqo' /* Vlr Unit */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '79ge59st' /* A/D */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'mop4j8de' /* Vlr Item */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (gcOVVehiclesItem,
                                      gcOVVehiclesIndex,
                                      selected,
                                      onSelectChanged) =>
                                  DataRow(
                                color: WidgetStateProperty.all(
                                  gcOVVehiclesIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context).alternate
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                                cells: [
                                  Text(
                                    gcOVVehiclesItem.vehiclePlates,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        '${gcOVVehiclesItem.amount.toString()} ${gcOVVehiclesItem.unit}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          gcOVVehiclesItem.valueUnit,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          gcOVVehiclesItem.discount,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          gcOVVehiclesItem.valueTotal,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ].map((c) => DataCell(c)).toList(),
                              ),
                              paginated: false,
                              selectable: false,
                              headingRowHeight: 50.0,
                              dataRowHeight: 40.0,
                              columnSpacing: 8.0,
                              headingRowColor:
                                  FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(12.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: true,
                              hideDefaultHorizontalDivider: true,
                              horizontalDividerColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              horizontalDividerThickness: 1.0,
                              addVerticalDivider: true,
                              verticalDividerColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              verticalDividerThickness: 1.0,
                            );
                          },
                        ),
                      ),
                    );
                  } else if (_model.lcsvOVFinancialViewOption == 'services') {
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                      child: Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        child: Builder(
                          builder: (context) {
                            final gcOVServices = FFAppState()
                                .stOVSelectedServices
                                .map((e) => e)
                                .toList();

                            return FlutterFlowDataTable<
                                DtOrderVisitServiceStruct>(
                              controller: _model.paginatedDataTableController2,
                              data: gcOVServices,
                              numRows: gcOVServices.length,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '54b9gcpc' /* Serviços */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'mrx0oc01' /* Qte */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'e3cqoge2' /* Vlr Unit */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '9jabp8ob' /* A/D */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'mn268pmg' /* Vlr Item */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (gcOVServicesItem,
                                      gcOVServicesIndex,
                                      selected,
                                      onSelectChanged) =>
                                  DataRow(
                                color: WidgetStateProperty.all(
                                  gcOVServicesIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context).alternate
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                                cells: [
                                  Text(
                                    gcOVServicesItem.description,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        '${gcOVServicesItem.amount.toString()} ${gcOVServicesItem.unit}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          gcOVServicesItem.valueUnit,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          gcOVServicesItem.discount,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          gcOVServicesItem.valueTotal,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ].map((c) => DataCell(c)).toList(),
                              ),
                              paginated: false,
                              selectable: false,
                              headingRowHeight: 50.0,
                              dataRowHeight: 40.0,
                              columnSpacing: 8.0,
                              headingRowColor:
                                  FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(12.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: true,
                              hideDefaultHorizontalDivider: true,
                              horizontalDividerColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              horizontalDividerThickness: 1.0,
                              addVerticalDivider: true,
                              verticalDividerColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              verticalDividerThickness: 1.0,
                            );
                          },
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      width: 0.0,
                      height: 0.0,
                      decoration: BoxDecoration(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

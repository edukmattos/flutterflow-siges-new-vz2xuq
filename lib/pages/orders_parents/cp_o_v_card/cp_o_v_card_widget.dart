import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_parents/cp_o_button/cp_o_button_widget.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/orders_parents/cp_o_v_values/cp_o_v_values_widget.dart';
import '/pages/orders_parents/md_o_v_close/md_o_v_close_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_card_model.dart';
export 'cp_o_v_card_model.dart';

class CpOVCardWidget extends StatefulWidget {
  const CpOVCardWidget({
    super.key,
    required this.cpOVDt,
  });

  final DtOrderVisitStruct? cpOVDt;

  @override
  State<CpOVCardWidget> createState() => _CpOVCardWidgetState();
}

class _CpOVCardWidgetState extends State<CpOVCardWidget>
    with TickerProviderStateMixin {
  late CpOVCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVCardModel());

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
      'stackOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 110.0),
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
      child: FlipCard(
        fill: Fill.fillBack,
        direction: FlipDirection.HORIZONTAL,
        speed: 400,
        front: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.threesixty_sharp,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 150.0,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            width: 160.0,
                                            constraints: BoxConstraints(
                                              minWidth: 160.0,
                                              maxWidth: 300.0,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (!true)
                                                  wrapWithModel(
                                                    model: _model
                                                        .cpOButtonDisabledModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        CpOButtonDisabledWidget(
                                                      cpOMask:
                                                          widget.cpOVDt!.oMask,
                                                      cpOTypeCode: widget
                                                          .cpOVDt!.oTypeCode,
                                                      cpOTypeSubCode: widget
                                                          .cpOVDt!.oTypeSubCode,
                                                      cpOPriorityCode: widget
                                                          .cpOVDt!
                                                          .oPriorityCode,
                                                      cpOObjectCode: widget
                                                          .cpOVDt!.oObjectCode,
                                                      cpOPriorityId: widget
                                                          .cpOVDt!.oPriorityId,
                                                    ),
                                                  ),
                                                wrapWithModel(
                                                  model: _model.cpOButtonModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CpOButtonWidget(
                                                    cpIsRedirect: true,
                                                    cpODt: FFAppState()
                                                        .stOSelected,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.cpOProgressModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
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
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
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

                                        context.pushNamed(
                                            PgUnitShowWidget.routeName);
                                      },
                                      child: Text(
                                        widget.cpOVDt!.oUnitDescription,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(FlutterFlowTheme
                                                          .of(context)
                                                      .headlineMediumFamily),
                                            ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                  ),
                                  Text(
                                    widget.cpOVDt!.oAssetTagDescription,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily),
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                  Text(
                                    widget.cpOVDt!.oRequestedServices,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation3']!),
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
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelSmallFamily),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation4']!),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                                        await action_blocks
                                            .abOVSelected(context);
                                      },
                                      text: 'AT ${widget.cpOVDt?.ovMask}',
                                      options: FFButtonOptions(
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation']!),
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
                                        cpProcessingDescription: widget
                                            .cpOVDt?.ovProcessingDescription,
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
                          children: [
                            AutoSizeText(
                              '${dateTimeFormat(
                                "dd/MM/y HH:mm",
                                widget.cpOVDt?.ovStartedDatetime,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )} h'
                                  .maybeHandleOverflow(
                                maxChars: 16,
                              ),
                              minFontSize: 12.0,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation5']!),
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
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelSmallFamily),
                                    ),
                              ),
                            if (widget.cpOVDt?.ovStatusId == 2)
                              AutoSizeText(
                                '${dateTimeFormat(
                                  "dd/MM/y HH:mm",
                                  widget.cpOVDt?.ovEndedDatetime,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                )} h'
                                    .maybeHandleOverflow(
                                  maxChars: 16,
                                ),
                                minFontSize: 12.0,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation6']!),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 65.0,
                                              height: 90.0,
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final gcTeamUsers =
                                                      FFAppState()
                                                          .stOVSelectedTeamUsers
                                                          .map((e) => e)
                                                          .toList()
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.orderBy,
                                                              desc: false)
                                                          .toList();

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        gcTeamUsers.length,
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
                                                                        'Keyto0_${gcTeamUsersIndex}_of_${gcTeamUsers.length}'),
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
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              if (!FFAppState()
                                                                      .stOVSelected
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
                                                                            .info,
                                                                    icon:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTrashAlt,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      size:
                                                                          14.0,
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
                                                                              FFAppState().stOVSelected.id,
                                                                            )
                                                                            .eqOrNull(
                                                                              'user_id',
                                                                              gcTeamUsersItem.userId,
                                                                            )
                                                                            .eqOrNull(
                                                                              'version_mode',
                                                                              FFAppState().stAppVersionMode?.name,
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
                                                                          matchingRows: (rows) =>
                                                                              rows.eqOrNull(
                                                                            'id',
                                                                            gcTeamUsersItem.userId,
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
                        if (!FFAppState().stOVSelected.ovIsFiled)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 200.0,
                                height: 50.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.cpDropdownUsersDepartmentModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpDropdownUsersDepartmentWidget(
                                    cpDepartmentId:
                                        FFAppState().stUserCurrent.departmentId,
                                    cpHintText: ' Nome',
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
                                onPressed: (_model
                                            .cpDropdownUsersDepartmentModel
                                            .dropdownUsersDepartmentValue ==
                                        null)
                                    ? null
                                    : () async {
                                        await OrdersVisitsTeamsTable().insert({
                                          'ov_id': FFAppState().stOVSelected.id,
                                          'user_id': _model
                                              .cpDropdownUsersDepartmentModel
                                              .dropdownUsersDepartmentValue,
                                          'is_leader': false,
                                          'version_mode': FFAppState()
                                              .stAppVersionMode
                                              ?.name,
                                        });
                                        if (FFAppState()
                                                .stOVSelected
                                                .oStatusId ==
                                            1) {
                                          await UsersTable().update(
                                            data: {
                                              'is_available': false,
                                              'is_ov_in_progress': true,
                                              'ov_id_in_progress':
                                                  FFAppState().stOVSelected.id,
                                              'o_id_in_progress':
                                                  FFAppState().stOVSelected.oId,
                                              'op_id_in_progress': FFAppState()
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
                                                      .stOSelected
                                                      .teamLeaderId,
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
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              FFAppState()
                                                  .stOVOpenTeamUsers
                                                  .elementAtOrNull(FFAppState()
                                                      .stCounterLoop)
                                                  ?.id,
                                            ),
                                          );
                                        }
                                        await action_blocks
                                            .abOVSelectedTeamUsers(
                                          context,
                                          abOVId: FFAppState().stOVSelected.id,
                                        );
                                        safeSetState(() {});
                                      },
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        if (_model.lcsvImgToUpload ?? true)
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              height: 300.0,
                              constraints: BoxConstraints(
                                maxWidth: 360.0,
                              ),
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 400.0,
                                height: 250.0,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.network(
                                                FFAppState()
                                                                .stOVSelected
                                                                .ovImgFileName !=
                                                            ''
                                                    ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelected.ovImgFilePath}/${FFAppState().stOVSelected.ovImgFileName}'
                                                    : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                                fit: BoxFit.contain,
                                                alignment: Alignment(0.0, 0.0),
                                              ),
                                              allowRotation: false,
                                              tag: FFAppState()
                                                              .stOVSelected
                                                              .ovImgFileName !=
                                                          ''
                                                  ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelected.ovImgFilePath}/${FFAppState().stOVSelected.ovImgFileName}'
                                                  : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: FFAppState()
                                                        .stOVSelected
                                                        .ovImgFileName !=
                                                    ''
                                            ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelected.ovImgFilePath}/${FFAppState().stOVSelected.ovImgFileName}'
                                            : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            FFAppState()
                                                            .stOVSelected
                                                            .ovImgFileName !=
                                                        ''
                                                ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelected.ovImgFilePath}/${FFAppState().stOVSelected.ovImgFileName}'
                                                : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 300.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (!valueOrDefault<bool>(
                                      FFAppState().stOVSelected.ovIsFiled,
                                      false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            borderRadius: 12.0,
                                            borderWidth: 6.0,
                                            buttonSize: 50.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                            icon: FaIcon(
                                              FontAwesomeIcons.trashAlt,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: () async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Deseja realmente ecluir ?'),
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
                                                // Exist
                                                _model.lcsvFileNameToDelete =
                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                                safeSetState(() {});
                                                await deleteSupabaseFileFromPublicUrl(
                                                    _model
                                                        .lcsvFileNameToDelete!);
                                                await OrdersVisitsTable()
                                                    .update(
                                                  data: {
                                                    'ov_img_file_path': null,
                                                    'ov_img_file_name': null,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    FFAppState()
                                                        .stOVSelected
                                                        .id,
                                                  ),
                                                );
                                                FFAppState()
                                                    .updateStOVSelectedStruct(
                                                  (e) => e
                                                    ..ovImgFilePath = null
                                                    ..ovImgFileName = null,
                                                );
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    if (!valueOrDefault<bool>(
                                      FFAppState().stOVSelected.ovIsFiled,
                                      false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            borderRadius: 16.0,
                                            borderWidth: 6.0,
                                            buttonSize: 50.0,
                                            fillColor: Color(0xFF9E9E9E),
                                            icon: Icon(
                                              Icons.linked_camera_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 32.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: () async {
                                              _model.lcsvFilePath =
                                                  'version-${FFAppState().stAppVersionMode?.name}/companies/1/orders_visits/${FFAppState().stOVSelected.id.toString()}';
                                              safeSetState(() {});
                                              if (FFAppState()
                                                          .stOVSelected
                                                          .ovImgFileName ==
                                                      '') {
                                                // Dont Exist
                                                _model.lcsvIsThereFileName =
                                                    false;
                                                safeSetState(() {});
                                              } else {
                                                // Exist
                                                _model.lcsvIsThereFileName =
                                                    true;
                                                _model.lcsvFileNameToDelete =
                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelected.ovImgFilePath}/${FFAppState().stOVSelected.ovImgFileName}';
                                                safeSetState(() {});
                                              }

                                              if (_model.lcsvIsThereFileName) {
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Deseja alterar imagem ? Caso confirme, não será possivel recuperar imagem.'),
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
                                                  await deleteSupabaseFileFromPublicUrl(
                                                      _model
                                                          .lcsvFileNameToDelete!);
                                                } else {
                                                  return;
                                                }
                                              }
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                storageFolderPath:
                                                    _model.lcsvFilePath,
                                                maxWidth: 500.00,
                                                maxHeight: 500.00,
                                                imageQuality: 100,
                                                allowPhoto: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                safeSetState(() => _model
                                                    .isDataUploading = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  showUploadMessage(
                                                    context,
                                                    'Uploading file...',
                                                    showLoading: true,
                                                  );
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      await uploadSupabaseStorageFiles(
                                                    bucketName:
                                                        FFDevEnvironmentValues()
                                                            .envStorageBucket,
                                                    selectedFiles:
                                                        selectedMedia,
                                                  );
                                                } finally {
                                                  ScaffoldMessenger.of(context)
                                                      .hideCurrentSnackBar();
                                                  _model.isDataUploading =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  safeSetState(() {
                                                    _model.uploadedLocalFile =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl =
                                                        downloadUrls.first;
                                                  });
                                                  showUploadMessage(
                                                      context, 'Success!');
                                                } else {
                                                  safeSetState(() {});
                                                  showUploadMessage(context,
                                                      'Failed to upload data');
                                                  return;
                                                }
                                              }

                                              await OrdersVisitsTable().update(
                                                data: {
                                                  'ov_img_file_path':
                                                      _model.lcsvFilePath,
                                                  'ov_img_file_name': functions
                                                      .cfGetFileNameFromFileUrlUploaded(
                                                          _model
                                                              .uploadedFileUrl,
                                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${_model.lcsvFilePath}/'),
                                                },
                                                matchingRows: (rows) =>
                                                    rows.eqOrNull(
                                                  'id',
                                                  FFAppState().stOVSelected.id,
                                                ),
                                              );
                                              FFAppState()
                                                  .updateStOVSelectedStruct(
                                                (e) => e
                                                  ..ovImgFilePath =
                                                      _model.lcsvFilePath
                                                  ..ovImgFileName = functions
                                                      .cfGetFileNameFromFileUrlUploaded(
                                                          _model
                                                              .uploadedFileUrl,
                                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${_model.lcsvFilePath}/'),
                                              );
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['stackOnPageLoadAnimation']!),
                            ),
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if ((FFAppState().stOVSelected.ovStatusId == 1) &&
                                (widget.cpOVDt?.oTeamId ==
                                    FFAppState().stUserCurrent.teamId))
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.isAllowedClose =
                                        await action_blocks.abGuardian(
                                      context,
                                      abPgRequestedId: 2,
                                    );
                                    _shouldSetState = true;
                                    if (_model.isAllowedClose!) {
                                      _model.resOVVehiclesCheckClose =
                                          await action_blocks
                                              .abOVSelectedVehiclesCheck(
                                        context,
                                        abOVId: widget.cpOVDt?.id,
                                      );
                                      _shouldSetState = true;
                                      if (_model.resOVVehiclesCheckClose!) {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Ops ...'),
                                                      content: Text(
                                                          'Deseja ENCERRAR o Atendimento ?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child:
                                                              Text('Cancelar'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirmar'),
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
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: MdOVCloseWidget(),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        }
                                      } else {
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      context.pushNamed(
                                          PgNotAllowedWidget.routeName);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '40umran1' /* ENCERRAR */,
                                  ),
                                  icon: FaIcon(
                                    FontAwesomeIcons.solidThumbsUp,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 150.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).success,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 5.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).info,
                                      width: 6.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 16.0,
                                  borderWidth: 6.0,
                                  buttonSize: 50.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: FaIcon(
                                    FontAwesomeIcons.moneyBillAlt,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  onPressed: true
                                      ? null
                                      : () {
                                          print('IconButton pressed ...');
                                        },
                                ),
                                Text(
                                  formatNumber(
                                    widget.cpOVDt!.ovTotalValue,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.commaDecimal,
                                    currency: 'R\$ ',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily),
                                      ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if ((FFAppState()
                                                    .stOVSelected
                                                    .ovImgFileName !=
                                                '') &&
                                        !FFAppState().stOVSelected.ovIsFiled)
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 16.0,
                                        borderWidth: 6.0,
                                        buttonSize: 50.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.image,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          if (_model.lcsvImgToUpload == true) {
                                            _model.lcsvImgToUpload = false;
                                            safeSetState(() {});
                                          } else {
                                            _model.lcsvImgToUpload = true;
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    if ((FFAppState()
                                                    .stOVSelected
                                                    .ovImgFileName ==
                                                '') &&
                                        !FFAppState().stOVSelected.ovIsFiled)
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 16.0,
                                        borderWidth: 6.0,
                                        buttonSize: 50.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.cameraRetro,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          if (_model.lcsvImgToUpload == true) {
                                            _model.lcsvImgToUpload = false;
                                            safeSetState(() {});
                                          } else {
                                            _model.lcsvImgToUpload = true;
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                  ],
                                ),
                                if (widget.cpOVDt!.ovProcessingId >= 2)
                                  FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 16.0,
                                    borderWidth: 6.0,
                                    buttonSize: 50.0,
                                    icon: FaIcon(
                                      FontAwesomeIcons.print,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      if (FFAppState()
                                              .stOVSelected
                                              .ovProcessingId !=
                                          5) {}
                                      await launchURL(
                                          '${FFDevEnvironmentValues().envJSReport}/orders_visits/ov.pdf?rpt_sub_title=&ov_id=${FFAppState().stOVSelected.id.toString()}&j_username=${FFDevEnvironmentValues().envJSReportUser}&j_password=${FFDevEnvironmentValues().envJSReportPassword}');
                                    },
                                  ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        back: wrapWithModel(
          model: _model.cpOVValuesModel,
          updateCallback: () => safeSetState(() {}),
          child: CpOVValuesWidget(
            cpOVDt: widget.cpOVDt!,
          ),
        ),
      ),
    );
  }
}

import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/orders_parents/cp_o_v_values/cp_o_v_values_widget.dart';
import '/pages/orders_parents/md_o_v_img_main/md_o_v_img_main_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flip_card/flip_card.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_o_o_v_list_item_model.dart';
export 'cp_o_o_v_list_item_model.dart';

class CpOOVListItemWidget extends StatefulWidget {
  const CpOOVListItemWidget({
    super.key,
    required this.cpOVDt,
  });

  final DtOrderVisitStruct? cpOVDt;

  @override
  State<CpOOVListItemWidget> createState() => _CpOOVListItemWidgetState();
}

class _CpOOVListItemWidgetState extends State<CpOOVListItemWidget>
    with TickerProviderStateMixin {
  late CpOOVListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOOVListItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultj2z =
          await ApiOrdersVisitsTeamsGroup.apiTeamUsersByOVIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        ovId: widget.cpOVDt?.id,
      );

      if ((_model.apiResultj2z?.succeeded ?? true)) {
        _model.lcsvOVteamUsers = ((_model.apiResultj2z?.jsonBody ?? '')
                .toList()
                .map<DtOrderVisitTeamUserStruct?>(
                    DtOrderVisitTeamUserStruct.maybeFromMap)
                .toList() as Iterable<DtOrderVisitTeamUserStruct?>)
            .withoutNulls
            .toList()
            .cast<DtOrderVisitTeamUserStruct>();
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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: FlipCard(
        fill: Fill.fillBack,
        direction: FlipDirection.HORIZONTAL,
        speed: 400,
        front: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    width: 150.0,
                                    height: 70.0,
                                    constraints: BoxConstraints(
                                      minWidth: 150.0,
                                      maxWidth: 250.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.cpOButtonDisabledModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CpOButtonDisabledWidget(
                                        cpOMask: widget.cpOVDt!.oMask,
                                        cpOTypeCode: widget.cpOVDt!.oTypeCode,
                                        cpOTypeSubCode:
                                            widget.cpOVDt!.oTypeSubCode,
                                        cpOPriorityCode:
                                            widget.cpOVDt!.oPriorityCode,
                                        cpOObjectCode:
                                            widget.cpOVDt!.oObjectCode,
                                        cpOPriorityId:
                                            widget.cpOVDt!.oPriorityId,
                                      ),
                                    ),
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
                                                widget.cpOVDt!.ovOStatusId,
                                            cpOStatusDescription: widget
                                                .cpOVDt!.ovOStatusDescription,
                                            cpBadge: 0,
                                            cpBorderWidth: 0,
                                            cpSize: 50,
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      widget.cpOVDt!
                                          .ovOSuspendedReasonDescription,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
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
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
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
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        widget.cpOVDt!.oRequestedServices,
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation3']!),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await action_blocks.abOVSelected(
                                        context,
                                        abOVId: widget.cpOVDt?.id,
                                      );

                                      context
                                          .pushNamed(PgOVShowWidget.routeName);
                                    },
                                    text: 'AT  ${widget.cpOVDt?.ovMask}',
                                    options: FFButtonOptions(
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 6.0, 12.0, 6.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: widget.cpOVDt?.ovStatusId == 1
                                          ? FlutterFlowTheme.of(context).success
                                          : FlutterFlowTheme.of(context)
                                              .tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        width: 6.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'buttonOnPageLoadAnimation']!),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (widget.cpOVDt?.ovImgFileName == null ||
                                      widget.cpOVDt?.ovImgFileName == '')
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 16.0,
                                      buttonSize: 50.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        Icons.no_photography_sharp,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 28.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  if (widget.cpOVDt?.ovImgFileName != null &&
                                      widget.cpOVDt?.ovImgFileName != '')
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
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
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: MdOVImgMainWidget(
                                                cpOVDt: widget.cpOVDt!,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                    ),
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
                                      cpDisabled: true,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${dateTimeFormat(
                                  "dd/MM/y HH:mm",
                                  widget.cpOVDt?.ovStartedDatetime,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                )}h',
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
                                  animationsMap['textOnPageLoadAnimation4']!),
                              if (widget.cpOVDt?.ovStatusId == 2)
                                Text(
                                  '(${functions.cfConvDoubleToCurrency2Decimals(widget.cpOVDt!.ovDurationHours.toString(), 2)}h)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation5']!),
                              if (widget.cpOVDt?.ovStatusId == 2)
                                Text(
                                  '${dateTimeFormat(
                                    "dd/MM/y HH:mm",
                                    widget.cpOVDt?.ovEndedDatetime,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )}h',
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
                                child: Container(
                                  width: 65.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final gcTeamUsers = _model.lcsvOVteamUsers
                                          .map((e) => e)
                                          .toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: gcTeamUsers.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 8.0),
                                        itemBuilder:
                                            (context, gcTeamUsersIndex) {
                                          final gcTeamUsersItem =
                                              gcTeamUsers[gcTeamUsersIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CpUserPicProfileWidget(
                                                key: Key(
                                                    'Key5jr_${gcTeamUsersIndex}_of_${gcTeamUsers.length}'),
                                                cpSize: 50,
                                                imgUrl:
                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcTeamUsersItem.imgFilePath}/${gcTeamUsersItem.imgFileName}',
                                                toolTip:
                                                    gcTeamUsersItem.nameShort,
                                                isAvailable:
                                                    gcTeamUsersItem.isAvailable,
                                                isOrderVisitIdInProgress:
                                                    gcTeamUsersItem
                                                        .isOvInProgress,
                                                displayAvailable: false,
                                                cpBorderWidth: 0,
                                              ),
                                              Text(
                                                gcTeamUsersItem.nameShort,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                    if (!true)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 16.0,
                              borderWidth: 6.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
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
                      ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ],
            ),
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
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}

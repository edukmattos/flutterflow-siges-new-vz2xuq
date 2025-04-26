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
import '/pages/orders_parents/md_o_v_img_main/md_o_v_img_main_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cp_o_v_card_mini_model.dart';
export 'cp_o_v_card_mini_model.dart';

class CpOVCardMiniWidget extends StatefulWidget {
  const CpOVCardMiniWidget({
    super.key,
    required this.cpOVDt,
  });

  final DtOrderVisitStruct? cpOVDt;

  @override
  State<CpOVCardMiniWidget> createState() => _CpOVCardMiniWidgetState();
}

class _CpOVCardMiniWidgetState extends State<CpOVCardMiniWidget>
    with TickerProviderStateMixin {
  late CpOVCardMiniModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVCardMiniModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.resOVTeamUsers =
          await ApiOrdersVisitsTeamsGroup.apiTeamUsersByOVIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        ovId: widget.cpOVDt?.id,
      );

      _model.lcsvOVTeamUsers = ((_model.resOVTeamUsers?.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitTeamUserStruct?>(
                  DtOrderVisitTeamUserStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitTeamUserStruct?>)
          .withoutNulls
          .toList()
          .cast<DtOrderVisitTeamUserStruct>();
      safeSetState(() {});
    });

    animationsMap.addAll({
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
      decoration: BoxDecoration(),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 160.0,
                      constraints: BoxConstraints(
                        minWidth: 160.0,
                        maxWidth: 300.0,
                      ),
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.cpOButtonDisabledModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CpOButtonDisabledWidget(
                          cpOMask: widget.cpOVDt!.oMask,
                          cpOTypeCode: widget.cpOVDt!.oTypeCode,
                          cpOTypeSubCode: widget.cpOVDt!.oTypeSubCode,
                          cpOPriorityCode: widget.cpOVDt!.oPriorityCode,
                          cpOObjectCode: widget.cpOVDt!.oObjectCode,
                          cpOPriorityId: widget.cpOVDt!.oPriorityId,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.cpOProgressModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpOProgressWidget(
                                  cpValue: widget.cpOVDt!.ovOProgress,
                                ),
                              ),
                              if (!true)
                                wrapWithModel(
                                  model: _model.cpOStatusModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpOStatusWidget(
                                    cpOStatusId: widget.cpOVDt!.ovOStatusId,
                                    cpOStatusDescription:
                                        widget.cpOVDt!.ovOStatusDescription,
                                    cpBadge: 0,
                                    cpBorderWidth: 0,
                                    cpSize: 50,
                                  ),
                                ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          Text(
                            widget.cpOVDt!.ovOSuspendedReasonDescription,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                          color: widget.cpOVDt?.ovStatusId == 1
                              ? FlutterFlowTheme.of(context).success
                              : FlutterFlowTheme.of(context).tertiary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).info,
                            width: 6.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation']!),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.cpOVDt?.ovImgFileName == null ||
                          widget.cpOVDt?.ovImgFileName == '')
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 16.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.image_not_supported_outlined,
                            color: FlutterFlowTheme.of(context).info,
                            size: 28.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      if (widget.cpOVDt?.ovImgFileName != null &&
                          widget.cpOVDt?.ovImgFileName != '')
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 16.0,
                          borderWidth: 6.0,
                          buttonSize: 50.0,
                          icon: FaIcon(
                            FontAwesomeIcons.image,
                            color: FlutterFlowTheme.of(context).primary,
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
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: MdOVImgMainWidget(
                                    cpOVDt: widget.cpOVDt!,
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                        ),
                      if (widget.cpOVDt?.ovRptFileName != null &&
                          widget.cpOVDt?.ovRptFileName != '')
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 16.0,
                          borderWidth: 6.0,
                          buttonSize: 50.0,
                          icon: FaIcon(
                            FontAwesomeIcons.print,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          showLoadingIndicator: true,
                          onPressed: () async {
                            await launchURL(
                                '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVDt?.ovRptFilePath}/${widget.cpOVDt?.ovRptFileName}');
                          },
                        ),
                      wrapWithModel(
                        model: _model.cpOVProcessingModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CpOVProcessingWidget(
                          cpProcessingDescription:
                              widget.cpOVDt?.ovProcessingDescription,
                          cpProcessingId: widget.cpOVDt!.ovProcessingId,
                          cpBorderWidth: 0,
                          cpSize: 50,
                          cpShowLoadingIndicator: false,
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${dateTimeFormat(
                      "dd/MM/y H:mm",
                      widget.cpOVDt?.ovStartedDatetime,
                      locale: FFLocalizations.of(context).languageCode,
                    )}h',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          font: FlutterFlowTheme.of(context).labelMedium,
                          letterSpacing: 0.0,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation1']!),
                  if (widget.cpOVDt?.ovStatusId == 2)
                    Text(
                      '(${functions.cfConvDoubleToCurrency2Decimals(formatNumber(
                            widget.cpOVDt!.ovDurationHours,
                            formatType: FormatType.custom,
                            format: '0.0#',
                            locale: '',
                          ), 2)}h )',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: FlutterFlowTheme.of(context).labelSmall,
                            letterSpacing: 0.0,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation2']!),
                  if (widget.cpOVDt?.ovStatusId == 2)
                    Text(
                      '${dateTimeFormat(
                        "dd/MM/y H:mm",
                        widget.cpOVDt?.ovEndedDatetime,
                        locale: FFLocalizations.of(context).languageCode,
                      )}h',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: FlutterFlowTheme.of(context).labelMedium,
                            letterSpacing: 0.0,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation3']!),
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
                          final gcTeamUsers =
                              _model.lcsvOVTeamUsers.map((e) => e).toList();

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            scrollDirection: Axis.horizontal,
                            itemCount: gcTeamUsers.length,
                            separatorBuilder: (_, __) => SizedBox(width: 8.0),
                            itemBuilder: (context, gcTeamUsersIndex) {
                              final gcTeamUsersItem =
                                  gcTeamUsers[gcTeamUsersIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CpUserPicProfileWidget(
                                    key: Key(
                                        'Keyujh_${gcTeamUsersIndex}_of_${gcTeamUsers.length}'),
                                    cpSize: 50,
                                    imgUrl:
                                        '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcTeamUsersItem.imgFilePath}/${gcTeamUsersItem.imgFileName}',
                                    toolTip: gcTeamUsersItem.nameShort,
                                    isAvailable: gcTeamUsersItem.isAvailable,
                                    isOrderVisitIdInProgress:
                                        gcTeamUsersItem.isOvInProgress,
                                    displayAvailable: false,
                                    cpBorderWidth: 0,
                                  ),
                                  Text(
                                    gcTeamUsersItem.nameShort,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          letterSpacing: 0.0,
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
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}

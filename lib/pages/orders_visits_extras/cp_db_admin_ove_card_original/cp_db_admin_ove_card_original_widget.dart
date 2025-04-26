import '/backend/schema/structs/index.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_button1/cp_o_v_e_button1_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_processing/cp_o_v_e_processing_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_extras/cp_ove_menu_extras_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_options/cp_ove_menu_options_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:utility_functions_library_8g4bud/flutter_flow/custom_functions.dart'
    as utility_functions_library_8g4bud_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_db_admin_ove_card_original_model.dart';
export 'cp_db_admin_ove_card_original_model.dart';

class CpDbAdminOveCardOriginalWidget extends StatefulWidget {
  const CpDbAdminOveCardOriginalWidget({
    super.key,
    required this.cpDtOVE,
  });

  final DtOrderVisitExtraStruct? cpDtOVE;

  @override
  State<CpDbAdminOveCardOriginalWidget> createState() =>
      _CpDbAdminOveCardOriginalWidgetState();
}

class _CpDbAdminOveCardOriginalWidgetState
    extends State<CpDbAdminOveCardOriginalWidget>
    with TickerProviderStateMixin {
  late CpDbAdminOveCardOriginalModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDbAdminOveCardOriginalModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.lpsvOVETeamUsers = FFAppState()
          .stOVESelectedTeamUsers
          .toList()
          .cast<DtOrderVisitExtraTeamUserStruct>();
      safeSetState(() {});
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
                                    cpIsRedirect: true,
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
                              cpIsFiled: widget.cpDtOVE!.isFiled,
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
                                    Text(
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
                                    ),
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${dateTimeFormat(
                                  "dd/MM/y HH:mm",
                                  utility_functions_library_8g4bud_functions
                                      .convertStringToDateTime(
                                          widget.cpDtOVE!.startedAt),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                )}h',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                              Text(
                                '(${functions.cfConvDoubleToCurrency2Decimals(widget.cpDtOVE!.durationHours.toString(), 2)}h )',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation2']!),
                              Text(
                                '${dateTimeFormat(
                                  "dd/MM/y HH:mm",
                                  utility_functions_library_8g4bud_functions
                                      .convertStringToDateTime(
                                          widget.cpDtOVE!.endedAt),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                )}h',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation3']!),
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
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            badges.Badge(
                                              badgeContent: Text(
                                                widget.cpDtOVE!.teamAmount
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              showBadge:
                                                  widget.cpDtOVE!.teamAmount >
                                                      1,
                                              shape: badges.BadgeShape.circle,
                                              badgeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              elevation: 4.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 8.0, 8.0),
                                              position:
                                                  badges.BadgePosition.topEnd(),
                                              animationType: badges
                                                  .BadgeAnimationType.scale,
                                              toAnimate: true,
                                              child: wrapWithModel(
                                                model: _model
                                                    .cpUserPicProfileModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CpUserPicProfileWidget(
                                                  cpSize: 60,
                                                  imgUrl:
                                                      '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpDtOVE?.teamLeaderUserImgFilePath}/${widget.cpDtOVE?.teamLeaderUserImgFileName}',
                                                  toolTip: widget.cpDtOVE!
                                                      .teamLeaderUserNameShort,
                                                  isAvailable: false,
                                                  isOrderVisitIdInProgress:
                                                      false,
                                                  displayAvailable: false,
                                                  cpBorderWidth: 0,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                widget.cpDtOVE
                                                    ?.teamLeaderUserNameShort,
                                                'Líder',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.cpCompanyLogoModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: CpCompanyLogoWidget(
                                            cpSize: 60,
                                            cpImgUrl:
                                                '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpDtOVE?.providerCompanyImgFilePath}/${widget.cpDtOVE?.providerCompanyImgFileName}',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 20.0)),
                      ),
                      if (!widget.cpDtOVE!.isFiled)
                        Align(
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
                    ],
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

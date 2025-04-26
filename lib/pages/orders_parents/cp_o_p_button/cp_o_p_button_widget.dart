import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'cp_o_p_button_model.dart';
export 'cp_o_p_button_model.dart';

class CpOPButtonWidget extends StatefulWidget {
  const CpOPButtonWidget({
    super.key,
    required this.cpOPId,
    required this.cpOMask,
    bool? cpIsRedirect,
    int? cpFontSize,
    int? cpButtonHeight,
    this.cpODt,
  })  : this.cpIsRedirect = cpIsRedirect ?? true,
        this.cpFontSize = cpFontSize ?? 22,
        this.cpButtonHeight = cpButtonHeight ?? 40;

  final int? cpOPId;
  final String? cpOMask;
  final bool cpIsRedirect;
  final int cpFontSize;
  final int cpButtonHeight;
  final DtOrderStruct? cpODt;

  @override
  State<CpOPButtonWidget> createState() => _CpOPButtonWidgetState();
}

class _CpOPButtonWidgetState extends State<CpOPButtonWidget>
    with TickerProviderStateMixin {
  late CpOPButtonModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOPButtonModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
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
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.5,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
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
    return Builder(
      builder: (context) {
        if (widget.cpIsRedirect) {
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (animationsMap['containerOnActionTriggerAnimation'] != null) {
                await animationsMap['containerOnActionTriggerAnimation']!
                    .controller
                    .forward(from: 0.0);
              }
              await action_blocks.abOSelected(
                context,
                abOId: widget.cpODt?.id,
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
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Container(
                height: 70.0,
                constraints: BoxConstraints(
                  minWidth: 100.0,
                  maxWidth: double.infinity,
                ),
                decoration: BoxDecoration(
                  color: () {
                    if (widget.cpODt?.priorityId == 1) {
                      return FlutterFlowTheme.of(context).error;
                    } else if (widget.cpODt?.priorityId == 2) {
                      return FlutterFlowTheme.of(context).warning;
                    } else {
                      return FlutterFlowTheme.of(context).accent2;
                    }
                  }(),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).info,
                    width: 6.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            widget.cpODt!.orderMask,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: FlutterFlowTheme.of(context).titleLarge,
                                  color: () {
                                    if (widget.cpODt?.priorityId == 1) {
                                      return FlutterFlowTheme.of(context).info;
                                    } else if (widget.cpODt?.priorityId == 2) {
                                      return FlutterFlowTheme.of(context)
                                          .primaryText;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .primaryText;
                                    }
                                  }(),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ei34t5a0' /* SS */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        color: () {
                                          if (widget.cpODt?.priorityId == 1) {
                                            return FlutterFlowTheme.of(context)
                                                .info;
                                          } else if (widget
                                                  .cpODt?.priorityId ==
                                              2) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  '${widget.cpODt?.typeCode}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        color: () {
                                          if (widget.cpODt?.priorityId == 1) {
                                            return FlutterFlowTheme.of(context)
                                                .info;
                                          } else if (widget
                                                  .cpODt?.priorityId ==
                                              2) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                            Text(
                              '${widget.cpODt?.priorityCode}',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    color: () {
                                      if (widget.cpODt?.priorityId == 1) {
                                        return FlutterFlowTheme.of(context)
                                            .info;
                                      } else if (widget.cpODt?.priorityId ==
                                          2) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
              .animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation1']!)
              .animateOnActionTrigger(
                animationsMap['containerOnActionTriggerAnimation']!,
              );
        } else {
          return Container(
            height: 70.0,
            decoration: BoxDecoration(
              color: () {
                if (widget.cpODt?.priorityId == 1) {
                  return FlutterFlowTheme.of(context).error;
                } else if (widget.cpODt?.priorityId == 2) {
                  return FlutterFlowTheme.of(context).warning;
                } else {
                  return FlutterFlowTheme.of(context).accent2;
                }
              }(),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        widget.cpOMask!,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: FlutterFlowTheme.of(context).titleLarge,
                              color: () {
                                if (widget.cpODt?.priorityId == 1) {
                                  return FlutterFlowTheme.of(context).info;
                                } else if (widget.cpODt?.priorityId == 2) {
                                  return FlutterFlowTheme.of(context)
                                      .primaryText;
                                } else {
                                  return FlutterFlowTheme.of(context)
                                      .primaryText;
                                }
                              }(),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'wzdkynbt' /* SS */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    color: () {
                                      if (widget.cpODt?.priorityId == 1) {
                                        return FlutterFlowTheme.of(context)
                                            .info;
                                      } else if (widget.cpODt?.priorityId ==
                                          2) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              '${widget.cpODt?.typeCode}',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    color: () {
                                      if (widget.cpODt?.priorityId == 1) {
                                        return FlutterFlowTheme.of(context)
                                            .info;
                                      } else if (widget.cpODt?.priorityId ==
                                          2) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 6.0)),
                        ),
                        Text(
                          '${widget.cpODt?.priorityCode}',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: FlutterFlowTheme.of(context).bodySmall,
                                color: () {
                                  if (widget.cpODt?.priorityId == 1) {
                                    return FlutterFlowTheme.of(context).info;
                                  } else if (widget.cpODt?.priorityId == 2) {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  } else {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  }
                                }(),
                                letterSpacing: 0.0,
                              ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ),
                ],
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!);
        }
      },
    );
  }
}

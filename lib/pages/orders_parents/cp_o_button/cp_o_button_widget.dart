import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'cp_o_button_model.dart';
export 'cp_o_button_model.dart';

class CpOButtonWidget extends StatefulWidget {
  const CpOButtonWidget({
    super.key,
    bool? cpIsRedirect,
    this.cpODt,
  }) : this.cpIsRedirect = cpIsRedirect ?? true;

  final bool cpIsRedirect;
  final DtOrderStruct? cpODt;

  @override
  State<CpOButtonWidget> createState() => _CpOButtonWidgetState();
}

class _CpOButtonWidgetState extends State<CpOButtonWidget>
    with TickerProviderStateMixin {
  late CpOButtonModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOButtonModel());

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
                abODt: widget.cpODt,
                abIsParent: false,
                abIsNew: false,
              );

              context.pushNamed(
                PgOShowWidget.routeName,
                queryParameters: {
                  'ppIsRedirect': serializeParam(
                    false,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  width: double.infinity,
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
                              valueOrDefault<String>(
                                widget.cpODt?.orderMask,
                                'OS',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).titleLarge,
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
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    FFLocalizations.of(context).getText(
                                      'ftcude0t' /* OS */,
                                    ),
                                    minFontSize: 10.0,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                          color: () {
                                            if (widget.cpODt?.priorityId ==
                                                1) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .info;
                                            } else if (widget
                                                    .cpODt?.priorityId ==
                                                2) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primaryText;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primaryText;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  AutoSizeText(
                                    '${widget.cpODt?.typeCode}/${widget.cpODt?.typeSubCode}/${widget.cpODt?.objectCode}',
                                    minFontSize: 10.0,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                          color: () {
                                            if (widget.cpODt?.priorityId ==
                                                1) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .info;
                                            } else if (widget
                                                    .cpODt?.priorityId ==
                                                2) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primaryText;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primaryText;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                            ),
                            Text(
                              widget.cpODt!.priorityCode,
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
                      ],
                    ),
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
          return ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              width: double.infinity,
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
                borderRadius: BorderRadius.circular(16.0),
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
                        Flexible(
                          child: Text(
                            valueOrDefault<String>(
                              widget.cpODt?.orderMask,
                              'OS',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: FlutterFlowTheme.of(context)
                                      .headlineSmall,
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
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'sqoba2sv' /* OS */,
                                ),
                                minFontSize: 10.0,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .labelSmall,
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
                              AutoSizeText(
                                '${widget.cpODt?.typeCode}/${widget.cpODt?.typeSubCode}/${widget.cpODt?.objectCode}',
                                minFontSize: 10.0,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .labelSmall,
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
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ),
                        Text(
                          widget.cpODt!.priorityCode,
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                font: FlutterFlowTheme.of(context).labelSmall,
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
                  ],
                ),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!);
        }
      },
    );
  }
}

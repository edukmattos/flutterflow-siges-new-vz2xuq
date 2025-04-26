import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cp_o_v_e_button1_model.dart';
export 'cp_o_v_e_button1_model.dart';

class CpOVEButton1Widget extends StatefulWidget {
  const CpOVEButton1Widget({
    super.key,
    bool? cpIsRedirect,
    this.cpDtOVE,
    int? cpHeight,
  })  : this.cpIsRedirect = cpIsRedirect ?? true,
        this.cpHeight = cpHeight ?? 60;

  final bool cpIsRedirect;
  final DtOrderVisitExtraStruct? cpDtOVE;
  final int cpHeight;

  @override
  State<CpOVEButton1Widget> createState() => _CpOVEButton1WidgetState();
}

class _CpOVEButton1WidgetState extends State<CpOVEButton1Widget>
    with TickerProviderStateMixin {
  late CpOVEButton1Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVEButton1Model());

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
          return Stack(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (animationsMap['containerOnActionTriggerAnimation'] !=
                      null) {
                    await animationsMap['containerOnActionTriggerAnimation']!
                        .controller
                        .forward(from: 0.0);
                  }
                  await action_blocks.abOVESelected(
                    context,
                    abOVEId: widget.cpDtOVE?.id,
                  );

                  context.pushNamed(PgOveShowWidget.routeName);
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
                      height: widget.cpHeight.toDouble(),
                      constraints: BoxConstraints(
                        minWidth: 150.0,
                        maxWidth: 300.0,
                      ),
                      decoration: BoxDecoration(
                        color: () {
                          if (widget.cpDtOVE?.priorityId == 1) {
                            return FlutterFlowTheme.of(context).error;
                          } else if (widget.cpDtOVE?.priorityId == 2) {
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 3.0, 8.0, 3.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'SE ${widget.cpDtOVE?.id.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        color: () {
                                          if (widget.cpDtOVE?.priorityId ==
                                              1) {
                                            return FlutterFlowTheme.of(context)
                                                .info;
                                          } else if (widget
                                                  .cpDtOVE?.priorityId ==
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
                                  widget.cpDtOVE!.priorityCode,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        color: () {
                                          if (widget.cpDtOVE?.priorityId ==
                                              1) {
                                            return FlutterFlowTheme.of(context)
                                                .info;
                                          } else if (widget
                                                  .cpDtOVE?.priorityId ==
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      AutoSizeText(
                                        'OS ${widget.cpDtOVE?.oMask}',
                                        minFontSize: 10.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                              color: () {
                                                if (widget
                                                        .cpDtOVE?.priorityId ==
                                                    1) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else if (widget
                                                        .cpDtOVE?.priorityId ==
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
                                        '${widget.cpDtOVE?.oTypeCode}/${widget.cpDtOVE?.oTypeSubCode}',
                                        minFontSize: 10.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                              color: () {
                                                if (widget
                                                        .cpDtOVE?.priorityId ==
                                                    1) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else if (widget
                                                        .cpDtOVE?.priorityId ==
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
                  ),
              if (false)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget.cpDtOVE?.processingId == 1)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: Icon(
                            Icons.draw,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 2)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: Icon(
                            Icons.report_problem_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 3)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 4)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.thumbsDown,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 5)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.thumbsUp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                  ],
                ),
            ],
          );
        } else {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  height: widget.cpHeight.toDouble(),
                  constraints: BoxConstraints(
                    minWidth: 200.0,
                    maxWidth: 300.0,
                  ),
                  decoration: BoxDecoration(
                    color: () {
                      if (widget.cpDtOVE?.priorityId == 1) {
                        return FlutterFlowTheme.of(context).error;
                      } else if (widget.cpDtOVE?.priorityId == 2) {
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'SE ${widget.cpDtOVE?.id.toString()}',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                      color: () {
                                        if (widget.cpDtOVE?.priorityId == 1) {
                                          return FlutterFlowTheme.of(context)
                                              .info;
                                        } else if (widget
                                                .cpDtOVE?.priorityId ==
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
                            ),
                            Text(
                              widget.cpDtOVE!.priorityCode,
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).labelSmall,
                                    color: () {
                                      if (widget.cpDtOVE?.priorityId == 1) {
                                        return FlutterFlowTheme.of(context)
                                            .info;
                                      } else if (widget.cpDtOVE?.priorityId ==
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    'OS ${widget.cpDtOVE?.oMask}',
                                    minFontSize: 10.0,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .labelSmall,
                                          color: () {
                                            if (widget.cpDtOVE?.priorityId ==
                                                1) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .info;
                                            } else if (widget
                                                    .cpDtOVE?.priorityId ==
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
                                    '${widget.cpDtOVE?.oTypeCode}/${widget.cpDtOVE?.oTypeSubCode}',
                                    minFontSize: 10.0,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .labelSmall,
                                          color: () {
                                            if (widget.cpDtOVE?.priorityId ==
                                                1) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .info;
                                            } else if (widget
                                                    .cpDtOVE?.priorityId ==
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
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ],
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation2']!),
              if (false)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget.cpDtOVE?.processingId == 1)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: Icon(
                            Icons.draw,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 2)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: Icon(
                            Icons.report_problem_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 3)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 4)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.thumbsDown,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    if (widget.cpDtOVE?.processingId == 5)
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.thumbsUp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                  ],
                ),
            ],
          );
        }
      },
    );
  }
}

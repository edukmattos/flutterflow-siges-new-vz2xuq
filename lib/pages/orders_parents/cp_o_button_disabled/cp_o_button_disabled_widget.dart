import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'cp_o_button_disabled_model.dart';
export 'cp_o_button_disabled_model.dart';

class CpOButtonDisabledWidget extends StatefulWidget {
  const CpOButtonDisabledWidget({
    super.key,
    required this.cpOMask,
    required this.cpOTypeCode,
    required this.cpOTypeSubCode,
    required this.cpOPriorityCode,
    required this.cpOObjectCode,
    required this.cpOPriorityId,
  });

  final String? cpOMask;
  final String? cpOTypeCode;
  final String? cpOTypeSubCode;
  final String? cpOPriorityCode;
  final String? cpOObjectCode;
  final int? cpOPriorityId;

  @override
  State<CpOButtonDisabledWidget> createState() =>
      _CpOButtonDisabledWidgetState();
}

class _CpOButtonDisabledWidgetState extends State<CpOButtonDisabledWidget>
    with TickerProviderStateMixin {
  late CpOButtonDisabledModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOButtonDisabledModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        constraints: BoxConstraints(
          minWidth: 100.0,
          maxWidth: 300.0,
        ),
        decoration: BoxDecoration(
          color: () {
            if (widget.cpOPriorityId == 1) {
              return FlutterFlowTheme.of(context).error;
            } else if (widget.cpOPriorityId == 2) {
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
                      widget.cpOMask!,
                      style: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            font: FlutterFlowTheme.of(context).headlineSmall,
                            color: () {
                              if (widget.cpOPriorityId == 1) {
                                return FlutterFlowTheme.of(context).info;
                              } else if (widget.cpOPriorityId == 2) {
                                return FlutterFlowTheme.of(context).primaryText;
                              } else {
                                return FlutterFlowTheme.of(context).primaryText;
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          'x45hfoxf' /* OS */,
                        ),
                        minFontSize: 10.0,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: FlutterFlowTheme.of(context).labelSmall,
                              color: () {
                                if (widget.cpOPriorityId == 1) {
                                  return FlutterFlowTheme.of(context).info;
                                } else if (widget.cpOPriorityId == 2) {
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
                        '${widget.cpOTypeCode}/${widget.cpOTypeSubCode}/${widget.cpOObjectCode}',
                        minFontSize: 10.0,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: FlutterFlowTheme.of(context).labelSmall,
                              color: () {
                                if (widget.cpOPriorityId == 1) {
                                  return FlutterFlowTheme.of(context).info;
                                } else if (widget.cpOPriorityId == 2) {
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
                    widget.cpOPriorityCode!,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          font: FlutterFlowTheme.of(context).labelSmall,
                          color: () {
                            if (widget.cpOPriorityId == 1) {
                              return FlutterFlowTheme.of(context).info;
                            } else if (widget.cpOPriorityId == 2) {
                              return FlutterFlowTheme.of(context).primaryText;
                            } else {
                              return FlutterFlowTheme.of(context).primaryText;
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
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}

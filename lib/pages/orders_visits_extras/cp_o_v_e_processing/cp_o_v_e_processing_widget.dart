import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_e_processing_model.dart';
export 'cp_o_v_e_processing_model.dart';

class CpOVEProcessingWidget extends StatefulWidget {
  const CpOVEProcessingWidget({
    super.key,
    this.cpProcessingDescription,
    required this.cpProcessingId,
    this.cpDisapprovedNotes,
    int? cpBorderWidth,
    int? cpSize,
    required this.cpShowLoadingIndicator,
    bool? cpDisabled,
    bool? cpIsFiled,
    required this.cpOveId,
  })  : this.cpBorderWidth = cpBorderWidth ?? 6,
        this.cpSize = cpSize ?? 50,
        this.cpDisabled = cpDisabled ?? false,
        this.cpIsFiled = cpIsFiled ?? false;

  final String? cpProcessingDescription;
  final int? cpProcessingId;
  final String? cpDisapprovedNotes;
  final int cpBorderWidth;
  final int cpSize;
  final bool? cpShowLoadingIndicator;
  final bool cpDisabled;
  final bool cpIsFiled;
  final int? cpOveId;

  @override
  State<CpOVEProcessingWidget> createState() => _CpOVEProcessingWidgetState();
}

class _CpOVEProcessingWidgetState extends State<CpOVEProcessingWidget>
    with TickerProviderStateMixin {
  late CpOVEProcessingModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVEProcessingModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation4': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
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

    return Builder(
      builder: (context) {
        if ((widget.cpProcessingId == 1) && (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).primary,
            icon: Icon(
              Icons.draw,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation1']!);
        } else if ((widget.cpProcessingId == 2) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).tertiary,
            icon: Icon(
              Icons.report_problem_outlined,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation2']!);
        } else if ((widget.cpProcessingId == 3) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).secondaryText,
            icon: FaIcon(
              FontAwesomeIcons.solidEye,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation3']!);
        } else if ((widget.cpProcessingId == 4) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).error,
            icon: FaIcon(
              FontAwesomeIcons.thumbsDown,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation4']!);
        } else if ((widget.cpProcessingId == 4) &&
            (widget.cpIsFiled == true)) {
          return Stack(
            alignment: AlignmentDirectional(1.0, -1.0),
            children: [
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).error,
                borderRadius: 16.0,
                borderWidth: 6.0,
                buttonSize: widget.cpSize.toDouble(),
                icon: FaIcon(
                  FontAwesomeIcons.thumbsDown,
                  color: FlutterFlowTheme.of(context).error,
                  size: 30.0,
                ),
                showLoadingIndicator: widget.cpShowLoadingIndicator!,
                onPressed: widget.cpDisabled
                    ? null
                    : () async {
                        var _shouldSetState = false;
                        _model.isAllowUnarchived =
                            await action_blocks.abGuardian(
                          context,
                          abPgRequestedId: 30,
                        );
                        _shouldSetState = true;
                        if (_model.isAllowUnarchived!) {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Ops ...'),
                                    content:
                                        Text('Deseja realmente DESARQUIVAR ?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancelar'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Confirmar'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            await OrdersVisitsExtrasTable().update(
                              data: {
                                'is_archived': false,
                                'unarchived_at': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'unarchived_user_id':
                                    FFAppState().stUserCurrent.id,
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'id',
                                widget.cpOveId,
                              ),
                            );
                            await action_blocks.abOVESearchById(
                              context,
                              abOveId: widget.cpOveId,
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Serviço Extraordinário DESARQUIVADO !',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Ops ... Acesso restrito.',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).error,
                            ),
                          );
                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (_shouldSetState) safeSetState(() {});
                      },
              ),
              Icon(
                Icons.archive_sharp,
                color: FlutterFlowTheme.of(context).customColor3,
                size: 24.0,
              ),
            ],
          );
        } else if ((widget.cpProcessingId == 5) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).success,
            icon: FaIcon(
              FontAwesomeIcons.thumbsUp,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          );
        } else if ((widget.cpProcessingId == 5) &&
            (widget.cpIsFiled == true)) {
          return Stack(
            alignment: AlignmentDirectional(1.0, -1.0),
            children: [
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).success,
                borderRadius: 16.0,
                borderWidth: 6.0,
                buttonSize: widget.cpSize.toDouble(),
                icon: FaIcon(
                  FontAwesomeIcons.thumbsUp,
                  color: FlutterFlowTheme.of(context).success,
                  size: 30.0,
                ),
                showLoadingIndicator: widget.cpShowLoadingIndicator!,
                onPressed: widget.cpDisabled
                    ? null
                    : () async {
                        var _shouldSetState = false;
                        _model.isAllowUnarchivedCopy =
                            await action_blocks.abGuardian(
                          context,
                          abPgRequestedId: 30,
                        );
                        _shouldSetState = true;
                        if (_model.isAllowUnarchivedCopy!) {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Ops ...'),
                                    content:
                                        Text('Deseja realmente DESARQUIVAR ?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancelar'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Confirmar'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            await OrdersVisitsExtrasTable().update(
                              data: {
                                'is_archived': false,
                                'unarchived_at': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'unarchived_user_id':
                                    FFAppState().stUserCurrent.id,
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'id',
                                widget.cpOveId,
                              ),
                            );
                            await action_blocks.abOVESearchById(
                              context,
                              abOveId: widget.cpOveId,
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Serviço Extraordinário DESARQUIVADO !',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Ops ... Acesso restrito.',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).error,
                            ),
                          );
                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (_shouldSetState) safeSetState(() {});
                      },
              ),
              Icon(
                Icons.archive_sharp,
                color: FlutterFlowTheme.of(context).customColor3,
                size: 24.0,
              ),
            ],
          );
        } else {
          return Container(
            width: 0.0,
            height: 0.0,
            decoration: BoxDecoration(),
          );
        }
      },
    );
  }
}

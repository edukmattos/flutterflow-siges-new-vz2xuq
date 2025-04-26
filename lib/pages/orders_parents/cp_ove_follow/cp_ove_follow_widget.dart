import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_ove_follow_model.dart';
export 'cp_ove_follow_model.dart';

class CpOveFollowWidget extends StatefulWidget {
  const CpOveFollowWidget({
    super.key,
    this.cpOveId,
    int? cpSize,
  }) : this.cpSize = cpSize ?? 50;

  final int? cpOveId;
  final int cpSize;

  @override
  State<CpOveFollowWidget> createState() => _CpOveFollowWidgetState();
}

class _CpOveFollowWidgetState extends State<CpOveFollowWidget> {
  late CpOveFollowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOveFollowModel());

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AlignedTooltip(
              content: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'uvzoc6ef' /* Favoritar */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              offset: 4.0,
              preferredDirection: AxisDirection.down,
              borderRadius: BorderRadius.circular(8.0),
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 4.0,
              tailBaseWidth: 24.0,
              tailLength: 12.0,
              waitDuration: Duration(milliseconds: 100),
              showDuration: Duration(milliseconds: 1500),
              triggerMode: TooltipTriggerMode.tap,
              child: Visibility(
                visible: !functions.cfContainInList(
                    FFAppState()
                        .stUserOveFollowing
                        .map((e) => e.oveId)
                        .toList(),
                    widget.cpOveId!)!,
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: 16.0,
                  borderWidth: 6.0,
                  buttonSize: widget.cpSize.toDouble(),
                  icon: FaIcon(
                    FontAwesomeIcons.solidBookmark,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  showLoadingIndicator: true,
                  onPressed: () async {
                    unawaited(
                      () async {
                        await OrdersVisitsExtrasFollowersTable().insert({
                          'user_id': FFAppState().stUserCurrent.id,
                          'ove_id': widget.cpOveId,
                        });
                      }(),
                    );
                    unawaited(
                      () async {
                        await action_blocks.abUserOveFollowing(context);
                        safeSetState(() {});
                      }(),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'SE adicionado aos favoritos.',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).success,
                      ),
                    );
                  },
                ),
              ),
            ),
            AlignedTooltip(
              content: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '2si1a5fb' /* Desfavoritar */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              offset: 4.0,
              preferredDirection: AxisDirection.down,
              borderRadius: BorderRadius.circular(8.0),
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 4.0,
              tailBaseWidth: 24.0,
              tailLength: 12.0,
              waitDuration: Duration(milliseconds: 100),
              showDuration: Duration(milliseconds: 1500),
              triggerMode: TooltipTriggerMode.tap,
              child: Visibility(
                visible: functions.cfContainInList(
                        FFAppState()
                            .stUserOveFollowing
                            .map((e) => e.oveId)
                            .toList(),
                        widget.cpOveId!) ??
                    true,
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).success,
                  borderRadius: 16.0,
                  borderWidth: 6.0,
                  buttonSize: widget.cpSize.toDouble(),
                  icon: FaIcon(
                    FontAwesomeIcons.solidBookmark,
                    color: FlutterFlowTheme.of(context).success,
                    size: 24.0,
                  ),
                  showLoadingIndicator: true,
                  onPressed: () async {
                    unawaited(
                      () async {
                        await OrdersVisitsExtrasFollowersTable().delete(
                          matchingRows: (rows) => rows
                              .eqOrNull(
                                'user_id',
                                FFAppState().stUserCurrent.id,
                              )
                              .eqOrNull(
                                'ove_id',
                                widget.cpOveId,
                              ),
                        );
                      }(),
                    );
                    unawaited(
                      () async {
                        await action_blocks.abUserOveFollowing(context);
                        safeSetState(() {});
                      }(),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'SE removido dos favoritos.',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).error,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

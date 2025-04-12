import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_follow_model.dart';
export 'cp_o_follow_model.dart';

class CpOFollowWidget extends StatefulWidget {
  const CpOFollowWidget({
    super.key,
    this.cpOPId,
  });

  final int? cpOPId;

  @override
  State<CpOFollowWidget> createState() => _CpOFollowWidgetState();
}

class _CpOFollowWidgetState extends State<CpOFollowWidget> {
  late CpOFollowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOFollowModel());

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
            if (!functions.cfContainInList(
                FFAppState().stUserOFollowing.map((e) => e.orderId).toList(),
                widget.cpOPId!)!)
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).secondaryText,
                borderRadius: 16.0,
                borderWidth: 6.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.solidBookmark,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                showLoadingIndicator: true,
                onPressed: () async {
                  await OrdersFollowersTable().insert({
                    'user_id': FFAppState().stUserCurrent.id,
                    'o_id': widget.cpOPId,
                    'version_mode': FFAppState().stAppVersionMode?.name,
                  });
                  await action_blocks.abUserOFollowing(context);
                  safeSetState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'SS adicionada aos favoritos.',
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
            if (functions.cfContainInList(
                    FFAppState()
                        .stUserOFollowing
                        .map((e) => e.orderId)
                        .toList(),
                    widget.cpOPId!) ??
                true)
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).success,
                borderRadius: 16.0,
                borderWidth: 6.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.solidBookmark,
                  color: FlutterFlowTheme.of(context).success,
                  size: 24.0,
                ),
                showLoadingIndicator: true,
                onPressed: () async {
                  await OrdersFollowersTable().delete(
                    matchingRows: (rows) => rows
                        .eqOrNull(
                          'user_id',
                          FFAppState().stUserCurrent.id,
                        )
                        .eqOrNull(
                          'o_id',
                          widget.cpOPId,
                        )
                        .eqOrNull(
                          'version_mode',
                          FFAppState().stAppVersionMode?.name,
                        ),
                  );
                  await action_blocks.abUserOFollowing(context);
                  safeSetState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'SS removida dos favoritos.',
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
          ],
        ),
      ],
    );
  }
}

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
import 'cp_asset_following_model.dart';
export 'cp_asset_following_model.dart';

class CpAssetFollowingWidget extends StatefulWidget {
  const CpAssetFollowingWidget({
    super.key,
    this.list,
    this.item,
  });

  final List<int>? list;
  final int? item;

  @override
  State<CpAssetFollowingWidget> createState() => _CpAssetFollowingWidgetState();
}

class _CpAssetFollowingWidgetState extends State<CpAssetFollowingWidget> {
  late CpAssetFollowingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetFollowingModel());

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
        if (!functions.cfContainInList(
            widget.list!.toList(), widget.item!)!) {
          return FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).secondaryText,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: 50.0,
            fillColor: Colors.transparent,
            icon: FaIcon(
              FontAwesomeIcons.solidBookmark,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await AssetsFollowersTable().insert({
                'user_id': FFAppState().stUserCurrent.id,
                'asset_id': widget.item,
                'version_mode': FFAppState().stAppVersionMode?.name,
              });
              await action_blocks.abUserAssetsFollowing(
                context,
                abUserId: FFAppState().stUserCurrent.id,
                abOperation: 'update',
              );
              safeSetState(() {});
            },
          );
        } else {
          return FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).success,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: 50.0,
            fillColor: Colors.transparent,
            icon: FaIcon(
              FontAwesomeIcons.solidBookmark,
              color: FlutterFlowTheme.of(context).success,
              size: 24.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await AssetsFollowersTable().delete(
                matchingRows: (rows) => rows
                    .eqOrNull(
                      'user_id',
                      FFAppState().stUserCurrent.id,
                    )
                    .eqOrNull(
                      'asset_id',
                      widget.item,
                    )
                    .eqOrNull(
                      'version_mode',
                      FFAppState().stAppVersionMode?.name,
                    ),
              );
              await action_blocks.abUserAssetsFollowing(
                context,
                abUserId: FFAppState().stUserCurrent.id,
                abOperation: 'update',
              );
              safeSetState(() {});
            },
          );
        }
      },
    );
  }
}

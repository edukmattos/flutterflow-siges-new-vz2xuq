import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_t_m_asset_following_model.dart';
export 'cp_t_m_asset_following_model.dart';

class CpTMAssetFollowingWidget extends StatefulWidget {
  const CpTMAssetFollowingWidget({
    super.key,
    this.list,
    this.item,
  });

  final List<int>? list;
  final int? item;

  @override
  State<CpTMAssetFollowingWidget> createState() =>
      _CpTMAssetFollowingWidgetState();
}

class _CpTMAssetFollowingWidgetState extends State<CpTMAssetFollowingWidget> {
  late CpTMAssetFollowingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpTMAssetFollowingModel());

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
            icon: Icon(
              Icons.local_library_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await TechnicalsManualsAssetsTable().insert({
                'tm_id': FFAppState().stTMSelected.id,
                'asset_id': widget.item,
                'version_mode': FFAppState().stAppVersionMode?.name,
              });
              await action_blocks.abTMSelectedAssets(
                context,
                abTMId: FFAppState().stTMSelected.id,
              );
              safeSetState(() {});
              await TechnicalsManualsTable().update(
                data: {
                  'assets_amount': FFAppState().stTMSelectedAssets.length,
                },
                matchingRows: (rows) => rows.eqOrNull(
                  'id',
                  FFAppState().stTMSelected.id,
                ),
              );
              FFAppState().updateStTMSelectedStruct(
                (e) => e..assetsAmount = FFAppState().stTMSelectedAssets.length,
              );
              FFAppState().update(() {});
            },
          );
        } else {
          return FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).success,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: 50.0,
            icon: Icon(
              Icons.local_library_rounded,
              color: FlutterFlowTheme.of(context).success,
              size: 24.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await TechnicalsManualsAssetsTable().delete(
                matchingRows: (rows) => rows
                    .eqOrNull(
                      'tm_id',
                      FFAppState().stTMSelected.id,
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
              await action_blocks.abTMSelectedAssets(
                context,
                abTMId: FFAppState().stTMSelected.id,
              );
              safeSetState(() {});
              await TechnicalsManualsTable().update(
                data: {
                  'assets_amount': FFAppState().stTMSelectedAssets.length,
                },
                matchingRows: (rows) => rows.eqOrNull(
                  'id',
                  FFAppState().stTMSelected.id,
                ),
              );
              FFAppState().updateStTMSelectedStruct(
                (e) => e..assetsAmount = FFAppState().stTMSelectedAssets.length,
              );
              FFAppState().update(() {});
            },
          );
        }
      },
    );
  }
}

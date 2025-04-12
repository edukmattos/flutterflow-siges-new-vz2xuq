import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_moves_list_item/cp_asset_moves_list_item_widget.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_asset_moves_model.dart';
export 'cp_asset_moves_model.dart';

class CpAssetMovesWidget extends StatefulWidget {
  const CpAssetMovesWidget({super.key});

  @override
  State<CpAssetMovesWidget> createState() => _CpAssetMovesWidgetState();
}

class _CpAssetMovesWidgetState extends State<CpAssetMovesWidget> {
  late CpAssetMovesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetMovesModel());

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
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'k2q0b0e2' /* Movimentações */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
        Builder(
          builder: (context) {
            final gcMoves =
                FFAppState().stAssetSelectedMovements.map((e) => e).toList();

            return ListView.separated(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: gcMoves.length,
              separatorBuilder: (_, __) => SizedBox(height: 12.0),
              itemBuilder: (context, gcMovesIndex) {
                final gcMovesItem = gcMoves[gcMovesIndex];
                return CpAssetMovesListItemWidget(
                  key: Key('Keylvu_${gcMovesIndex}_of_${gcMoves.length}'),
                  cpOVADt: gcMovesItem,
                );
              },
            );
          },
        ),
      ].divide(SizedBox(height: 12.0)),
    );
  }
}

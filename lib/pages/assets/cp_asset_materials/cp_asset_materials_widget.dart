import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_asset_materials_model.dart';
export 'cp_asset_materials_model.dart';

class CpAssetMaterialsWidget extends StatefulWidget {
  const CpAssetMaterialsWidget({
    super.key,
    required this.cpAssetMaterialDt,
  });

  final DtAssetMaterialStruct? cpAssetMaterialDt;

  @override
  State<CpAssetMaterialsWidget> createState() => _CpAssetMaterialsWidgetState();
}

class _CpAssetMaterialsWidgetState extends State<CpAssetMaterialsWidget> {
  late CpAssetMaterialsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetMaterialsModel());

    _model.switchValue = widget.cpAssetMaterialDt!.isOriginal;
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

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.cpAssetMaterialDt!.materialDescription,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                          ),
                          Text(
                            widget.cpAssetMaterialDt!.materialCode,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'zhqrlq9i' /* Original */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                              ),
                              Switch.adaptive(
                                value: _model.switchValue!,
                                onChanged: true
                                    ? null
                                    : (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue = newValue);
                                      },
                                activeColor: true
                                    ? widget.cpAssetMaterialDt?.isOriginal ==
                                            true
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).error
                                    : FlutterFlowTheme.of(context).success,
                                activeTrackColor: true
                                    ? FlutterFlowTheme.of(context).alternate
                                    : FlutterFlowTheme.of(context).alternate,
                                inactiveTrackColor: true
                                    ? FlutterFlowTheme.of(context).alternate
                                    : FlutterFlowTheme.of(context).alternate,
                                inactiveThumbColor: true
                                    ? widget.cpAssetMaterialDt?.isOriginal ==
                                            true
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).error
                                    : FlutterFlowTheme.of(context).error,
                              ),
                            ],
                          ),
                          Text(
                            '${functions.cfConvDoubleToCurrency2Decimals(widget.cpAssetMaterialDt!.amount.toString(), 2)} ${widget.cpAssetMaterialDt?.materialUnit}',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                          ),
                          Text(
                            '${widget.cpAssetMaterialDt?.brandModel} ${widget.cpAssetMaterialDt?.location}',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (functions.cfCheckStOVSelectedAssetIsEmpty(
                            FFAppState().stOVSelectedAsset) ??
                        true)
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).info,
                        borderRadius: 16.0,
                        borderWidth: 6.0,
                        buttonSize: 50.0,
                        fillColor: FlutterFlowTheme.of(context).error,
                        icon: FaIcon(
                          FontAwesomeIcons.trashAlt,
                          color: FlutterFlowTheme.of(context).info,
                          size: 22.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          var _shouldSetState = false;
                          _model.isAllowedDelete =
                              await action_blocks.abGuardian(
                            context,
                            abPgRequestedId: 17,
                          );
                          _shouldSetState = true;
                          if (_model.isAllowedDelete!) {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Ops ...'),
                                      content:
                                          Text('Deseja realmente excluir ?'),
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
                              await AssetsMaterialsTable().update(
                                data: {
                                  'deleted_user_id':
                                      FFAppState().stUserCurrent.id,
                                  'deleted_at': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                  'is_deleted': true,
                                },
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  widget.cpAssetMaterialDt?.id,
                                ),
                              );
                              await action_blocks.abAssetSelectedMaterials(
                                context,
                                abAssetId: FFAppState().stAssetSelected.id,
                              );
                            }
                          } else {
                            context.pushNamed(PgNotAllowedWidget.routeName);

                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }

                          if (_shouldSetState) safeSetState(() {});
                        },
                      ),
                    if (!functions.cfCheckStOVSelectedAssetIsEmpty(
                        FFAppState().stOVSelectedAsset)!)
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 16.0,
                        borderWidth: 6.0,
                        buttonSize: 50.0,
                        icon: FaIcon(
                          FontAwesomeIcons.cartPlus,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          await action_blocks.abCartMaterialsUpdate(
                            context,
                            abOperation: 'add',
                            abUserId: FFAppState().stUserCurrent.id,
                            abMaterialId: widget.cpAssetMaterialDt?.materialId,
                            abMaterialAmount: widget.cpAssetMaterialDt?.amount,
                            abOVAssetId: FFAppState().stOVSelectedAsset.id,
                          );
                        },
                      ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}

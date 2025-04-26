import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_o_v_assets_menu_options_model.dart';
export 'md_o_v_assets_menu_options_model.dart';

class MdOVAssetsMenuOptionsWidget extends StatefulWidget {
  const MdOVAssetsMenuOptionsWidget({super.key});

  @override
  State<MdOVAssetsMenuOptionsWidget> createState() =>
      _MdOVAssetsMenuOptionsWidgetState();
}

class _MdOVAssetsMenuOptionsWidgetState
    extends State<MdOVAssetsMenuOptionsWidget> {
  late MdOVAssetsMenuOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOVAssetsMenuOptionsModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Container(
                  width: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(18.0, 12.0, 18.0, 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '4sv9lwyf' /* Ativo */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 25.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  _model.isAllowedUnitEdit =
                                      await action_blocks.abGuardian(
                                    context,
                                    abPgRequestedId: 27,
                                  );
                                  _shouldSetState = true;
                                  if (_model.isAllowedUnitEdit!) {
                                    Navigator.pop(context);

                                    context.pushNamed(
                                      PgUnitUpdateDataWidget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.scale,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      },
                                    );
                                  } else {
                                    Navigator.pop(context);

                                    context.pushNamed(
                                        PgNotAllowedWidget.routeName);

                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'ki6mgx89' /* SUBSTITUIR */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .titleMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    width: 6.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  Navigator.pop(context);
                                  var confirmDialogResponse =
                                      await showDialog<bool>(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Ops ...'),
                                                content: Text(
                                                    'Deseja realmente EXCLUIR ? Caso sim, não será possivel a recuperação.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: Text('Cancelar'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: Text('Confirmar'),
                                                  ),
                                                ],
                                              );
                                            },
                                          ) ??
                                          false;
                                  if (confirmDialogResponse) {
                                    await Future.wait([
                                      Future(() async {
                                        await OrdersVisitsAssetsTable().update(
                                          data: {
                                            'deleted_user_id':
                                                FFAppState().stUserCurrent.id,
                                            'deleted_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                            'is_deleted': true,
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            FFAppState().stOVSelectedAsset.id,
                                          ),
                                        );
                                        await OrdersVisitsAssetsActivitiesTable()
                                            .update(
                                          data: {
                                            'deleted_user_id':
                                                FFAppState().stUserCurrent.id,
                                            'deleted_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                            'is_deleted': true,
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'ova_id',
                                            FFAppState().stOVSelectedAsset.id,
                                          ),
                                        );
                                        await OrdersVisitsAssetsMaterialsTable()
                                            .update(
                                          data: {
                                            'deleted_user_id':
                                                FFAppState().stUserCurrent.id,
                                            'deleted_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                            'is_deleted': true,
                                          },
                                          matchingRows: (rows) => rows
                                              .eqOrNull(
                                                'ov_id',
                                                FFAppState()
                                                    .stOVSelectedAsset
                                                    .ovId,
                                              )
                                              .eqOrNull(
                                                'asset_id',
                                                FFAppState()
                                                    .stOVSelectedAsset
                                                    .assetId,
                                              ),
                                        );
                                        await CartsMaterialsTable().update(
                                          data: {
                                            'deleted_user_id':
                                                FFAppState().stUserCurrent.id,
                                            'deleted_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                            'is_deleted': true,
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'ova_id',
                                            FFAppState().stOVSelectedAsset.id,
                                          ),
                                        );
                                        FFAppState().stOVSelectedAsset =
                                            DtOrderVisitAssetStruct();
                                        safeSetState(() {});
                                        if (functions
                                            .cfCheckStOVSelectedAssetIsEmpty(
                                                FFAppState()
                                                    .stOVSelectedAsset)!) {
                                          context.goNamed(
                                              PgOVShowWidget.routeName);
                                        }
                                      }),
                                      Future(() async {
                                        if (FFAppState()
                                                    .stOVSelectedAsset
                                                    .beforeImgFileName !=
                                                '') {
                                          await deleteSupabaseFileFromPublicUrl(
                                              '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}');
                                        }
                                        if (FFAppState()
                                                    .stOVSelectedAsset
                                                    .afterImgFileName !=
                                                '') {
                                          await deleteSupabaseFileFromPublicUrl(
                                              '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}');
                                        } else {
                                          return;
                                        }

                                        return;
                                      }),
                                    ]);
                                  } else {
                                    return;
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'vzekzchy' /* EXCLUIR */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).error,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .titleMedium,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    width: 6.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 12.0))
                              .addToStart(SizedBox(height: 12.0))
                              .addToEnd(SizedBox(height: 24.0)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}

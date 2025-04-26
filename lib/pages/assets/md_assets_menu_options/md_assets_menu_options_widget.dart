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
import 'md_assets_menu_options_model.dart';
export 'md_assets_menu_options_model.dart';

class MdAssetsMenuOptionsWidget extends StatefulWidget {
  const MdAssetsMenuOptionsWidget({super.key});

  @override
  State<MdAssetsMenuOptionsWidget> createState() =>
      _MdAssetsMenuOptionsWidgetState();
}

class _MdAssetsMenuOptionsWidgetState extends State<MdAssetsMenuOptionsWidget> {
  late MdAssetsMenuOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdAssetsMenuOptionsModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
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
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 25.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.isAllowed = await action_blocks.abGuardian(
                              context,
                              abPgRequestedId: 15,
                            );
                            _shouldSetState = true;
                            if (_model.isAllowed!) {
                              Navigator.pop(context);
                              FFAppState().stAssetSelectedCU =
                                  FFAppState().stAssetSelected;
                              FFAppState().update(() {});
                              FFAppState().updateStAssetSelectedCUStruct(
                                (e) => e
                                  ..statusAt = functions
                                      .cfConvDatetimeEnStringToDateBrStringDmy(
                                          FFAppState()
                                              .stAssetSelectedCU
                                              .statusAt)
                                  ..acquisitionAt = functions
                                      .cfConvDatetimeEnStringToDateBrStringDmy(
                                          FFAppState()
                                              .stAssetSelectedCU
                                              .acquisitionAt),
                              );
                              safeSetState(() {});

                              context.pushNamed(
                                PgAssetCUStep01Widget.routeName,
                                queryParameters: {
                                  'cpOperation': serializeParam(
                                    'update',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            } else {
                              context.pushNamed(PgNotAllowedWidget.routeName);

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            '5lacz5bt' /* EDITAR */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                ),
                            elevation: 5.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).tertiary,
                              width: 6.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.isAllowedDuplicate =
                                await action_blocks.abGuardian(
                              context,
                              abPgRequestedId: 15,
                            );
                            _shouldSetState = true;
                            if (_model.isAllowedDuplicate!) {
                              Navigator.pop(context);
                              FFAppState().stAssetSelectedCU =
                                  FFAppState().stAssetSelected;
                              FFAppState().update(() {});
                              FFAppState().updateStAssetSelectedCUStruct(
                                (e) => e
                                  ..statusAt = functions
                                      .cfConvDatetimeEnStringToDateBrStringDmy(
                                          FFAppState()
                                              .stAssetSelectedCU
                                              .statusAt)
                                  ..acquisitionAt = functions
                                      .cfConvDatetimeEnStringToDateBrStringDmy(
                                          FFAppState()
                                              .stAssetSelectedCU
                                              .acquisitionAt)
                                  ..serial = null
                                  ..imgFilePath = null
                                  ..imgFileName = null,
                              );
                              safeSetState(() {});

                              context.pushNamed(
                                PgAssetCUStep01Widget.routeName,
                                queryParameters: {
                                  'cpOperation': serializeParam(
                                    'duplicate',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            } else {
                              context.pushNamed(PgNotAllowedWidget.routeName);

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'q2p5fmnu' /* DUPLICAR */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                ),
                            elevation: 5.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).tertiary,
                              width: 6.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}

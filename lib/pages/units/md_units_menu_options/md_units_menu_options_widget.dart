import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'md_units_menu_options_model.dart';
export 'md_units_menu_options_model.dart';

class MdUnitsMenuOptionsWidget extends StatefulWidget {
  const MdUnitsMenuOptionsWidget({super.key});

  @override
  State<MdUnitsMenuOptionsWidget> createState() =>
      _MdUnitsMenuOptionsWidgetState();
}

class _MdUnitsMenuOptionsWidgetState extends State<MdUnitsMenuOptionsWidget> {
  late MdUnitsMenuOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdUnitsMenuOptionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                                'ohz8f24n' /* Editar */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineSmallFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .headlineSmallFamily),
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
                                    abPgRequestedId: 8,
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
                                  'zt8njsms' /* DADOS */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).info,
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
                                  var _shouldSetState = false;
                                  _model.isAllowedUnitEdit1 =
                                      await action_blocks.abGuardian(
                                    context,
                                    abPgRequestedId: 8,
                                  );
                                  _shouldSetState = true;
                                  if (_model.isAllowedUnitEdit1!) {
                                    Navigator.pop(context);

                                    context.pushNamed(
                                      PgUnitUpdateLocationWidget.routeName,
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
                                  '5jpylhl6' /* ENDEREÇO */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).info,
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

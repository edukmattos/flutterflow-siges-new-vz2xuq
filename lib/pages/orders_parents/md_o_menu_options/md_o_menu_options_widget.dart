import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/orders_parents/md_o_change_team_new/md_o_change_team_new_widget.dart';
import '/pages/orders_parents/md_o_to_cancel/md_o_to_cancel_widget.dart';
import '/pages/orders_parents/md_o_to_schedule/md_o_to_schedule_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_o_menu_options_model.dart';
export 'md_o_menu_options_model.dart';

class MdOMenuOptionsWidget extends StatefulWidget {
  const MdOMenuOptionsWidget({super.key});

  @override
  State<MdOMenuOptionsWidget> createState() => _MdOMenuOptionsWidgetState();
}

class _MdOMenuOptionsWidgetState extends State<MdOMenuOptionsWidget> {
  late MdOMenuOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOMenuOptionsModel());

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
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
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
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          var _shouldSetState = false;
                          _model.isAllowed = await action_blocks.abGuardian(
                            context,
                            abPgRequestedId: 26,
                          );
                          _shouldSetState = true;
                          if (_model.isAllowed!) {
                            Navigator.pop(context);
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: MdOChangeTeamNewWidget(),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          } else {
                            context.pushNamed(PgNotAllowedWidget.routeName);

                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }

                          if (_shouldSetState) safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          '2abbwoz2' /* ENCAMINHAR  */,
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
                                font: FlutterFlowTheme.of(context).titleMedium,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 5.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).info,
                            width: 6.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      if (FFAppState().stOSelected.statusId == 3)
                        FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.isAllowedSchedule =
                                await action_blocks.abGuardian(
                              context,
                              abPgRequestedId: 25,
                            );
                            _shouldSetState = true;
                            if (_model.isAllowedSchedule!) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MdOToScheduleWidget(),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            } else {
                              context.pushNamed(PgNotAllowedWidget.routeName);

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'h4xrhfld' /* AGENDAR */,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 5.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).info,
                              width: 6.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      if ((FFAppState().stOSelected.statusId == 2) ||
                          (FFAppState().stOSelected.statusId == 3))
                        FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.isAllowedCancel =
                                await action_blocks.abGuardian(
                              context,
                              abPgRequestedId: 25,
                            );
                            _shouldSetState = true;
                            if (_model.isAllowedCancel!) {
                              Navigator.pop(context);
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MdOToCancelWidget(),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            } else {
                              context.pushNamed(PgNotAllowedWidget.routeName);

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'ypbrvuho' /* CANCELAR */,
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
                                  font:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 5.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).info,
                              width: 6.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
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

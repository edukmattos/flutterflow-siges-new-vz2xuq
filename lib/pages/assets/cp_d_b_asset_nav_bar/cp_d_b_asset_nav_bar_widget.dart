import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_d_b_asset_nav_bar_model.dart';
export 'cp_d_b_asset_nav_bar_model.dart';

class CpDBAssetNavBarWidget extends StatefulWidget {
  const CpDBAssetNavBarWidget({super.key});

  @override
  State<CpDBAssetNavBarWidget> createState() => _CpDBAssetNavBarWidgetState();
}

class _CpDBAssetNavBarWidgetState extends State<CpDBAssetNavBarWidget> {
  late CpDBAssetNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDBAssetNavBarModel());

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
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Material(
            color: Colors.transparent,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: SafeArea(
              child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Color(0x1A57636C),
                      offset: Offset(
                        0.0,
                        -10.0,
                      ),
                      spreadRadius: 0.1,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        icon: FaIcon(
                          FontAwesomeIcons.tools,
                          color: FFAppState().stDBUserNavBarOption == 'orders'
                              ? FlutterFlowTheme.of(context).tertiary
                              : Color(0xFF9299A1),
                          size: 24.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: (FFAppState().stDBUserNavBarOption ==
                                'orders')
                            ? null
                            : () async {
                                if (Navigator.of(context).canPop()) {
                                  context.pop();
                                }
                                context.pushNamed(PgDBUsersOWidget.routeName);
                              },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        icon: FaIcon(
                          FontAwesomeIcons.peopleCarry,
                          color: FFAppState().stDBUserNavBarOption == 'visits'
                              ? FlutterFlowTheme.of(context).tertiary
                              : Color(0xFF9299A1),
                          size: 24.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: (FFAppState().stDBUserNavBarOption ==
                                'visits')
                            ? null
                            : () async {
                                if (Navigator.of(context).canPop()) {
                                  context.pop();
                                }
                                context.pushNamed(PgDBUserOVWidget.routeName);
                              },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

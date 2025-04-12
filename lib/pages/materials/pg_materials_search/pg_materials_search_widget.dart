import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_selected_asset_cart/cp_o_v_selected_asset_cart_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_materials_search_model.dart';
export 'pg_materials_search_model.dart';

class PgMaterialsSearchWidget extends StatefulWidget {
  const PgMaterialsSearchWidget({super.key});

  static String routeName = 'pgMaterialsSearch';
  static String routePath = 'pgMaterialsSearch';

  @override
  State<PgMaterialsSearchWidget> createState() =>
      _PgMaterialsSearchWidgetState();
}

class _PgMaterialsSearchWidgetState extends State<PgMaterialsSearchWidget> {
  late PgMaterialsSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgMaterialsSearchModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuModel,
            updateCallback: () => safeSetState(() {}),
            child: CpMenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'xn2b5hrm' /* Materiais */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      constraints: BoxConstraints(
                        minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                        maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.cpOVSelectedAssetCartModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpOVSelectedAssetCartWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}

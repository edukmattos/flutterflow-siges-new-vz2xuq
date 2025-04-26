import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_p_show/cp_o_p_show_widget.dart';
import '/pages/orders_parents/cp_o_show_mini/cp_o_show_mini_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pg_o_p_show_model.dart';
export 'pg_o_p_show_model.dart';

class PgOPShowWidget extends StatefulWidget {
  const PgOPShowWidget({
    super.key,
    required this.ppOPMenuOptions,
  });

  final bool? ppOPMenuOptions;

  static String routeName = 'pgOPShow';
  static String routePath = 'pgOPShow';

  @override
  State<PgOPShowWidget> createState() => _PgOPShowWidgetState();
}

class _PgOPShowWidgetState extends State<PgOPShowWidget> {
  late PgOPShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOPShowModel());

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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'kbmhrhgm' /* SS */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: FlutterFlowTheme.of(context).headlineMedium,
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
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
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                minWidth:
                                    FFAppConstants.cfgPgWidthMin.toDouble(),
                                maxWidth:
                                    FFAppConstants.cfgPgWidthMax.toDouble(),
                              ),
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.cpOPShowwModel,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: CpOPShowWidget(
                                  cpOPMenuOptions: true,
                                ),
                              ),
                            ),
                            Container(
                              height: 350.0,
                              constraints: BoxConstraints(
                                minWidth: double.infinity,
                                maxWidth: double.infinity,
                              ),
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final gcOss = FFAppState()
                                      .stOPSelectedOs
                                      .map((e) => e)
                                      .toList()
                                      .sortedList(
                                          keyOf: (e) => e.id, desc: false)
                                      .toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: gcOss.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(width: 12.0),
                                    itemBuilder: (context, gcOssIndex) {
                                      final gcOssItem = gcOss[gcOssIndex];
                                      return Container(
                                        width: 450.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.lspvOid = gcOssItem.id;
                                            _model.lspvOVId = null;
                                            safeSetState(() {});
                                          },
                                          child: CpOShowMiniWidget(
                                            key: Key(
                                                'Keyekn_${gcOssIndex}_of_${gcOss.length}'),
                                            cpODt: gcOssItem,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

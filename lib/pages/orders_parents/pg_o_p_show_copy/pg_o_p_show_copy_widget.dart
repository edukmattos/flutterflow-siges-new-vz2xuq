import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_p_show/cp_o_p_show_widget.dart';
import '/pages/orders_parents/cp_o_show_mini/cp_o_show_mini_widget.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_o_p_show_copy_model.dart';
export 'pg_o_p_show_copy_model.dart';

class PgOPShowCopyWidget extends StatefulWidget {
  const PgOPShowCopyWidget({
    super.key,
    required this.ppOPMenuOptions,
  });

  final bool? ppOPMenuOptions;

  static String routeName = 'pgOPShowCopy';
  static String routePath = 'pgOPShowCopy';

  @override
  State<PgOPShowCopyWidget> createState() => _PgOPShowCopyWidgetState();
}

class _PgOPShowCopyWidgetState extends State<PgOPShowCopyWidget> {
  late PgOPShowCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOPShowCopyModel());

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
                  '5ibd6yyb' /* SS */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: double.infinity,
                        ),
                        decoration: BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.cpOPShowModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpOPShowWidget(
                            cpOPMenuOptions: widget.ppOPMenuOptions!,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 300.0,
                        constraints: BoxConstraints(
                          maxWidth: double.infinity,
                          maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                        ),
                        decoration: BoxDecoration(),
                        child: Builder(
                          builder: (context) {
                            final gcOs = FFAppState()
                                .stOPSelectedOs
                                .map((e) => e)
                                .toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: gcOs.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(width: 12.0),
                              itemBuilder: (context, gcOsIndex) {
                                final gcOsItem = gcOs[gcOsIndex];
                                return Container(
                                  width: 330.0,
                                  height: 320.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: gcOsItem.id == _model.lspvOid
                                          ? FlutterFlowTheme.of(context).primary
                                          : Color(0x00000000),
                                      width: 6.0,
                                    ),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.lspvOid = gcOsItem.id;
                                      _model.lspvOVId = null;
                                      safeSetState(() {});
                                    },
                                    child: CpOShowMiniWidget(
                                      key: Key(
                                          'Key0ju_${gcOsIndex}_of_${gcOs.length}'),
                                      cpODt: gcOsItem,
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
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

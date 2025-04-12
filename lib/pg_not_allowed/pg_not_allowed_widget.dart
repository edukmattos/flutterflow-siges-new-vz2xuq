import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pg_not_allowed_model.dart';
export 'pg_not_allowed_model.dart';

class PgNotAllowedWidget extends StatefulWidget {
  const PgNotAllowedWidget({super.key});

  static String routeName = 'pgNotAllowed';
  static String routePath = 'pgNotAllowed';

  @override
  State<PgNotAllowedWidget> createState() => _PgNotAllowedWidgetState();
}

class _PgNotAllowedWidgetState extends State<PgNotAllowedWidget> {
  late PgNotAllowedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgNotAllowedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              color: FlutterFlowTheme.of(context).accent4,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Icon(
                      Icons.back_hand,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 60.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '932ee3mh' /* Acesso Restrito */,
                    ),
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displaySmallFamily,
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).displaySmallFamily),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'xiw1z8ge' /* O seu perfil não possui a perm... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelLargeFamily),
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

import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_assets_types/cp_dropdown_assets_types_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/techincals_manuals/cp_t_m_list_item/cp_t_m_list_item_widget.dart';
import '/pages/techincals_manuals/md_t_m_create/md_t_m_create_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_t_m_search_model.dart';
export 'pg_t_m_search_model.dart';

class PgTMSearchWidget extends StatefulWidget {
  const PgTMSearchWidget({super.key});

  static String routeName = 'pgTMSearch';
  static String routePath = 'pgTMSearch';

  @override
  State<PgTMSearchWidget> createState() => _PgTMSearchWidgetState();
}

class _PgTMSearchWidgetState extends State<PgTMSearchWidget>
    with TickerProviderStateMixin {
  late PgTMSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgTMSearchModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              var _shouldSetState = false;
              _model.isAllowedTMCreate = await action_blocks.abGuardian(
                context,
                abPgRequestedId: 24,
              );
              _shouldSetState = true;
              if (_model.isAllowedTMCreate!) {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: MdTMCreateWidget(),
                      ),
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
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
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
          title: Text(
            FFLocalizations.of(context).getText(
              'whrwp55q' /* Biblioteca */,
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
                      constraints: BoxConstraints(
                        minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                        maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                      ),
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            wrapWithModel(
                              model: _model.cpInputTextModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpInputTextWidget(
                                cpLabelText: 'Descrição',
                                cpIsReadOnly: false,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.cpDropdownAssetsTypesModel,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: CpDropdownAssetsTypesWidget(
                                  cpHintText: 'Tipo Ativo',
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 16.0,
                                  borderWidth: 6.0,
                                  buttonSize: 50.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.search,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    _model.resTMs =
                                        await ApiTechnicalsManualsGroup
                                            .apiTMsBySearchTermsAndAssetTypeIdCall
                                            .call(
                                      apiKey:
                                          FFDevEnvironmentValues().envApiKey,
                                      accessToken: currentJwtToken,
                                      versionMode:
                                          FFAppState().stAppVersionMode?.name,
                                      searchTerms: _model.cpInputTextModel
                                          .inputTextTextController.text,
                                      assetTypeId: _model
                                          .cpDropdownAssetsTypesModel
                                          .dropdownAssetTypesValue,
                                    );

                                    if ((_model.resTMs?.succeeded ?? true)) {
                                      FFAppState().stTMSearchResults = ((_model
                                                          .resTMs?.jsonBody ??
                                                      '')
                                                  .toList()
                                                  .map<DtTechnicalManualStruct?>(
                                                      DtTechnicalManualStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<
                                                  DtTechnicalManualStruct?>)
                                          .withoutNulls
                                          .toList()
                                          .cast<DtTechnicalManualStruct>();
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final gsTMs = FFAppState()
                                        .stTMSearchResults
                                        .map((e) => e)
                                        .toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: gsTMs.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 12.0),
                                      itemBuilder: (context, gsTMsIndex) {
                                        final gsTMsItem = gsTMs[gsTMsIndex];
                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            border: Border.all(
                                              color: FFAppState()
                                                      .stRowsSelected
                                                      .contains(gsTMsItem.id)
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : Color(0x00000000),
                                              width: FFAppState()
                                                      .stRowsSelected
                                                      .contains(gsTMsItem.id)
                                                  ? 6.0
                                                  : 6.0,
                                            ),
                                          ),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().stRowsSelected = [];
                                              safeSetState(() {});
                                              FFAppState().addToStRowsSelected(
                                                  gsTMsItem.id);
                                              safeSetState(() {});
                                              await action_blocks.abTMSelected(
                                                context,
                                                abTMDt: gsTMsItem,
                                              );
                                              FFAppState().stTMNavBarOption =
                                                  'assets';
                                              safeSetState(() {});

                                              context.pushNamed(
                                                  PgTMShowWidget.routeName);
                                            },
                                            child: CpTMListItemWidget(
                                              key: Key(
                                                  'Keyegc_${gsTMsIndex}_of_${gsTMs.length}'),
                                              cpTMDt: gsTMsItem,
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation']!);
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 12.0)),
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

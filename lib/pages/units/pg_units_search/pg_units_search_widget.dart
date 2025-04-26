import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/md_rpt_extensions_options/md_rpt_extensions_options_widget.dart';
import '/pages/units/cp_unit_card_list_item/cp_unit_card_list_item_widget.dart';
import '/pages/units/md_units_search_filters/md_units_search_filters_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_units_search_model.dart';
export 'pg_units_search_model.dart';

class PgUnitsSearchWidget extends StatefulWidget {
  const PgUnitsSearchWidget({super.key});

  static String routeName = 'pgUnitsSearch';
  static String routePath = 'pgUnitsSearch';

  @override
  State<PgUnitsSearchWidget> createState() => _PgUnitsSearchWidgetState();
}

class _PgUnitsSearchWidgetState extends State<PgUnitsSearchWidget>
    with TickerProviderStateMixin {
  late PgUnitsSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgUnitsSearchModel());

    _model.tfSearchTermsTextController ??= TextEditingController();
    _model.tfSearchTermsFocusNode ??= FocusNode();

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
              _model.isAllowed = await action_blocks.abGuardian(
                context,
                abPgRequestedId: 8,
              );
              _shouldSetState = true;
              if (_model.isAllowed!) {
                FFAppState().stUnitSelected = DtUnitStruct();
                safeSetState(() {});

                context.pushNamed(PgUnitCreateWidget.routeName);
              } else {
                context.pushNamed(PgNotAllowedWidget.routeName);

                if (_shouldSetState) safeSetState(() {});
                return;
              }

              if (_shouldSetState) safeSetState(() {});
            },
            child: Icon(
              Icons.add,
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
          title: Text(
            FFLocalizations.of(context).getText(
              'gltty110' /* Unidades */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
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
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: wrapWithModel(
                    model: _model.cpDBUserAvailableModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CpDBUserAvailableWidget(
                      toolTip: FFAppState().stUserCurrent.nameShort,
                    ),
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller:
                                        _model.tfSearchTermsTextController,
                                    focusNode: _model.tfSearchTermsFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.tfSearchTermsTextController',
                                      Duration(milliseconds: 1000),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: true,
                                    autofillHints: [AutofillHints.name],
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '8jt6s7jb' /* Código e/ou Descrição */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                            letterSpacing: 0.0,
                                          ),
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 12.0, 0.0, 12.0),
                                      suffixIcon: _model
                                              .tfSearchTermsTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model
                                                    .tfSearchTermsTextController
                                                    ?.clear();
                                                safeSetState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color: Color(0xFF757575),
                                                size: 22.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model
                                        .tfSearchTermsTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization.none),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
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
                                  onPressed: (_model.tfSearchTermsTextController
                                                  .text ==
                                              '')
                                      ? null
                                      : () async {
                                          var _shouldSetState = false;
                                          _model.apiResultoth =
                                              await ApiUnitsGroup
                                                  .apiUnitsSearchCall
                                                  .call(
                                            accessToken: currentJwtToken,
                                            searchTerms: _model
                                                .tfSearchTermsTextController
                                                .text,
                                            searchVersion: FFAppState()
                                                .stAppVersionMode
                                                ?.name,
                                          );

                                          _shouldSetState = true;
                                          if ((_model.apiResultoth?.succeeded ??
                                              true)) {
                                            FFAppState()
                                                .stUnitsSearchResults = ((_model
                                                                .apiResultoth
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<DtUnitStruct?>(
                                                            DtUnitStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<DtUnitStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<DtUnitStruct>();
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .stUnitsSearchResults
                                                    .length >
                                                0) {
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Ops ...'),
                                                    content: Text(
                                                        'Sua pesquisa não retornou nenhum registro.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Ops ... Houve um erro em localizar Unidades (unitsSearch).',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                        },
                                ),
                                badges.Badge(
                                  badgeContent: Text(
                                    FFAppState().stFiltersUnitsCount.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .titleSmall,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  showBadge:
                                      FFAppState().stFiltersUnitsCount > 0,
                                  shape: badges.BadgeShape.circle,
                                  badgeColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  elevation: 4.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  position: badges.BadgePosition.topEnd(),
                                  animationType:
                                      badges.BadgeAnimationType.scale,
                                  toAnimate: true,
                                  child: FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 16.0,
                                    borderWidth: 6.0,
                                    buttonSize: 50.0,
                                    icon: Icon(
                                      Icons.filter_alt,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  MdUnitsSearchFiltersWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                  ),
                                ),
                                if (FFAppState().stUnitsSearchResults.length >
                                    0)
                                  FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 16.0,
                                    borderWidth: 6.0,
                                    buttonSize: 50.0,
                                    icon: FaIcon(
                                      FontAwesomeIcons.print,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  MdRptExtensionsOptionsWidget(
                                                cpRptName: 'units_list',
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                  ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final gcUnits = FFAppState()
                                      .stUnitsSearchResults
                                      .map((e) => e)
                                      .toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount: gcUnits.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 8.0),
                                    itemBuilder: (context, gcUnitsIndex) {
                                      final gcUnitsItem = gcUnits[gcUnitsIndex];
                                      return Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          border: Border.all(
                                            color: FFAppState()
                                                    .stRowsSelected
                                                    .contains(gcUnitsItem.id)
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : Color(0x00000000),
                                            width: FFAppState()
                                                    .stRowsSelected
                                                    .contains(gcUnitsItem.id)
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
                                                gcUnitsItem.id);
                                            safeSetState(() {});
                                            await action_blocks.abUnitSelected(
                                              context,
                                              abUnitDt: gcUnitsItem,
                                            );

                                            context.pushNamed(
                                                PgUnitShowWidget.routeName);
                                          },
                                          child: CpUnitCardListItemWidget(
                                            key: Key(
                                                'Keys5d_${gcUnitsIndex}_of_${gcUnits.length}'),
                                            cpUnitDt: gcUnitsItem,
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!);
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ].divide(SizedBox(height: 12.0)),
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

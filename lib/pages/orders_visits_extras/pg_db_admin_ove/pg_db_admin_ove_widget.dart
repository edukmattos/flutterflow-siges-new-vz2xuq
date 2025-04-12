import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_ove_processing_users/cp_ove_processing_users_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_visits_extras/cp_db_admin_ove_card/cp_db_admin_ove_card_widget.dart';
import '/pages/orders_visits_extras/md_db_admin_filters_ove/md_db_admin_filters_ove_widget.dart';
import '/pages/orders_visits_extras/md_o_v_e_create/md_o_v_e_create_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_db_admin_ove_model.dart';
export 'pg_db_admin_ove_model.dart';

class PgDbAdminOveWidget extends StatefulWidget {
  const PgDbAdminOveWidget({super.key});

  static String routeName = 'pgDbAdminOve';
  static String routePath = 'pgDbAdminOve';

  @override
  State<PgDbAdminOveWidget> createState() => _PgDbAdminOveWidgetState();
}

class _PgDbAdminOveWidgetState extends State<PgDbAdminOveWidget>
    with TickerProviderStateMixin {
  late PgDbAdminOveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDbAdminOveModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Direciona para o block correto ao submeter o formulario de filtros. O ou Ove
      FFAppState().updateStFiltersOVEStruct(
        (e) => e..pgAdmin = 'OVE',
      );
      safeSetState(() {});
      if ((FFAppState().stFiltersOVE.dateStart == null) &&
          (FFAppState().stFiltersOVE.dateEnd == null)) {
        FFAppState().updateStFiltersOVEStruct(
          (e) => e
            ..dateStart = functions.cfSetDatetime(getCurrentTimestamp, 0, 0, 0)
            ..dateEnd =
                functions.cfSetDatetime(getCurrentTimestamp, 23, 59, 59),
        );
        safeSetState(() {});
      }
      await actions.caSupabaseDisconnect(
        'orders_visits_extras',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'orders_visits_extras',
        () async {
          await action_blocks.abDBAdminOVEFilters(context);
        },
      );
    });

    _model.tfOveDateStartTextController ??= TextEditingController();
    _model.tfOveDateStartFocusNode ??= FocusNode();

    _model.tfOveDateEndTextController ??= TextEditingController();
    _model.tfOveDateEndFocusNode ??= FocusNode();

    _model.tfOveIdTextController ??= TextEditingController();
    _model.tfOveIdFocusNode ??= FocusNode();

    animationsMap.addAll({
      'cardOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.tfOveDateStartTextController?.text = dateTimeFormat(
            "dd/MM/y",
            FFAppState().stFiltersOVE.dateStart,
            locale: FFLocalizations.of(context).languageCode,
          );
          _model.tfOveDateEndTextController?.text = dateTimeFormat(
            "dd/MM/y",
            FFAppState().stFiltersOVE.dateEnd,
            locale: FFLocalizations.of(context).languageCode,
          );
        }));
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
          elevation: 8.0,
          child: FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).primary,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: 54.0,
            icon: FaIcon(
              FontAwesomeIcons.plusCircle,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              var _shouldSetState = false;
              _model.isAllowedOveCreate = await action_blocks.abGuardian(
                context,
                abPgRequestedId: 28,
              );
              _shouldSetState = true;
              if (_model.isAllowedOveCreate!) {
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
                        child: MdOVECreateWidget(),
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
              'pb6c7tbf' /* Serviços Extras */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
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
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
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
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  children: [
                                                    Container(
                                                      width: 180.0,
                                                      height: 50.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .tfOveDateStartTextController,
                                                        focusNode: _model
                                                            .tfOveDateStartFocusNode,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.tfOveDateStartTextController',
                                                          Duration(
                                                              milliseconds:
                                                                  2000),
                                                          () => safeSetState(
                                                              () {}),
                                                        ),
                                                        autofocus: false,
                                                        autofillHints: [
                                                          AutofillHints.name
                                                        ],
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .none,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'wzhf2wog' /* Data inicial */,
                                                          ),
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelMediumFamily),
                                                                  ),
                                                          errorStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      12.0,
                                                                      0.0,
                                                                      12.0),
                                                          suffixIcon: _model
                                                                  .tfOveDateStartTextController!
                                                                  .text
                                                                  .isNotEmpty
                                                              ? InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    _model
                                                                        .tfOveDateStartTextController
                                                                        ?.clear();
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons.clear,
                                                                    color: Color(
                                                                        0xFF757575),
                                                                    size: 22.0,
                                                                  ),
                                                                )
                                                              : null,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        minLines: 1,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        validator: _model
                                                            .tfOveDateStartTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  4.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        icon: Icon(
                                                          Icons.calendar_month,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 24.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
                                                          final _datePicked1Date =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                getCurrentTimestamp,
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime(2050),
                                                            builder: (context,
                                                                child) {
                                                              return wrapInMaterialDatePickerTheme(
                                                                context,
                                                                child!,
                                                                headerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                headerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                headerTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                        ),
                                                                pickerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                pickerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                selectedDateTimeBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                selectedDateTimeForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                actionButtonForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                iconSize: 24.0,
                                                              );
                                                            },
                                                          );

                                                          if (_datePicked1Date !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked1 =
                                                                  DateTime(
                                                                _datePicked1Date
                                                                    .year,
                                                                _datePicked1Date
                                                                    .month,
                                                                _datePicked1Date
                                                                    .day,
                                                              );
                                                            });
                                                          } else if (_model
                                                                  .datePicked1 !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked1 =
                                                                  getCurrentTimestamp;
                                                            });
                                                          }
                                                          await Future.wait([
                                                            Future(() async {
                                                              safeSetState(() {
                                                                _model.tfOveDateStartTextController
                                                                        ?.text =
                                                                    dateTimeFormat(
                                                                  "dd/MM/y",
                                                                  _model
                                                                      .datePicked1,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                );
                                                              });
                                                            }),
                                                            Future(() async {
                                                              FFAppState()
                                                                  .updateStFiltersOVEStruct(
                                                                (e) => e
                                                                  ..dateStart =
                                                                      functions.cfSetDatetime(
                                                                          _model
                                                                              .datePicked1!,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }),
                                                          ]);
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  children: [
                                                    Container(
                                                      width: 180.0,
                                                      height: 50.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .tfOveDateEndTextController,
                                                        focusNode: _model
                                                            .tfOveDateEndFocusNode,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.tfOveDateEndTextController',
                                                          Duration(
                                                              milliseconds:
                                                                  2000),
                                                          () => safeSetState(
                                                              () {}),
                                                        ),
                                                        autofocus: false,
                                                        autofillHints: [
                                                          AutofillHints.name
                                                        ],
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .none,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'wcmii5jn' /* Data final */,
                                                          ),
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelMediumFamily),
                                                                  ),
                                                          errorStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      12.0,
                                                                      0.0,
                                                                      12.0),
                                                          suffixIcon: _model
                                                                  .tfOveDateEndTextController!
                                                                  .text
                                                                  .isNotEmpty
                                                              ? InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    _model
                                                                        .tfOveDateEndTextController
                                                                        ?.clear();
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons.clear,
                                                                    color: Color(
                                                                        0xFF757575),
                                                                    size: 22.0,
                                                                  ),
                                                                )
                                                              : null,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        minLines: 1,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        validator: _model
                                                            .tfOveDateEndTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  4.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        icon: Icon(
                                                          Icons.calendar_month,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 24.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
                                                          final _datePicked2Date =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                getCurrentTimestamp,
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime(2050),
                                                            builder: (context,
                                                                child) {
                                                              return wrapInMaterialDatePickerTheme(
                                                                context,
                                                                child!,
                                                                headerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                headerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                headerTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                        ),
                                                                pickerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                pickerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                selectedDateTimeBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                selectedDateTimeForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                actionButtonForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                iconSize: 24.0,
                                                              );
                                                            },
                                                          );

                                                          if (_datePicked2Date !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked2 =
                                                                  DateTime(
                                                                _datePicked2Date
                                                                    .year,
                                                                _datePicked2Date
                                                                    .month,
                                                                _datePicked2Date
                                                                    .day,
                                                              );
                                                            });
                                                          } else if (_model
                                                                  .datePicked2 !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked2 =
                                                                  getCurrentTimestamp;
                                                            });
                                                          }
                                                          await Future.wait([
                                                            Future(() async {
                                                              safeSetState(() {
                                                                _model.tfOveDateEndTextController
                                                                        ?.text =
                                                                    dateTimeFormat(
                                                                  "dd/MM/y",
                                                                  _model
                                                                      .datePicked2,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                );
                                                              });
                                                            }),
                                                            Future(() async {
                                                              FFAppState()
                                                                  .updateStFiltersOVEStruct(
                                                                (e) => e
                                                                  ..dateEnd = functions
                                                                      .cfSetDatetime(
                                                                          _model
                                                                              .datePicked2!,
                                                                          23,
                                                                          59,
                                                                          59),
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }),
                                                          ]);
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius: 16.0,
                                                borderWidth: 6.0,
                                                buttonSize: 50.0,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.search,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                showLoadingIndicator: true,
                                                onPressed: () async {
                                                  await action_blocks
                                                      .abDBAdminOVEFilters(
                                                          context);
                                                  safeSetState(() {});
                                                },
                                              ),
                                              badges.Badge(
                                                badgeContent: Text(
                                                  FFAppState()
                                                      .stFiltersOveCount
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                                ),
                                                showBadge: FFAppState()
                                                        .stFiltersOveCount >
                                                    0,
                                                shape: badges.BadgeShape.circle,
                                                badgeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                elevation: 4.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 8.0, 8.0, 8.0),
                                                position: badges.BadgePosition
                                                    .topEnd(),
                                                animationType: badges
                                                    .BadgeAnimationType.scale,
                                                toAnimate: true,
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderRadius: 16.0,
                                                  borderWidth: 6.0,
                                                  buttonSize: 50.0,
                                                  icon: Icon(
                                                    Icons.filter_alt,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                  showLoadingIndicator: true,
                                                  onPressed: () async {
                                                    FFAppState()
                                                        .updateStFiltersOVEStruct(
                                                      (e) => e
                                                        ..pgAdmin = 'OVE'
                                                        ..teamsIds =
                                                            FFAppState()
                                                                .stFiltersOVE
                                                                .teamsIds
                                                                .toList()
                                                        ..unitsIds =
                                                            FFAppState()
                                                                .stFiltersOVE
                                                                .unitsIds
                                                                .toList()
                                                        ..oTypesIds =
                                                            FFAppState()
                                                                .stFiltersOVE
                                                                .oTypesIds
                                                                .toList()
                                                        ..assetsTagsIds =
                                                            FFAppState()
                                                                .stFiltersOVE
                                                                .assetsTagsIds
                                                                .toList(),
                                                    );
                                                    safeSetState(() {});
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                MdDbAdminFiltersOveWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 150.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tfOveIdTextController,
                                                      focusNode: _model
                                                          .tfOveIdFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.tfOveIdTextController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () =>
                                                            safeSetState(() {}),
                                                      ),
                                                      autofocus: false,
                                                      autofillHints: [
                                                        AutofillHints.name
                                                      ],
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'g1vsulug' /* SE nr */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        errorStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    0.0,
                                                                    12.0),
                                                        suffixIcon: _model
                                                                .tfOveIdTextController!
                                                                .text
                                                                .isNotEmpty
                                                            ? InkWell(
                                                                onTap:
                                                                    () async {
                                                                  _model
                                                                      .tfOveIdTextController
                                                                      ?.clear();
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.clear,
                                                                  color: Color(
                                                                      0xFF757575),
                                                                  size: 22.0,
                                                                ),
                                                              )
                                                            : null,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                      minLines: 1,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      validator: _model
                                                          .tfOveIdTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 16.0,
                                                    borderWidth: 6.0,
                                                    buttonSize: 50.0,
                                                    icon: Icon(
                                                      Icons.flash_on,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      FFAppState()
                                                          .stDBAdminOVEFilters = [];
                                                      safeSetState(() {});
                                                      _model.resOve =
                                                          await ApiOrdersVisitsExtrasGroup
                                                              .apiOVEByIdCall
                                                              .call(
                                                        apiUrl:
                                                            FFDevEnvironmentValues()
                                                                .envApiUrl,
                                                        apiKey:
                                                            FFDevEnvironmentValues()
                                                                .envApiKey,
                                                        accessToken:
                                                            currentJwtToken,
                                                        oveId: int.tryParse(_model
                                                            .tfOveIdTextController
                                                            .text),
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model.resOve
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .stDBAdminOVEFilters = ((_model
                                                                            .resOve
                                                                            ?.jsonBody ??
                                                                        '')
                                                                    .toList()
                                                                    .map<DtOrderVisitExtraStruct?>(
                                                                        DtOrderVisitExtraStruct
                                                                            .maybeFromMap)
                                                                    .toList()
                                                                as Iterable<
                                                                    DtOrderVisitExtraStruct?>)
                                                            .withoutNulls
                                                            .toList()
                                                            .cast<
                                                                DtOrderVisitExtraStruct>();
                                                        safeSetState(() {});
                                                        if (FFAppState()
                                                                .stDBAdminOVEFilters
                                                                .length >
                                                            0) {
                                                          _model.lpsvOveProcessingId =
                                                              valueOrDefault<
                                                                  int>(
                                                            FFAppState()
                                                                .stDBAdminOVEFilters
                                                                .firstOrNull
                                                                ?.processingId,
                                                            0,
                                                          );
                                                          safeSetState(() {});
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Ops... Nenhum registro localizado.',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                            ),
                                                          );
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }
                                                      }
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                    },
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      width: 470.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aeg8zuqc' /* Processamento */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation']!),
                                                  if (false)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {},
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .questionCircle,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              Expanded(
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          badges.Badge(
                                                            badgeContent: Text(
                                                              FFAppState()
                                                                  .stDBAdminOVEFilters
                                                                  .where((e) =>
                                                                      e.processingId ==
                                                                      1)
                                                                  .toList()
                                                                  .length
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                            ),
                                                            showBadge: FFAppState()
                                                                    .stDBAdminOVEFilters
                                                                    .where((e) =>
                                                                        e.processingId ==
                                                                        1)
                                                                    .toList()
                                                                    .length >
                                                                0,
                                                            shape: badges
                                                                .BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            elevation: 4.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            position: badges
                                                                    .BadgePosition
                                                                .topEnd(),
                                                            animationType: badges
                                                                .BadgeAnimationType
                                                                .scale,
                                                            toAnimate: true,
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons.draw,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 30.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  (valueOrDefault<
                                                                              int>(
                                                                            FFAppState().stDBAdminOVEFilters.where((e) => e.processingId == 1).toList().length,
                                                                            0,
                                                                          ) ==
                                                                          0)
                                                                      ? null
                                                                      : () async {
                                                                          _model.lpsvOveProcessingId =
                                                                              1;
                                                                          _model.lpsvOveProcessingIsFiled =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                            ),
                                                          ),
                                                          Text(
                                                            '${valueOrDefault<String>(
                                                              formatNumber(
                                                                FFAppState()
                                                                    .stDBAdminOVEProcessingId1Hours,
                                                                formatType:
                                                                    FormatType
                                                                        .compact,
                                                              ),
                                                              '0',
                                                            )} h',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          badges.Badge(
                                                            badgeContent: Text(
                                                              FFAppState()
                                                                  .stDBAdminOVEFilters
                                                                  .where((e) =>
                                                                      e.processingId ==
                                                                      2)
                                                                  .toList()
                                                                  .length
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                            ),
                                                            showBadge: FFAppState()
                                                                    .stDBAdminOVEFilters
                                                                    .where((e) =>
                                                                        e.processingId ==
                                                                        2)
                                                                    .toList()
                                                                    .length >
                                                                0,
                                                            shape: badges
                                                                .BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            elevation: 4.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            position: badges
                                                                    .BadgePosition
                                                                .topEnd(),
                                                            animationType: badges
                                                                .BadgeAnimationType
                                                                .scale,
                                                            toAnimate: true,
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .report_problem_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                size: 30.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  (valueOrDefault<
                                                                              int>(
                                                                            FFAppState().stDBAdminOVEFilters.where((e) => e.processingId == 2).toList().length,
                                                                            0,
                                                                          ) ==
                                                                          0)
                                                                      ? null
                                                                      : () async {
                                                                          _model.lpsvOveProcessingId =
                                                                              2;
                                                                          _model.lpsvOveProcessingIsFiled =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                            ),
                                                          ),
                                                          Text(
                                                            '${formatNumber(
                                                              FFAppState()
                                                                  .stDBAdminOVEProcessingId2Hours,
                                                              formatType:
                                                                  FormatType
                                                                      .compact,
                                                            )} h',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          badges.Badge(
                                                            badgeContent: Text(
                                                              FFAppState()
                                                                  .stDBAdminOVEFilters
                                                                  .where((e) =>
                                                                      e.processingId ==
                                                                      3)
                                                                  .toList()
                                                                  .length
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                            ),
                                                            showBadge: FFAppState()
                                                                    .stDBAdminOVEFilters
                                                                    .where((e) =>
                                                                        e.processingId ==
                                                                        3)
                                                                    .toList()
                                                                    .length >
                                                                0,
                                                            shape: badges
                                                                .BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            elevation: 4.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            position: badges
                                                                    .BadgePosition
                                                                .topEnd(),
                                                            animationType: badges
                                                                .BadgeAnimationType
                                                                .scale,
                                                            toAnimate: true,
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .remove_red_eye_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 30.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  (valueOrDefault<
                                                                              int>(
                                                                            FFAppState().stDBAdminOVEFilters.where((e) => e.processingId == 3).toList().length,
                                                                            0,
                                                                          ) ==
                                                                          0)
                                                                      ? null
                                                                      : () async {
                                                                          _model.lpsvOveProcessingId =
                                                                              3;
                                                                          _model.lpsvOveProcessingIsFiled =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                            ),
                                                          ),
                                                          Text(
                                                            '${formatNumber(
                                                              FFAppState()
                                                                  .stDBAdminOVEProcessingId3Hours,
                                                              formatType:
                                                                  FormatType
                                                                      .compact,
                                                            )} h',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          badges.Badge(
                                                            badgeContent: Text(
                                                              FFAppState()
                                                                  .stDBAdminOVEFilters
                                                                  .where((e) =>
                                                                      e.processingId ==
                                                                      4)
                                                                  .toList()
                                                                  .length
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                            ),
                                                            showBadge: FFAppState()
                                                                    .stDBAdminOVEFilters
                                                                    .where((e) =>
                                                                        e.processingId ==
                                                                        4)
                                                                    .toList()
                                                                    .length >
                                                                0,
                                                            shape: badges
                                                                .BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            elevation: 4.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            position: badges
                                                                    .BadgePosition
                                                                .topEnd(),
                                                            animationType: badges
                                                                .BadgeAnimationType
                                                                .scale,
                                                            toAnimate: true,
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 60.0,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .thumbsDown,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                size: 30.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  (valueOrDefault<
                                                                              int>(
                                                                            FFAppState().stDBAdminOVEFilters.where((e) => e.processingId == 4).toList().length,
                                                                            0,
                                                                          ) ==
                                                                          0)
                                                                      ? null
                                                                      : () async {
                                                                          _model.lpsvOveProcessingId =
                                                                              4;
                                                                          _model.lpsvOveProcessingIsFiled =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                            ),
                                                          ),
                                                          Text(
                                                            '${valueOrDefault<String>(
                                                              formatNumber(
                                                                FFAppState()
                                                                    .stDBAdminOVEProcessingId4Hours,
                                                                formatType:
                                                                    FormatType
                                                                        .compact,
                                                              ),
                                                              '0',
                                                            )} h',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          badges.Badge(
                                                            badgeContent: Text(
                                                              FFAppState()
                                                                  .stDBAdminOVEFilters
                                                                  .where((e) =>
                                                                      (e.processingId ==
                                                                          5) &&
                                                                      !e.isFiled)
                                                                  .toList()
                                                                  .length
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                            ),
                                                            showBadge: FFAppState()
                                                                    .stDBAdminOVEFilters
                                                                    .where((e) =>
                                                                        (e.processingId ==
                                                                            5) &&
                                                                        !e.isFiled)
                                                                    .toList()
                                                                    .length >
                                                                0,
                                                            shape: badges
                                                                .BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            elevation: 4.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            position: badges
                                                                    .BadgePosition
                                                                .topEnd(),
                                                            animationType: badges
                                                                .BadgeAnimationType
                                                                .scale,
                                                            toAnimate: true,
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 60.0,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .thumbsUp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                size: 30.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  (valueOrDefault<
                                                                              int>(
                                                                            FFAppState().stDBAdminOVEFilters.where((e) => e.processingId == 5).toList().length,
                                                                            0,
                                                                          ) ==
                                                                          0)
                                                                      ? null
                                                                      : () async {
                                                                          _model.lpsvOveProcessingId =
                                                                              5;
                                                                          _model.lpsvOveProcessingIsFiled =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                            ),
                                                          ),
                                                          Text(
                                                            '${valueOrDefault<String>(
                                                              formatNumber(
                                                                FFAppState()
                                                                    .stDBAdminOVEProcessingId5Hours,
                                                                formatType:
                                                                    FormatType
                                                                        .compact,
                                                              ),
                                                              '0',
                                                            )} h',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          badges.Badge(
                                                            badgeContent: Text(
                                                              FFAppState()
                                                                  .stDBAdminOVEFilters
                                                                  .where((e) =>
                                                                      (e.processingId ==
                                                                          5) &&
                                                                      e.isFiled)
                                                                  .toList()
                                                                  .length
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                            ),
                                                            showBadge: FFAppState()
                                                                    .stDBAdminOVEFilters
                                                                    .where((e) =>
                                                                        (e.processingId ==
                                                                            5) &&
                                                                        e.isFiled)
                                                                    .toList()
                                                                    .length >
                                                                0,
                                                            shape: badges
                                                                .BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            elevation: 4.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            position: badges
                                                                    .BadgePosition
                                                                .topEnd(),
                                                            animationType: badges
                                                                .BadgeAnimationType
                                                                .scale,
                                                            toAnimate: true,
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .archive_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                size: 30.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  () async {
                                                                _model.lpsvOveProcessingId =
                                                                    5;
                                                                _model.lpsvOveProcessingIsFiled =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                          ),
                                                          Text(
                                                            '${formatNumber(
                                                              FFAppState()
                                                                  .stDbAdminOveProcessingId5HoursFiled,
                                                              formatType:
                                                                  FormatType
                                                                      .compact,
                                                            )} h',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: (FFAppState().stDBAdminOVEProcessingId5Hours >
                                                                              0.0) &&
                                                                          (FFAppState().stDBAdminOVEProcessingId5Hours !=
                                                                              FFAppState()
                                                                                  .stDbAdminOveProcessingId5HoursFiled)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .error
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'cardOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 6.0, 0.0, 6.0),
                                      child: Container(
                                        width: double.infinity,
                                        constraints: BoxConstraints(
                                          minWidth: 390.0,
                                          minHeight: 300.0,
                                          maxWidth: 390.0,
                                          maxHeight: 420.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Builder(
                                          builder: (context) {
                                            final gcOVEFilters = FFAppState()
                                                .stDBAdminOVEFilters
                                                .map((e) => e)
                                                .toList()
                                                .where((e) =>
                                                    (e.processingId ==
                                                        _model
                                                            .lpsvOveProcessingId) &&
                                                    (e.isFiled ==
                                                        _model
                                                            .lpsvOveProcessingIsFiled))
                                                .toList()
                                                .sortedList(
                                                    keyOf: (e) => e.startedAt,
                                                    desc: false)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.fromLTRB(
                                                0.0,
                                                0,
                                                0,
                                                0,
                                              ),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: gcOVEFilters.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(width: 12.0),
                                              itemBuilder:
                                                  (context, gcOVEFiltersIndex) {
                                                final gcOVEFiltersItem =
                                                    gcOVEFilters[
                                                        gcOVEFiltersIndex];
                                                return FlipCard(
                                                  fill: Fill.fillBack,
                                                  direction:
                                                      FlipDirection.HORIZONTAL,
                                                  speed: 400,
                                                  front: CpDbAdminOveCardWidget(
                                                    key: Key(
                                                        'Key5a8_${gcOVEFiltersIndex}_of_${gcOVEFilters.length}'),
                                                    cpDtOVE: gcOVEFiltersItem,
                                                  ),
                                                  back:
                                                      CpOveProcessingUsersWidget(
                                                    key: Key(
                                                        'Keyubg_${gcOVEFiltersIndex}_of_${gcOVEFilters.length}'),
                                                    cpDtOve: gcOVEFiltersItem,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
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
      ),
    );
  }
}

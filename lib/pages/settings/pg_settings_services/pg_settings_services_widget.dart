import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/settings/md_settings_activity_c_u/md_settings_activity_c_u_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'dart:async';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_settings_services_model.dart';
export 'pg_settings_services_model.dart';

class PgSettingsServicesWidget extends StatefulWidget {
  const PgSettingsServicesWidget({super.key});

  static String routeName = 'pgSettingsServices';
  static String routePath = 'pgSettingsServices';

  @override
  State<PgSettingsServicesWidget> createState() =>
      _PgSettingsServicesWidgetState();
}

class _PgSettingsServicesWidgetState extends State<PgSettingsServicesWidget> {
  late PgSettingsServicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgSettingsServicesModel());

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
          title: Text(
            FFLocalizations.of(context).getText(
              'bkrrc2kg' /* Serviços */,
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
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cpInputTextModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpInputTextWidget(),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 16.0,
                                  borderWidth: 6.0,
                                  buttonSize: 50.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: FaIcon(
                                    FontAwesomeIcons.search,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.resActivities =
                                        await ApiActivitiesGroup
                                            .apiActivitiesSearchCall
                                            .call(
                                      apiKey:
                                          FFDevEnvironmentValues().envApiKey,
                                      accessToken: currentJwtToken,
                                      versionMode:
                                          FFAppState().stAppVersionMode?.name,
                                      srchTerms: _model.cpInputTextModel
                                          .inputTextTextController.text,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.resActivities?.succeeded ??
                                        true)) {
                                      FFAppState()
                                          .stOActivitiesSearchResults = ((_model
                                                          .resActivities
                                                          ?.jsonBody ??
                                                      '')
                                                  .toList()
                                                  .map<DtOrderTypeActivityStruct?>(
                                                      DtOrderTypeActivityStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<
                                                  DtOrderTypeActivityStruct?>)
                                          .withoutNulls
                                          .toList()
                                          .cast<DtOrderTypeActivityStruct>();
                                      FFAppState().stActivitiesSearchResult =
                                          ((_model.resActivities?.jsonBody ??
                                                          '')
                                                      .toList()
                                                      .map<DtActivityStruct?>(
                                                          DtActivityStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      DtActivityStruct?>)
                                              .withoutNulls
                                              .toList()
                                              .cast<DtActivityStruct>();
                                      safeSetState(() {});
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Houve um erro na busca de Atividades.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 16.0,
                                  borderWidth: 6.0,
                                  buttonSize: 50.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.plusCircle,
                                    color: FlutterFlowTheme.of(context).primary,
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
                                            child: MdSettingsActivityCUWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final gcActivities = FFAppState()
                                          .stActivitiesSearchResult
                                          .map((e) => e)
                                          .toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: gcActivities.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 8.0),
                                        itemBuilder:
                                            (context, gcActivitiesIndex) {
                                          final gcActivitiesItem =
                                              gcActivities[gcActivitiesIndex];
                                          return Container(
                                            width: double.infinity,
                                            height: 120.0,
                                            constraints: BoxConstraints(
                                              minHeight: 80.0,
                                              maxHeight: 120.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 5.0,
                                                  color: Color(0x3416202A),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 8.0, 12.0, 8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      12.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {},
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                gcActivitiesItem
                                                                    .description,
                                                                'description',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMedium
                                                                  .override(
                                                                    font: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: FutureBuilder<
                                                          List<
                                                              VOrdersTypesRow>>(
                                                        future: (_model
                                                                    .requestCompleter ??=
                                                                Completer<
                                                                    List<
                                                                        VOrdersTypesRow>>()
                                                                  ..complete(
                                                                      VOrdersTypesTable()
                                                                          .queryRows(
                                                                    queryFn: (q) =>
                                                                        q.order(
                                                                            'code'),
                                                                  )))
                                                            .future,
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<VOrdersTypesRow>
                                                              listViewVOrdersTypesRowList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .separated(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            itemCount:
                                                                listViewVOrdersTypesRowList
                                                                    .length,
                                                            separatorBuilder: (_,
                                                                    __) =>
                                                                SizedBox(
                                                                    width: 4.0),
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewVOrdersTypesRow =
                                                                  listViewVOrdersTypesRowList[
                                                                      listViewIndex];
                                                              return FutureBuilder<
                                                                  List<
                                                                      VOrdersTypesActivitiesRow>>(
                                                                future: VOrdersTypesActivitiesTable()
                                                                    .querySingleRow(
                                                                  queryFn: (q) => q
                                                                      .eqOrNull(
                                                                        'o_type_id',
                                                                        listViewVOrdersTypesRow
                                                                            .id,
                                                                      )
                                                                      .eqOrNull(
                                                                        'activity_id',
                                                                        gcActivitiesItem
                                                                            .id,
                                                                      ),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<VOrdersTypesActivitiesRow>
                                                                      containerVOrdersTypesActivitiesRowList =
                                                                      snapshot
                                                                          .data!;

                                                                  final containerVOrdersTypesActivitiesRow = containerVOrdersTypesActivitiesRowList
                                                                          .isNotEmpty
                                                                      ? containerVOrdersTypesActivitiesRowList
                                                                          .first
                                                                      : null;

                                                                  return Container(
                                                                    height: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        if (containerVOrdersTypesActivitiesRow?.activityId ==
                                                                            null)
                                                                          FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              await CfgOrdersTypesActivitiesTable().insert({
                                                                                'o_type_id': listViewVOrdersTypesRow.id,
                                                                                'activity_id': gcActivitiesItem.id,
                                                                                'is_available': true,
                                                                                'version_mode': FFAppState().stAppVersionMode?.name,
                                                                              });
                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                              await _model.waitForRequestCompleted();
                                                                              await CfgAppOfflineUpdatesTable().update(
                                                                                data: {
                                                                                  'version_offline': getCurrentTimestamp.millisecondsSinceEpoch.toString(),
                                                                                  'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                },
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'table_name',
                                                                                  'orders_types_activities',
                                                                                ),
                                                                              );
                                                                              await action_blocks.abAppOfflineUpdatesTablesOTypesActivities(context);
                                                                            },
                                                                            text:
                                                                                listViewVOrdersTypesRow.code!,
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 50.0,
                                                                              height: 20.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: FlutterFlowTheme.of(context).titleSmall,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        if (containerVOrdersTypesActivitiesRow?.activityId !=
                                                                            null)
                                                                          FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              await CfgOrdersTypesActivitiesTable().delete(
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'id',
                                                                                  containerVOrdersTypesActivitiesRow?.id,
                                                                                ),
                                                                              );
                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                              await _model.waitForRequestCompleted();
                                                                              await CfgAppOfflineUpdatesTable().update(
                                                                                data: {
                                                                                  'version_offline': getCurrentTimestamp.millisecondsSinceEpoch.toString(),
                                                                                  'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                },
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'table_name',
                                                                                  'orders_types_activities',
                                                                                ),
                                                                              );
                                                                              await action_blocks.abAppOfflineUpdatesTablesOTypesActivities(context);
                                                                            },
                                                                            text:
                                                                                listViewVOrdersTypesRow.code!,
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 50.0,
                                                                              height: 20.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: FlutterFlowTheme.of(context).titleSmall,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

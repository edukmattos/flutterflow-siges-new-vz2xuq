import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/settings/cp_users_list_item/cp_users_list_item_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_settings_users_model.dart';
export 'pg_settings_users_model.dart';

class PgSettingsUsersWidget extends StatefulWidget {
  const PgSettingsUsersWidget({super.key});

  static String routeName = 'pgSettingsUsers';
  static String routePath = 'pgSettingsUsers';

  @override
  State<PgSettingsUsersWidget> createState() => _PgSettingsUsersWidgetState();
}

class _PgSettingsUsersWidgetState extends State<PgSettingsUsersWidget>
    with TickerProviderStateMixin {
  late PgSettingsUsersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgSettingsUsersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'users',
      );
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Company Id'),
            content: Text(FFAppState().stCompanySelected.id.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      _model.apiResultinw = await ApiUsersGroup.apiUsersByCompanyIdCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
        companyId: FFAppState().stCompanySelected.id,
      );

      if ((_model.apiResultinw?.succeeded ?? true)) {
        FFAppState().stUsersSearchResults =
            ((_model.apiResultinw?.jsonBody ?? '')
                    .toList()
                    .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
                    .toList() as Iterable<DtUserStruct?>)
                .withoutNulls
                .toList()
                .cast<DtUserStruct>();
        safeSetState(() {});
      }
      await actions.caSupabaseDisconnect(
        'users',
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
                  ),
                ),
                Expanded(
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
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'gcue29po' /* Hello World */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  FFAppState().stRowsSelected.length.toString(),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment(0.0, 0),
                                  child: FlutterFlowButtonTabBar(
                                    useToggleButtonStyle: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily),
                                        ),
                                    unselectedLabelStyle: TextStyle(),
                                    labelColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    unselectedBackgroundColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 12.0,
                                    elevation: 0.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    tabs: [
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'bcupsgzd' /* Análise */,
                                        ),
                                      ),
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '6g5sga0w' /* Inativos */,
                                        ),
                                      ),
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'gmghdqfl' /* Ativos */,
                                        ),
                                      ),
                                    ],
                                    controller: _model.tabBarController,
                                    onTap: (i) async {
                                      [
                                        () async {},
                                        () async {},
                                        () async {}
                                      ][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Builder(
                                          builder: (context) {
                                            final usersWaiting = FFAppState()
                                                .stUsersSearchResults
                                                .where((e) => e.statusId == 1)
                                                .toList()
                                                .map((e) => e)
                                                .toList()
                                                .sortedList(
                                                    keyOf: (e) => e.nameFull,
                                                    desc: false)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              scrollDirection: Axis.vertical,
                                              itemCount: usersWaiting.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder:
                                                  (context, usersWaitingIndex) {
                                                final usersWaitingItem =
                                                    usersWaiting[
                                                        usersWaitingIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState()
                                                        .stRowsSelected = [];
                                                    safeSetState(() {});
                                                    FFAppState()
                                                        .addToStRowsSelected(
                                                            usersWaitingItem
                                                                .id);
                                                    safeSetState(() {});
                                                    await action_blocks
                                                        .abUserSelected(
                                                      context,
                                                      abUserId:
                                                          usersWaitingItem.id,
                                                    );
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        PgSettingsUserEditWidget
                                                            .routeName);
                                                  },
                                                  child: CpUsersListItemWidget(
                                                    key: Key(
                                                        'Key6oa_${usersWaitingIndex}_of_${usersWaiting.length}'),
                                                    cpUserDt: usersWaitingItem,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Builder(
                                          builder: (context) {
                                            final usersDesactived = FFAppState()
                                                .stUsersSearchResults
                                                .where((e) => e.statusId == 3)
                                                .toList()
                                                .map((e) => e)
                                                .toList()
                                                .sortedList(
                                                    keyOf: (e) => e.nameFull,
                                                    desc: false)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              scrollDirection: Axis.vertical,
                                              itemCount: usersDesactived.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder: (context,
                                                  usersDesactivedIndex) {
                                                final usersDesactivedItem =
                                                    usersDesactived[
                                                        usersDesactivedIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState()
                                                        .stRowsSelected = [];
                                                    safeSetState(() {});
                                                    FFAppState()
                                                        .addToStRowsSelected(
                                                            usersDesactivedItem
                                                                .id);
                                                    safeSetState(() {});
                                                    await action_blocks
                                                        .abUserSelected(
                                                      context,
                                                      abUserId:
                                                          usersDesactivedIndex,
                                                    );
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        PgSettingsUserEditWidget
                                                            .routeName);
                                                  },
                                                  child: CpUsersListItemWidget(
                                                    key: Key(
                                                        'Key06o_${usersDesactivedIndex}_of_${usersDesactived.length}'),
                                                    cpUserDt:
                                                        usersDesactivedItem,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Builder(
                                          builder: (context) {
                                            final usersActived = FFAppState()
                                                .stUsersSearchResults
                                                .where((e) => e.statusId == 2)
                                                .toList()
                                                .map((e) => e)
                                                .toList()
                                                .sortedList(
                                                    keyOf: (e) => e.nameFull,
                                                    desc: false)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              scrollDirection: Axis.vertical,
                                              itemCount: usersActived.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder:
                                                  (context, usersActivedIndex) {
                                                final usersActivedItem =
                                                    usersActived[
                                                        usersActivedIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState()
                                                        .stRowsSelected = [];
                                                    safeSetState(() {});
                                                    FFAppState()
                                                        .addToStRowsSelected(
                                                            usersActivedItem
                                                                .id);
                                                    FFAppState().update(() {});
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              Text('user id'),
                                                          content: Text(
                                                              usersActivedItem
                                                                  .id
                                                                  .toString()),
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
                                                    await action_blocks
                                                        .abUserSelected(
                                                      context,
                                                      abUserId:
                                                          usersActivedItem.id,
                                                    );
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        PgSettingsUserEditWidget
                                                            .routeName);
                                                  },
                                                  child: CpUsersListItemWidget(
                                                    key: Key(
                                                        'Key7yz_${usersActivedIndex}_of_${usersActived.length}'),
                                                    cpUserDt: usersActivedItem,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
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

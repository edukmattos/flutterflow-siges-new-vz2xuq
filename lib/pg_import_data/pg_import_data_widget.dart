import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pg_import_data_model.dart';
export 'pg_import_data_model.dart';

class PgImportDataWidget extends StatefulWidget {
  const PgImportDataWidget({super.key});

  static String routeName = 'pgImportData';
  static String routePath = 'pgImportData';

  @override
  State<PgImportDataWidget> createState() => _PgImportDataWidgetState();
}

class _PgImportDataWidgetState extends State<PgImportDataWidget> {
  late PgImportDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgImportDataModel());

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
              '3ojpnc5q' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: FlutterFlowTheme.of(context).accent4,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        _model.resUsersAll =
                            await ApiUsersGroup.apiUsersAllCall.call();

                        _model.lpstUsersId = ((_model.resUsersAll?.jsonBody ??
                                    '')
                                .toList()
                                .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
                                .toList() as Iterable<DtUserStruct?>)
                            .withoutNulls
                            .map((e) => e.id)
                            .toList()
                            .cast<int>();
                        safeSetState(() {});
                        _model.resUsersToImport =
                            await ApiImportsGroup.apiImportUsersAllCall.call();

                        FFAppState().stImportUsers = ((_model
                                        .resUsersToImport?.jsonBody ??
                                    '')
                                .toList()
                                .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
                                .toList() as Iterable<DtUserStruct?>)
                            .withoutNulls
                            .toList()
                            .cast<DtUserStruct>();
                        FFAppState().update(() {});
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('users to import'),
                              content: Text(valueOrDefault<String>(
                                FFAppState().stImportUsers.length.toString(),
                                '0',
                              )),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        FFAppState().stCounterLoop = 0;
                        FFAppState().stCounterLoopFinal = valueOrDefault<int>(
                          FFAppState().stImportUsers.length,
                          0,
                        );
                        safeSetState(() {});
                        while (FFAppState().stCounterLoop <
                            FFAppState().stCounterLoopFinal) {
                          if (!functions.cfContainInList(
                              _model.lpstUsersId.toList(),
                              FFAppState()
                                  .stImportUsers
                                  .elementAtOrNull(FFAppState().stCounterLoop)!
                                  .id)!) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('1'),
                                  content: Text(FFAppState()
                                      .stImportUsers
                                      .elementAtOrNull(
                                          FFAppState().stCounterLoop)!
                                      .email),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (functions.cfCheckIsEmail(FFAppState()
                                .stImportUsers
                                .elementAtOrNull(FFAppState().stCounterLoop)!
                                .email)) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('erro'),
                                    content: Text(FFAppState()
                                        .stImportUsers
                                        .elementAtOrNull(
                                            FFAppState().stCounterLoop)!
                                        .email),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              GoRouter.of(context).prepareAuthEvent();
                              if ('123456' != '123456') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Passwords don\'t match!',
                                    ),
                                  ),
                                );
                                return;
                              }

                              final user =
                                  await authManager.createAccountWithEmail(
                                context,
                                FFAppState()
                                    .stImportUsers
                                    .elementAtOrNull(
                                        FFAppState().stCounterLoop)!
                                    .email,
                                '123456',
                              );
                              if (user == null) {
                                return;
                              }

                              _model.resUserAdded = await UsersTable().insert({
                                'email': FFAppState()
                                    .stImportUsers
                                    .elementAtOrNull(FFAppState().stCounterLoop)
                                    ?.email,
                                'name_full': FFAppState()
                                    .stImportUsers
                                    .elementAtOrNull(FFAppState().stCounterLoop)
                                    ?.nameFull,
                                'name_short': FFAppState()
                                    .stImportUsers
                                    .elementAtOrNull(FFAppState().stCounterLoop)
                                    ?.nameShort,
                                'team_id': FFAppState()
                                    .stImportUsers
                                    .elementAtOrNull(FFAppState().stCounterLoop)
                                    ?.teamId,
                                'version_app': '',
                                'team_id_previous': FFAppState()
                                    .stImportUsers
                                    .elementAtOrNull(FFAppState().stCounterLoop)
                                    ?.teamId,
                                'created_at': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'status_id': 1,
                                'uuid': currentUserUid,
                                'is_available': true,
                                'is_ov_in_progress': false,
                                'id': FFAppState()
                                    .stImportUsers
                                    .elementAtOrNull(FFAppState().stCounterLoop)
                                    ?.id,
                              });
                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signOut();
                              GoRouter.of(context).clearRedirectLocation();

                              _model.addToLpstUsersId(FFAppState()
                                  .stImportUsers
                                  .elementAtOrNull(FFAppState().stCounterLoop)!
                                  .id);
                              safeSetState(() {});
                              await Future.delayed(
                                  const Duration(milliseconds: 15000));
                            }
                          }
                          FFAppState().stCounterLoop =
                              FFAppState().stCounterLoop + 1;
                          safeSetState(() {});
                        }

                        safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        '9brzetij' /* Usuarios
 */
                        ,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: FlutterFlowTheme.of(context).titleSmall,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 200.0,
                          child: Builder(
                            builder: (context) {
                              final users = _model.lpstUsersId
                                  .map((e) => e)
                                  .toList()
                                  .sortedList(keyOf: (e) => e, desc: false)
                                  .toList();

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: users.length,
                                itemBuilder: (context, usersIndex) {
                                  final usersItem = users[usersIndex];
                                  return SelectionArea(
                                      child: Text(
                                    valueOrDefault<String>(
                                      usersItem.toString(),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ));
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 200.0,
                          child: Builder(
                            builder: (context) {
                              final userstoImport = FFAppState()
                                  .stImportUsers
                                  .sortedList(keyOf: (e) => e.id, desc: false)
                                  .toList();

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: userstoImport.length,
                                itemBuilder: (context, userstoImportIndex) {
                                  final userstoImportItem =
                                      userstoImport[userstoImportIndex];
                                  return SelectionArea(
                                      child: Text(
                                    userstoImportItem.id.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ));
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

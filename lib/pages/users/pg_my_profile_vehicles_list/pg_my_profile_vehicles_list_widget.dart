import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'dart:async';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_my_profile_vehicles_list_model.dart';
export 'pg_my_profile_vehicles_list_model.dart';

class PgMyProfileVehiclesListWidget extends StatefulWidget {
  const PgMyProfileVehiclesListWidget({super.key});

  static String routeName = 'pgMyProfileVehiclesList';
  static String routePath = 'pgMyProfileVehiclesList';

  @override
  State<PgMyProfileVehiclesListWidget> createState() =>
      _PgMyProfileVehiclesListWidgetState();
}

class _PgMyProfileVehiclesListWidgetState
    extends State<PgMyProfileVehiclesListWidget> {
  late PgMyProfileVehiclesListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgMyProfileVehiclesListModel());

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
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'fkpzdc9f' /* Meu Veículo */,
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
          child: Container(
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
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FutureBuilder<List<VehiclesRow>>(
                            future: (_model.requestCompleter ??= Completer<
                                    List<VehiclesRow>>()
                                  ..complete(VehiclesTable().queryRows(
                                    queryFn: (q) => q
                                        .eqOrNull(
                                          'department_id',
                                          FFAppState()
                                              .stUserCurrent
                                              .departmentId,
                                        )
                                        .order('description', ascending: true),
                                  )))
                                .future,
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<VehiclesRow> listViewVehiclesRowList =
                                  snapshot.data!;

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewVehiclesRowList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 8.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewVehiclesRow =
                                      listViewVehiclesRowList[listViewIndex];
                                  return Container(
                                    height: 80.0,
                                    decoration: BoxDecoration(),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        listViewVehiclesRow
                                                            .description,
                                                        'Veículo',
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (listViewVehiclesRow.id !=
                                                FFAppState()
                                                    .stUserCurrent
                                                    .vehicleId)
                                              FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius: 25.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.star,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 24.0,
                                                ),
                                                showLoadingIndicator: true,
                                                onPressed: () async {
                                                  await UsersTable().update(
                                                    data: {
                                                      'vehicle_id':
                                                          listViewVehiclesRow
                                                              .id,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      FFAppState()
                                                          .stUserCurrent
                                                          .id,
                                                    ),
                                                  );
                                                  await action_blocks
                                                      .abUserUpdate(
                                                    context,
                                                    abEmail: FFAppState()
                                                        .stUserCurrent
                                                        .email,
                                                  );
                                                  safeSetState(() => _model
                                                      .requestCompleter = null);
                                                  await _model
                                                      .waitForRequestCompleted();
                                                },
                                              ),
                                            if (listViewVehiclesRow.id ==
                                                FFAppState()
                                                    .stUserCurrent
                                                    .vehicleId)
                                              FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius: 25.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.solidStar,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 24.0,
                                                ),
                                                showLoadingIndicator: true,
                                                onPressed: true
                                                    ? null
                                                    : () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                              ),
                                          ],
                                        ),
                                      ),
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
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}

import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_my_team_model.dart';
export 'pg_my_team_model.dart';

class PgMyTeamWidget extends StatefulWidget {
  const PgMyTeamWidget({super.key});

  static String routeName = 'pgMyTeam';
  static String routePath = 'pgMyTeam';

  @override
  State<PgMyTeamWidget> createState() => _PgMyTeamWidgetState();
}

class _PgMyTeamWidgetState extends State<PgMyTeamWidget> {
  late PgMyTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgMyTeamModel());

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
              'hyf47vfi' /* Minha Equipe */,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.cpDBUserAvailableModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CpDBUserAvailableWidget(
                        toolTip: FFAppState().stUserCurrent.nameShort,
                      ),
                    ),
                  ],
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
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.cpInputTextModel,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: CpInputTextWidget(
                                    cpLabelText: 'Pesquisar',
                                    cpIsReadOnly: false,
                                  ),
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
                                onPressed: () async {
                                  _model.apiResult0dw = await ApiUsersGroup
                                      .apiUsersSearchByNameFullCall
                                      .call(
                                    apiUrl: FFDevEnvironmentValues().envApiUrl,
                                    apiKey: FFDevEnvironmentValues().envApiKey,
                                    accessToken: currentJwtToken,
                                    searchTerms: _model.cpInputTextModel
                                        .inputTextTextController.text,
                                  );

                                  if ((_model.apiResult0dw?.succeeded ??
                                      true)) {
                                    _model.lpsvUsers = ((_model
                                                    .apiResult0dw?.jsonBody ??
                                                '')
                                            .toList()
                                            .map<DtUserStruct?>(
                                                DtUserStruct.maybeFromMap)
                                            .toList() as Iterable<DtUserStruct?>)
                                        .withoutNulls
                                        .toList()
                                        .cast<DtUserStruct>();
                                    safeSetState(() {});
                                  }

                                  safeSetState(() {});
                                },
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    minHeight: 0.0,
                                    maxHeight: 150.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible:
                                        FFAppState().stUserCurrentTeams.length >
                                            0,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 4.0),
                                      child: Builder(
                                        builder: (context) {
                                          final gcMyTeam = FFAppState()
                                              .stUserCurrentTeams
                                              .sortedList(
                                                  keyOf: (e) => e.nameFull,
                                                  desc: false)
                                              .toList();

                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: gcMyTeam.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(width: 12.0),
                                            itemBuilder:
                                                (context, gcMyTeamIndex) {
                                              final gcMyTeamItem =
                                                  gcMyTeam[gcMyTeamIndex];
                                              return Visibility(
                                                visible: gcMyTeamItem.id !=
                                                    FFAppState()
                                                        .stUserCurrent
                                                        .id,
                                                child: Container(
                                                  width: 120.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x34090F13),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Stack(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          children: [
                                                            Container(
                                                              width: 70.0,
                                                              height: 70.0,
                                                              child:
                                                                  CpUserPicProfileWidget(
                                                                key: Key(
                                                                    'Keyrma_${gcMyTeamIndex}_of_${gcMyTeam.length}'),
                                                                cpSize: 70,
                                                                imgUrl:
                                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcMyTeamItem.imgFilePath}/${gcMyTeamItem.imgFileName}',
                                                                toolTip:
                                                                    gcMyTeamItem
                                                                        .nameShort,
                                                                isAvailable:
                                                                    false,
                                                                isOrderVisitIdInProgress:
                                                                    false,
                                                                displayAvailable:
                                                                    false,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            30.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      20.0,
                                                                  buttonSize:
                                                                      36.0,
                                                                  fillColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .trashAlt,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    size: 16.0,
                                                                  ),
                                                                  showLoadingIndicator:
                                                                      true,
                                                                  onPressed:
                                                                      () async {
                                                                    await action_blocks
                                                                        .abTeamUsersUpdate(
                                                                      context,
                                                                      abOVId: FFAppState()
                                                                          .stUserCurrent
                                                                          .ovIdInProgress,
                                                                      abUserSelected:
                                                                          gcMyTeamItem
                                                                              .id,
                                                                      abOperation:
                                                                          'remove',
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              gcMyTeamItem
                                                                  .nameShort,
                                                              'Apelido',
                                                            ),
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if ((_model.cpInputTextModel
                                          .inputTextTextController.text !=
                                      '') ||
                              (_model.lpsvUsers.length > 0))
                            Expanded(
                              child: Builder(
                                builder: (context) {
                                  final gcUsersAvailable =
                                      _model.lpsvUsers.toList();

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount: gcUsersAvailable.length,
                                    itemBuilder:
                                        (context, gcUsersAvailableIndex) {
                                      final gcUsersAvailableItem =
                                          gcUsersAvailable[
                                              gcUsersAvailableIndex];
                                      return Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Container(
                                          height: 70.0,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CpUserPicProfileWidget(
                                                            key: Key(
                                                                'Keyfk1_${gcUsersAvailableIndex}_of_${gcUsersAvailable.length}'),
                                                            cpSize: 50,
                                                            imgUrl:
                                                                '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcUsersAvailableItem.imgFilePath}/${gcUsersAvailableItem.imgFileName}',
                                                            toolTip:
                                                                gcUsersAvailableItem
                                                                    .nameShort,
                                                            isAvailable: false,
                                                            isOrderVisitIdInProgress:
                                                                false,
                                                            displayAvailable:
                                                                false,
                                                          ),
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  gcUsersAvailableItem
                                                                      .nameFull,
                                                                  'Apelido',
                                                                ),
                                                                style: FlutterFlowTheme.of(
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
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    gcUsersAvailableItem
                                                                        .teamCode,
                                                                    'Equipe',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 25.0,
                                                        buttonSize: 50.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.star,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
                                                          if (functions.cfContainInList(
                                                              FFAppState()
                                                                  .stUserCurrentTeams
                                                                  .map((e) =>
                                                                      e.id)
                                                                  .toList(),
                                                              gcUsersAvailableItem
                                                                  .id)!) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Ops ... Já associado.',
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
                                                                action:
                                                                    SnackBarAction(
                                                                  label: 'qqq',
                                                                  textColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  onPressed:
                                                                      () async {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .hideCurrentSnackBar();
                                                                  },
                                                                ),
                                                              ),
                                                            );
                                                            return;
                                                          } else {
                                                            await action_blocks
                                                                .abTeamUsersUpdate(
                                                              context,
                                                              abOVId: FFAppState()
                                                                  .stUserCurrent
                                                                  .ovIdInProgress,
                                                              abUserSelected:
                                                                  gcUsersAvailableItem
                                                                      .id,
                                                              abOperation:
                                                                  'add',
                                                            );
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                    ],
                                                  ),
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

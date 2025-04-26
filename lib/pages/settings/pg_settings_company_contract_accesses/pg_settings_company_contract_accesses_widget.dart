import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_app_pages/cp_dropdown_app_pages_widget.dart';
import '/pages/components/cp_dropdown_app_pages_providers/cp_dropdown_app_pages_providers_widget.dart';
import '/pages/components/cp_dropdown_departments_company/cp_dropdown_departments_company_widget.dart';
import '/pages/components/cp_dropdown_profiles_department/cp_dropdown_profiles_department_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/settings/cp_settings_company_show_card/cp_settings_company_show_card_widget.dart';
import '/pages/settings/cp_settings_profile_permission_list_item/cp_settings_profile_permission_list_item_widget.dart';
import '/pages/settings/cp_users_list_item/cp_users_list_item_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'dart:async';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'pg_settings_company_contract_accesses_model.dart';
export 'pg_settings_company_contract_accesses_model.dart';

class PgSettingsCompanyContractAccessesWidget extends StatefulWidget {
  const PgSettingsCompanyContractAccessesWidget({super.key});

  static String routeName = 'pgSettingsCompanyContractAccesses';
  static String routePath = 'pgSettingsCompanyContractAccesses';

  @override
  State<PgSettingsCompanyContractAccessesWidget> createState() =>
      _PgSettingsCompanyContractAccessesWidgetState();
}

class _PgSettingsCompanyContractAccessesWidgetState
    extends State<PgSettingsCompanyContractAccessesWidget>
    with TickerProviderStateMixin {
  late PgSettingsCompanyContractAccessesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => PgSettingsCompanyContractAccessesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abUsersSearchResults(
        context,
        abFilter: 'company',
      );
      safeSetState(() {});
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'choiceChipsOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 110.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
              'xj4yjo0h' /* Acessibilidade */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: Colors.white,
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
              mainAxisSize: MainAxisSize.min,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsets.all(valueOrDefault<double>(
                        FFAppConstants.cstContentPadAll.toDouble(),
                        0.0,
                      )),
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                          maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                        ),
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.cpSettingsCompanyShowCardModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpSettingsCompanyShowCardWidget(),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Flexible(
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment(0.0, 0),
                                          child: FlutterFlowButtonTabBar(
                                            useToggleButtonStyle: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                      letterSpacing: 0.0,
                                                    ),
                                            unselectedLabelStyle: TextStyle(),
                                            labelColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            unselectedLabelColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            unselectedBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 12.0,
                                            elevation: 0.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            tabs: [
                                              Tab(
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'kggohig8' /* Usuários */,
                                                ),
                                              ),
                                              Tab(
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'y7hq97hc' /* Permissões */,
                                                ),
                                              ),
                                            ],
                                            controller: _model.tabBarController,
                                            onTap: (i) async {
                                              [() async {}, () async {}][i]();
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            controller: _model.tabBarController,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: FutureBuilder<
                                                        List<
                                                            CfgUsersStatusesRow>>(
                                                      future:
                                                          CfgUsersStatusesTable()
                                                              .queryRows(
                                                        queryFn: (q) => q.order(
                                                            'description',
                                                            ascending: true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
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
                                                        List<CfgUsersStatusesRow>
                                                            choiceChipsCfgUsersStatusesRowList =
                                                            snapshot.data!;

                                                        return FlutterFlowChoiceChips(
                                                          options: choiceChipsCfgUsersStatusesRowList
                                                              .map((e) =>
                                                                  e.description)
                                                              .withoutNulls
                                                              .toList()
                                                              .map((label) =>
                                                                  ChipData(
                                                                      label))
                                                              .toList(),
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.choiceChipsValue =
                                                                      val?.firstOrNull),
                                                          selectedChipStyle:
                                                              ChipStyle(
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            iconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            iconSize: 18.0,
                                                            labelPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        4.0,
                                                                        12.0,
                                                                        4.0),
                                                            elevation: 0.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderWidth: 2.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          unselectedChipStyle:
                                                              ChipStyle(
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            iconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            iconSize: 18.0,
                                                            labelPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        4.0,
                                                                        12.0,
                                                                        4.0),
                                                            elevation: 0.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 2.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          chipSpacing: 8.0,
                                                          rowSpacing: 8.0,
                                                          multiselect: false,
                                                          initialized: _model
                                                                  .choiceChipsValue !=
                                                              null,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          controller: _model
                                                                  .choiceChipsValueController ??=
                                                              FormFieldController<
                                                                  List<String>>(
                                                            [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '6ojn3kvm' /* Ativo */,
                                                              )
                                                            ],
                                                          ),
                                                          wrapped: false,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'choiceChipsOnPageLoadAnimation']!);
                                                      },
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final gcUsers = FFAppState()
                                                              .stUsersSearchResults
                                                              .where((e) =>
                                                                  e.statusDescription ==
                                                                  _model
                                                                      .choiceChipsValue)
                                                              .toList()
                                                              .map((e) => e)
                                                              .toList()
                                                              .sortedList(
                                                                  keyOf: (e) =>
                                                                      e.nameFull,
                                                                  desc: false)
                                                              .toList();

                                                          return ListView
                                                              .separated(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                gcUsers.length,
                                                            separatorBuilder:
                                                                (_, __) =>
                                                                    SizedBox(
                                                                        height:
                                                                            6.0),
                                                            itemBuilder: (context,
                                                                gcUsersIndex) {
                                                              final gcUsersItem =
                                                                  gcUsers[
                                                                      gcUsersIndex];
                                                              return Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              18.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FFAppState()
                                                                            .stRowsSelected
                                                                            .contains(gcUsersItem
                                                                                .id)
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : Colors
                                                                            .transparent,
                                                                    width: FFAppState()
                                                                            .stRowsSelected
                                                                            .contains(gcUsersItem.id)
                                                                        ? 6.0
                                                                        : 0.0,
                                                                  ),
                                                                ),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    FFAppState()
                                                                        .stRowsSelected = [];
                                                                    safeSetState(
                                                                        () {});
                                                                    FFAppState()
                                                                        .addToStRowsSelected(
                                                                            gcUsersItem.id);
                                                                    safeSetState(
                                                                        () {});
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('user id'),
                                                                          content: Text(gcUsersItem
                                                                              .id
                                                                              .toString()),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
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
                                                                          gcUsersItem
                                                                              .id,
                                                                    );

                                                                    context.pushNamed(
                                                                        PgSettingsUserEditWidget
                                                                            .routeName);
                                                                  },
                                                                  child:
                                                                      CpUsersListItemWidget(
                                                                    key: Key(
                                                                        'Keyedn_${gcUsersIndex}_of_${gcUsers.length}'),
                                                                    cpUserDt:
                                                                        gcUsersItem,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 12.0)),
                                              ),
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .cpDropdownDepartmentsCompanyModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              CpDropdownDepartmentsCompanyWidget(
                                                            cpCompanyId:
                                                                FFAppState()
                                                                    .stCompanySelected
                                                                    .id,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    if (_model
                                                            .cpDropdownDepartmentsCompanyModel
                                                            .dropdownDepartmentsCompanyValue !=
                                                        null)
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .cpDropdownProfilesDepartmentModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                CpDropdownProfilesDepartmentWidget(
                                                              cpDepartmentId: _model
                                                                  .cpDropdownDepartmentsCompanyModel
                                                                  .dropdownDepartmentsCompanyValue!,
                                                              cpHintText:
                                                                  'Perfil',
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 80.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: FutureBuilder<
                                                          List<VUsersRow>>(
                                                        future: VUsersTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eqOrNull(
                                                                'profile_id',
                                                                _model
                                                                    .cpDropdownProfilesDepartmentModel
                                                                    .dropdownProfilesDepartmentValue,
                                                              )
                                                              .order(
                                                                  'name_short',
                                                                  ascending:
                                                                      true),
                                                        ),
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
                                                          List<VUsersRow>
                                                              listViewVUsersRowList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .separated(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            itemCount:
                                                                listViewVUsersRowList
                                                                    .length,
                                                            separatorBuilder: (_,
                                                                    __) =>
                                                                SizedBox(
                                                                    width: 8.0),
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewVUsersRow =
                                                                  listViewVUsersRowList[
                                                                      listViewIndex];
                                                              return CpUserPicProfileWidget(
                                                                key: Key(
                                                                    'Keyrm6_${listViewIndex}_of_${listViewVUsersRowList.length}'),
                                                                cpSize: 60,
                                                                imgUrl:
                                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${listViewVUsersRow.imgFilePath}/${listViewVUsersRow.imgFileName}',
                                                                toolTip:
                                                                    listViewVUsersRow
                                                                        .nameShort!,
                                                                isAvailable:
                                                                    true,
                                                                isOrderVisitIdInProgress:
                                                                    false,
                                                                displayAvailable:
                                                                    false,
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 100.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderRadius: 20.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent1,
                                                            icon: Icon(
                                                              Icons.add,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              if (FFAppState()
                                                                      .stUserCurrent
                                                                      .companyId ==
                                                                  1) {
                                                                await CfgProfilesPermissionsTable()
                                                                    .insert({
                                                                  'profile_id': _model
                                                                      .cpDropdownProfilesDepartmentModel
                                                                      .dropdownProfilesDepartmentValue,
                                                                  'app_page_id': _model
                                                                      .cpDropdownAppPagesModel
                                                                      .dropdownAppPagesValue,
                                                                });
                                                              } else {
                                                                await CfgProfilesPermissionsTable()
                                                                    .insert({
                                                                  'profile_id': _model
                                                                      .cpDropdownProfilesDepartmentModel
                                                                      .dropdownProfilesDepartmentValue,
                                                                  'app_page_id': _model
                                                                      .cpDropdownAppPagesProvidersModel
                                                                      .dropdownAppPagesProvidersValue,
                                                                });
                                                              }

                                                              safeSetState(() =>
                                                                  _model.requestCompleter =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted();
                                                            },
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (FFAppState()
                                                                      .stUserCurrent
                                                                      .companyId ==
                                                                  1) {
                                                                return wrapWithModel(
                                                                  model: _model
                                                                      .cpDropdownAppPagesModel,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      CpDropdownAppPagesWidget(
                                                                    cpHintText:
                                                                        'Acesso',
                                                                  ),
                                                                );
                                                              } else {
                                                                return wrapWithModel(
                                                                  model: _model
                                                                      .cpDropdownAppPagesProvidersModel,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      CpDropdownAppPagesProvidersWidget(
                                                                    cpHintText:
                                                                        'Acesso',
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FutureBuilder<
                                                            List<
                                                                VProfilesPermissionsRow>>(
                                                          future: (_model
                                                                      .requestCompleter ??=
                                                                  Completer<
                                                                      List<
                                                                          VProfilesPermissionsRow>>()
                                                                    ..complete(
                                                                        VProfilesPermissionsTable()
                                                                            .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'profile_id',
                                                                            _model.cpDropdownProfilesDepartmentModel.dropdownProfilesDepartmentValue,
                                                                          )
                                                                          .order('app_page_description', ascending: true),
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
                                                            List<VProfilesPermissionsRow>
                                                                listViewPermissionsVProfilesPermissionsRowList =
                                                                snapshot.data!;

                                                            return ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewPermissionsVProfilesPermissionsRowList
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          8.0),
                                                              itemBuilder: (context,
                                                                  listViewPermissionsIndex) {
                                                                final listViewPermissionsVProfilesPermissionsRow =
                                                                    listViewPermissionsVProfilesPermissionsRowList[
                                                                        listViewPermissionsIndex];
                                                                return CpSettingsProfilePermissionListItemWidget(
                                                                  key: Key(
                                                                      'Keyn4s_${listViewPermissionsIndex}_of_${listViewPermissionsVProfilesPermissionsRowList.length}'),
                                                                  cpRowProfilePermission:
                                                                      listViewPermissionsVProfilesPermissionsRow,
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
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
                          ].divide(SizedBox(height: 8.0)),
                        ),
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

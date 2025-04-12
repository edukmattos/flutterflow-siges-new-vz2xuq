import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/settings/cp_contracts_services_list_item/cp_contracts_services_list_item_widget.dart';
import '/pages/settings/cp_settings_company_contract_show_card/cp_settings_company_contract_show_card_widget.dart';
import '/pages/settings/cp_settings_company_show_card/cp_settings_company_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_settings_company_contract_details_model.dart';
export 'pg_settings_company_contract_details_model.dart';

class PgSettingsCompanyContractDetailsWidget extends StatefulWidget {
  const PgSettingsCompanyContractDetailsWidget({super.key});

  static String routeName = 'pgSettingsCompanyContractDetails';
  static String routePath = 'pgSettingsCompanyContractDetails';

  @override
  State<PgSettingsCompanyContractDetailsWidget> createState() =>
      _PgSettingsCompanyContractDetailsWidgetState();
}

class _PgSettingsCompanyContractDetailsWidgetState
    extends State<PgSettingsCompanyContractDetailsWidget>
    with TickerProviderStateMixin {
  late PgSettingsCompanyContractDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => PgSettingsCompanyContractDetailsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
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
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'rez7y8zq' /* Contrato */,
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
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.cpSettingsCompanyShowCardModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpSettingsCompanyShowCardWidget(),
                        ),
                        wrapWithModel(
                          model: _model.cpSettingsCompanyContractShowCardModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpSettingsCompanyContractShowCardWidget(),
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
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  unselectedLabelStyle: TextStyle(),
                                  labelColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  backgroundColor: FlutterFlowTheme.of(context)
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
                                      text: FFLocalizations.of(context).getText(
                                        'ppgks1ne' /* Gestores */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'ge1jexze' /* Serviços */,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 12.0),
                                      child: FutureBuilder<List<VUsersRow>>(
                                        future: VUsersTable().queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'department_id',
                                                FFAppState()
                                                    .stUserCurrent
                                                    .departmentId,
                                              )
                                              .eqOrNull(
                                                'status_id',
                                                2,
                                              )
                                              .order('name_short',
                                                  ascending: true),
                                        ),
                                        builder: (context, snapshot) {
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<VUsersRow>
                                              containerVUsersRowList =
                                              snapshot.data!;

                                          return Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FutureBuilder<
                                                          List<
                                                              VContractsManagersRow>>(
                                                        future:
                                                            VContractsManagersTable()
                                                                .queryRows(
                                                          queryFn: (q) =>
                                                              q.eqOrNull(
                                                            'contract_id',
                                                            FFAppState()
                                                                .stContractSelected
                                                                .id,
                                                          ),
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
                                                          List<VContractsManagersRow>
                                                              containerVContractsManagersRowList =
                                                              snapshot.data!;

                                                          return Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              minHeight: 0.0,
                                                              maxHeight: 150.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Visibility(
                                                              visible:
                                                                  containerVContractsManagersRowList
                                                                          .length >
                                                                      0,
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final gcManagers =
                                                                      containerVContractsManagersRowList
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                  return ListView
                                                                      .separated(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    primary:
                                                                        false,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount:
                                                                        gcManagers
                                                                            .length,
                                                                    separatorBuilder: (_,
                                                                            __) =>
                                                                        SizedBox(
                                                                            width:
                                                                                12.0),
                                                                    itemBuilder:
                                                                        (context,
                                                                            gcManagersIndex) {
                                                                      final gcManagersItem =
                                                                          gcManagers[
                                                                              gcManagersIndex];
                                                                      return Container(
                                                                        width:
                                                                            120.0,
                                                                        height:
                                                                            80.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x34090F13),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            AlignedTooltip(
                                                                          content:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'i3sch5w7' /* Remover */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          offset:
                                                                              4.0,
                                                                          preferredDirection:
                                                                              AxisDirection.down,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              4.0,
                                                                          tailBaseWidth:
                                                                              24.0,
                                                                          tailLength:
                                                                              12.0,
                                                                          waitDuration:
                                                                              Duration(milliseconds: 100),
                                                                          showDuration:
                                                                              Duration(milliseconds: 1500),
                                                                          triggerMode:
                                                                              TooltipTriggerMode.tap,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(12.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Stack(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  children: [
                                                                                    Container(
                                                                                      child: CpUserPicProfileWidget(
                                                                                        key: Key('Keypsc_${gcManagersIndex}_of_${gcManagers.length}'),
                                                                                        cpSize: 70,
                                                                                        imgUrl: '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcManagersItem.managerImgFilePath}/${gcManagersItem.managerImgFileName}',
                                                                                        toolTip: gcManagersItem.nameShort!,
                                                                                        isAvailable: false,
                                                                                        isOrderVisitIdInProgress: false,
                                                                                        displayAvailable: false,
                                                                                        cpBorderWidth: 0,
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, -1.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                                                                                        child: FlutterFlowIconButton(
                                                                                          borderColor: FlutterFlowTheme.of(context).info,
                                                                                          borderRadius: 16.0,
                                                                                          borderWidth: 3.0,
                                                                                          buttonSize: 36.0,
                                                                                          fillColor: FlutterFlowTheme.of(context).error,
                                                                                          icon: FaIcon(
                                                                                            FontAwesomeIcons.trashAlt,
                                                                                            color: FlutterFlowTheme.of(context).info,
                                                                                            size: 16.0,
                                                                                          ),
                                                                                          showLoadingIndicator: true,
                                                                                          onPressed: () async {
                                                                                            await ContractsManagersTable().delete(
                                                                                              matchingRows: (rows) => rows.eqOrNull(
                                                                                                'id',
                                                                                                gcManagersItem.id,
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      gcManagersItem.nameShort,
                                                                                      'nameShort',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cpInputTextModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputTextWidget(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final gcUsers =
                                                                      containerVUsersRowList
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    primary:
                                                                        false,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        gcUsers
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            gcUsersIndex) {
                                                                      final gcUsersItem =
                                                                          gcUsers[
                                                                              gcUsersIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            functions.cfSearchResultsFilter(_model.cpInputTextModel.inputTextTextController.text, gcUsersItem.nameFull!) ??
                                                                                true,
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              12.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                70.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: Color(0x32000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            CpUserPicProfileWidget(
                                                                                              key: Key('Keyysl_${gcUsersIndex}_of_${gcUsers.length}'),
                                                                                              cpSize: 50,
                                                                                              imgUrl: '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcUsersItem.imgFilePath}/${gcUsersItem.imgFileName}',
                                                                                              toolTip: gcUsersItem.nameShort!,
                                                                                              isAvailable: false,
                                                                                              isOrderVisitIdInProgress: false,
                                                                                              displayAvailable: false,
                                                                                              cpBorderWidth: 0,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    gcUsersItem.nameFull,
                                                                                                    'nameFull',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                      ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      gcUsersItem.teamCode,
                                                                                                      'teamDescription',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        FlutterFlowIconButton(
                                                                                          borderColor: FlutterFlowTheme.of(context).primary,
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
                                                                                            var _shouldSetState = false;
                                                                                            _model.resContractManager = await VContractsManagersTable().queryRows(
                                                                                              queryFn: (q) => q
                                                                                                  .eqOrNull(
                                                                                                    'manager_id',
                                                                                                    gcUsersItem.id,
                                                                                                  )
                                                                                                  .eqOrNull(
                                                                                                    'contract_id',
                                                                                                    FFAppState().stContractSelected.id,
                                                                                                  ),
                                                                                            );
                                                                                            _shouldSetState = true;
                                                                                            if (_model.resContractManager?.length == 1) {
                                                                                              await showDialog(
                                                                                                context: context,
                                                                                                builder: (alertDialogContext) {
                                                                                                  return AlertDialog(
                                                                                                    title: Text('Ops ...'),
                                                                                                    content: Text('Já associado !'),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                        child: Text('Ok'),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              );
                                                                                              if (_shouldSetState) safeSetState(() {});
                                                                                              return;
                                                                                            } else {
                                                                                              await ContractsManagersTable().insert({
                                                                                                'contract_id': FFAppState().stContractSelected.id,
                                                                                                'manager_id': gcUsersItem.id,
                                                                                              });
                                                                                              if (_shouldSetState) safeSetState(() {});
                                                                                              return;
                                                                                            }

                                                                                            if (_shouldSetState) safeSetState(() {});
                                                                                          },
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
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
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 12.0)),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius: 16.0,
                                                borderWidth: 6.0,
                                                buttonSize: 50.0,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.plusCircle,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                showLoadingIndicator: true,
                                                onPressed: () async {
                                                  context.pushNamed(
                                                      PgSettingsCompanyContractServicesSearchWidget
                                                          .routeName);
                                                },
                                              ),
                                            ],
                                          ),
                                          FutureBuilder<
                                              List<VContractsServicesRow>>(
                                            future: VContractsServicesTable()
                                                .queryRows(
                                              queryFn: (q) => q
                                                  .eqOrNull(
                                                    'contract_id',
                                                    FFAppState()
                                                        .stContractSelected
                                                        .id,
                                                  )
                                                  .order('description',
                                                      ascending: true),
                                            ),
                                            builder: (context, snapshot) {
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
                                              List<VContractsServicesRow>
                                                  listViewServicesVContractsServicesRowList =
                                                  snapshot.data!;

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewServicesVContractsServicesRowList
                                                        .length,
                                                itemBuilder: (context,
                                                    listViewServicesIndex) {
                                                  final listViewServicesVContractsServicesRow =
                                                      listViewServicesVContractsServicesRowList[
                                                          listViewServicesIndex];
                                                  return CpContractsServicesListItemWidget(
                                                    key: Key(
                                                        'Keypsg_${listViewServicesIndex}_of_${listViewServicesVContractsServicesRowList.length}'),
                                                    cpContractService:
                                                        listViewServicesVContractsServicesRow,
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

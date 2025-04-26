import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_ove_processing_users/cp_ove_processing_users_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/dashboard/cp_d_b_admin_nav_bar/cp_d_b_admin_nav_bar_widget.dart';
import '/pages/orders_visits_extras/cp_db_admin_ove_card/cp_db_admin_ove_card_widget.dart';
import '/pages/orders_visits_extras/md_db_admin_filters_ove/md_db_admin_filters_ove_widget.dart';
import '/pages/orders_visits_extras/md_o_v_e_create/md_o_v_e_create_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_db_admin_o_new_model.dart';
export 'pg_db_admin_o_new_model.dart';

class PgDbAdminONewWidget extends StatefulWidget {
  const PgDbAdminONewWidget({super.key});

  static String routeName = 'pgDbAdminONew';
  static String routePath = 'pgDbAdminONew';

  @override
  State<PgDbAdminONewWidget> createState() => _PgDbAdminONewWidgetState();
}

class _PgDbAdminONewWidgetState extends State<PgDbAdminONewWidget> {
  late PgDbAdminONewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDbAdminONewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stDBAdminNavBarOption = 'orders';
      safeSetState(() {});
      // Direciona para o block correto ao submeter o formulario de filtros. O ou Ove
      FFAppState().updateStFiltersOVEStruct(
        (e) => e..pgAdmin = 'O',
      );
      safeSetState(() {});
      await Future.wait([
        Future(() async {
          await action_blocks.abDBAdminOFilters(
            context,
            abSystemsParent: FFAppState().stFiltersServices.systemsParent,
            abSystems: FFAppState().stFiltersServices.systems,
            abUnits: FFAppState().stFiltersServices.units,
            abOTypesSubs: FFAppState().stFiltersServices.ordersTypesSubs,
            abContracts: FFAppState().stFiltersServices.contracts,
            abCompanies: FFAppState().stFiltersServices.companies,
            abOPlans: FFAppState().stFiltersServices.ordersPlans,
            abOObjects: FFAppState().stFiltersServices.ordersObjects,
            abTeams: FFAppState().stFiltersServices.teams,
            abUnitsTypesParent: FFAppState().stFiltersServices.unitsTypesParent,
            abUnitsTypes: FFAppState().stFiltersServices.unitsTypes,
            abOTypes: FFAppState().stFiltersServices.ordersTypes,
          );
          safeSetState(() {});
          await actions.caSupabaseDisconnect(
            'orders',
          );
          await Future.delayed(const Duration(milliseconds: 2000));
          await actions.caSupabaseConnect(
            'orders',
            () async {
              await action_blocks.abDBAdminOFilters(
                context,
                abSystemsParent: FFAppState().stFiltersServices.systemsParent,
                abSystems: FFAppState().stFiltersServices.systems,
                abUnits: FFAppState().stFiltersServices.units,
                abOTypesSubs: FFAppState().stFiltersServices.ordersTypesSubs,
                abContracts: FFAppState().stFiltersServices.contracts,
                abCompanies: FFAppState().stFiltersServices.companies,
                abOPlans: FFAppState().stFiltersServices.ordersPlans,
                abOObjects: FFAppState().stFiltersServices.ordersObjects,
                abTeams: FFAppState().stFiltersServices.teams,
                abUnitsTypesParent:
                    FFAppState().stFiltersServices.unitsTypesParent,
                abUnitsTypes: FFAppState().stFiltersServices.unitsTypes,
                abOTypes: FFAppState().stFiltersServices.ordersTypes,
              );
            },
          );
        }),
        Future(() async {
          await action_blocks.abDBAdminUsersAvailable(
            context,
            abSystemsParent: FFAppState().stFiltersServices.systemsParent,
            abSystems: FFAppState().stFiltersServices.systems,
            abUnits: FFAppState().stFiltersServices.units,
            abOTypesSubs: FFAppState().stFiltersServices.ordersTypesSubs,
            abUnitsTypesParent: FFAppState().stFiltersServices.unitsTypesParent,
            abContracts: FFAppState().stFiltersServices.contracts,
            abOTypes: FFAppState().stFiltersServices.ordersTypes,
            abOPlans: FFAppState().stFiltersServices.ordersPlans,
            abOObjects: FFAppState().stFiltersServices.ordersObjects,
          );
          safeSetState(() {});
          await actions.caSupabaseDisconnect(
            'users',
          );
          await Future.delayed(const Duration(milliseconds: 2000));
          await actions.caSupabaseConnect(
            'users',
            () async {
              await action_blocks.abDBAdminUsersAvailable(context);
            },
          );
        }),
        Future(() async {
          await action_blocks.abFiltersServicesCount(context);
          safeSetState(() {});
        }),
        Future(() async {
          await actions.caSupabaseDisconnect(
            'orders_visits_extras',
          );
          await Future.delayed(const Duration(milliseconds: 2000));
          await actions.caSupabaseConnect(
            'orders_visits_extras',
            () async {
              await action_blocks.abDbAdminOOVENoFiledFilters(context);
            },
          );
        }),
      ]);
    });

    _model.tfOveIdTextController ??= TextEditingController();
    _model.tfOveIdFocusNode ??= FocusNode();

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
          title: Text(
            FFLocalizations.of(context).getText(
              'm5r5fsb7' /* Painel Geral */,
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
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'ecvu6k5j' /* Disponibilidade */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: 100.0,
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final gcUsersAvailable =
                                                      FFAppState()
                                                          .stDBAdminUsersAvailabe
                                                          .map((e) => e)
                                                          .toList()
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.nameShort,
                                                              desc: false)
                                                          .toList();

                                                  return ListView.separated(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      12.0,
                                                      0,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        gcUsersAvailable.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(width: 12.0),
                                                    itemBuilder: (context,
                                                        gcUsersAvailableIndex) {
                                                      final gcUsersAvailableItem =
                                                          gcUsersAvailable[
                                                              gcUsersAvailableIndex];
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Stack(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              children: [
                                                                Opacity(
                                                                  opacity: !gcUsersAvailableItem
                                                                              .isAvailable &&
                                                                          !gcUsersAvailableItem
                                                                              .isOvInProgress
                                                                      ? 0.5
                                                                      : 1.0,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      _model.lpsvOTeamId =
                                                                          gcUsersAvailableItem
                                                                              .teamId;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        CpUserPicProfileWidget(
                                                                      key: Key(
                                                                          'Keym30_${gcUsersAvailableIndex}_of_${gcUsersAvailable.length}'),
                                                                      cpSize:
                                                                          60,
                                                                      imgUrl:
                                                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcUsersAvailableItem.imgFilePath}/${gcUsersAvailableItem.imgFileName}',
                                                                      toolTip:
                                                                          gcUsersAvailableItem
                                                                              .nameShort,
                                                                      isAvailable:
                                                                          gcUsersAvailableItem
                                                                              .isAvailable,
                                                                      isOrderVisitIdInProgress:
                                                                          gcUsersAvailableItem
                                                                              .isOvInProgress,
                                                                      displayAvailable:
                                                                          true,
                                                                      cpBorderWidth:
                                                                          6,
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (!gcUsersAvailableItem
                                                                    .isAvailable)
                                                                  Icon(
                                                                    Icons.block,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 60.0,
                                                                  ),
                                                              ],
                                                            ),
                                                            Text(
                                                              gcUsersAvailableItem
                                                                  .nameShort,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    font: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
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
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                            Flex(
                              direction:
                                  (MediaQuery.sizeOf(context).width > 400.0)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'l44y6fov' /* Serviços Extras */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ytpbii4x' /* Atualização automática */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 16.0,
                                        borderWidth: 6.0,
                                        buttonSize: 54.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.plusCircle,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          _model.isAllowedOveCreate =
                                              await action_blocks.abGuardian(
                                            context,
                                            abPgRequestedId: 28,
                                          );
                                          _shouldSetState = true;
                                          if (_model.isAllowedOveCreate!) {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: MdOVECreateWidget(),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          } else {
                                            context.pushNamed(
                                                PgNotAllowedWidget.routeName);

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                        },
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 150.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(),
                                            child: TextFormField(
                                              controller:
                                                  _model.tfOveIdTextController,
                                              focusNode:
                                                  _model.tfOveIdFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.tfOveIdTextController',
                                                Duration(milliseconds: 2000),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              autofillHints: [
                                                AutofillHints.name
                                              ],
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '49sw2d44' /* SE nr */,
                                                ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 12.0,
                                                            0.0, 12.0),
                                                suffixIcon: _model
                                                        .tfOveIdTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .tfOveIdTextController
                                                              ?.clear();
                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.clear,
                                                          color:
                                                              Color(0xFF757575),
                                                          size: 22.0,
                                                        ),
                                                      )
                                                    : null,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              keyboardType:
                                                  TextInputType.number,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfOveIdTextControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                if (!isAndroid && !isiOS)
                                                  TextInputFormatter
                                                      .withFunction(
                                                          (oldValue, newValue) {
                                                    return TextEditingValue(
                                                      selection:
                                                          newValue.selection,
                                                      text: newValue.text
                                                          .toCapitalization(
                                                              TextCapitalization
                                                                  .none),
                                                    );
                                                  }),
                                              ],
                                            ),
                                          ),
                                          AlignedTooltip(
                                            content: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '6c4w9e5y' /* Busca rápida */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            offset: 4.0,
                                            preferredDirection:
                                                AxisDirection.down,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            elevation: 4.0,
                                            tailBaseWidth: 24.0,
                                            tailLength: 12.0,
                                            waitDuration:
                                                Duration(milliseconds: 100),
                                            showDuration:
                                                Duration(milliseconds: 1500),
                                            triggerMode: TooltipTriggerMode.tap,
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius: 16.0,
                                              borderWidth: 6.0,
                                              buttonSize: 54.0,
                                              icon: Icon(
                                                Icons.flash_on,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 30.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                await action_blocks
                                                    .abOveSearchById(
                                                  context,
                                                  abOveId: int.tryParse(_model
                                                      .tfOveIdTextController
                                                      .text),
                                                );
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 4.0)),
                                      ),
                                      AlignedTooltip(
                                        content: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '6iirir4c' /* Busca por data */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        offset: 4.0,
                                        preferredDirection: AxisDirection.down,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        elevation: 4.0,
                                        tailBaseWidth: 24.0,
                                        tailLength: 12.0,
                                        waitDuration:
                                            Duration(milliseconds: 100),
                                        showDuration:
                                            Duration(milliseconds: 1500),
                                        triggerMode: TooltipTriggerMode.tap,
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 16.0,
                                          borderWidth: 6.0,
                                          buttonSize: 54.0,
                                          icon: FaIcon(
                                            FontAwesomeIcons.calendarAlt,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 26.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {
                                            var _shouldSetState = false;
                                            final _datePickedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: getCurrentTimestamp,
                                              firstDate: DateTime(1900),
                                              lastDate: DateTime(2050),
                                              builder: (context, child) {
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
                                                            font: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineLarge,
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
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

                                            if (_datePickedDate != null) {
                                              safeSetState(() {
                                                _model.datePicked = DateTime(
                                                  _datePickedDate.year,
                                                  _datePickedDate.month,
                                                  _datePickedDate.day,
                                                );
                                              });
                                            } else if (_model.datePicked !=
                                                null) {
                                              safeSetState(() {
                                                _model.datePicked =
                                                    getCurrentTimestamp;
                                              });
                                            }
                                            FFAppState()
                                                .updateStFiltersOVEStruct(
                                              (e) => e
                                                ..dateStart =
                                                    functions.cfSetDatetime(
                                                        _model.datePicked!,
                                                        0,
                                                        0,
                                                        0)
                                                ..dateEnd =
                                                    functions.cfSetDatetime(
                                                        _model.datePicked!,
                                                        23,
                                                        59,
                                                        59),
                                            );
                                            safeSetState(() {});
                                            _model.resDBAdminOOVExtras =
                                                await ApiOrdersVisitsExtrasGroup
                                                    .apiOVEFiltersCall
                                                    .call(
                                              apiUrl: FFDevEnvironmentValues()
                                                  .envApiUrl,
                                              apiKey: FFDevEnvironmentValues()
                                                  .envApiKey,
                                              accessToken: currentJwtToken,
                                              oTypesIdsList: FFAppState()
                                                  .stFiltersOVE
                                                  .oTypesIds,
                                              teamsIdsList: FFAppState()
                                                  .stFiltersOVE
                                                  .teamsIds,
                                              unitsIdsList: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsIds,
                                              assetsTagsIdsList: FFAppState()
                                                  .stFiltersOVE
                                                  .assetsTagsIds,
                                              dateStart: functions
                                                  .cfConvDatetimeENToString(
                                                      FFAppState()
                                                          .stFiltersOVE
                                                          .dateStart!),
                                              dateEnd: functions
                                                  .cfConvDatetimeENToString(
                                                      FFAppState()
                                                          .stFiltersOVE
                                                          .dateEnd!),
                                              systemsParentsIdsList:
                                                  FFAppState()
                                                      .stFiltersOVE
                                                      .systemsParentsIds,
                                              systemsIdsList: FFAppState()
                                                  .stFiltersOVE
                                                  .systemsIds,
                                              unitsTypesParentsIdsList:
                                                  FFAppState()
                                                      .stFiltersOVE
                                                      .unitsTypesParentsIds,
                                              unitsTypesIdsList: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsTypesIds,
                                              oCausesReasonsIdsList:
                                                  FFAppState()
                                                      .stFiltersOVE
                                                      .oCausesReasonsIds,
                                            );

                                            _shouldSetState = true;
                                            if ((_model.resDBAdminOOVExtras
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState()
                                                  .stDBAdminOOVEFilters = ((_model
                                                                  .resDBAdminOOVExtras
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
                                                      .stDBAdminOOVEFilters
                                                      .length ==
                                                  0) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Nenhum registro localizado.',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                  ),
                                                );
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Ops...  Erro na busca de registros.',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
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

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      badges.Badge(
                                        badgeContent: Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .stFiltersOveCount
                                                .toString(),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        showBadge:
                                            FFAppState().stFiltersOveCount > 0,
                                        shape: badges.BadgeShape.circle,
                                        badgeColor: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        elevation: 4.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 8.0, 8.0),
                                        position: badges.BadgePosition.topEnd(),
                                        animationType:
                                            badges.BadgeAnimationType.scale,
                                        toAnimate: true,
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 16.0,
                                          borderWidth: 6.0,
                                          buttonSize: 54.0,
                                          icon: Icon(
                                            Icons.filter_alt,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 30.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {
                                            FFAppState()
                                                .updateStFiltersOVEStruct(
                                              (e) => e
                                                ..pgAdmin = 'OOVE'
                                                ..teamsIds = FFAppState()
                                                    .stFiltersOVE
                                                    .teamsIds
                                                    .toList()
                                                ..unitsIds = FFAppState()
                                                    .stFiltersOVE
                                                    .unitsIds
                                                    .toList()
                                                ..oTypesIds = FFAppState()
                                                    .stFiltersOVE
                                                    .oTypesIds
                                                    .toList()
                                                ..assetsTagsIds = FFAppState()
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
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        MdDbAdminFiltersOveWidget(),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                badges.Badge(
                                                  badgeContent: Text(
                                                    FFAppState()
                                                        .stDBAdminOOVEFilters
                                                        .where((e) =>
                                                            e.processingId == 1)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  showBadge: FFAppState()
                                                          .stDBAdminOOVEFilters
                                                          .where((e) =>
                                                              e.processingId ==
                                                              1)
                                                          .toList()
                                                          .length >
                                                      0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                    buttonSize: 54.0,
                                                    icon: Icon(
                                                      Icons.draw,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 30.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .stOVEProcessingId = 1;
                                                      FFAppState()
                                                          .stOVEIsFiled = false;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                badges.Badge(
                                                  badgeContent: Text(
                                                    FFAppState()
                                                        .stDBAdminOOVEFilters
                                                        .where((e) =>
                                                            e.processingId == 2)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  showBadge: FFAppState()
                                                          .stDBAdminOOVEFilters
                                                          .where((e) =>
                                                              e.processingId ==
                                                              2)
                                                          .toList()
                                                          .length >
                                                      0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                            .tertiary,
                                                    borderRadius: 16.0,
                                                    borderWidth: 6.0,
                                                    buttonSize: 54.0,
                                                    icon: Icon(
                                                      Icons
                                                          .report_problem_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      size: 30.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .stOVEProcessingId = 2;
                                                      FFAppState()
                                                          .stOVEIsFiled = false;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                badges.Badge(
                                                  badgeContent: Text(
                                                    FFAppState()
                                                        .stDBAdminOOVEFilters
                                                        .where((e) =>
                                                            e.processingId == 3)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  showBadge: FFAppState()
                                                          .stDBAdminOOVEFilters
                                                          .where((e) =>
                                                              e.processingId ==
                                                              3)
                                                          .toList()
                                                          .length >
                                                      0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                            .secondaryText,
                                                    borderRadius: 16.0,
                                                    borderWidth: 6.0,
                                                    buttonSize: 54.0,
                                                    icon: Icon(
                                                      Icons
                                                          .remove_red_eye_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 30.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .stOVEProcessingId = 3;
                                                      FFAppState()
                                                          .stOVEIsFiled = false;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                badges.Badge(
                                                  badgeContent: Text(
                                                    FFAppState()
                                                        .stDBAdminOOVEFilters
                                                        .where((e) =>
                                                            e.processingId == 4)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  showBadge: FFAppState()
                                                          .stDBAdminOOVEFilters
                                                          .where((e) =>
                                                              e.processingId ==
                                                              4)
                                                          .toList()
                                                          .length >
                                                      0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                            .error,
                                                    borderRadius: 16.0,
                                                    borderWidth: 6.0,
                                                    buttonSize: 54.0,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons
                                                          .thumbsDown,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      size: 30.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .stOVEProcessingId = 4;
                                                      FFAppState()
                                                          .stOVEIsFiled = false;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                badges.Badge(
                                                  badgeContent: Text(
                                                    FFAppState()
                                                        .stDBAdminOOVEFilters
                                                        .where((e) =>
                                                            (e.processingId ==
                                                                5) &&
                                                            (e.isFiled ==
                                                                false))
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  showBadge: FFAppState()
                                                          .stDBAdminOOVEFilters
                                                          .where((e) =>
                                                              (e.processingId ==
                                                                  5) &&
                                                              (e.isFiled ==
                                                                  false))
                                                          .toList()
                                                          .length >
                                                      0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                            .success,
                                                    borderRadius: 16.0,
                                                    borderWidth: 6.0,
                                                    buttonSize: 54.0,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons.thumbsUp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      size: 30.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .stOVEProcessingId = 5;
                                                      FFAppState()
                                                          .stOVEIsFiled = false;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(width: 12.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                              ].divide(
                                  (MediaQuery.sizeOf(context).width > 400.0)
                                      ? SizedBox(width: 12.0)
                                      : SizedBox(height: 12.0)),
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
                                              .stDBAdminOOVEFilters
                                              .where((e) =>
                                                  (e.processingId ==
                                                      valueOrDefault<int>(
                                                        FFAppState()
                                                            .stOVEProcessingId,
                                                        1,
                                                      )) &&
                                                  (e.isFiled ==
                                                      FFAppState()
                                                          .stOVEIsFiled))
                                              .toList()
                                              .map((e) => e)
                                              .toList()
                                              .sortedList(
                                                  keyOf: (e) => e.startedAt,
                                                  desc: true)
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
                                                      'Keyn8q_${gcOVEFiltersIndex}_of_${gcOVEFilters.length}'),
                                                  cpDtOVE: gcOVEFiltersItem,
                                                ),
                                                back:
                                                    CpOveProcessingUsersWidget(
                                                  key: Key(
                                                      'Key5a6_${gcOVEFiltersIndex}_of_${gcOVEFilters.length}'),
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
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.cpDBAdminNavBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBAdminNavBarWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

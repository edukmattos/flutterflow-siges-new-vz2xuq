import '/backend/supabase/supabase.dart';
import '/components/cp_o_p_card_back_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/dashboard/cp_d_b_admin_nav_bar/cp_d_b_admin_nav_bar_widget.dart';
import '/pages/dashboard/cp_d_b_admin_o_list_item/cp_d_b_admin_o_list_item_widget.dart';
import '/pages/dashboard/cp_d_b_admin_o_p_show_mini/cp_d_b_admin_o_p_show_mini_widget.dart';
import '/pages/dashboard/md_d_b_admin_filters_services/md_d_b_admin_filters_services_widget.dart';
import '/pages/orders_visits_extras/cp_d_b_admin_o_v_e_list_item/cp_d_b_admin_o_v_e_list_item_widget.dart';
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
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_d_b_admin_o_model.dart';
export 'pg_d_b_admin_o_model.dart';

class PgDBAdminOWidget extends StatefulWidget {
  const PgDBAdminOWidget({super.key});

  static String routeName = 'pgDBAdminO';
  static String routePath = 'pgDBAdminO';

  @override
  State<PgDBAdminOWidget> createState() => _PgDBAdminOWidgetState();
}

class _PgDBAdminOWidgetState extends State<PgDBAdminOWidget>
    with TickerProviderStateMixin {
  late PgDBAdminOModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDBAdminOModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stDBAdminNavBarOption = 'orders';
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
      ]);
    });

    _model.textFieldOTextController1 ??= TextEditingController();
    _model.textFieldOFocusNode1 ??= FocusNode();

    _model.textFieldOTextController2 ??= TextEditingController();
    _model.textFieldOFocusNode2 ??= FocusNode();

    _model.textFieldOTextController3 ??= TextEditingController(
        text: functions.cfDateGetYear(getCurrentTimestamp).toString());
    _model.textFieldOFocusNode3 ??= FocusNode();

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
      'textOnPageLoadAnimation1': AnimationInfo(
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
      'containerOnPageLoadAnimation1': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
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
      'containerOnPageLoadAnimation6': AnimationInfo(
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
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
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
      'containerOnPageLoadAnimation7': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation8': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation9': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation10': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
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
      child: WillPopScope(
        onWillPop: () async => false,
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
                'sdzl4y99' /* Painel Geral */,
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
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 75.0,
                      maxHeight: 190.0,
                    ),
                    decoration: BoxDecoration(),
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
                      padding: EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 6.0, 0.0, 6.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 300.0,
                                        constraints: BoxConstraints(
                                          minHeight: 0.0,
                                          maxHeight: FFAppState()
                                                      .stOPFiltersResults
                                                      .length >
                                                  0
                                              ? 300.0
                                              : 0.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            if (FFAppState()
                                                    .stUserCurrent
                                                    .companyId ==
                                                1) {
                                              return Builder(
                                                builder: (context) {
                                                  final gcOVEFilters =
                                                      FFAppState()
                                                          .stDBAdminOOVEFilters
                                                          .toList();

                                                  return ListView.separated(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                      0.0,
                                                      0,
                                                      0,
                                                      0,
                                                    ),
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        gcOVEFilters.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(width: 12.0),
                                                    itemBuilder: (context,
                                                        gcOVEFiltersIndex) {
                                                      final gcOVEFiltersItem =
                                                          gcOVEFilters[
                                                              gcOVEFiltersIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Container(
                                                          width: 500.0,
                                                          height: 300.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child:
                                                              CpDBAdminOVEListItemWidget(
                                                            key: Key(
                                                                'Keyoi8_${gcOVEFiltersIndex}_of_${gcOVEFilters.length}'),
                                                            cpIsRedirect: false,
                                                            cpDtOVE:
                                                                gcOVEFiltersItem,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            } else {
                                              return Builder(
                                                builder: (context) {
                                                  final gcOFiltersStatusesProvidersA = FFAppState()
                                                      .stOFiltersResults
                                                      .where((e) =>
                                                          (e.statusId ==
                                                              _model
                                                                  .lpsvOrderStatusId) &&
                                                          (e.providerCompanyId ==
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .companyId))
                                                      .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        gcOFiltersStatusesProvidersA
                                                            .length,
                                                    itemBuilder: (context,
                                                        gcOFiltersStatusesProvidersAIndex) {
                                                      final gcOFiltersStatusesProvidersAItem =
                                                          gcOFiltersStatusesProvidersA[
                                                              gcOFiltersStatusesProvidersAIndex];
                                                      return Container(
                                                        width: 500.0,
                                                        height: 300.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child:
                                                            CpDBAdminOListItemWidget(
                                                          key: Key(
                                                              'Keymtw_${gcOFiltersStatusesProvidersAIndex}_of_${gcOFiltersStatusesProvidersA.length}'),
                                                          cpIsRedirect: false,
                                                          cpODt:
                                                              gcOFiltersStatusesProvidersAItem,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
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
                                          '1b73msdc' /* Serviços */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .headlineMedium,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '2idmdd1h' /* Atualização automática */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .labelSmall,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      AlignedTooltip(
                                        content: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'z2wvpj7n' /* Filtrar */,
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
                                                .secondaryBackground,
                                        elevation: 4.0,
                                        tailBaseWidth: 24.0,
                                        tailLength: 12.0,
                                        waitDuration:
                                            Duration(milliseconds: 100),
                                        showDuration:
                                            Duration(milliseconds: 1500),
                                        triggerMode: TooltipTriggerMode.tap,
                                        child: badges.Badge(
                                          badgeContent: Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                  .stFiltersServicesCount
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall,
                                                  color: Colors.white,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          showBadge: FFAppState()
                                                  .stFiltersServicesCount >
                                              0,
                                          shape: badges.BadgeShape.circle,
                                          badgeColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          elevation: 4.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 8.0, 8.0),
                                          position:
                                              badges.BadgePosition.topEnd(),
                                          animationType:
                                              badges.BadgeAnimationType.scale,
                                          toAnimate: true,
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius: 16.0,
                                            borderWidth: 6.0,
                                            buttonSize: 50.0,
                                            icon: Icon(
                                              Icons.filter_alt,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                useSafeArea: true,
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
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          MdDBAdminFiltersServicesWidget(
                                                        cpEntity: 'orders',
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
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
                                          FontAwesomeIcons.plusCircle,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          _model.isAllowedOPCreate =
                                              await action_blocks.abGuardian(
                                            context,
                                            abPgRequestedId: 6,
                                          );
                                          _shouldSetState = true;
                                          if (_model.isAllowedOPCreate!) {
                                            context.pushNamed(
                                                PgOPCreateWidget.routeName);
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
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldOTextController1,
                                              focusNode:
                                                  _model.textFieldOFocusNode1,
                                              autofocus: false,
                                              autofillHints: [
                                                AutofillHints.name
                                              ],
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'ky2mm49f' /* SS/OS */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
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
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .textFieldOTextController1Validator
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
                                          Expanded(
                                            child: Container(
                                              width: 100.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .textFieldOTextController2,
                                                focusNode:
                                                    _model.textFieldOFocusNode2,
                                                autofocus: false,
                                                autofillHints: [
                                                  AutofillHints.name
                                                ],
                                                textCapitalization:
                                                    TextCapitalization.none,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'javo5v7g' /* Seq */,
                                                  ),
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  errorStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 12.0,
                                                              0.0, 12.0),
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
                                                minLines: 1,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                validator: _model
                                                    .textFieldOTextController2Validator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  if (!isAndroid && !isiOS)
                                                    TextInputFormatter
                                                        .withFunction((oldValue,
                                                            newValue) {
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
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: 100.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .textFieldOTextController3,
                                                focusNode:
                                                    _model.textFieldOFocusNode3,
                                                autofocus: false,
                                                autofillHints: [
                                                  AutofillHints.name
                                                ],
                                                textCapitalization:
                                                    TextCapitalization.none,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'kt4k2hax' /* Ano */,
                                                  ),
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  errorStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 12.0,
                                                              0.0, 12.0),
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
                                                minLines: 1,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                validator: _model
                                                    .textFieldOTextController3Validator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  if (!isAndroid && !isiOS)
                                                    TextInputFormatter
                                                        .withFunction((oldValue,
                                                            newValue) {
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: ((_model.textFieldOTextController1
                                                                .text ==
                                                            '') ||
                                                    (_model.textFieldOTextController2
                                                                .text ==
                                                            '') ||
                                                    (_model.textFieldOTextController3
                                                                .text ==
                                                            ''))
                                                ? null
                                                : () async {
                                                    _model.resOrder =
                                                        await VOrdersTable()
                                                            .queryRows(
                                                      queryFn: (q) => q
                                                          .eqOrNull(
                                                            'order_mask',
                                                            '${_model.textFieldOTextController1.text}.${_model.textFieldOTextController2.text}.${_model.textFieldOTextController3.text}',
                                                          )
                                                          .eqOrNull(
                                                            'version_mode',
                                                            FFAppState()
                                                                .stAppVersionMode
                                                                ?.name,
                                                          ),
                                                    );
                                                    if (_model
                                                            .resOrder
                                                            ?.firstOrNull
                                                            ?.parentId ==
                                                        null) {
                                                      await action_blocks
                                                          .abOSelected(
                                                        context,
                                                        abOId: _model.resOrder
                                                            ?.firstOrNull?.id,
                                                        abIsParent: true,
                                                        abIsNew: false,
                                                      );

                                                      context.pushNamed(
                                                        PgOPShowWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'ppOPMenuOptions':
                                                              serializeParam(
                                                            true,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      await action_blocks
                                                          .abOSelected(
                                                        context,
                                                        abOId: _model.resOrder
                                                            ?.firstOrNull?.id,
                                                        abIsParent: false,
                                                        abIsNew: false,
                                                      );

                                                      context.pushNamed(
                                                        PgOShowWidget.routeName,
                                                        queryParameters: {
                                                          'ppIsRedirect':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    safeSetState(() {});
                                                  },
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (!true)
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          borderRadius: 16.0,
                                          borderWidth: 6.0,
                                          buttonSize: 50.0,
                                          icon: FaIcon(
                                            FontAwesomeIcons.globeAfrica,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 24.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {},
                                        ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              if (FFAppState().stUserCurrent.companyId == 1)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(6.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'vm1h6nu4' /* SS's Não Programadas (Acumulad... */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 4.0),
                                                  child: SafeArea(
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 110.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.lpsvOPFiltersDays =
                                                                  0;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAliasWithSaveLayer,
                                                              color: _model
                                                                          .lpsvOPFiltersDays ==
                                                                      0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              elevation: 5.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        16.0,
                                                                        20.0,
                                                                        16.0),
                                                                child:
                                                                    Container(
                                                                  width: 80.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFAppState()
                                                                            .stOPFiltersResults
                                                                            .where((e) =>
                                                                                (functions.cfGetDifIntDaysBetweenDates(e.requestedDatetime!, getCurrentTimestamp) == 0) &&
                                                                                (e.statusId == 1))
                                                                            .toList()
                                                                            .length
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).headlineLarge,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '83ux88wr' /* Hoje */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                font: FlutterFlowTheme.of(context).labelMedium,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.lpsvOPFiltersDays =
                                                                  1;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAliasWithSaveLayer,
                                                              color: _model
                                                                          .lpsvOPFiltersDays ==
                                                                      1
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              elevation: 5.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        16.0,
                                                                        20.0,
                                                                        16.0),
                                                                child:
                                                                    Container(
                                                                  width: 80.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFAppState()
                                                                            .stOPFiltersResults
                                                                            .where((e) =>
                                                                                (functions.cfGetDifIntDaysBetweenDates(e.requestedDatetime!, getCurrentTimestamp) <= 1) &&
                                                                                (e.statusId == 1))
                                                                            .toList()
                                                                            .length
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).headlineLarge,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '23e3zno1' /* Ontem */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).labelMedium,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.lpsvOPFiltersDays =
                                                                  7;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAliasWithSaveLayer,
                                                              color: _model
                                                                          .lpsvOPFiltersDays ==
                                                                      7
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              elevation: 5.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        16.0,
                                                                        20.0,
                                                                        16.0),
                                                                child:
                                                                    Container(
                                                                  width: 80.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFAppState()
                                                                            .stOPFiltersResults
                                                                            .where((e) =>
                                                                                (functions.cfGetDifIntDaysBetweenDates(e.requestedDatetime!, getCurrentTimestamp) <= 7) &&
                                                                                (e.statusId == 1))
                                                                            .toList()
                                                                            .length
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).headlineLarge,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '01h1si4u' /* 7 dias */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).labelMedium,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.lpsvOPFiltersDays =
                                                                  15;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAliasWithSaveLayer,
                                                              color: _model
                                                                          .lpsvOPFiltersDays ==
                                                                      15
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              elevation: 5.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        16.0,
                                                                        20.0,
                                                                        16.0),
                                                                child:
                                                                    Container(
                                                                  width: 80.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFAppState()
                                                                            .stOPFiltersResults
                                                                            .where((e) =>
                                                                                (functions.cfGetDifIntDaysBetweenDates(e.requestedDatetime!, getCurrentTimestamp) <= 15) &&
                                                                                (e.statusId == 1))
                                                                            .toList()
                                                                            .length
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).headlineLarge,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '6esfr7vn' /* 15 dias */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).labelMedium,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.lpsvOPFiltersDays =
                                                                  30;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAliasWithSaveLayer,
                                                              color: _model
                                                                          .lpsvOPFiltersDays ==
                                                                      30
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              elevation: 5.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        16.0,
                                                                        20.0,
                                                                        16.0),
                                                                child:
                                                                    Container(
                                                                  width: 80.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFAppState()
                                                                            .stOPFiltersResults
                                                                            .where((e) =>
                                                                                (functions.cfGetDifIntDaysBetweenDates(e.requestedDatetime!, getCurrentTimestamp) <= 30) &&
                                                                                (e.statusId == 1))
                                                                            .toList()
                                                                            .length
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).headlineLarge,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'v0yp2pov' /* 30 dias */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).labelMedium,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.lpsvOPFiltersDays =
                                                                  999999;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAliasWithSaveLayer,
                                                              color: _model
                                                                          .lpsvOPFiltersDays ==
                                                                      999999
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              elevation: 5.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        16.0,
                                                                        20.0,
                                                                        16.0),
                                                                child:
                                                                    Container(
                                                                  width: 80.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFAppState()
                                                                            .stOPFiltersResults
                                                                            .where((e) =>
                                                                                (functions.cfGetDifIntDaysBetweenDates(e.requestedDatetime!, getCurrentTimestamp) > 30) &&
                                                                                (e.statusId == 1))
                                                                            .toList()
                                                                            .length
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).headlineLarge,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'dvi626f9' /* > 30 dias */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).labelMedium,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 12.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (FFAppState()
                                              .stOPFiltersResults
                                              .where((e) =>
                                                  (functions.cfGetDifIntDaysBetweenDates(
                                                          e.requestedDatetime!,
                                                          getCurrentTimestamp) <=
                                                      _model
                                                          .lpsvOPFiltersDays) &&
                                                  (e.statusId == 1))
                                              .toList()
                                              .length >
                                          0)
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 6.0, 0.0, 6.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 280.0,
                                                  constraints: BoxConstraints(
                                                    minHeight: 0.0,
                                                    maxHeight: FFAppState()
                                                                .stOPFiltersResults
                                                                .length >
                                                            0
                                                        ? 300.0
                                                        : 0.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final gcOPStatus1 = FFAppState()
                                                          .stOPFiltersResults
                                                          .map((e) => e)
                                                          .toList()
                                                          .where((e) =>
                                                              (functions.cfGetDifIntDaysBetweenDates(
                                                                      e
                                                                          .requestedDatetime!,
                                                                      getCurrentTimestamp) <=
                                                                  _model
                                                                      .lpsvOPFiltersDays) &&
                                                              (e.statusId == 1))
                                                          .toList()
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.id,
                                                              desc: true)
                                                          .toList();

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          0.0,
                                                          0,
                                                          0,
                                                          0,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            gcOPStatus1.length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 12.0),
                                                        itemBuilder: (context,
                                                            gcOPStatus1Index) {
                                                          final gcOPStatus1Item =
                                                              gcOPStatus1[
                                                                  gcOPStatus1Index];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Container(
                                                              width: 400.0,
                                                              height: 280.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: FlipCard(
                                                                fill: Fill
                                                                    .fillBack,
                                                                direction:
                                                                    FlipDirection
                                                                        .HORIZONTAL,
                                                                speed: 400,
                                                                front:
                                                                    CpDBAdminOPShowMiniWidget(
                                                                  key: Key(
                                                                      'Key87d_${gcOPStatus1Index}_of_${gcOPStatus1.length}'),
                                                                  cpOPdt:
                                                                      gcOPStatus1Item,
                                                                ),
                                                                back:
                                                                    CpOPCardBackWidget(
                                                                  key: Key(
                                                                      'Keyw2z_${gcOPStatus1Index}_of_${gcOPStatus1.length}'),
                                                                  cpODt:
                                                                      gcOPStatus1Item,
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
                                    ],
                                  ),
                                ),
                              Container(
                                height: 130.0,
                                decoration: BoxDecoration(),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .stUserCurrent
                                                .companyId ==
                                            1) {
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5he4dxwn' /* OS's Abertas */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation1']!),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          AlignedTooltip(
                                                            content: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'erhhv8cu' /* Avaliação */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      font: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            offset: 4.0,
                                                            preferredDirection:
                                                                AxisDirection
                                                                    .down,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            elevation: 4.0,
                                                            tailBaseWidth: 24.0,
                                                            tailLength: 12.0,
                                                            waitDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        100),
                                                            showDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        1500),
                                                            triggerMode:
                                                                TooltipTriggerMode
                                                                    .tap,
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
                                                              onTap: () async {
                                                                _model.lpsvOrderStatusId =
                                                                    2;
                                                                _model.lpsvIsParent =
                                                                    false;
                                                                _model.lpsvOrdersOrVisits =
                                                                    'orders';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child:
                                                                  badges.Badge(
                                                                badgeContent:
                                                                    Text(
                                                                  FFAppState()
                                                                      .stOFiltersResults
                                                                      .where((e) =>
                                                                          e.statusId ==
                                                                          2)
                                                                      .toList()
                                                                      .length
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .titleSmall,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                showBadge: FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            e.statusId ==
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
                                                                        .primary,
                                                                elevation: 4.0,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                position: badges
                                                                        .BadgePosition
                                                                    .topEnd(),
                                                                animationType:
                                                                    badges
                                                                        .BadgeAnimationType
                                                                        .scale,
                                                                toAnimate: true,
                                                                child:
                                                                    Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      width:
                                                                          6.0,
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'nm4k7jqi' /* AV */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).titleSmall,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation1']!),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          AlignedTooltip(
                                                            content: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'gbngcs1n' /* Autorizadas */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      font: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            offset: 4.0,
                                                            preferredDirection:
                                                                AxisDirection
                                                                    .down,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            elevation: 4.0,
                                                            tailBaseWidth: 24.0,
                                                            tailLength: 12.0,
                                                            waitDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        100),
                                                            showDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        1500),
                                                            triggerMode:
                                                                TooltipTriggerMode
                                                                    .tap,
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
                                                              onTap: () async {
                                                                _model.lpsvOrderStatusId =
                                                                    3;
                                                                _model.lpsvIsParent =
                                                                    false;
                                                                _model.lpsvOrdersOrVisits =
                                                                    'orders';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child:
                                                                  badges.Badge(
                                                                badgeContent:
                                                                    Text(
                                                                  FFAppState()
                                                                      .stOFiltersResults
                                                                      .where((e) =>
                                                                          e.statusId ==
                                                                          3)
                                                                      .toList()
                                                                      .length
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .titleSmall,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                showBadge: FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            e.statusId ==
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
                                                                        .primary,
                                                                elevation: 4.0,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                position: badges
                                                                        .BadgePosition
                                                                    .topEnd(),
                                                                animationType:
                                                                    badges
                                                                        .BadgeAnimationType
                                                                        .scale,
                                                                toAnimate: true,
                                                                child:
                                                                    Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      width:
                                                                          6.0,
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'bdfgnf5w' /* AU */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).titleSmall,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation2']!),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          AlignedTooltip(
                                                            content: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'nhx2l28p' /* Agendadas */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      font: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            offset: 4.0,
                                                            preferredDirection:
                                                                AxisDirection
                                                                    .down,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            elevation: 4.0,
                                                            tailBaseWidth: 24.0,
                                                            tailLength: 12.0,
                                                            waitDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        100),
                                                            showDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        1500),
                                                            triggerMode:
                                                                TooltipTriggerMode
                                                                    .tap,
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
                                                              onTap: () async {
                                                                _model.lpsvOrderStatusId =
                                                                    4;
                                                                _model.lpsvIsParent =
                                                                    false;
                                                                _model.lpsvOrdersOrVisits =
                                                                    'orders';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child:
                                                                  badges.Badge(
                                                                badgeContent:
                                                                    Text(
                                                                  FFAppState()
                                                                      .stOFiltersResults
                                                                      .where((e) =>
                                                                          e.statusId ==
                                                                          4)
                                                                      .toList()
                                                                      .length
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .titleSmall,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                showBadge: FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            e.statusId ==
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
                                                                        .primary,
                                                                elevation: 4.0,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                position: badges
                                                                        .BadgePosition
                                                                    .topEnd(),
                                                                animationType:
                                                                    badges
                                                                        .BadgeAnimationType
                                                                        .scale,
                                                                toAnimate: true,
                                                                child:
                                                                    Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      width:
                                                                          6.0,
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '4xmd2tqi' /* AG */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).titleSmall,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation3']!),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          AlignedTooltip(
                                                            content: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'muyhgsl2' /* Agendadas */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      font: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            offset: 4.0,
                                                            preferredDirection:
                                                                AxisDirection
                                                                    .down,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                            elevation: 4.0,
                                                            tailBaseWidth: 24.0,
                                                            tailLength: 12.0,
                                                            waitDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        100),
                                                            showDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        1500),
                                                            triggerMode:
                                                                TooltipTriggerMode
                                                                    .tap,
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
                                                              onTap: () async {
                                                                _model.lpsvOrderStatusId =
                                                                    5;
                                                                _model.lpsvIsParent =
                                                                    false;
                                                                _model.lpsvOrdersOrVisits =
                                                                    'orders';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child:
                                                                  badges.Badge(
                                                                badgeContent:
                                                                    Text(
                                                                  FFAppState()
                                                                      .stOFiltersResults
                                                                      .where((e) =>
                                                                          e.statusId ==
                                                                          5)
                                                                      .toList()
                                                                      .length
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .titleSmall,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                showBadge: FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            e.statusId ==
                                                                            5)
                                                                        .toList()
                                                                        .length >
                                                                    0,
                                                                shape: badges
                                                                    .BadgeShape
                                                                    .circle,
                                                                badgeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                elevation: 4.0,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                position: badges
                                                                        .BadgePosition
                                                                    .topEnd(),
                                                                animationType:
                                                                    badges
                                                                        .BadgeAnimationType
                                                                        .scale,
                                                                toAnimate: true,
                                                                child:
                                                                    Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      width:
                                                                          6.0,
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'dkekfae3' /* EX */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).titleSmall,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation4']!),
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
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '3zh3n8oz' /* Suspensas */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyLarge,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  24.0,
                                                              tailLength: 12.0,
                                                              waitDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          100),
                                                              showDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1500),
                                                              triggerMode:
                                                                  TooltipTriggerMode
                                                                      .tap,
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
                                                                onTap:
                                                                    () async {
                                                                  _model.lpsvOrderStatusId =
                                                                      6;
                                                                  _model.lpsvIsParent =
                                                                      false;
                                                                  _model.lpsvOrdersOrVisits =
                                                                      'orders';
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: badges
                                                                    .Badge(
                                                                  badgeContent:
                                                                      Text(
                                                                    FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            e.statusId ==
                                                                            6)
                                                                        .toList()
                                                                        .length
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleSmall,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  showBadge: FFAppState()
                                                                          .stOFiltersResults
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              6)
                                                                          .toList()
                                                                          .length >
                                                                      0,
                                                                  shape: badges
                                                                      .BadgeShape
                                                                      .circle,
                                                                  badgeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  elevation:
                                                                      4.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  position: badges
                                                                          .BadgePosition
                                                                      .topEnd(),
                                                                  animationType:
                                                                      badges
                                                                          .BadgeAnimationType
                                                                          .scale,
                                                                  toAnimate:
                                                                      true,
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        width:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(4.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'bolkbuyb' /* SU */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                font: FlutterFlowTheme.of(context).titleSmall,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'containerOnPageLoadAnimation5']!),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'cardOnPageLoadAnimation']!);
                                        } else {
                                          return Container(
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x1F000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                width: 1.0,
                                              ),
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1iy5lqie' /* Ordens de Serviços */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation2']!),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'szfvfxho' /* Autorizadas */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyLarge,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  24.0,
                                                              tailLength: 12.0,
                                                              waitDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          100),
                                                              showDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1500),
                                                              triggerMode:
                                                                  TooltipTriggerMode
                                                                      .tap,
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
                                                                onTap:
                                                                    () async {
                                                                  _model.lpsvOrderStatusId =
                                                                      3;
                                                                  _model.lpsvIsParent =
                                                                      false;
                                                                  _model.lpsvOrdersOrVisits =
                                                                      'orders';
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: badges
                                                                    .Badge(
                                                                  badgeContent:
                                                                      Text(
                                                                    FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            (e.statusId ==
                                                                                3) &&
                                                                            (e.providerCompanyId ==
                                                                                FFAppState().stUserCurrent.companyId))
                                                                        .toList()
                                                                        .length
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleSmall,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  showBadge: FFAppState()
                                                                          .stOFiltersResults
                                                                          .where((e) =>
                                                                              (e.statusId == 3) &&
                                                                              (e.providerCompanyId == FFAppState().stUserCurrent.companyId))
                                                                          .toList()
                                                                          .length >
                                                                      0,
                                                                  shape: badges
                                                                      .BadgeShape
                                                                      .circle,
                                                                  badgeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  elevation:
                                                                      4.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  position: badges
                                                                          .BadgePosition
                                                                      .topEnd(),
                                                                  animationType:
                                                                      badges
                                                                          .BadgeAnimationType
                                                                          .scale,
                                                                  toAnimate:
                                                                      true,
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        width:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(12.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'kcn54e01' /* AU */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                font: FlutterFlowTheme.of(context).titleSmall,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'containerOnPageLoadAnimation7']!),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'a6gwsavu' /* Agendadas */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyLarge,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  24.0,
                                                              tailLength: 12.0,
                                                              waitDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          100),
                                                              showDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1500),
                                                              triggerMode:
                                                                  TooltipTriggerMode
                                                                      .tap,
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
                                                                onTap:
                                                                    () async {
                                                                  _model.lpsvOrderStatusId =
                                                                      4;
                                                                  _model.lpsvIsParent =
                                                                      false;
                                                                  _model.lpsvOrdersOrVisits =
                                                                      'orders';
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: badges
                                                                    .Badge(
                                                                  badgeContent:
                                                                      Text(
                                                                    FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            (e.statusId ==
                                                                                4) &&
                                                                            (e.providerCompanyId ==
                                                                                FFAppState().stUserCurrent.companyId))
                                                                        .toList()
                                                                        .length
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleSmall,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  showBadge: FFAppState()
                                                                          .stOFiltersResults
                                                                          .where((e) =>
                                                                              (e.statusId == 4) &&
                                                                              (e.providerCompanyId == FFAppState().stUserCurrent.companyId))
                                                                          .toList()
                                                                          .length >
                                                                      0,
                                                                  shape: badges
                                                                      .BadgeShape
                                                                      .circle,
                                                                  badgeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  elevation:
                                                                      4.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  position: badges
                                                                          .BadgePosition
                                                                      .topEnd(),
                                                                  animationType:
                                                                      badges
                                                                          .BadgeAnimationType
                                                                          .scale,
                                                                  toAnimate:
                                                                      true,
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        width:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(12.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'km9qcd3y' /* AG */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                font: FlutterFlowTheme.of(context).titleSmall,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'containerOnPageLoadAnimation8']!),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'stw4g5vk' /* Agendadas */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyLarge,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  24.0,
                                                              tailLength: 12.0,
                                                              waitDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          100),
                                                              showDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1500),
                                                              triggerMode:
                                                                  TooltipTriggerMode
                                                                      .tap,
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
                                                                onTap:
                                                                    () async {
                                                                  _model.lpsvOrderStatusId =
                                                                      5;
                                                                  _model.lpsvIsParent =
                                                                      false;
                                                                  _model.lpsvOrdersOrVisits =
                                                                      'orders';
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: badges
                                                                    .Badge(
                                                                  badgeContent:
                                                                      Text(
                                                                    FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            (e.statusId ==
                                                                                5) &&
                                                                            (e.providerCompanyId ==
                                                                                FFAppState().stUserCurrent.companyId))
                                                                        .toList()
                                                                        .length
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleSmall,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  showBadge: FFAppState()
                                                                          .stOFiltersResults
                                                                          .where((e) =>
                                                                              (e.statusId == 5) &&
                                                                              (e.providerCompanyId == FFAppState().stUserCurrent.companyId))
                                                                          .toList()
                                                                          .length >
                                                                      0,
                                                                  shape: badges
                                                                      .BadgeShape
                                                                      .circle,
                                                                  badgeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  elevation:
                                                                      4.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  position: badges
                                                                          .BadgePosition
                                                                      .topEnd(),
                                                                  animationType:
                                                                      badges
                                                                          .BadgeAnimationType
                                                                          .scale,
                                                                  toAnimate:
                                                                      true,
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        width:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'itxfnuwp' /* EX */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).titleSmall,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'containerOnPageLoadAnimation9']!),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'if45cljy' /* Agendadas */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyLarge,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  24.0,
                                                              tailLength: 12.0,
                                                              waitDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          100),
                                                              showDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1500),
                                                              triggerMode:
                                                                  TooltipTriggerMode
                                                                      .tap,
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
                                                                onTap:
                                                                    () async {
                                                                  _model.lpsvOrderStatusId =
                                                                      6;
                                                                  _model.lpsvIsParent =
                                                                      false;
                                                                  _model.lpsvOrdersOrVisits =
                                                                      'orders';
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: badges
                                                                    .Badge(
                                                                  badgeContent:
                                                                      Text(
                                                                    FFAppState()
                                                                        .stOFiltersResults
                                                                        .where((e) =>
                                                                            (e.statusId ==
                                                                                6) &&
                                                                            (e.providerCompanyId ==
                                                                                FFAppState().stUserCurrent.companyId))
                                                                        .toList()
                                                                        .length
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleSmall,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  showBadge: FFAppState()
                                                                          .stOFiltersResults
                                                                          .where((e) =>
                                                                              (e.statusId == 6) &&
                                                                              (e.providerCompanyId == FFAppState().stUserCurrent.companyId))
                                                                          .toList()
                                                                          .length >
                                                                      0,
                                                                  shape: badges
                                                                      .BadgeShape
                                                                      .circle,
                                                                  badgeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  elevation:
                                                                      4.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  position: badges
                                                                          .BadgePosition
                                                                      .topEnd(),
                                                                  animationType:
                                                                      badges
                                                                          .BadgeAnimationType
                                                                          .scale,
                                                                  toAnimate:
                                                                      true,
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        width:
                                                                            6.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'phb0qcw8' /* SU */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: FlutterFlowTheme.of(context).titleSmall,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'containerOnPageLoadAnimation10']!),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 12.0)),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation6']!);
                                        }
                                      },
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    if (FFAppState().stUserCurrent.companyId ==
                                        1) {
                                      return Visibility(
                                        visible: FFAppState()
                                                .stOFiltersResultsCompanies
                                                .length >
                                            0,
                                        child: Container(
                                          height: FFAppState()
                                                      .stOFiltersResultsCompanies
                                                      .length >
                                                  0
                                              ? 140.0
                                              : 0.0,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Builder(
                                                  builder: (context) {
                                                    final gcProvidersCompanies =
                                                        FFAppState()
                                                            .stOFiltersResultsCompanies
                                                            .map((e) => e)
                                                            .toList();

                                                    return ListView.separated(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          gcProvidersCompanies
                                                              .length,
                                                      separatorBuilder: (_,
                                                              __) =>
                                                          SizedBox(width: 8.0),
                                                      itemBuilder: (context,
                                                          gcProvidersCompaniesIndex) {
                                                        final gcProvidersCompaniesItem =
                                                            gcProvidersCompanies[
                                                                gcProvidersCompaniesIndex];
                                                        return Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 5.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    gcProvidersCompaniesItem
                                                                        .code,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            100.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final gcUsersAvailable =
                                                                                FFAppState().stDBAdminUsersAvailabe.where((e) => (e.isTeamLeader == true) && (e.companyId == gcProvidersCompaniesItem.id)).toList().map((e) => e).toList().sortedList(keyOf: (e) => e.nameShort, desc: false).toList();

                                                                            return ListView.separated(
                                                                              padding: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                0,
                                                                                12.0,
                                                                                0,
                                                                              ),
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: gcUsersAvailable.length,
                                                                              separatorBuilder: (_, __) => SizedBox(width: 12.0),
                                                                              itemBuilder: (context, gcUsersAvailableIndex) {
                                                                                final gcUsersAvailableItem = gcUsersAvailable[gcUsersAvailableIndex];
                                                                                return Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: badges.Badge(
                                                                                    badgeContent: Text(
                                                                                      valueOrDefault<String>(
                                                                                        FFAppState().stOFiltersResults.where((e) => e.teamId == gcUsersAvailableItem.teamId).toList().length.toString(),
                                                                                        '0',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            font: FlutterFlowTheme.of(context).titleSmall,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    showBadge: valueOrDefault<int>(
                                                                                          FFAppState().stOFiltersResults.where((e) => e.teamId == gcUsersAvailableItem.teamId).toList().length,
                                                                                          0,
                                                                                        ) >
                                                                                        0,
                                                                                    shape: badges.BadgeShape.circle,
                                                                                    badgeColor: FlutterFlowTheme.of(context).primary,
                                                                                    elevation: 4.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                    position: badges.BadgePosition.topEnd(),
                                                                                    animationType: badges.BadgeAnimationType.scale,
                                                                                    toAnimate: true,
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Opacity(
                                                                                          opacity: !gcUsersAvailableItem.isAvailable && !gcUsersAvailableItem.isOvInProgress ? 0.5 : 1.0,
                                                                                          child: CpUserPicProfileWidget(
                                                                                            key: Key('Keyzx4_${gcUsersAvailableIndex}_of_${gcUsersAvailable.length}'),
                                                                                            cpSize: 60,
                                                                                            imgUrl: '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcUsersAvailableItem.imgFilePath}/${gcUsersAvailableItem.imgFileName}',
                                                                                            toolTip: gcUsersAvailableItem.nameShort,
                                                                                            isAvailable: gcUsersAvailableItem.isAvailable,
                                                                                            isOrderVisitIdInProgress: gcUsersAvailableItem.isOvInProgress,
                                                                                            displayAvailable: true,
                                                                                            cpBorderWidth: 6,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          gcUsersAvailableItem.nameShort,
                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                font: FlutterFlowTheme.of(context).bodySmall,
                                                                                                letterSpacing: 0.0,
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
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        8.0)),
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
                                      );
                                    } else {
                                      return Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Builder(
                                                builder: (context) {
                                                  final gcUsersAvailableCompany =
                                                      FFAppState()
                                                          .stDBAdminUsersAvailabe
                                                          .where((e) =>
                                                              e.companyId ==
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .companyId)
                                                          .toList()
                                                          .map((e) => e)
                                                          .toList()
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.nameShort,
                                                              desc: false)
                                                          .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        gcUsersAvailableCompany
                                                            .length,
                                                    itemBuilder: (context,
                                                        gcUsersAvailableCompanyIndex) {
                                                      final gcUsersAvailableCompanyItem =
                                                          gcUsersAvailableCompany[
                                                              gcUsersAvailableCompanyIndex];
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {},
                                                        child: badges.Badge(
                                                          badgeContent: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'kf2bupy5' /* 0 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          showBadge: true,
                                                          shape: badges
                                                              .BadgeShape
                                                              .circle,
                                                          badgeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
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
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    gcUsersAvailableCompanyItem
                                                                        .nameShort,
                                                                    ' s/veic',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodySmall,
                                                                        letterSpacing:
                                                                            0.0,
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
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                ),
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
                                        height: 300.0,
                                        constraints: BoxConstraints(
                                          minHeight: 0.0,
                                          maxHeight: FFAppState()
                                                      .stOPFiltersResults
                                                      .length >
                                                  0
                                              ? 300.0
                                              : 0.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            if (FFAppState()
                                                    .stUserCurrent
                                                    .companyId ==
                                                1) {
                                              return Builder(
                                                builder: (context) {
                                                  final gcOFiltersStatuses =
                                                      FFAppState()
                                                          .stOFiltersResults
                                                          .where((e) =>
                                                              e.statusId ==
                                                              _model
                                                                  .lpsvOrderStatusId)
                                                          .toList();

                                                  return ListView.separated(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                      0.0,
                                                      0,
                                                      0,
                                                      0,
                                                    ),
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        gcOFiltersStatuses
                                                            .length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(width: 12.0),
                                                    itemBuilder: (context,
                                                        gcOFiltersStatusesIndex) {
                                                      final gcOFiltersStatusesItem =
                                                          gcOFiltersStatuses[
                                                              gcOFiltersStatusesIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Container(
                                                          width: 500.0,
                                                          height: 300.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child:
                                                              CpDBAdminOListItemWidget(
                                                            key: Key(
                                                                'Keyxwe_${gcOFiltersStatusesIndex}_of_${gcOFiltersStatuses.length}'),
                                                            cpIsRedirect: false,
                                                            cpODt:
                                                                gcOFiltersStatusesItem,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            } else {
                                              return Builder(
                                                builder: (context) {
                                                  final gcOFiltersStatusesProvidersA = FFAppState()
                                                      .stOFiltersResults
                                                      .where((e) =>
                                                          (e.statusId ==
                                                              _model
                                                                  .lpsvOrderStatusId) &&
                                                          (e.providerCompanyId ==
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .companyId))
                                                      .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        gcOFiltersStatusesProvidersA
                                                            .length,
                                                    itemBuilder: (context,
                                                        gcOFiltersStatusesProvidersAIndex) {
                                                      final gcOFiltersStatusesProvidersAItem =
                                                          gcOFiltersStatusesProvidersA[
                                                              gcOFiltersStatusesProvidersAIndex];
                                                      return Container(
                                                        width: 500.0,
                                                        height: 300.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child:
                                                            CpDBAdminOListItemWidget(
                                                          key: Key(
                                                              'Keyfwk_${gcOFiltersStatusesProvidersAIndex}_of_${gcOFiltersStatusesProvidersA.length}'),
                                                          cpIsRedirect: false,
                                                          cpODt:
                                                              gcOFiltersStatusesProvidersAItem,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            }
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
      ),
    );
  }
}

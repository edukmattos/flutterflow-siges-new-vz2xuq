import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/dashboard/cp_d_b_admin_nav_bar/cp_d_b_admin_nav_bar_widget.dart';
import '/pages/dashboard/md_d_b_admin_filters_services/md_d_b_admin_filters_services_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/settings/cp_o_o_v_list_item/cp_o_o_v_list_item_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_d_b_admin_o_v_model.dart';
export 'pg_d_b_admin_o_v_model.dart';

class PgDBAdminOVWidget extends StatefulWidget {
  const PgDBAdminOVWidget({super.key});

  static String routeName = 'pgDBAdminOV';
  static String routePath = 'pgDBAdminOV';

  @override
  State<PgDBAdminOVWidget> createState() => _PgDBAdminOVWidgetState();
}

class _PgDBAdminOVWidgetState extends State<PgDBAdminOVWidget>
    with TickerProviderStateMixin {
  late PgDBAdminOVModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDBAdminOVModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stDBAdminNavBarOption = 'visits';
      safeSetState(() {});
      await action_blocks.abDBAdminOVFilters(
        context,
        abSystemsParent: FFAppState().stFiltersServices.systemsParent,
        abSystems: FFAppState().stFiltersServices.systems,
        abUnitsTypesParent: FFAppState().stFiltersServices.unitsTypesParent,
        abUnits: FFAppState().stFiltersServices.units,
        abOrdersTypes: FFAppState().stFiltersServices.ordersTypes,
        abOrdersTypesSubs: FFAppState().stFiltersServices.ordersTypesSubs,
        abOrdersVisitsProcessing:
            FFAppState().stFiltersServices.ordersVisitsProcessing,
        abOrdersObjects: FFAppState().stFiltersServices.ordersObjects,
        abContracts: FFAppState().stFiltersServices.contracts,
        abOrdersPlans: FFAppState().stFiltersServices.ordersPlans,
        abTeams: FFAppState().stFiltersServices.teams,
      );
      safeSetState(() {});
    });

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
                'rczgnyii' /* Painel Geral */,
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
            child: SafeArea(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
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
                              children: [
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
                                            'dhpmopuo' /* Atendimentos */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
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
                                            'rtp516s4' /* Atualização manual */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'q979dqr4' /* Atualizar */,
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
                                            ),
                                          ),
                                          offset: 4.0,
                                          preferredDirection:
                                              AxisDirection.down,
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
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius: 16.0,
                                            borderWidth: 6.0,
                                            buttonSize: 50.0,
                                            icon: FaIcon(
                                              FontAwesomeIcons.undoAlt,
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
                                                        cpEntity: 'visits',
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 310.0,
                                    height: 130.0,
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
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1xtotarj' /* Situações */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation']!),
                                              ],
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.lpsvOVProcessingId =
                                                              1;
                                                          safeSetState(() {});
                                                        },
                                                        child: badges.Badge(
                                                          badgeContent: Text(
                                                            FFAppState()
                                                                .stDBAdminOVFilters
                                                                .where((e) =>
                                                                    e.ovProcessingId ==
                                                                    1)
                                                                .toList()
                                                                .length
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          showBadge: FFAppState()
                                                                  .stDBAdminOVFilters
                                                                  .where((e) =>
                                                                      e.ovProcessingId ==
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          position: badges
                                                                  .BadgePosition
                                                              .topEnd(),
                                                          animationType: badges
                                                              .BadgeAnimationType
                                                              .scale,
                                                          toAnimate: true,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .cpOVProcessingModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                CpOVProcessingWidget(
                                                              cpProcessingDescription:
                                                                  'Rascunho',
                                                              cpProcessingId: 1,
                                                              cpBorderWidth: 6,
                                                              cpSize: 60,
                                                              cpShowLoadingIndicator:
                                                                  true,
                                                              cpDisabled: false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.lpsvOVProcessingId =
                                                              2;
                                                          safeSetState(() {});
                                                        },
                                                        child: badges.Badge(
                                                          badgeContent: Text(
                                                            FFAppState()
                                                                .stDBAdminOVFilters
                                                                .where((e) =>
                                                                    e.ovProcessingId ==
                                                                    2)
                                                                .toList()
                                                                .length
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          showBadge: FFAppState()
                                                                  .stDBAdminOVFilters
                                                                  .where((e) =>
                                                                      e.ovProcessingId ==
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          position: badges
                                                                  .BadgePosition
                                                              .topEnd(),
                                                          animationType: badges
                                                              .BadgeAnimationType
                                                              .scale,
                                                          toAnimate: true,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .cpOVProcessingModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                CpOVProcessingWidget(
                                                              cpProcessingDescription:
                                                                  'Reportadas',
                                                              cpProcessingId: 2,
                                                              cpBorderWidth: 6,
                                                              cpSize: 60,
                                                              cpShowLoadingIndicator:
                                                                  true,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.lpsvOVProcessingId =
                                                              3;
                                                          safeSetState(() {});
                                                        },
                                                        child: badges.Badge(
                                                          badgeContent: Text(
                                                            FFAppState()
                                                                .stDBAdminOVFilters
                                                                .where((e) =>
                                                                    e.ovProcessingId ==
                                                                    3)
                                                                .toList()
                                                                .length
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          showBadge: FFAppState()
                                                                  .stDBAdminOVFilters
                                                                  .where((e) =>
                                                                      e.ovProcessingId ==
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          position: badges
                                                                  .BadgePosition
                                                              .topEnd(),
                                                          animationType: badges
                                                              .BadgeAnimationType
                                                              .scale,
                                                          toAnimate: true,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .cpOVProcessingModel3,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                CpOVProcessingWidget(
                                                              cpProcessingDescription:
                                                                  'Revisados',
                                                              cpProcessingId: 3,
                                                              cpBorderWidth: 6,
                                                              cpSize: 60,
                                                              cpShowLoadingIndicator:
                                                                  true,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.lpsvOVProcessingId =
                                                              4;
                                                          safeSetState(() {});
                                                        },
                                                        child: badges.Badge(
                                                          badgeContent: Text(
                                                            FFAppState()
                                                                .stDBAdminOVFilters
                                                                .where((e) =>
                                                                    e.ovProcessingId ==
                                                                    4)
                                                                .toList()
                                                                .length
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          showBadge: FFAppState()
                                                                  .stDBAdminOVFilters
                                                                  .where((e) =>
                                                                      e.ovProcessingId ==
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          position: badges
                                                                  .BadgePosition
                                                              .topEnd(),
                                                          animationType: badges
                                                              .BadgeAnimationType
                                                              .scale,
                                                          toAnimate: true,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .cpOVProcessingModel4,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                CpOVProcessingWidget(
                                                              cpProcessingDescription:
                                                                  'Rejeitadas',
                                                              cpProcessingId: 4,
                                                              cpBorderWidth: 6,
                                                              cpSize: 60,
                                                              cpShowLoadingIndicator:
                                                                  true,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'cardOnPageLoadAnimation']!),
                                  ),
                                ),
                                if (!true)
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            final gcOVs = FFAppState()
                                                .stDBAdminOVFilters
                                                .where((e) =>
                                                    e.ovProcessingId ==
                                                    _model.lpsvOVProcessingId)
                                                .toList()
                                                .map((e) => e)
                                                .toList()
                                                .sortedList(
                                                    keyOf: (e) => e.id,
                                                    desc: false)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: gcOVs.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 12.0),
                                              itemBuilder:
                                                  (context, gcOVsIndex) {
                                                final gcOVsItem =
                                                    gcOVs[gcOVsIndex];
                                                return CpOOVListItemWidget(
                                                  key: Key(
                                                      'Keyip3_${gcOVsIndex}_of_${gcOVs.length}'),
                                                  cpOVDt: gcOVsItem,
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 4.5,
                                  height: 440.0,
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final gcOVssA = FFAppState()
                                          .stDBAdminOVFilters
                                          .where((e) =>
                                              e.ovProcessingId ==
                                              _model.lpsvOVProcessingId)
                                          .toList()
                                          .map((e) => e)
                                          .toList()
                                          .sortedList(
                                              keyOf: (e) => e.id, desc: false)
                                          .toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.fromLTRB(
                                          0.0,
                                          0,
                                          0,
                                          0,
                                        ),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: gcOVssA.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 12.0),
                                        itemBuilder: (context, gcOVssAIndex) {
                                          final gcOVssAItem =
                                              gcOVssA[gcOVssAIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 4.0),
                                            child: Container(
                                              width: 450.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                border: Border.all(
                                                  color: FFAppState()
                                                          .stRowsSelected
                                                          .contains(
                                                              gcOVssAItem.id)
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                      : Color(0x00000000),
                                                  width: FFAppState()
                                                          .stRowsSelected
                                                          .contains(
                                                              gcOVssAItem.id)
                                                      ? 6.0
                                                      : 0.0,
                                                ),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().stRowsSelected =
                                                      [];
                                                  safeSetState(() {});
                                                  FFAppState()
                                                      .addToStRowsSelected(
                                                          gcOVssAItem.id);
                                                  safeSetState(() {});
                                                  await action_blocks
                                                      .abOVSelectedAssetsUpdate(
                                                    context,
                                                    abOVId: gcOVssAItem.id,
                                                  );
                                                },
                                                child: CpOOVListItemWidget(
                                                  key: Key(
                                                      'Keympm_${gcOVssAIndex}_of_${gcOVssA.length}'),
                                                  cpOVDt: gcOVssAItem,
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
      ),
    );
  }
}

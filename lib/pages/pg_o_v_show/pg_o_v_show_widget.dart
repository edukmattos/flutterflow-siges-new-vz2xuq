import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_no_records_founded_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/components/cp_input_integer/cp_input_integer_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item1/cp_o_v_asset_list_item1_widget.dart';
import '/pages/orders_parents/cp_o_v_card/cp_o_v_card_widget.dart';
import '/pages/orders_parents/cp_o_v_contract_service_shop_list_item/cp_o_v_contract_service_shop_list_item_widget.dart';
import '/pages/orders_parents/cp_o_v_vehicles_list_item/cp_o_v_vehicles_list_item_widget.dart';
import '/pages/orders_parents/md_o_v_vehicle_c_u/md_o_v_vehicle_c_u_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
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
import 'pg_o_v_show_model.dart';
export 'pg_o_v_show_model.dart';

class PgOVShowWidget extends StatefulWidget {
  const PgOVShowWidget({super.key});

  static String routeName = 'pgOVShow';
  static String routePath = 'pgOVShow';

  @override
  State<PgOVShowWidget> createState() => _PgOVShowWidgetState();
}

class _PgOVShowWidgetState extends State<PgOVShowWidget>
    with TickerProviderStateMixin {
  late PgOVShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!FFAppState().stOVSelected.ovIsFiled) {
        await action_blocks.abOVSelectedProcessingCheck(
          context,
          abOVId: FFAppState().stOVSelected.id,
        );
        FFAppState().stOVNavBarOption = 'assets';
        safeSetState(() {});
      }
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
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
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'mhpb8201' /* Atendimento */,
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
                  wrapWithModel(
                    model: _model.cpDBUserAvailableModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CpDBUserAvailableWidget(
                      toolTip: 'teste',
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                          maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                        ),
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 12.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.cpOVCardModel,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: CpOVCardWidget(
                                    cpOVDt: FFAppState().stOVSelected,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    AlignedTooltip(
                                      content: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'e829yxlq' /* Ativos */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      offset: 4.0,
                                      preferredDirection: AxisDirection.down,
                                      borderRadius: BorderRadius.circular(8.0),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      elevation: 4.0,
                                      tailBaseWidth: 24.0,
                                      tailLength: 12.0,
                                      waitDuration: Duration(milliseconds: 100),
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
                                        icon: Icon(
                                          Icons.camera_roll_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          if (FFAppState().stOVNavBarOption ==
                                              'assets') {
                                            FFAppState().stOVNavBarOption = '';
                                            safeSetState(() {});
                                          } else {
                                            FFAppState().stOVNavBarOption =
                                                'assets';
                                            safeSetState(() {});
                                            await action_blocks
                                                .abOVSelectedAssetsUpdate(
                                              context,
                                              abOVId:
                                                  FFAppState().stOVSelected.id,
                                            );
                                            await action_blocks
                                                .abOVSelectedMateriais(
                                              context,
                                              abOVId:
                                                  FFAppState().stOVSelected.id,
                                            );
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                    AlignedTooltip(
                                      content: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ntcvxb0m' /* Transporte */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      offset: 4.0,
                                      preferredDirection: AxisDirection.down,
                                      borderRadius: BorderRadius.circular(8.0),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      elevation: 4.0,
                                      tailBaseWidth: 24.0,
                                      tailLength: 12.0,
                                      waitDuration: Duration(milliseconds: 100),
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
                                          FontAwesomeIcons.shippingFast,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 26.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          if (FFAppState().stOVNavBarOption ==
                                              'vehicles') {
                                            FFAppState().stOVNavBarOption = '';
                                            safeSetState(() {});
                                          } else {
                                            FFAppState().stOVNavBarOption =
                                                'vehicles';
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                    AlignedTooltip(
                                      content: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'u9elt01i' /* Serviços */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      offset: 4.0,
                                      preferredDirection: AxisDirection.down,
                                      borderRadius: BorderRadius.circular(8.0),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      elevation: 4.0,
                                      tailBaseWidth: 24.0,
                                      tailLength: 12.0,
                                      waitDuration: Duration(milliseconds: 100),
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
                                          FontAwesomeIcons.tools,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          if (FFAppState().stOVNavBarOption ==
                                              'services') {
                                            FFAppState().stOVNavBarOption = '';
                                            safeSetState(() {});
                                          } else {
                                            FFAppState().stOVNavBarOption =
                                                'services';
                                            safeSetState(() {});
                                            await action_blocks
                                                .abOVSelectedServices(
                                              context,
                                              abOVId:
                                                  FFAppState().stOVSelected.id,
                                            );
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Builder(
                                  builder: (context) {
                                    if (FFAppState().stOVNavBarOption ==
                                        'vehicles') {
                                      return SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '867iqs8i' /* Transporte */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                if (!FFAppState()
                                                    .stOVSelected
                                                    .ovIsFiled)
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 16.0,
                                                    borderWidth: 6.0,
                                                    buttonSize: 50.0,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons
                                                          .plusCircle,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      _model.isAllowedOVVehicles =
                                                          await action_blocks
                                                              .abGuardian(
                                                        context,
                                                        abPgRequestedId: 16,
                                                      );
                                                      _shouldSetState = true;
                                                      if (_model
                                                          .isAllowedOVVehicles!) {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    Container(
                                                                  height: double
                                                                      .infinity,
                                                                  child:
                                                                      MdOVVehicleCUWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      } else {
                                                        context.pushNamed(
                                                            PgNotAllowedWidget
                                                                .routeName);

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                    },
                                                  ),
                                              ],
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              constraints: BoxConstraints(
                                                minHeight:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.0,
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                maxHeight:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final gcVehicles =
                                                      FFAppState()
                                                          .stOVSelectedVehicles
                                                          .map((e) => e)
                                                          .toList();
                                                  if (gcVehicles.isEmpty) {
                                                    return Container(
                                                      width: FFAppConstants
                                                          .cfgPgWidthMax
                                                          .toDouble(),
                                                      height: 300.0,
                                                      child:
                                                          CpNoRecordsFoundedWidget(
                                                        cpTitle: FFAppConstants
                                                            .cfgNoRecordsTitle,
                                                        cpBody: FFAppConstants
                                                            .cfgNoRecordsBody,
                                                      ),
                                                    );
                                                  }

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        gcVehicles.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(height: 12.0),
                                                    itemBuilder: (context,
                                                        gcVehiclesIndex) {
                                                      final gcVehiclesItem =
                                                          gcVehicles[
                                                              gcVehiclesIndex];
                                                      return Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x1F000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      18.0),
                                                          border: Border.all(
                                                            color: FFAppState()
                                                                    .stRowsSelected
                                                                    .contains(
                                                                        gcVehiclesItem
                                                                            .id)
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : Color(
                                                                    0x00000000),
                                                            width: FFAppState()
                                                                    .stRowsSelected
                                                                    .contains(
                                                                        gcVehiclesItem
                                                                            .id)
                                                                ? 6.0
                                                                : 0.0,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        MdOVVehicleCUWidget(
                                                                      cpOVVehicleDt:
                                                                          gcVehiclesItem,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          child:
                                                              CpOVVehiclesListItemWidget(
                                                            key: Key(
                                                                'Keyvgo_${gcVehiclesIndex}_of_${gcVehicles.length}'),
                                                            cpDtOVVehicle:
                                                                gcVehiclesItem,
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'containerOnPageLoadAnimation1']!);
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 12.0)),
                                        ),
                                      );
                                    } else if (FFAppState().stOVNavBarOption ==
                                        'assets') {
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 80.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'isi43xr3' /* Ativos */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .override(
                                                                      font: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          badges.Badge(
                                                            badgeContent: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .stAssetsFollowers
                                                                    .length
                                                                    .toString(),
                                                                '0',
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
                                                            showBadge: FFAppState()
                                                                    .stAssetsFollowers
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
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 50.0,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .solidBookmark,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                FFAppState()
                                                                        .stOVAssetsSearchFilters =
                                                                    FFAppState()
                                                                        .stUserAssetsFollowing
                                                                        .toList()
                                                                        .cast<
                                                                            DtAssetStruct>();
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ],
                                                  ),
                                                  if (!FFAppState()
                                                      .stOVSelected
                                                      .ovIsFiled)
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 180.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .cpInputAssetCodeModel,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                updateOnChange:
                                                                    true,
                                                                child:
                                                                    CpInputIntegerWidget(
                                                                  cpLabelText:
                                                                      'Código',
                                                                  cpIsReadOnly:
                                                                      false,
                                                                ),
                                                              ),
                                                            ),
                                                            Opacity(
                                                              opacity: _model.cpInputAssetCodeModel.inputTextTextController
                                                                              .text ==
                                                                          ''
                                                                  ? 0.5
                                                                  : 1.0,
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    16.0,
                                                                borderWidth:
                                                                    6.0,
                                                                buttonSize:
                                                                    50.0,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .plusCircle,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 24.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed: (_model.cpInputAssetCodeModel.inputTextTextController.text ==
                                                                            '')
                                                                    ? null
                                                                    : () async {
                                                                        var _shouldSetState =
                                                                            false;
                                                                        if (_model.cpInputAssetCodeModel.inputTextTextController.text ==
                                                                            '0') {
                                                                          _model.resAssetsZeros = await ApiAssetsGroup
                                                                              .apiAssetByCodeZeroAndUnitIdCall
                                                                              .call(
                                                                            apiKey:
                                                                                FFDevEnvironmentValues().envApiKey,
                                                                            accessToken:
                                                                                currentJwtToken,
                                                                            versionMode:
                                                                                FFAppState().stAppVersionMode?.name,
                                                                            unitId:
                                                                                FFAppState().stOSelected.unitId,
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          if ((_model.resAssetsZeros?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().stOVAssetsSearchFilters =
                                                                                ((_model.resAssetsZeros?.jsonBody ?? '').toList().map<DtAssetStruct?>(DtAssetStruct.maybeFromMap).toList() as Iterable<DtAssetStruct?>).withoutNulls.toList().cast<DtAssetStruct>();
                                                                            safeSetState(() {});
                                                                            if (FFAppState().stOVAssetsSearchFilters.length ==
                                                                                0) {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Ops ...'),
                                                                                    content: Text('O ativo de código ${_model.cpInputAssetCodeModel.inputTextTextController.text} não foi localizado.'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              if (_shouldSetState)
                                                                                safeSetState(() {});
                                                                              return;
                                                                            }
                                                                          }
                                                                        } else {
                                                                          _model.resAsset = await ApiAssetsGroup
                                                                              .apiAssetByCodeCall
                                                                              .call(
                                                                            apiKey:
                                                                                FFDevEnvironmentValues().envApiKey,
                                                                            accessToken:
                                                                                currentJwtToken,
                                                                            code:
                                                                                _model.cpInputAssetCodeModel.inputTextTextController.text,
                                                                            versionMode:
                                                                                FFAppState().stAppVersionMode?.name,
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          if ((_model.resAsset?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().stOVAssetsSearchFilters =
                                                                                ((_model.resAsset?.jsonBody ?? '').toList().map<DtAssetStruct?>(DtAssetStruct.maybeFromMap).toList() as Iterable<DtAssetStruct?>).withoutNulls.toList().cast<DtAssetStruct>();
                                                                            safeSetState(() {});
                                                                            if (FFAppState().stOVAssetsSearchFilters.length ==
                                                                                0) {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Ops ...'),
                                                                                    content: Text('O ativo de código ${_model.cpInputAssetCodeModel.inputTextTextController.text} não foi localizado.'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              if (_shouldSetState)
                                                                                safeSetState(() {});
                                                                              return;
                                                                            }
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Ops ...'),
                                                                                  content: Text('Houve um erro na localização do ativo. Verifique e tente novamente.'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                            if (_shouldSetState)
                                                                              safeSetState(() {});
                                                                            return;
                                                                          }
                                                                        }

                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                      },
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ],
                                                    ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                            SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Builder(
                                                          builder: (context) {
                                                            final gcAssetsToAdd =
                                                                FFAppState()
                                                                    .stOVAssetsSearchFilters
                                                                    .map((e) =>
                                                                        e)
                                                                    .toList();

                                                            return ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  gcAssetsToAdd
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          12.0),
                                                              itemBuilder: (context,
                                                                  gcAssetsToAddIndex) {
                                                                final gcAssetsToAddItem =
                                                                    gcAssetsToAdd[
                                                                        gcAssetsToAddIndex];
                                                                return Container(
                                                                  width: 150.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x1F000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          2.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            18.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FFAppState().stRowsSelected.contains(gcAssetsToAddItem
                                                                              .id)
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : Color(
                                                                              0x00000000),
                                                                      width: FFAppState()
                                                                              .stRowsSelected
                                                                              .contains(gcAssetsToAddItem.id)
                                                                          ? 6.0
                                                                          : 0.0,
                                                                    ),
                                                                  ),
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
                                                                      FFAppState()
                                                                          .stRowsSelected = [];
                                                                      safeSetState(
                                                                          () {});
                                                                      FFAppState()
                                                                          .addToStRowsSelected(
                                                                              gcAssetsToAddItem.id);
                                                                      safeSetState(
                                                                          () {});
                                                                      _model.resOVAssetCUD =
                                                                          await action_blocks
                                                                              .abOVSelectedAssetCUD(
                                                                        context,
                                                                        abOperation:
                                                                            'create',
                                                                        abOVId: FFAppState()
                                                                            .stOVSelected
                                                                            .id,
                                                                        abAssetId:
                                                                            gcAssetsToAddItem.id,
                                                                      );
                                                                      if (_model
                                                                          .resOVAssetCUD!) {
                                                                        context
                                                                            .pushNamed(
                                                                          PgOVAsset2BeforeWidget
                                                                              .routeName,
                                                                          queryParameters:
                                                                              {
                                                                            'ppOperation':
                                                                                serializeParam(
                                                                              'before',
                                                                              ParamType.String,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        CpAssetListItemCardWidget(
                                                                      key: Key(
                                                                          'Key16w_${gcAssetsToAddIndex}_of_${gcAssetsToAdd.length}'),
                                                                      cpAssetDt:
                                                                          gcAssetsToAddItem,
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation2']!);
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Builder(
                                                            builder: (context) {
                                                              final gcOVAssets =
                                                                  FFAppState()
                                                                      .stOVSelectedAssets
                                                                      .map(
                                                                          (e) =>
                                                                              e)
                                                                      .toList();

                                                              return ListView
                                                                  .separated(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    gcOVAssets
                                                                        .length,
                                                                separatorBuilder: (_,
                                                                        __) =>
                                                                    SizedBox(
                                                                        height:
                                                                            12.0),
                                                                itemBuilder:
                                                                    (context,
                                                                        gcOVAssetsIndex) {
                                                                  final gcOVAssetsItem =
                                                                      gcOVAssets[
                                                                          gcOVAssetsIndex];
                                                                  return Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              18.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FFAppState().stRowsSelected.contains(gcOVAssetsItem.assetId)
                                                                            ? FlutterFlowTheme.of(context).primary
                                                                            : Color(0x00000000),
                                                                        width: FFAppState().stRowsSelected.contains(gcOVAssetsItem.assetId)
                                                                            ? 6.0
                                                                            : 0.0,
                                                                      ),
                                                                    ),
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
                                                                        if (!FFAppState()
                                                                            .stOVSelected
                                                                            .ovIsFiled) {
                                                                          FFAppState().stRowsSelected =
                                                                              [];
                                                                          safeSetState(
                                                                              () {});
                                                                          FFAppState()
                                                                              .addToStRowsSelected(gcOVAssetsItem.assetId);
                                                                          safeSetState(
                                                                              () {});
                                                                          await action_blocks
                                                                              .abOVSelectedAsset(
                                                                            context,
                                                                            abOVAssetId:
                                                                                gcOVAssetsItem.id,
                                                                          );

                                                                          context
                                                                              .pushNamed(
                                                                            PgOVAsset2BeforeWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'ppOperation': serializeParam(
                                                                                'before',
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        } else {
                                                                          await action_blocks
                                                                              .abAssetSelected(
                                                                            context,
                                                                            abAssetId:
                                                                                gcOVAssetsItem.assetId,
                                                                          );

                                                                          context
                                                                              .pushNamed(PgAssetShowWidget.routeName);
                                                                        }
                                                                      },
                                                                      child:
                                                                          CpOVAssetListItem1Widget(
                                                                        key: Key(
                                                                            'Keyf5x_${gcOVAssetsIndex}_of_${gcOVAssets.length}'),
                                                                        cpOVAssetDt:
                                                                            gcOVAssetsItem,
                                                                      ),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'containerOnPageLoadAnimation3']!);
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
                                    } else if (FFAppState().stOVNavBarOption ==
                                        'services') {
                                      return Container(
                                        constraints: BoxConstraints(
                                          minHeight: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.0,
                                          maxHeight: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6mzt873v' /* Serviços */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                  if (!FFAppState()
                                                      .stOVSelected
                                                      .ovIsFiled)
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 180.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .cpInputServiceDescriptionModel,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                updateOnChange:
                                                                    true,
                                                                child:
                                                                    CpInputTextWidget(
                                                                  cpIsReadOnly:
                                                                      false,
                                                                ),
                                                              ),
                                                            ),
                                                            Opacity(
                                                              opacity: _model.cpInputServiceDescriptionModel.inputTextTextController
                                                                              .text ==
                                                                          ''
                                                                  ? 0.5
                                                                  : 1.0,
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    16.0,
                                                                borderWidth:
                                                                    6.0,
                                                                buttonSize:
                                                                    50.0,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .search,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 24.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed: (_model.cpInputServiceDescriptionModel.inputTextTextController.text ==
                                                                            '')
                                                                    ? null
                                                                    : () async {
                                                                        var _shouldSetState =
                                                                            false;
                                                                        _model.isAllowedOVServices =
                                                                            await action_blocks.abGuardian(
                                                                          context,
                                                                          abPgRequestedId:
                                                                              9,
                                                                        );
                                                                        _shouldSetState =
                                                                            true;
                                                                        if (_model
                                                                            .isAllowedOVServices!) {
                                                                          _model.resContractServices = await ApiContractsServicesGroup
                                                                              .apiSearchServicesByContractIdCall
                                                                              .call(
                                                                            apiKey:
                                                                                FFDevEnvironmentValues().envApiKey,
                                                                            accessToken:
                                                                                currentJwtToken,
                                                                            versionMode:
                                                                                FFAppState().stAppVersionMode?.name,
                                                                            contractId:
                                                                                FFAppState().stOSelected.contractId,
                                                                            searchTerms:
                                                                                _model.cpInputServiceDescriptionModel.inputTextTextController.text,
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          if ((_model.resContractServices?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().stContractSelectedServicesSearchResults =
                                                                                ((_model.resContractServices?.jsonBody ?? '').toList().map<DtContractServiceStruct?>(DtContractServiceStruct.maybeFromMap).toList() as Iterable<DtContractServiceStruct?>).withoutNulls.toList().cast<DtContractServiceStruct>();
                                                                            FFAppState().update(() {});
                                                                          } else {
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Ops ... Houve um erro em localizar Material.',
                                                                                  style: TextStyle(
                                                                                    color: FlutterFlowTheme.of(context).info,
                                                                                  ),
                                                                                ),
                                                                                duration: Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).error,
                                                                              ),
                                                                            );
                                                                            if (_shouldSetState)
                                                                              safeSetState(() {});
                                                                            return;
                                                                          }
                                                                        } else {
                                                                          context
                                                                              .pushNamed(PgNotAllowedWidget.routeName);

                                                                          if (_shouldSetState)
                                                                            safeSetState(() {});
                                                                          return;
                                                                        }

                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                      },
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Builder(
                                                    builder: (context) {
                                                      final gcServicesToAdd =
                                                          FFAppState()
                                                              .stContractSelectedServicesSearchResults
                                                              .map((e) => e)
                                                              .toList();

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            gcServicesToAdd
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                height: 12.0),
                                                        itemBuilder: (context,
                                                            gcServicesToAddIndex) {
                                                          final gcServicesToAddItem =
                                                              gcServicesToAdd[
                                                                  gcServicesToAddIndex];
                                                          return CpOVContractServiceShopListItemWidget(
                                                            key: Key(
                                                                'Key4mf_${gcServicesToAddIndex}_of_${gcServicesToAdd.length}'),
                                                            cpContractServiceDt:
                                                                gcServicesToAddItem,
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                              if (true)
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final gcOVServices = FFAppState()
                                                          .stOVSelectedServices
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.description,
                                                              desc: false)
                                                          .map((e) => e)
                                                          .toList();

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            gcOVServices.length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                height: 12.0),
                                                        itemBuilder: (context,
                                                            gcOVServicesIndex) {
                                                          final gcOVServicesItem =
                                                              gcOVServices[
                                                                  gcOVServicesIndex];
                                                          return Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
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
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              gcOVServicesItem.description,
                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                    font: FlutterFlowTheme.of(context).titleMedium,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if (FFAppState()
                                                                              .stOVSelected
                                                                              .ovProcessingId !=
                                                                          5)
                                                                        FlutterFlowIconButton(
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          borderRadius:
                                                                              16.0,
                                                                          borderWidth:
                                                                              6.0,
                                                                          buttonSize:
                                                                              50.0,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          icon:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.trashAlt,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                          showLoadingIndicator:
                                                                              true,
                                                                          onPressed:
                                                                              () async {
                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Ops ...'),
                                                                                      content: Text('Deseja realmente EXCLUIR este registro ?'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                          child: Text('Cancelar'),
                                                                                        ),
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                          child: Text('Confirmar'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                ) ??
                                                                                false;
                                                                            if (confirmDialogResponse) {
                                                                              await OrdersVisitsServicesTable().update(
                                                                                data: {
                                                                                  'deleted_user_id': FFAppState().stUserCurrent.id,
                                                                                  'deleted_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                  'is_deleted': true,
                                                                                },
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'id',
                                                                                  gcOVServicesItem.id,
                                                                                ),
                                                                              );
                                                                              await action_blocks.abOVSelectedServices(
                                                                                context,
                                                                                abOVId: FFAppState().stOVSelected.id,
                                                                              );
                                                                              await action_blocks.abOVSelected(
                                                                                context,
                                                                                abOVId: FFAppState().stOVSelected.id,
                                                                              );
                                                                            } else {
                                                                              return;
                                                                            }
                                                                          },
                                                                        ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            12.0)),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'yp1plqo1' /* R$ Unit */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            functions.cfConvDoubleToCurrency2Decimals(gcOVServicesItem.valueUnit.toString(),
                                                                                2),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ntgs8cv5' /* A/D */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            functions.cfConvDoubleToCurrency2Decimals(gcOVServicesItem.discount.toString(),
                                                                                2),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'svlye24n' /* Qte */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '${functions.cfConvDoubleToCurrency2Decimals(gcOVServicesItem.amount.toString(), 2)} ${gcOVServicesItem.unit}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '1na81oto' /* R$ Total */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            functions.cfConvDoubleToCurrency2Decimals(gcOVServicesItem.valueTotal.toString(),
                                                                                2),
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
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
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Container(
                                        width: 0.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(),
                                      );
                                    }
                                  },
                                ),
                              ]
                                  .divide(SizedBox(height: 12.0))
                                  .addToEnd(SizedBox(height: 60.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

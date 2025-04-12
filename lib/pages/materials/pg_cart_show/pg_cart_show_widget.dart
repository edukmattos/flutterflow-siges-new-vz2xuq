import '/components/cp_no_records_founded_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/materials/cp_cart_material_list_item/cp_cart_material_list_item_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_cart_show_model.dart';
export 'pg_cart_show_model.dart';

class PgCartShowWidget extends StatefulWidget {
  const PgCartShowWidget({super.key});

  static String routeName = 'pgCartShow';
  static String routePath = 'pgCartShow';

  @override
  State<PgCartShowWidget> createState() => _PgCartShowWidgetState();
}

class _PgCartShowWidgetState extends State<PgCartShowWidget>
    with TickerProviderStateMixin {
  late PgCartShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCartShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abCartMaterialsUpdate(
        context,
        abOperation: 'amount',
        abUserId: FFAppState().stUserCurrent.id,
      );
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
              color: FlutterFlowTheme.of(context).accent4,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'zzuw6v92' /* Carrinho */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              if (FFAppState().XstCartMaterialsAmount > 0)
                Container(
                  decoration: BoxDecoration(),
                  child: badges.Badge(
                    badgeContent: Text(
                      FFAppState().XstCartMaterialsAmount.toString(),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                    ),
                    showBadge: true,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).tertiary,
                    elevation: 4.0,
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: 50.0,
                      icon: FaIcon(
                        FontAwesomeIcons.shoppingCart,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: true
                          ? null
                          : () {
                              print('IconButton pressed ...');
                            },
                    ),
                  ),
                ),
            ],
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
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final gcMaterials = FFAppState()
                                      .stCartMaterials
                                      .map((e) => e)
                                      .toList();
                                  if (gcMaterials.isEmpty) {
                                    return Container(
                                      width: 380.0,
                                      height: 380.0,
                                      child: CpNoRecordsFoundedWidget(
                                        cpTitle: 'Ops ...',
                                        cpBody: 'Seu carrinho está vazio.',
                                      ),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount: gcMaterials.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder: (context, gcMaterialsIndex) {
                                      final gcMaterialsItem =
                                          gcMaterials[gcMaterialsIndex];
                                      return Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          border: Border.all(
                                            width: FFAppState()
                                                    .stRowsSelected
                                                    .contains(
                                                        gcMaterialsItem.id)
                                                ? 6.0
                                                : 6.0,
                                          ),
                                        ),
                                        child: CpCartMaterialListItemWidget(
                                          key: Key(
                                              'Keyntx_${gcMaterialsIndex}_of_${gcMaterials.length}'),
                                          cpCartMaterialDt: gcMaterialsItem,
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!);
                                    },
                                  );
                                },
                              ),
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

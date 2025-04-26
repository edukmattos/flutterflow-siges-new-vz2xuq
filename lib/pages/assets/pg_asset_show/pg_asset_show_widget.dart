import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_asset_show_card/cp_asset_show_card_widget.dart';
import '/pages/assets/cp_asset_views/cp_asset_views_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_asset_show_model.dart';
export 'pg_asset_show_model.dart';

class PgAssetShowWidget extends StatefulWidget {
  const PgAssetShowWidget({super.key});

  static String routeName = 'pgAssetShow';
  static String routePath = 'pgAssetShow';

  @override
  State<PgAssetShowWidget> createState() => _PgAssetShowWidgetState();
}

class _PgAssetShowWidgetState extends State<PgAssetShowWidget> {
  late PgAssetShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stOVSelected = DtOrderVisitStruct();
      FFAppState().stAssetSelectedOVAssets = [];
      FFAppState().stAssetNavBarOption = '';
      safeSetState(() {});
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'bq06bkh2' /* Ativo */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: FlutterFlowTheme.of(context).headlineMedium,
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
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
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
                  ),
                ),
                Flexible(
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Container(
                                constraints: BoxConstraints(
                                  minWidth:
                                      FFAppConstants.cfgPgWidthMin.toDouble(),
                                  maxWidth:
                                      FFAppConstants.cfgPgWidthMax.toDouble(),
                                ),
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlipCard(
                                      fill: Fill.fillBack,
                                      direction: FlipDirection.HORIZONTAL,
                                      speed: 400,
                                      front: wrapWithModel(
                                        model: _model.cpAssetShowCardModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpAssetShowCardWidget(
                                          cpAssetDt:
                                              FFAppState().stAssetSelected,
                                        ),
                                      ),
                                      back: wrapWithModel(
                                        model: _model.cpAssetDatasheetsModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpAssetDatasheetsWidget(
                                          cpAssetDt:
                                              FFAppState().stAssetSelected,
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cpAssetViewsModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CpAssetViewsWidget(),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 8.0))
                                      .addToEnd(SizedBox(height: 60.0)),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                      if (false)
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            child: Container(
                              height: 50.0,
                              constraints: BoxConstraints(
                                minWidth:
                                    FFAppConstants.cfgPgWidthMin.toDouble(),
                                maxWidth:
                                    FFAppConstants.cfgPgWidthMax.toDouble(),
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10.0,
                                    color: Color(0x1A57636C),
                                    offset: Offset(
                                      0.0,
                                      -10.0,
                                    ),
                                    spreadRadius: 0.1,
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    icon: FaIcon(
                                      FontAwesomeIcons.cogs,
                                      color: FFAppState().stAssetNavBarOption ==
                                              'components'
                                          ? FlutterFlowTheme.of(context)
                                              .tertiary
                                          : Color(0xFF9299A1),
                                      size: 24.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      FFAppState().stAssetNavBarOption =
                                          'materials';
                                      safeSetState(() {});
                                      await action_blocks
                                          .abAssetSelectedMaterials(
                                        context,
                                        abAssetId:
                                            FFAppState().stAssetSelected.id,
                                      );
                                      safeSetState(() {});
                                    },
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    icon: Icon(
                                      Icons.local_library_rounded,
                                      color: FFAppState().stAssetNavBarOption ==
                                              'tm'
                                          ? FlutterFlowTheme.of(context)
                                              .tertiary
                                          : Color(0xFF9299A1),
                                      size: 30.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      FFAppState().stAssetNavBarOption = 'tm';
                                      safeSetState(() {});
                                      await action_blocks.abAssetSelectedTMs(
                                        context,
                                        abAssetId:
                                            FFAppState().stAssetSelected.id,
                                      );
                                      safeSetState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
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
  }
}

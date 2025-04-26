import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/settings/cp_settings_company_show_card/cp_settings_company_show_card_widget.dart';
import '/pages/settings/cp_settings_contract_list_item/cp_settings_contract_list_item_widget.dart';
import '/pages/settings/md_settings_contracts_create/md_settings_contracts_create_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'pg_settings_company_contracts_model.dart';
export 'pg_settings_company_contracts_model.dart';

class PgSettingsCompanyContractsWidget extends StatefulWidget {
  const PgSettingsCompanyContractsWidget({super.key});

  static String routeName = 'pgSettingsCompanyContracts';
  static String routePath = 'pgSettingsCompanyContracts';

  @override
  State<PgSettingsCompanyContractsWidget> createState() =>
      _PgSettingsCompanyContractsWidgetState();
}

class _PgSettingsCompanyContractsWidgetState
    extends State<PgSettingsCompanyContractsWidget>
    with TickerProviderStateMixin {
  late PgSettingsCompanyContractsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgSettingsCompanyContractsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().stCompanySelected.id == 1) {
        _model.resClientContracts =
            await ApiContractsGroup.apiContractsByClientCompanyIdCall.call(
          apiKey: FFDevEnvironmentValues().envApiKey,
          accessToken: currentJwtToken,
          companyId: 1,
          version: FFAppState().stAppVersionMode?.name,
        );

        if ((_model.resClientContracts?.succeeded ?? true)) {
          _model.lpsvContracts = ((_model.resClientContracts?.jsonBody ?? '')
                  .toList()
                  .map<DtContractStruct?>(DtContractStruct.maybeFromMap)
                  .toList() as Iterable<DtContractStruct?>)
              .withoutNulls
              .toList()
              .cast<DtContractStruct>();
          safeSetState(() {});
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Ops ... Houve um erro em listar os contratos.',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );
          return;
        }
      } else {
        _model.resProviderContracts =
            await ApiContractsGroup.apiContractsByProviderCompanyIdCall.call(
          apiKey: FFDevEnvironmentValues().envApiKey,
          accessToken: currentJwtToken,
          companyId: FFAppState().stCompanySelected.id,
          version: FFAppState().stAppVersionMode?.name,
        );

        if ((_model.resProviderContracts?.succeeded ?? true)) {
          _model.lpsvContracts = ((_model.resProviderContracts?.jsonBody ?? '')
                  .toList()
                  .map<DtContractStruct?>(DtContractStruct.maybeFromMap)
                  .toList() as Iterable<DtContractStruct?>)
              .withoutNulls
              .toList()
              .cast<DtContractStruct>();
          safeSetState(() {});
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Ops ... Houve um erro em listar os contratos.',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );
          return;
        }
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: MdSettingsContractsCreateWidget(),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Icon(
              Icons.add,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
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
              't2oqhab4' /* Contratos */,
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
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          wrapWithModel(
                            model: _model.cpSettingsCompanyShowCardModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpSettingsCompanyShowCardWidget(),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      if (FFAppState().stCompanySelected.id ==
                                          1) {
                                        return Builder(
                                          builder: (context) {
                                            final gcContracts = _model
                                                .lpsvContracts
                                                .map((e) => e)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: gcContracts.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder:
                                                  (context, gcContractsIndex) {
                                                final gcContractsItem =
                                                    gcContracts[
                                                        gcContractsIndex];
                                                return Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x1F000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcContractsItem
                                                                      .id)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x00000000),
                                                      width: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcContractsItem
                                                                      .id)
                                                          ? 6.0
                                                          : 0.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      FFAppState()
                                                          .stRowsSelected = [];
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .addToStRowsSelected(
                                                              gcContractsItem
                                                                  .id);
                                                      safeSetState(() {});
                                                      await action_blocks
                                                          .abContractSelected(
                                                        context,
                                                        abContractId:
                                                            gcContractsItem.id,
                                                      );

                                                      context.pushNamed(
                                                          PgSettingsCompanyContractDetailsWidget
                                                              .routeName);
                                                    },
                                                    child:
                                                        CpSettingsContractListItemWidget(
                                                      key: Key(
                                                          'Keyxly_${gcContractsIndex}_of_${gcContracts.length}'),
                                                      cpDtContract:
                                                          gcContractsItem,
                                                    ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation1']!);
                                              },
                                            );
                                          },
                                        );
                                      } else {
                                        return Builder(
                                          builder: (context) {
                                            final gcContracts = _model
                                                .lpsvContracts
                                                .map((e) => e)
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: gcContracts.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder:
                                                  (context, gcContractsIndex) {
                                                final gcContractsItem =
                                                    gcContracts[
                                                        gcContractsIndex];
                                                return Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x1F000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcContractsItem
                                                                      .id)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x00000000),
                                                      width: FFAppState()
                                                              .stRowsSelected
                                                              .contains(
                                                                  gcContractsItem
                                                                      .id)
                                                          ? 6.0
                                                          : 0.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      FFAppState()
                                                          .stRowsSelected = [];
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .addToStRowsSelected(
                                                              gcContractsItem
                                                                  .id);
                                                      safeSetState(() {});
                                                      await action_blocks
                                                          .abContractSelected(
                                                        context,
                                                        abContractId:
                                                            gcContractsItem.id,
                                                      );

                                                      context.pushNamed(
                                                          PgSettingsCompanyContractDetailsWidget
                                                              .routeName);
                                                    },
                                                    child:
                                                        CpSettingsContractListItemWidget(
                                                      key: Key(
                                                          'Key1b6_${gcContractsIndex}_of_${gcContracts.length}'),
                                                      cpDtContract:
                                                          gcContractsItem,
                                                    ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation2']!);
                                              },
                                            );
                                          },
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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

import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/settings/cp_settings_companies_list_item/cp_settings_companies_list_item_widget.dart';
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
import 'pg_settings_companies_model.dart';
export 'pg_settings_companies_model.dart';

class PgSettingsCompaniesWidget extends StatefulWidget {
  const PgSettingsCompaniesWidget({super.key});

  static String routeName = 'pgSettingsCompanies';
  static String routePath = 'pgSettingsCompanies';

  @override
  State<PgSettingsCompaniesWidget> createState() =>
      _PgSettingsCompaniesWidgetState();
}

class _PgSettingsCompaniesWidgetState extends State<PgSettingsCompaniesWidget>
    with TickerProviderStateMixin {
  late PgSettingsCompaniesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgSettingsCompaniesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultxhk = await ApiCompaniesGroup.apiCompaniesAllCall.call(
        apiKey: FFDevEnvironmentValues().envApiKey,
        accessToken: currentJwtToken,
      );

      if ((_model.apiResultxhk?.succeeded ?? true)) {
        FFAppState().stCompaniesSearchResults =
            ((_model.apiResultxhk?.jsonBody ?? '')
                    .toList()
                    .map<DtCompanyStruct?>(DtCompanyStruct.maybeFromMap)
                    .toList() as Iterable<DtCompanyStruct?>)
                .withoutNulls
                .toList()
                .cast<DtCompanyStruct>();
        safeSetState(() {});
      }
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
              '0fdvgx4j' /* Empresas */,
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
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                        maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                      ),
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Builder(
                              builder: (context) {
                                final gcCompanies = FFAppState()
                                    .stCompaniesSearchResults
                                    .map((e) => e)
                                    .toList();

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: gcCompanies.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 8.0),
                                  itemBuilder: (context, gcCompaniesIndex) {
                                    final gcCompaniesItem =
                                        gcCompanies[gcCompaniesIndex];
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FFAppState()
                                                  .stRowsSelected
                                                  .contains(gcCompaniesItem.id)
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x00000000),
                                          width: FFAppState()
                                                  .stRowsSelected
                                                  .contains(gcCompaniesItem.id)
                                              ? 6.0
                                              : 0.0,
                                        ),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().stRowsSelected = [];
                                          safeSetState(() {});
                                          FFAppState().addToStRowsSelected(
                                              gcCompaniesItem.id);
                                          safeSetState(() {});
                                          await action_blocks.abCompanySelected(
                                            context,
                                            abCompanyId: gcCompaniesItem.id,
                                          );

                                          context.pushNamed(
                                              PgSettingsCompanyWidget
                                                  .routeName);
                                        },
                                        child:
                                            CpSettingsCompaniesListItemWidget(
                                          key: Key(
                                              'Keye7v_${gcCompaniesIndex}_of_${gcCompanies.length}'),
                                          cpCompanyDt: gcCompaniesItem,
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation']!);
                                  },
                                );
                              },
                            ),
                          ],
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

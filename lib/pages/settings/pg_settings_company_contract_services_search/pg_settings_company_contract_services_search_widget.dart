import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/settings/cp_settings_contract_service_card_list_item/cp_settings_contract_service_card_list_item_widget.dart';
import '/pages/settings/cp_settings_contract_show_card/cp_settings_contract_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'pg_settings_company_contract_services_search_model.dart';
export 'pg_settings_company_contract_services_search_model.dart';

class PgSettingsCompanyContractServicesSearchWidget extends StatefulWidget {
  const PgSettingsCompanyContractServicesSearchWidget({super.key});

  static String routeName = 'pgSettingsCompanyContractServicesSearch';
  static String routePath = 'pgSettingsCompanyContractServicesSearch';

  @override
  State<PgSettingsCompanyContractServicesSearchWidget> createState() =>
      _PgSettingsCompanyContractServicesSearchWidgetState();
}

class _PgSettingsCompanyContractServicesSearchWidgetState
    extends State<PgSettingsCompanyContractServicesSearchWidget>
    with TickerProviderStateMixin {
  late PgSettingsCompanyContractServicesSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => PgSettingsCompanyContractServicesSearchModel());

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
              '68pdmxxz' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: FlutterFlowTheme.of(context).accent4,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          wrapWithModel(
                            model: _model.cpSettingsContractShowCardModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpSettingsContractShowCardWidget(),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.cpInputTextModel,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: CpInputTextWidget(
                                    cpIsReadOnly: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: FutureBuilder<ApiCallResponse>(
                              future: ApiContractsServicesGroup
                                  .apiSearchServicesByContractIdCall
                                  .call(
                                apiKey: FFDevEnvironmentValues().envApiKey,
                                accessToken: currentJwtToken,
                                versionMode:
                                    FFAppState().stAppVersionMode?.name,
                                searchTerms: _model.cpInputTextModel
                                    .inputTextTextController.text,
                                contractId: FFAppState().stContractSelected.id,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final containerApiSearchServicesByContractIdResponse =
                                    snapshot.data!;

                                return Container(
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final gcContractServices =
                                          (containerApiSearchServicesByContractIdResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<DtContractServiceStruct?>(
                                                              DtContractServiceStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          DtContractServiceStruct?>)
                                                  .withoutNulls
                                                  .map((e) => e)
                                                  .toList()
                                                  .toList() ??
                                              [];

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        scrollDirection: Axis.vertical,
                                        itemCount: gcContractServices.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 12.0),
                                        itemBuilder:
                                            (context, gcContractServicesIndex) {
                                          final gcContractServicesItem =
                                              gcContractServices[
                                                  gcContractServicesIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
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
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: FFAppState()
                                                            .stRowsSelected
                                                            .contains(
                                                                gcContractServicesItem
                                                                    .id)
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : Color(0x00000000),
                                                    width: FFAppState()
                                                            .stRowsSelected
                                                            .contains(
                                                                gcContractServicesItem
                                                                    .id)
                                                        ? 6.0
                                                        : 0.0,
                                                  ),
                                                ),
                                                child:
                                                    CpSettingsContractServiceCardListItemWidget(
                                                  key: Key(
                                                      'Key6o5_${gcContractServicesIndex}_of_${gcContractServices.length}'),
                                                  cpContractServiceDt:
                                                      gcContractServicesItem,
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation']!),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
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

import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/dashboard/cp_dd_o_types_multi_all/cp_dd_o_types_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_multi_all/cp_dd_o_types_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_parent_multi_all/cp_dd_systems_parent_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_subs_multi_all/cp_dd_systems_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_contracts_department/cp_dropdown_filters_contracts_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_contracts_department_providers/cp_dropdown_filters_contracts_department_providers_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_o_objects/cp_dropdown_filters_o_objects_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_o_plans_department/cp_dropdown_filters_o_plans_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_teams_department/cp_dropdown_filters_teams_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_d_b_admin_filters_financial_model.dart';
export 'md_d_b_admin_filters_financial_model.dart';

class MdDBAdminFiltersFinancialWidget extends StatefulWidget {
  const MdDBAdminFiltersFinancialWidget({
    super.key,
    String? cpEntity,
  }) : this.cpEntity = cpEntity ?? 'orders';

  final String cpEntity;

  @override
  State<MdDBAdminFiltersFinancialWidget> createState() =>
      _MdDBAdminFiltersFinancialWidgetState();
}

class _MdDBAdminFiltersFinancialWidgetState
    extends State<MdDBAdminFiltersFinancialWidget> {
  late MdDBAdminFiltersFinancialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdDBAdminFiltersFinancialModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Container(
                    width: 500.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 8.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'c5k359or' /* Filtros */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 25.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          icon: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .cpDdSystemsParentMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdSystemsParentMultiAllWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdSystemsSubsMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdSystemsSubsMultiAllWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsTypesParentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersUnitsTypesParentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersUnitsWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersOObjectsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersOObjectsWidget(),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.cpDdOTypesMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDdOTypesMultiAllWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdOTypesSubsMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdOTypesSubsMultiAllWidget(),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              if (FFAppState()
                                                      .stUserCurrent
                                                      .companyId ==
                                                  1) {
                                                return wrapWithModel(
                                                  model: _model
                                                      .cpDropdownFiltersContractsDepartmentModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      CpDropdownFiltersContractsDepartmentWidget(),
                                                );
                                              } else {
                                                return wrapWithModel(
                                                  model: _model
                                                      .cpDropdownFiltersContractsDepartmentProvidersModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      CpDropdownFiltersContractsDepartmentProvidersWidget(),
                                                );
                                              }
                                            },
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersOPlansDepartmentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersOPlansDepartmentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersTeamsDepartmentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersTeamsDepartmentWidget(),
                                          ),
                                        ]
                                            .divide(SizedBox(height: 8.0))
                                            .addToStart(SizedBox(height: 24.0))
                                            .addToEnd(SizedBox(height: 24.0)),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  FFAppState()
                                                          .stFiltersServices =
                                                      DtFiltersServicesStruct();
                                                  safeSetState(() {});
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'rsfhs87z' /* Limpar Filtros */,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 0.0,
                                                              24.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                  elevation: 5.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 6.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  FFAppState()
                                                          .stFiltersServices =
                                                      DtFiltersServicesStruct(
                                                    systemsParent: _model
                                                        .cpDdSystemsParentMultiAllModel
                                                        .ddSystemsParentMultiAllValue,
                                                    systems: _model
                                                        .cpDdSystemsSubsMultiAllModel
                                                        .ddSystemsSubsMultiAllValue,
                                                    unitsTypesParent: _model
                                                        .cpDropdownFiltersUnitsTypesParentModel
                                                        .dropdownFiltersUnitsTypesParentValue,
                                                    ordersTypes: _model
                                                        .cpDdOTypesMultiAllModel
                                                        .ddOTypesMultiAllValue,
                                                    ordersTypesSubs: _model
                                                        .cpDdOTypesSubsMultiAllModel
                                                        .ddOTypesSubsMultiAllValue,
                                                    ordersPlans: _model
                                                        .cpDropdownFiltersOPlansDepartmentModel
                                                        .dropdownFiltersOPlansDepartmentValue,
                                                    ordersObjects: _model
                                                        .cpDropdownFiltersOObjectsModel
                                                        .dropdownFiltersOObjectsValue,
                                                    units: _model
                                                        .cpDropdownFiltersUnitsModel
                                                        .dropdownFiltersUnitsValue,
                                                    teams: _model
                                                        .cpDropdownFiltersTeamsDepartmentModel
                                                        .dropdownFiltersTeamsDepartmentValue,
                                                  );
                                                  FFAppState().update(() {});
                                                  if (FFAppState()
                                                          .stUserCurrent
                                                          .companyId ==
                                                      1) {
                                                    await action_blocks
                                                        .abDBAdminOVFiltersFinancial(
                                                            context);
                                                  }
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '9kynh97q' /* Aplicar */,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 0.0,
                                                              24.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                  elevation: 5.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 6.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].addToEnd(SizedBox(height: 24.0)),
                            ),
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

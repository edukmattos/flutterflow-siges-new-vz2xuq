import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags/cp_dropdown_filters_assets_tags_widget.dart';
import '/pages/dashboard/cp_dd_o_types_multi_all/cp_dd_o_types_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_multi_all/cp_dd_o_types_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_parent_multi_all/cp_dd_systems_parent_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_subs_multi_all/cp_dd_systems_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_teams_department/cp_dropdown_filters_teams_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types/cp_dropdown_filters_units_types_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import '/pages/orders_parents/cp_dd_orders_causes_reasons_multi/cp_dd_orders_causes_reasons_multi_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'md_db_admin_filters_ove_model.dart';
export 'md_db_admin_filters_ove_model.dart';

class MdDbAdminFiltersOveWidget extends StatefulWidget {
  const MdDbAdminFiltersOveWidget({super.key});

  @override
  State<MdDbAdminFiltersOveWidget> createState() =>
      _MdDbAdminFiltersOveWidgetState();
}

class _MdDbAdminFiltersOveWidgetState extends State<MdDbAdminFiltersOveWidget> {
  late MdDbAdminFiltersOveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdDbAdminFiltersOveModel());

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
                                            '8amri7gg' /* Filtros */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                      ),
                                      if (false)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 8.0),
                                          child: Text(
                                            FFAppState().stFiltersOVE.pgAdmin,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmallFamily),
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
                                                CpDdSystemsParentMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .systemsParentsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdSystemsSubsMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdSystemsSubsMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .systemsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsTypesParentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersUnitsTypesParentWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsTypesIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsTypesModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersUnitsTypesWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsTypesIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDropdownFiltersUnitsWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersAssetsTagsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersAssetsTagsWidget(
                                              cpHintText: 'Setores',
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .assetsTagsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.cpDdOTypesMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDdOTypesMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .oTypesIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdOTypesSubsMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDdOTypesSubsMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .oTypesSubsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersTeamsDepartmentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersTeamsDepartmentWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .teamsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdOrdersCausesReasonsMultiModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdOrdersCausesReasonsMultiWidget(
                                              cpHintText: 'Causas',
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .oCausesReasonsIds,
                                            ),
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
                                              MainAxisAlignment.end,
                                          children: [
                                            if (FFAppState().stFiltersOveCount >
                                                0)
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        FFAppState()
                                                            .stFiltersOveCount = 0;
                                                        FFAppState()
                                                            .updateStFiltersOVEStruct(
                                                          (e) => e
                                                            ..teamsIds = []
                                                            ..unitsIds = []
                                                            ..oTypesIds = []
                                                            ..assetsTagsIds = []
                                                            ..oTypesSubsIds = []
                                                            ..systemsParentsIds =
                                                                []
                                                            ..systemsIds = []
                                                            ..unitsTypesParentsIds =
                                                                []
                                                            ..unitsTypesIds = []
                                                            ..oCausesReasonsIds =
                                                                [],
                                                        );
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersAssetsTagsModel
                                                              .dropdownFiltersAssetsTagsValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersUnitsModel
                                                              .dropdownFiltersUnitsValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersTeamsDepartmentModel
                                                              .dropdownFiltersTeamsDepartmentValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdOTypesMultiAllModel
                                                              .ddOTypesMultiAllValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdSystemsParentMultiAllModel
                                                              .ddSystemsParentMultiAllValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdSystemsSubsMultiAllModel
                                                              .ddSystemsSubsMultiAllValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersUnitsTypesParentModel
                                                              .dropdownFiltersUnitsTypesParentValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersUnitsTypesModel
                                                              .dropdownFiltersUnitsTypesValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdOrdersCausesReasonsMultiModel
                                                              .ddOrdersCausesReasonsMultiValueController
                                                              ?.value = [];
                                                        });
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3c4xwslx' /* Limpar */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 50.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                        elevation: 5.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          width: 6.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    FFAppState()
                                                        .updateStFiltersOVEStruct(
                                                      (e) => e
                                                        ..teamsIds = _model
                                                            .cpDropdownFiltersTeamsDepartmentModel
                                                            .dropdownFiltersTeamsDepartmentValue!
                                                            .toList()
                                                        ..unitsIds = _model
                                                            .cpDropdownFiltersUnitsModel
                                                            .dropdownFiltersUnitsValue!
                                                            .toList()
                                                        ..oTypesIds = _model
                                                            .cpDdOTypesMultiAllModel
                                                            .ddOTypesMultiAllValue!
                                                            .toList()
                                                        ..assetsTagsIds = _model
                                                            .cpDropdownFiltersAssetsTagsModel
                                                            .dropdownFiltersAssetsTagsValue!
                                                            .toList()
                                                        ..oTypesSubsIds = _model
                                                            .cpDdOTypesSubsMultiAllModel
                                                            .ddOTypesSubsMultiAllValue!
                                                            .toList()
                                                        ..systemsParentsIds = _model
                                                            .cpDdSystemsParentMultiAllModel
                                                            .ddSystemsParentMultiAllValue!
                                                            .toList()
                                                        ..systemsIds = _model
                                                            .cpDdSystemsSubsMultiAllModel
                                                            .ddSystemsSubsMultiAllValue!
                                                            .toList()
                                                        ..unitsTypesParentsIds = _model
                                                            .cpDropdownFiltersUnitsTypesParentModel
                                                            .dropdownFiltersUnitsTypesParentValue!
                                                            .toList()
                                                        ..unitsTypesIds = _model
                                                            .cpDropdownFiltersUnitsTypesModel
                                                            .dropdownFiltersUnitsTypesValue!
                                                            .toList()
                                                        ..oCausesReasonsIds = _model
                                                            .cpDdOrdersCausesReasonsMultiModel
                                                            .ddOrdersCausesReasonsMultiValue!
                                                            .toList(),
                                                    );
                                                    FFAppState().update(() {});
                                                    await action_blocks
                                                        .abFiltersOveCount(
                                                            context);
                                                    if (FFAppState()
                                                            .stFiltersOveCount >
                                                        0) {
                                                      if (FFAppState()
                                                              .stFiltersOVE
                                                              .pgAdmin ==
                                                          'OOVE') {
                                                        await action_blocks
                                                            .abDbAdminOOVENoFiledFilters(
                                                                context);
                                                      } else {
                                                        await action_blocks
                                                            .abDBAdminOVEFilters(
                                                                context);
                                                      }
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar ao menos UM campo.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }

                                                    Navigator.pop(context);
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'tat62mmq' /* Aplicar */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 5.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      width: 6.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
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
